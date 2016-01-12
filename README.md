xcless
---------

xcless is a way to develop, build, test and distribute native iOS applications using CLI (Xcode-less). 

This project was inspired by the talk given here 

https://realm.io/news/swift-for-CLI/

Instructions
------------

These instructions are Mac only and tested on Yosemite and El Capitan

Install Yeoman
$ npm install -g yo

Install the yeoman generator https://github.com/Deviatry/generator-ios
$ npm install -g generator-ios

Run the generator
$ yo ios

This generates the project (xcless in our case)

Install xcpretty
gem install xcpretty

Make an output folder
$ mkdir output

cd to xcless 
$ cd xcless

Build as follows

xcodebuild -target xcless OBJROOT=../output/Obj.root SYMROOT=../output/sym.root

xcodebuild -target xcless OBJROOT=../output/Obj.root SYMROOT=../output/sym.root | xcpretty


Clean as follows

xcodebuild -target xcless OBJROOT=../output/Obj.root SYMROOT=../output/sym.root clean

Helpful links
--------------
http://code.tutsplus.com/tutorials/continuous-integration-scripting-xcode-builds--pre-25512