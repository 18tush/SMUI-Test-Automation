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

Delete Instance5
     Sleep   1
     wait until element is Visible   xpath://*[@id="nav-list-item-CLOUD"]/a/span 
     click element   xpath://*[@id="nav-list-item-CLOUD"]/a/span

    click element   xpath://*[@id="nav-list-item-INSTANCES"]/div/i
    Sleep   1
    click link  link:ZEN
    Sleep   1
    click element   xpath://*[@id="toolbar-item-zen-instances-1"]/div/div/div/i[2]
    
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]

    wait until element is Visible   xpath://*[@id="toolbar-item-zen-instances-6"]/div/div[2]/input
    click element   xpath://*[@id="toolbar-item-zen-instances-6"]/div/div[2]/input
    input text      xpath://*[@id="toolbar-item-zen-instances-6"]/div/div[2]/input      ${nodes2}[1]5-instance
    click element   xpath://*[@id="toolbar-item-zen-instances-6"]/div/div[2]/i[2]
    Sleep   1
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div/div[2]/div/div[11]/span[5]/i
    Sleep   1
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Delete Cluster2
    Sleep   2
    click element   xpath://*[@id="nav-list-item-INSTANCES"]/div/i
    Sleep   1
    click element     xpath://*[@id="nav-list-item-CLUSTERS"]/div/span
    click link  link:Sandbox

    wait until element is Visible   xpath://*[@id="toolbar-item-behavioral-analysis-clusters-2"]/div/div[2]/input
    click element   xpath://*[@id="toolbar-item-behavioral-analysis-clusters-2"]/div/div[2]/input
    input text      xpath://*[@id="toolbar-item-behavioral-analysis-clusters-2"]/div/div[2]/input       Sandbox5-cluster
    click element   xpath://*[@id="toolbar-item-behavioral-analysis-clusters-2"]/div/div[2]/i[2]
    Sleep   1
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[6]/span[2]/i
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
    Sleep   2
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span
    Sleep   1

Delete Cluster1
     # click element     xpath://*[@id="nav-list-item-CLUSTERS"]/div/span
     Sleep   2
     click link  link:Nanolog


     click element   xpath://*[@id="toolbar-item-nanolog-clusters-3"]/div/div[2]/input
     input text      xpath://*[@id="toolbar-item-nanolog-clusters-3"]/div/div[2]/input        ${nodes2}[3]5-cluster
     click element   xpath://*[@id="toolbar-item-nanolog-clusters-3"]/div/div[2]/i[2]

     wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[8]/span[2]/i
     click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[8]/span[2]/i
     wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
     click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Delete instance4
     Sleep  2
     click element     xpath://*[@id="nav-list-item-CLUSTERS"]/div/span  
     click element   xpath://*[@id="nav-list-item-INSTANCES"]/div/i
        click link  link:User Interface

        wait until element is Visible   //input[@placeholder="Search..."]
        click element   //input[@placeholder="Search..."]
        input text      //input[@placeholder="Search..."]               AdminUI5-instance       
        click element   xpath://*[@id="toolbar-item-user-interface-instances-4"]/div/div[2]/i[2]

        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[10]/span[5]/i
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[10]/span[5]/i
        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
        click element    xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Delete instance3
        Sleep   2
        click link  link:Sandbox

        wait until element is Visible   //input[@placeholder="Search..."]
        click element   //input[@placeholder="Search..."]
        input text      //input[@placeholder="Search..."]               Sandbox5-instance   
        click element   xpath://*[@id="toolbar-item-behavioral-analysis-instances-3"]/div/div[2]/i[2]
        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[9]/span[4]
        click element   //*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[9]/span[4]
        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
        click element    xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Delete instance2
        Sleep   2
        click link  link:Nanolog

        wait until element is Visible   //input[@placeholder="Search..."]
        click element   //input[@placeholder="Search..."]
        input text      //input[@placeholder="Search..."]               SMSM5-instance       
        click element   xpath://*[@id="toolbar-item-nanolog-instances-3"]/div/div[2]/i[2]

        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[10]/span[5]/i
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[10]/span[5]/i
        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
        click element    xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Delete instance1
        Sleep   2
        click link  link:Central Authority

        wait until element is Visible   //input[@placeholder="Search..."]
        click element   //input[@placeholder="Search..."]
        input text      //input[@placeholder="Search..."]               SMCA5-instance     

        click element   xpath://*[@id="toolbar-item-central-authority-instances-3"]/div/div[2]/i[2]  
        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[9]/span[5]/i
        click element   xpath://*[@id="zscm"]/div/div[2]/div/div[2]/div[2]/div/div[9]/span[5]/i
        wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
        click element    xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


        close browser