#!/bin/bash

# Script to generate Magisk module structure
# Usage: ./generate-module.sh <module-name>

# Check if module name parameter is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a module name."
    echo "Usage: $0 <module-name>"
    exit 1
fi

MODULE_NAME="$1"

# Check if module directory already exists
if [ -d "$MODULE_NAME" ]; then
    echo "Error: Directory '$MODULE_NAME' already exists."
    exit 1
fi

echo "Creating Magisk module structure for: $MODULE_NAME"

# Create the main module directory
mkdir -p "$MODULE_NAME"

# Create the directory structure
mkdir -p "$MODULE_NAME/META-INF/com/google/android"
mkdir -p "$MODULE_NAME/system"

# Create empty files
touch "$MODULE_NAME/module.prop"
touch "$MODULE_NAME/post-fs-data.sh"
touch "$MODULE_NAME/service.sh"
touch "$MODULE_NAME/system.prop"
touch "$MODULE_NAME/META-INF/com/google/android/update-binary"
touch "$MODULE_NAME/META-INF/com/google/android/updater-script"

echo "✅ Module structure created successfully!"
echo ""
echo "Generated structure:"
echo "$MODULE_NAME/"
echo "├── module.prop"
echo "├── post-fs-data.sh"
echo "├── service.sh"
echo "├── system.prop"
echo "├── META-INF/"
echo "│   └── com/"
echo "│       └── google/"
echo "│           └── android/"
echo "│               ├── update-binary"
echo "│               └── updater-script"
echo "└── system/"
echo ""
echo "🚀 All files have been created empty and are ready for customization."
