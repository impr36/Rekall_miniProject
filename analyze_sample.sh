#!/bin/bash
# Script to analyze a memory image using Rekall

# Check if rekall is installed
if ! command -v rekall &> /dev/null
then
    echo "Rekall could not be found. Please install it first using: pip install rekall"
    exit
fi

# Default memory image file name
MEMORY_IMAGE="memory.img"

# Check if memory image exists
if [ ! -f "$MEMORY_IMAGE" ]; then
    echo "Memory image ($MEMORY_IMAGE) not found!"
    echo "Please download a memory image and name it 'memory.img'"
    exit
fi

# Run rekall on the memory image
rekall -f "$MEMORY_IMAGE"
