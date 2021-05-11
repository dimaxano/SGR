#pragma once

// Simple Graphic Renderer (SGR) based on Vulkan library and GLFW.
// Mikhail Polestchuk, 2021, april.

#include "utils.h"

#include "WindowManager.h"
#include "PhysicalDeviceManager.h"
#include "SwapChainManager.h"
#include "LogicalDeviceManager.h"
#include "PipelineManager.h"
#include "CommandManager.h"
#include "MemoryManager.h"

class SGR {
private:
	bool sgrRunning;

	std::string applicationName;
	uint8_t appVersionMajor;
	uint8_t appVersionMinor;

	WindowManager* windowManager;
	bool manualWindow;
	GLFWwindow* window;

	VkInstance vulkanInstance;

	std::vector<VkQueueFlagBits> requiredQueueFamilies;
	std::vector<std::string> requiredExtensions;
	bool withSwapChain;
	PhysicalDeviceManager* physicalDeviceManager;

	LogicalDeviceManager* logicalDeviceManager;

	SwapChainManager* swapChainManager;

	PipelineManager* pipelineManager;

	CommandManager* commandManager;

	MemoryManager* memoryManager;

	const uint8_t maxFrameInFlight = 2;
	uint8_t currentFrame;

	std::vector<VkSemaphore> imageAvailableSemaphores;
	std::vector<VkSemaphore> renderFinishedSemaphores;
	std::vector<VkFence> inFlightFences;
	std::vector<VkFence> imagesInFlight;

	std::vector<Sgr2DVertex> vertices;
	std::vector<uint16_t> indices;

	SgrErrCode initSyncObjects();

	SgrErrCode initVulkanInstance();

public:
	SGR(std::string appName = "Simple graphic application", uint8_t appVersionMajor = 1, uint8_t appVersionMinor = 0);
	~SGR(); 

	bool isSGRRunning();
	SgrErrCode drawFrame();

	/**
	 * Init SGR and create window automatically or with arguments.
	 * 
	 * \param windowWidth
	 * \param windowHeight
	 * \param windowName
	 * \return 
	 */
	SgrErrCode init(uint32_t windowWidth = 0, uint32_t windowHeight = 0, const char *windowName = "");

	SgrErrCode destroy();

	/**
	 * Init SGR Window manually. There will be possibility to init own special window from outside.
	 * 
	 * \param newWindow
	 * \param windowName
	 * \return 
	 */
	SgrErrCode initSGRWindow(GLFWwindow* newWindow, const char* windowName);

	std::vector<SgrPhysicalDevice> getAllPhysDevInstances();
	SgrErrCode setRenderPhysicalDevice(SgrPhysicalDevice device);

	void setRequiredQueueFamilies(std::vector<VkQueueFlagBits> reqFam);

	void setVertexBindingDescription(VkVertexInputBindingDescription description);
	void setVertexAttributeDescription(std::array<VkVertexInputAttributeDescription, 2> description);

	SgrErrCode addToFrameSimpleTestObject();
};