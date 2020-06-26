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

**Generamba**

[Generamba](https://github.com/strongself/Generamba) is a code generator made for working with Xcode.

Primarily it is designed to generate VIPER modules but it is quite easy to customize it for generation of any other classes. For our case we create a MVP template with Router, Interactor, Builder, Component and Contract.

**Fastlane**

[Fastlane](https://docs.fastlane.tools) is the easiest way to automate beta deployments and releases for your app. It handles all tedious tasks, like generating screenshots, dealing with code signing, and releasing your application.

**Bundler**

[Bundler](https://bundler.io) provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.

Bundler is an exit from dependency hell, and ensures that the gems you need are present in development, staging, and production

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
rm -rf .git/modules/vendor/xcode-renamer
rm -rf vendor
rm -rf .gitmodules
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

5. Install `Bundler` and all dependencies:

```bash
sudo gem install bundler
bundle install
```

6. Install pods:

```bash
bundle exec pod install
```

## How to use

If you need to change the formatting rules you should change rules in the `.swiftformat` file.

**SwiftGen**

To use SwiftGen, create a `swiftgen.yml` file to list all the subcommands to invoke, and for each subcommand, the list of arguments to pass to it. 

To apply changes in `swiftgen.yml` file, run the script:

```bash
sh ./Scripts/swiftgen.sh
```

**Generamba**

To install Generamba it self run the command:

```bash
gem install generamba
```

For using our `mvp_push` or `mvp_present` template run:

```bash
generamba gen [MODULE_NAME] [TEMPLATE_NAME]
```

**SwiftFormat**

For formating run the sctipt:

```bash
sh ./Scripts/swiftformat.sh
```

**Fastlane**

To use a your configuration that you added in `Fastfile`, run the scrip:

```bash
bundle exec fastlane [lane]
```

Note that you need to change the `Fastlane` configuration. Open `Fastfile` and configure needed values.

For more information check out fastlane [README.md](fastlane/README.md).

## Release instructions 

1. Create a pull request from `develop` to `master`.
2. Wait till approved.
3. Merge pull request.
4. Tag the merge commit by release version and push it.

```bash
git tag [RELEASE_VERSION]
git push --tags
```

5. Open `release` on [Bootstrap-iOS](https://github.com/touchlane/Bootstrap-iOS) page. 
6. Copy and paste appropriate release notes from CANGELOG.md.
7. Click `Publish release`.
