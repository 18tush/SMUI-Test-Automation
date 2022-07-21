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

Delete Nodes
    wait until element is Visible   xpath://*[@id="nav-list-item-CLOUD"]/a/span 
    click element   xpath://*[@id="nav-list-item-CLOUD"]/a/span

    Sleep   1

    FOR       ${node}       IN      @{nodes2}[::-1]
        Sleep   1
        click element   xpath://*[@id="nav-list-item-NODES"]/a/span
        click element   xpath://*[@id="toolbar-item-nodes-5"]/div/div[2]/input
        input text      xpath://*[@id="toolbar-item-nodes-5"]/div/div[2]/input      ${node}5-node            
        click element   xpath://*[@id="toolbar-item-nodes-5"]/div/div[2]/i[2]  
        Sleep   1
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[10]/span[5]
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
        Sleep   2
        click element   xpath://*[@id="toolbar-item-nodes-5"]/div/div[2]/i[1]
        Sleep   1
        log to console          ${node}
    END
    close browser


