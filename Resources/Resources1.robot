*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***



*** Keywords ***
Start Browser and Maximize
    Open Browser  http://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser

Before Each Test Suite
    Log  Before Each Test Suite

After Each Test Suite
    Log  After Each Test Suite

Create Folder at Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create_sub_folder  ${subfoldername}
    Log  "Task Done Successfully"

Concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}