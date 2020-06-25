@echo off
title Curse Changelog Compiler

:Read Manifests
set /P oldMani="Old Manifest: "
set /P newMani="New Manifest: "

:Parse For Script
REN %oldMani% old.json
REN %newMani% new.json

:Run
java -jar bin/ChangelogGenerator-2.0.0-pre3.jar

:Rename Changelog
REN changelog.txt %oldMani%-%newMani%-changelog.txt

:Reverse the Parse
REN old.json %oldMani% 
REN new.json %newMani%