# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/michael-pro/repos/SGR_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michael-pro/repos/SGR_test

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CMake.app/Contents/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/Applications/CMake.app/Contents/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/michael-pro/repos/SGR_test/CMakeFiles /Users/michael-pro/repos/SGR_test/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/michael-pro/repos/SGR_test/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named SGR

# Build rule for target.
SGR: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 SGR
.PHONY : SGR

# fast build rule for target.
SGR/fast:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/build
.PHONY : SGR/fast

src/CommandManager.o: src/CommandManager.cpp.o

.PHONY : src/CommandManager.o

# target to build an object file
src/CommandManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/CommandManager.cpp.o
.PHONY : src/CommandManager.cpp.o

src/CommandManager.i: src/CommandManager.cpp.i

.PHONY : src/CommandManager.i

# target to preprocess a source file
src/CommandManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/CommandManager.cpp.i
.PHONY : src/CommandManager.cpp.i

src/CommandManager.s: src/CommandManager.cpp.s

.PHONY : src/CommandManager.s

# target to generate assembly for a file
src/CommandManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/CommandManager.cpp.s
.PHONY : src/CommandManager.cpp.s

src/DescriptorManager.o: src/DescriptorManager.cpp.o

.PHONY : src/DescriptorManager.o

# target to build an object file
src/DescriptorManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/DescriptorManager.cpp.o
.PHONY : src/DescriptorManager.cpp.o

src/DescriptorManager.i: src/DescriptorManager.cpp.i

.PHONY : src/DescriptorManager.i

# target to preprocess a source file
src/DescriptorManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/DescriptorManager.cpp.i
.PHONY : src/DescriptorManager.cpp.i

src/DescriptorManager.s: src/DescriptorManager.cpp.s

.PHONY : src/DescriptorManager.s

# target to generate assembly for a file
src/DescriptorManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/DescriptorManager.cpp.s
.PHONY : src/DescriptorManager.cpp.s

src/FileManager.o: src/FileManager.cpp.o

.PHONY : src/FileManager.o

# target to build an object file
src/FileManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/FileManager.cpp.o
.PHONY : src/FileManager.cpp.o

src/FileManager.i: src/FileManager.cpp.i

.PHONY : src/FileManager.i

# target to preprocess a source file
src/FileManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/FileManager.cpp.i
.PHONY : src/FileManager.cpp.i

src/FileManager.s: src/FileManager.cpp.s

.PHONY : src/FileManager.s

# target to generate assembly for a file
src/FileManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/FileManager.cpp.s
.PHONY : src/FileManager.cpp.s

src/LogicalDeviceManager.o: src/LogicalDeviceManager.cpp.o

.PHONY : src/LogicalDeviceManager.o

# target to build an object file
src/LogicalDeviceManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/LogicalDeviceManager.cpp.o
.PHONY : src/LogicalDeviceManager.cpp.o

src/LogicalDeviceManager.i: src/LogicalDeviceManager.cpp.i

.PHONY : src/LogicalDeviceManager.i

# target to preprocess a source file
src/LogicalDeviceManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/LogicalDeviceManager.cpp.i
.PHONY : src/LogicalDeviceManager.cpp.i

src/LogicalDeviceManager.s: src/LogicalDeviceManager.cpp.s

.PHONY : src/LogicalDeviceManager.s

# target to generate assembly for a file
src/LogicalDeviceManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/LogicalDeviceManager.cpp.s
.PHONY : src/LogicalDeviceManager.cpp.s

src/MemoryManager.o: src/MemoryManager.cpp.o

.PHONY : src/MemoryManager.o

# target to build an object file
src/MemoryManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/MemoryManager.cpp.o
.PHONY : src/MemoryManager.cpp.o

src/MemoryManager.i: src/MemoryManager.cpp.i

.PHONY : src/MemoryManager.i

# target to preprocess a source file
src/MemoryManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/MemoryManager.cpp.i
.PHONY : src/MemoryManager.cpp.i

src/MemoryManager.s: src/MemoryManager.cpp.s

