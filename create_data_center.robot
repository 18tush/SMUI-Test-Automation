*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Variables   vars.py

*** Variables ***
${browser}  Chrome
${url}  https://10.66.103.200/zscmui/login
${userid}   admin@zscm.zscaler.com
${password}     admin
${xpath_for_userid}     xpath://*[@id="login-form-username"]
${xpath_for_password}   xpath://*[@id="login-form-password"]
${click_on_signin_button}   //span[@class="button primary"]
${options}      add_argument("--ignore-certificate-errors")      



*** Test Cases ***

LoginTest
    Open Browser    ${url}  Chrome  options=${options}   
    input text  ${xpath_for_userid}    ${userid}
    input text  ${xpath_for_password}    ${password}
    click element   ${click_on_signin_button}   
    Set Global Variable     ${mips}
    maximize browser window

Cloud 
    wait until element is Visible   xpath://*[@id="nav-list-item-CLOUD"]/a/span 
    click element   xpath://*[@id="nav-list-item-CLOUD"]/a/span
    Sleep   1

    click link     link:Data Centers
    wait until element is Visible   xpath://*[@id="toolbar-item-data-centers-0"]
    click element   xpath://*[@id="toolbar-item-data-centers-0"]

    wait until element is Visible   xpath://*[@id="form-component-input-name"]
    input text  xpath://*[@id="form-component-input-name"]      ${data_center_name}

    click element   xpath://*[@id="form-component-dropDown-region"]/div
    Sleep   1
    wait until element is Visible   xpath://*[@id="form-component-dropDown-region"]/div[2]/ul/li
    click element   xpath://*[@id="form-component-dropDown-region"]/div[2]/ul/li

    input text  xpath://*[@id="form-component-input-provider"]      ${provider_name}

    click element   xpath://*[@id="form-component-dropDown-country"]/div
    wait until element is Visible   xpath://*[@id="form-component-dropDown-country"]/div[2]/div/div/div/input


    IF  "${Country}"=="ind"
        input text  xpath://*[@id="form-component-dropDown-country"]/div[2]/div/div/div/input       india
        click element   xpath://*[@id="form-component-dropDown-country"]/div[2]/div/div/div/i[2]
        click element   //li[@title="India"]
        input text      xpath://*[@id="form-component-input-city"]      Bengaluru
        input text  xpath://*[@id="form-component-inputWithRadioButtons-latitudeAbs"]       13
        input text   xpath://*[@id="form-component-inputWithRadioButtons-longitudeAbs"]     79
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/span/div/div[3]/span[1]
    END

    IF  "${Country}"=="usa"
        input text  xpath://*[@id="form-component-dropDown-country"]/div[2]/div/div/div/input       united states
        click element   xpath://*[@id="form-component-dropDown-country"]/div[2]/div/div/div/i[2]
        click element   //li[@title="United States"]
        input text      xpath://*[@id="form-component-input-city"]      San Jose
        input text  xpath://*[@id="form-component-inputWithRadioButtons-latitudeAbs"]       36
        input text   xpath://*[@id="form-component-inputWithRadioButtons-longitudeAbs"]     120
        click element   xpath://*[@id="form-component-inputWithRadioButtons-longitudeAbs-radio-button"]/span[2]
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/span/div/div[3]/span[1]
    END

    