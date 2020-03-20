![LOGO](https://github.com/touchlane/Bootstrap-iOS/blob/develop/Assets/logo.svg)

# Bootstrap - iOS

## Requirements

* iOS 9.0+
* Xcode 10.2+
* Swift 5.0+

## About

Bootstrap is a project template that you can use to start working on a new project. There are a set of necessary tools for you to start working on project immediately.

**Rename project**

[Xcode renamer](https://github.com/appculture/xcode-project-renamer) is a script which can rename your project. 

**SwiftFormat**

SwiftFormat is a tool for reformatting swift code. While formatting, SwiftFormat will automatically check inside each subdirectory for the presence of a `.swiftformat` file and will apply any options that it finds there to the files in that directory. You can change `.swiftformat` with [this rules](https://github.com/nicklockwood/SwiftFormat/blob/master/Rules.md).
 
**SwiftGen**

SwiftGen is a tool to auto-generate Swift code for resources of your project.

SwiftGen uses a configuration file to run various actions. You can configurate a swiftgen.yml file, with subcommands that you need to invoke. For more information look at the [SwiftGen documentation](https://github.com/SwiftGen/SwiftGen).

## How to setup

1. Clone this repository:

```bash
git clone --recursive https://github.com/touchlane/Bootstrap-iOS.git
```

2. Run the rename script:

```bash
./vendor/xcode-renamer/Sources/main.swift "Bootstrap" "$NEW_PROJECT_NAME"
```

After that remove the `vendor/xcode-renamer` submodule

```bash
git submodule deinit -f vendor/xcode-renamer
rm -rf .git/modules/vendor/xcode-renamer
git rm -f vendor/xcode-renamer
```

3. Remove the `.git` folder:

```bash
rm -rf .git
```

4. Start a new git repository:

```bash
git init
git add .
git commit -m 'Initial commit'
git push
```

5. Install pods:

```bash
pod install
```


## How to use

**SwiftFormat**

For formating run the sctipt:

```bash
sh ./Scripts/swiftformat.sh
```

If you need to change the formatting rules you should change rules in the `.swiftformat` file.

**SwiftGen**

To use SwiftGen, create a `swiftgen.yml` file to list all the subcommands to invoke, and for each subcommand, the list of arguments to pass to it. 

To apply changes in `swiftgen.yml` file, run the script:
```bash
sh ./Scripts/swiftgen.sh
```
