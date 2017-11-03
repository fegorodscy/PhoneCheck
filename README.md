# README

## Description

It's a command line utility that will do the following:

* Every 1 second, print out the current time as follows:
    The current time is: 2017-03-22 22:32:29 -0400

* When the user presses enter, the program will stop printing timestamps, and the user will be prompted to enter a phone number:
    Please enter a valid phone number: 

* When the user enters a phone number, the program will respond with whether or not the provided phone number is valid, i.e.:
    123-456-7890 is a valid phone number
    abc-def-ghij is not a valid phone number

* The program will then continue printing out timestamps, and waiting for user input

* You may press "q" to stop the program

## Compatibility

* Ruby version: 2.3.1 (should work for Ruby >= 2.1 [untested])
* Gem Curses: 1.2.4

## Dependencies

Requires Ruby and the gem Curses installed.

To install ruby check [this](https://www.ruby-lang.org/en/documentation/installation/) guide

To instal the gem Curses do the following:

```
gem install curses
```

## How to run

Go to the root of this repository and run:

```
ruby main.rb
```