# Using Pandoc in Swift

# Version

Swift 3.1 / Swift 4.0

# Install

Call `sudo ./install.sh` for pandoc installation.

# Quick Start

Package.swift:

`.Package(url: "https://github.com/RockfordWei/Pandoc.git", majorVersion: 1)`

Import:

`Import Pandoc`

Convert file:

``` swift
try PanDocConvert (
  sourceFile: "./testdoc.docx",
  sourceType: "docx",
  resultFile: "/tmp/test.html",
  resultType: "html")
```
