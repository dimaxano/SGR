#include "CommandManager.h"
#include "LogicalDeviceManager.h"
#include "SwapChainManager.h"
#include "RenderPassManager.h"
#include "PipelineManager.h"
#include "PhysicalDeviceManager.h"
#include "DrawCommand.h"
#include "BindVertexCommand.h"
#include "BindIndexCommand.h"
#include "DrawIndexedCommand.h"
#include "BindDescriptorSetCommand.h"

CommandManager* CommandManager::instance = nullptr;

CommandManager::CommandManager() { ; }
CommandManager::~CommandManager() { ; }

CommandManager* CommandManager::get()
{
    if (instance == nullptr) {
        instance = new CommandManager();
        return instance;
    }
    else
        return instance;
}

SgrErrCode CommandManager::initCommandPool()
{
    VkCommandPoolCreateInfo poolInfo{};
    poolInfo.sType = VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO;
    poolInfo.queueFamilyIndex = PhysicalDeviceManager::get()->getPickedPhysicalDevice().fixedGraphicsQueue.value();

    if (vkCreateCommandPool(LogicalDeviceManager::get()->getLogicalDevice(), &poolInfo, nullptr, &commandPool) != VK_SUCCESS)
        return sgrInitCommandPoolError;

    return sgrOK;
}

SgrErrCode CommandManager::initCommandBuffers()
{
    if (commandPool == VK_NULL_HANDLE) {
        SgrErrCode resultInitCommandPool = initCommandPool();
        if (resultInitCommandPool != sgrOK)
            return resultInitCommandPool;
    }

    SwapChainManager* swpChMan = SwapChainManager::get();

    commandBuffers.resize(swpChMan->framebuffers.size());

    VkCommandBufferAllocateInfo allocInfo{};
    allocInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO;
    allocInfo.commandPool = commandPool;
    allocInfo.level = VK_COMMAND_BUFFER_LEVEL_PRIMARY;
    allocInfo.commandBufferCount = (uint32_t)commandBuffers.size();

    if (vkAllocateCommandBuffers(LogicalDeviceManager::get()->getLogicalDevice(), &allocInfo, commandBuffers.data()) != VK_SUCCESS)
        return sgrInitCommandBuffersError;

    commands.resize(commandBuffers.size());

    for (size_t i = 0; i < commandBuffers.size(); i++) {
        VkCommandBufferBeginInfo beginInfo{};
        beginInfo.sType = VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO;
        beginInfo.flags = 0; // Optional
        beginInfo.pInheritanceInfo = nullptr; // Optional

        if (vkBeginCommandBuffer(commandBuffers[i], &beginInfo) != VK_SUCCESS)
            return sgrBeginCommandBufferError;

        VkRenderPassBeginInfo renderPassInfo{};
        renderPassInfo.sType = VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO;
        renderPassInfo.renderPass = RenderPassManager::get()->renderPass;
        renderPassInfo.framebuffer = SwapChainManager::get()->framebuffers[i];
        renderPassInfo.renderArea.offset = { 0, 0 };
        renderPassInfo.renderArea.extent = SwapChainManager::get()->extent;

        VkClearValue clearColor = { 0.823f, 0.3058f, 0.8392f, 1.0f };
        renderPassInfo.clearValueCount = 1;
        renderPassInfo.pClearValues = &clearColor;

        vkCmdBeginRenderPass(commandBuffers[i], &renderPassInfo, VK_SUBPASS_CONTENTS_INLINE);

        vkCmdBindPipeline(commandBuffers[i], VK_PIPELINE_BIND_POINT_GRAPHICS, PipelineManager::get()->pipeline);
    }

    buffersEnded = false;
    return sgrOK;
}

void CommandManager::addCmdToBuffer(int16_t bufferIndex, Command* newCmd)
{
    if (bufferIndex == -1) {
        for (size_t i = 0; i < commandBuffers.size(); i++)
            commands[i].push_back(newCmd);
    }
    else {
        commands[bufferIndex].push_back(newCmd);
    }
}

void CommandManager::draw(uint32_t vertexCount, uint32_t instanceCount, uint32_t firstVertex, uint32_t firstInstance, int16_t cmdBufferIndex)
{
    DrawCommand* newDrawCmd = new DrawCommand(vertexCount, instanceCount, firstVertex, firstVertex);
    addCmdToBuffer(cmdBufferIndex, (Command*)newDrawCmd);
}

void CommandManager::bindVertexBuffer(std::vector<VkBuffer> vertexBuffers, VkDeviceSize* offsets, int16_t cmdBufferIndex)
{
    BindVertexCommand* newBindVertexCmd = new BindVertexCommand(vertexBuffers, offsets);
    addCmdToBuffer(cmdBufferIndex, (Command*)newBindVertexCmd);
}

void CommandManager::bindIndexBuffer(VkBuffer indexBuffer, int16_t cmdBufferIndex)
{
    BindIndexCommand* newBindIndexCmd = new BindIndexCommand(indexBuffer);
    addCmdToBuffer(cmdBufferIndex, (Command*)newBindIndexCmd);
}

void CommandManager::drawIndexed(uint32_t indexCount, uint32_t instanceCount, uint32_t firstIndex, int32_t verteOffset, uint32_t firstInstance, int16_t cmdBufferIndex)
{
    DrawIndexedCommand* newDrawIndexedCmd = new DrawIndexedCommand(indexCount, instanceCount, firstIndex, verteOffset, firstInstance);
    addCmdToBuffer(cmdBufferIndex, (Command*)newDrawIndexedCmd);
}

void CommandManager::bindDescriptorSet(uint8_t cmdBufferIndex, VkDescriptorSet descriptorSet, uint32_t firstSet, uint32_t descriptorSetCount, std::vector<uint32_t> dynamicOffsets)
{
    BindDescriptorSetCommand* newBindDescriptorSetCmd = new BindDescriptorSetCommand(descriptorSet, firstSet, descriptorSetCount, dynamicOffsets);
    addCmdToBuffer(cmdBufferIndex, (Command*)newBindDescriptorSetCmd);
}

SgrErrCode CommandManager::endInitCommandBuffers()
{
    SgrErrCode resultExecuteCommands = executeCommands();
    if (resultExecuteCommands != sgrOK)
        return resultExecuteCommands;

    for (size_t i = 0; i < commandBuffers.size(); i++) {
        vkCmdEndRenderPass(commandBuffers[i]);

        if (vkEndCommandBuffer(commandBuffers[i]) != VK_SUCCESS) {
            return sgrEndCommandBufferError;
        }
    }

    buffersEnded = true;
    return sgrOK;
}

SgrErrCode CommandManager::executeCommands()
{
    for (size_t i = 0; i < commandBuffers.size(); i++) {
        for (size_t j = 0; j < commands[i].size(); j++) {
            SgrErrCode resultCmd = commands[i][j]->execute(&commandBuffers[i]);
            if (resultCmd != sgrOK) {
                return resultCmd;
            }           
        }
    }

    return sgrOK;
}
