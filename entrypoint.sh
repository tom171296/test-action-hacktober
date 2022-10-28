#!/bin/sh -l
testProject=$1

export PATH="$PATH:/root/.dotnet/tools"

echo "Changing direcotry to $testProject"
cd $testProject

echo "Starting Striker.NET run"
dotnet stryker --break-at 50

$htmlReport = ./StrykerOutput/**/*.html

echo $htmlReport

# echo "htmlReport=$htmlReport" >> $GITHUB_OUTPUT