.PHONY : src/MemoryManager.s

# target to generate assembly for a file
src/MemoryManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/MemoryManager.cpp.s
.PHONY : src/MemoryManager.cpp.s

src/PhysicalDeviceManager.o: src/PhysicalDeviceManager.cpp.o

.PHONY : src/PhysicalDeviceManager.o

# target to build an object file
src/PhysicalDeviceManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/PhysicalDeviceManager.cpp.o
.PHONY : src/PhysicalDeviceManager.cpp.o

src/PhysicalDeviceManager.i: src/PhysicalDeviceManager.cpp.i

.PHONY : src/PhysicalDeviceManager.i

# target to preprocess a source file
src/PhysicalDeviceManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/PhysicalDeviceManager.cpp.i
.PHONY : src/PhysicalDeviceManager.cpp.i

src/PhysicalDeviceManager.s: src/PhysicalDeviceManager.cpp.s

.PHONY : src/PhysicalDeviceManager.s

# target to generate assembly for a file
src/PhysicalDeviceManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/PhysicalDeviceManager.cpp.s
.PHONY : src/PhysicalDeviceManager.cpp.s

src/PipelineManager.o: src/PipelineManager.cpp.o

.PHONY : src/PipelineManager.o

# target to build an object file
src/PipelineManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/PipelineManager.cpp.o
.PHONY : src/PipelineManager.cpp.o

src/PipelineManager.i: src/PipelineManager.cpp.i

.PHONY : src/PipelineManager.i

# target to preprocess a source file
src/PipelineManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/PipelineManager.cpp.i
.PHONY : src/PipelineManager.cpp.i

src/PipelineManager.s: src/PipelineManager.cpp.s

.PHONY : src/PipelineManager.s

# target to generate assembly for a file
src/PipelineManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/PipelineManager.cpp.s
.PHONY : src/PipelineManager.cpp.s

src/RenderPassManager.o: src/RenderPassManager.cpp.o

.PHONY : src/RenderPassManager.o

# target to build an object file
src/RenderPassManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/RenderPassManager.cpp.o
.PHONY : src/RenderPassManager.cpp.o

src/RenderPassManager.i: src/RenderPassManager.cpp.i

.PHONY : src/RenderPassManager.i

# target to preprocess a source file
src/RenderPassManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/RenderPassManager.cpp.i
.PHONY : src/RenderPassManager.cpp.i

src/RenderPassManager.s: src/RenderPassManager.cpp.s

.PHONY : src/RenderPassManager.s

# target to generate assembly for a file
src/RenderPassManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/RenderPassManager.cpp.s
.PHONY : src/RenderPassManager.cpp.s

src/SGR.o: src/SGR.cpp.o

.PHONY : src/SGR.o

# target to build an object file
src/SGR.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/SGR.cpp.o
.PHONY : src/SGR.cpp.o

src/SGR.i: src/SGR.cpp.i

.PHONY : src/SGR.i

# target to preprocess a source file
src/SGR.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/SGR.cpp.i
.PHONY : src/SGR.cpp.i

src/SGR.s: src/SGR.cpp.s

.PHONY : src/SGR.s

# target to generate assembly for a file
src/SGR.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/SGR.cpp.s
.PHONY : src/SGR.cpp.s

src/ShaderManager.o: src/ShaderManager.cpp.o

.PHONY : src/ShaderManager.o

# target to build an object file
src/ShaderManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/ShaderManager.cpp.o
.PHONY : src/ShaderManager.cpp.o

src/ShaderManager.i: src/ShaderManager.cpp.i

.PHONY : src/ShaderManager.i

# target to preprocess a source file
src/ShaderManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/ShaderManager.cpp.i
.PHONY : src/ShaderManager.cpp.i

src/ShaderManager.s: src/ShaderManager.cpp.s

.PHONY : src/ShaderManager.s

# target to generate assembly for a file
src/ShaderManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/ShaderManager.cpp.s
.PHONY : src/ShaderManager.cpp.s

src/SwapChainManager.o: src/SwapChainManager.cpp.o

