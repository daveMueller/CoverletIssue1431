@echo off

REM Remove the existing test results
RMDIR ".\TestResults" /S /Q

REM set COVERLET_MSBUILD_INSTRUMENTATIONTASK_DEBUG=1

REM Run the test and coverage
dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat=cobertura /p:CoverletOutput="./TestResults/"

REM Remove the second generated format since we don't actually use it
REM DEL ".\TestResults\coverage.json" /Q

REM Generate the report
reportgenerator "-reports:.\TestResults\coverage.cobertura.xml" "-targetdir:.\TestResults\Report"

call .\TestResults\Report\index.html