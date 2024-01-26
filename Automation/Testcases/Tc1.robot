*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
#    Create Webdriver    chrome    executable_path="C:\WebDrivers\chromedriver.exe"

    Open Browser    ${url}    ${browser}
    loginToApplication
   # Wait Until Page Contains Element    xpath://div[@class='header-links']//a[@href='/logout']
   # Add more test steps if needed
    Close Browser

*** Keywords ***
loginToApplication
    Click Link    xpath://a[normalize-space()='Log in']
    Wait Until Page Contains Element    id:Email
    Input Text    id:Email    karthikajay1996@gmail.com
    Input Text    id:Password    ajayaakash
    Click Element    xpath://button[normalize-space()='Log in']