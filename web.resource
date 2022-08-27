*** Settings ***
Documentation    This is a resource file, that can contain keywords related to Selenium. This is for RF==3.0
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    IE
${URL}    about:blank     #Redirects to blank page
${BrowserTimeout}    ${120}          #Declared as Integer

*** Keywords ***
Create_Custom_Driver
    [Documentation]    This Keywords fails, if browser fails to open within specified timeout
    ## TODO
    \
Open_Browser_With_Timeout
    [Documentation]    This Keywords fails, if browser fails to open within specified timeout
    [Timeout]    ${BrowserTimeout}
    SeleniumLibrary.Open Browser    ${URL}    ${BROWSER}