#pragma once

#include "utils.h"

class SGR;

struct SgrSwapChainDetails {
	VkSurfaceCapabilitiesKHR capabilities;
	std::vector<VkSurfaceFormatKHR> formats;
	std::vector<VkPresentModeKHR> presentModes;
};

class SwapChainManager {
public:
	static SwapChainManager* get();
	static void destroy();

	SgrSwapChainDetails querySwapChainDetails(VkPhysicalDevice device);
	void setSwapChainDeviceCapabilities(VkPhysicalDevice device);
	sgrErrCode initSwapChain();

private:
	SwapChainManager();
	~SwapChainManager();
	SwapChainManager(const SwapChainManager&) = delete;
	SwapChainManager& operator=(const SwapChainManager&) = delete;

	static SwapChainManager* instance;

	VkSurfaceKHR surface;
	VkSurfaceFormatKHR surfaceFormat;
	VkPresentModeKHR presentMode;

	sgrErrCode initSurface(VkInstance instance, GLFWwindow* window);
	void setupSwapChainProperties();

	VkSwapchainKHR swapChain;
	SgrSwapChainDetails capabilities;
	uint32_t imageCount;
	std::vector<VkImage> images;
	VkFormat imageFormat;
	VkExtent2D extent;
	std::vector<VkImageView> imageViews;
	std::vector<VkFramebuffer> framebuffers;

	friend class SGR;
};
