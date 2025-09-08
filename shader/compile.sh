#!/usr/bin/env bash

GLSLC=

if [[ $OSTYPE == "darwin"* ]]; then
    GLSLC=$HOME/VulkanSDK/1.4.321.0/macOS/bin/glslc
    echo "OS is MacOS, setting glslc variable"
fi

$GLSLC -fshader-stage=vertex vertex.glsl -o vertex.spv &&
    echo "Vertex Shader compiled!"
$GLSLC -fshader-stage=fragment fragment.glsl -o fragment.spv &&
    echo "Fragment Shader compiled!"
