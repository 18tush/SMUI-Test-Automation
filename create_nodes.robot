*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Variables   vars.py
Library     func.py
Library     vars.py


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
Validateip
    vars.validateip

LoginTest
    Open Browser    ${url}  Chrome  options=${options}   
    input text  ${xpath_for_userid}    ${userid}
    input text  ${xpath_for_password}    ${password}
    click element   ${click_on_signin_button}   
    Set Global Variable     ${mips}
    maximize browser window


Nodes
    wait until element is Visible   xpath://*[@id="nav-list-item-CLOUD"]/a/span 
    click element   xpath://*[@id="nav-list-item-CLOUD"]/a/span
    Sleep   1

    FOR     ${node}     IN      @{nodes}
        Sleep   1
        click element   xpath://*[@id="nav-list-item-NODES"]/a/span
        click element   xpath://*[@id="toolbar-item-nodes-0"]/span

        input text  xpath://*[@id="form-component-input-name"]      ${nodes2}[${counter}]5-node    #${nodes}[1]
        click element   xpath://*[@id="form-component-dropDown-type"]/div[1]
        wait until element is Visible   //li[@title="${node}"]
        click element   //li[@title="${node}"]

        click element   xpath://*[@id="form-component-dropDown-datacenter"]/div[1]/span
        wait until element is Visible   xpath://*[@id="form-component-dropDown-datacenter"]/div[2]/ul/li[44]    timeout=10
        click element   xpath://*[@id="form-component-dropDown-datacenter"]/div[2]/ul/li[44]


        click element   xpath://*[@id="form-component-multiSelect-clouds"]/div[1]
    
        wait until element is Visible   //li[@title="zscaler.net"]
        click element   //li[@title="zscaler.net"]
        click element   xpath://*[@id="form-component-multiSelect-clouds"]/div[2]/div[2]/span[1]
        input text  xpath://*[@id="form-component-input-serialNumber"]      1

        ${a}    Split String    ${mips}[0]  .
        ${mip1}     Set Variable    ${a}[0].${a}[1].${a}[2].254
        Set Global Variable     ${mip1}


        input text  xpath://*[@id="form-component-input-mgmtIp"]    ${mips}[${counter}]
        input text  xpath://*[@id="form-component-input-ipmiIp"]    ${mips}[${counter}]

        input text  xpath://*[@id="form-component-input-bsdDefaultGwIp"]    ${mip1}
        input text  xpath://*[@id="form-component-input-ipmiDefaultGwIp"]   ${mip1}

        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
        ${counter}=     Evaluate    ${counter}+1
    END
    close browser



