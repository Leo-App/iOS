<p align="center">
  <img src="https://raw.githubusercontent.com/Leo-App/iOS/stable/logo.png"
      width=800 height=400 alt="Leo-App Icon">
</p>

<p align="center">
    <a href="https://app.bitrise.io/app/26e04c60fc574e09">
        <img src="https://app.bitrise.io/app/26e04c60fc574e09/status.svg?token=p-4s0GdMP-474Ah6b8eLxg&branch=stable"
             alt="Build Status">
    </a>
    <a href="https://codebeat.co/projects/github-com-leo-app-ios-stable">
        <img src="https://codebeat.co/badges/09d99579-954f-4c52-882e-1bec94ba9007"
             alt="Codebeat Badge">
    </a>
    <img src="https://img.shields.io/badge/Swift-4.2-FFAC45.svg"
         alt="Swift: 4.2">
    <img src="https://img.shields.io/badge/Platforms-iOS-FF69B4.svg"
        alt="Platforms: iOS">
    <a href="https://github.com/Leo-App/iOS/blob/stable/LICENSE">
        <img src="https://img.shields.io/badge/License-GPL--3.0-lightgrey.svg"
             alt="License: GPL-3.0">
    </a>
</p>

<p align="center">
    <a href="#about">About</a>
  • <a href="https://github.com/Leo-App/iOS/issues">Issues</a>
  • <a href="#">App Store (in progress)</a>
  • <a href="#contributing">Contributing</a>
  • <a href="#license">License</a>
</p>


## About

The iOS counterpart of the LeoApp project on Android ([Play Store Link](https://play.google.com/store/apps/details?id=de.slgdev.leoapp&hl=de)).

This repo includes the Leo-App for the iOS platform. You can find other parts of the Leo-App project [here](https://github.com/Leo-App).


## Requirements

We recommend installing command line tools via
[Homebrew](https://brew.sh/index_de.html) and [Mint](https://github.com/yonaskolb/Mint), respectively:

* Install [Carthage](https://github.com/Carthage/Carthage) (`brew install carthage`)
* Install [SwiftGen](https://github.com/SwiftGen/SwiftGen) (`brew install swiftgen`)
* Install [SwiftLint](https://github.com/realm/SwiftLint) (`brew install swiftlint`)
* Install [ProjLint](https://github.com/JamitLabs/ProjLint) (`mint install JamitLabs/ProjLint`)
* Install [BartyCrouch](https://github.com/Flinesoft/BartyCrouch) (`brew install bartycrouch`)
* Install [Beak](https://github.com/yonaskolb) (`mint install yonaskolb/beak`)

It is recommended to install forks for Carthage and SwiftLint. To do this, run:

```
$ brew remove --force swiftlint
$ mint install git@github.com:Dschee/SwiftLint.git@master swiftlint

$ brew remove --force carthage
$ brew tap Dschee/Carthage-Pro
$ brew install carthage-pro
```

## Getting Started

After checking the project out, run this in the project folder:

```
beak run installDependencies
```

Then you should be ready to go!


## Contributing

Contributions are welcome. Feel free to open an issue on GitHub with your ideas or implement an idea yourself and post a pull request. If you want to contribute code, please try to follow the same syntax and semantic in your **commit messages** (see rationale [here](http://chris.beams.io/posts/git-commit/)).

Please note that this project is released with a [Contributor Code of Conduct](https://github.com/Leo-App/iOS/blob/stable/CONDUCT.md). By participating in this project you agree to abide by its terms.


## License

This project is released under the [GNU General Public License, version 3 (GPL-3.0)](http://opensource.org/licenses/GPL-3.0).
