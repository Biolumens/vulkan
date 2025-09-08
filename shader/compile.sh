#!/usr/bin/env bash

GLSLC=$HOME/VulkanSDK/1.4.321.0/macOS/bin/glslc

$GLSLC -fshader-stage=vertex vertex.glsl -o vertex.spv
$GLSLC -fshader-stage=fragment fragment.glsl -o fragment.spv
