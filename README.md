<p align="center">
  <img src="https://raw.githubusercontent.com/Leo-App/iOS/stable/logo.png"
      width=800 height=400 alt="Leo-App Icon">
</p>

<p align="center">
    <a href="https://www.bitrise.io/app/78aa373b873a53c0">
        <img src="https://www.bitrise.io/app/78aa373b873a53c0/status.svg?token=nNoiHwas8ZAdVS65CRJNUw&branch=stable"
             alt="Build Status">
    </a>
    <a href="https://codebeat.co/projects/github-com-leo-app-ios-stable">
        <img src="https://codebeat.co/badges/09d99579-954f-4c52-882e-1bec94ba9007"
             alt="Codebeat Badge">
    </a>
    <img src="https://img.shields.io/badge/Swift-4.1-FFAC45.svg"
         alt="Swift: 4.1">
    <img src="https://img.shields.io/badge/Platforms-iOS-FF69B4.svg"
        alt="Platforms: iOS">
    <a href="https://github.com/Leo-App/iOS/blob/stable/LICENSE.md">
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


## Development

# Getting Started

First, make sure you have **Xcode 9.3+** installed including command line tools. Next, install all required tools via [Homebrew](https://brew.sh/) like so:

```
brew tap yonaskolb/Beak https://github.com/yonaskolb/Beak.git
brew install bartycrouch beak carthage swiftgen swiftlint
```

Now **run** `beak run installDependencies` to set up the third party libraries.

That's it, you're good to go.


## Contributing

Contributions are welcome. Feel free to open an issue on GitHub with your ideas or implement an idea yourself and post a pull request. If you want to contribute code, please try to follow the same syntax and semantic in your **commit messages** (see rationale [here](http://chris.beams.io/posts/git-commit/)).

Please note that this project is released with a [Contributor Code of Conduct](https://github.com/Leo-App/iOS/blob/stable/CONDUCT.md). By participating in this project you agree to abide by its terms.


## License

This project is released under the [GNU General Public License, version 3 (GPL-3.0)](http://opensource.org/licenses/GPL-3.0).
