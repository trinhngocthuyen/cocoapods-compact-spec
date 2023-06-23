# cocoapods-compact-spec

[![Test](https://github.com/trinhngocthuyen/cocoapods-compact-spec/actions/workflows/test.yml/badge.svg)](https://img.shields.io/github/workflow/status/trinhngocthuyen/cocoapods-compact-spec/test)
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat&color=blue)](https://github.com/trinhngocthuyen/cocoapods-compact-spec/blob/main/LICENSE.txt)
[![Gem](https://img.shields.io/gem/v/cocoapods-compact-spec.svg?style=flat&color=blue)](https://rubygems.org/gems/cocoapods-compact-spec)

A CocoaPods plugin to help define podspecs with minimal code.

## Motivation

When [declaring podspecs](https://guides.cocoapods.org/syntax/podspec.html), developers have to specify quite a lot of info. This comes with a great maintenance cost working with development pods. For example, if one wish to increase the deployment target of the project, he/she might have to modify accross development podspecs.

This CocoaPods plugin offer a compact declaration of a spec. Something like this would suffice:
```rb
Pod::Spec.new do |s|
  s.name = "ABC"
end
```

## Installation

Via Bundler:

    # In Gemfile
    gem "cocoapods-compact-spec"

Via RubyGems:

    $ gem install cocoapods-compact-spec

## Usage

TBU
