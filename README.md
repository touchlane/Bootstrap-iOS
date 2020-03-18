![LOGO](https://github.com/touchlane/Bootstrap-iOS/tree/readme/Assets/logo.svg)

Bootstrap is a project 

# Requirements

* iOS 9.0+
* Xcode 10.2+
* Swift 5.0+

# How it works

Bootstrap project is a 

# How to use

## Setup
Clone this repository

```bash
git clone https://github.com/touchlane/Bootstrap-iOS.git
```

## Rename project
Use [xcode-project-renamer](https://github.com/appculture/xcode-project-renamer) to rename this project. Run the script:

```bash
./vendor/Sources/main.swift "Bootstrap" "$NEW_PROJECT_NAME"
```

After that remove the `vendor` submodule

```bash
git submodule deinit -f vendor/xcode-renamer
rm -rf .git/modules/vendor/xcode-renamer
git rm -f vendor/xcode-renamer
```

## SwiftFormat
[SwiftFormat](https://github.com/nicklockwood/SwiftFormat) is a tool for reformatting swift code.
You can configurate the `.swiftfile` to changing rules for your project.

For formating run the sctipt:

```bash
sh ./Scripts/swiftformat.sh
```

## SwiftGen
[SwiftGen](https://github.com/SwiftGen/SwiftGen) is a tool to auto-generate Swift code for resources of your project.

SwiftGen uses a configuration file to run various actions. You can configurate a `swiftgen.yml` file, with subcommands that you need to invoke. For more information look at the SwiftGen [documentation](https://github.com/SwiftGen/SwiftGen).

To apply changes in `swiftgen.yml` file, run the script:
```bash
Pods/SwiftGen/bin/swiftgen
```

## Don't forget

Don't forget to delete the `.git` folder.