.PHONY : src/SwapChainManager.o

# target to build an object file
src/SwapChainManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/SwapChainManager.cpp.o
.PHONY : src/SwapChainManager.cpp.o

src/SwapChainManager.i: src/SwapChainManager.cpp.i

.PHONY : src/SwapChainManager.i

# target to preprocess a source file
src/SwapChainManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/SwapChainManager.cpp.i
.PHONY : src/SwapChainManager.cpp.i

src/SwapChainManager.s: src/SwapChainManager.cpp.s

.PHONY : src/SwapChainManager.s

# target to generate assembly for a file
src/SwapChainManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/SwapChainManager.cpp.s
.PHONY : src/SwapChainManager.cpp.s

src/TextureManager.o: src/TextureManager.cpp.o

.PHONY : src/TextureManager.o

# target to build an object file
src/TextureManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/TextureManager.cpp.o
.PHONY : src/TextureManager.cpp.o

src/TextureManager.i: src/TextureManager.cpp.i

.PHONY : src/TextureManager.i

# target to preprocess a source file
src/TextureManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/TextureManager.cpp.i
.PHONY : src/TextureManager.cpp.i

src/TextureManager.s: src/TextureManager.cpp.s

.PHONY : src/TextureManager.s

# target to generate assembly for a file
src/TextureManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/TextureManager.cpp.s
.PHONY : src/TextureManager.cpp.s

src/WindowManager.o: src/WindowManager.cpp.o

.PHONY : src/WindowManager.o

# target to build an object file
src/WindowManager.cpp.o:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/WindowManager.cpp.o
.PHONY : src/WindowManager.cpp.o

src/WindowManager.i: src/WindowManager.cpp.i

.PHONY : src/WindowManager.i

# target to preprocess a source file
src/WindowManager.cpp.i:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/WindowManager.cpp.i
.PHONY : src/WindowManager.cpp.i

src/WindowManager.s: src/WindowManager.cpp.s

.PHONY : src/WindowManager.s

# target to generate assembly for a file
src/WindowManager.cpp.s:
	$(MAKE) -f CMakeFiles/SGR.dir/build.make CMakeFiles/SGR.dir/src/WindowManager.cpp.s
.PHONY : src/WindowManager.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... SGR"
	@echo "... src/CommandManager.o"
	@echo "... src/CommandManager.i"
	@echo "... src/CommandManager.s"
	@echo "... src/DescriptorManager.o"
	@echo "... src/DescriptorManager.i"
	@echo "... src/DescriptorManager.s"
	@echo "... src/FileManager.o"
	@echo "... src/FileManager.i"
	@echo "... src/FileManager.s"
	@echo "... src/LogicalDeviceManager.o"
	@echo "... src/LogicalDeviceManager.i"
	@echo "... src/LogicalDeviceManager.s"
	@echo "... src/MemoryManager.o"
	@echo "... src/MemoryManager.i"
	@echo "... src/MemoryManager.s"
	@echo "... src/PhysicalDeviceManager.o"
	@echo "... src/PhysicalDeviceManager.i"
	@echo "... src/PhysicalDeviceManager.s"
	@echo "... src/PipelineManager.o"
	@echo "... src/PipelineManager.i"
	@echo "... src/PipelineManager.s"
	@echo "... src/RenderPassManager.o"
	@echo "... src/RenderPassManager.i"
	@echo "... src/RenderPassManager.s"
	@echo "... src/SGR.o"
	@echo "... src/SGR.i"
	@echo "... src/SGR.s"
	@echo "... src/ShaderManager.o"
	@echo "... src/ShaderManager.i"
	@echo "... src/ShaderManager.s"
	@echo "... src/SwapChainManager.o"
	@echo "... src/SwapChainManager.i"
	@echo "... src/SwapChainManager.s"
	@echo "... src/TextureManager.o"
	@echo "... src/TextureManager.i"
	@echo "... src/TextureManager.s"
	@echo "... src/WindowManager.o"
	@echo "... src/WindowManager.i"
	@echo "... src/WindowManager.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

