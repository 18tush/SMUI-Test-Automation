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

Instance1
     wait until element is Visible   xpath://*[@id="nav-list-item-CLOUD"]/a/span 
     click element   xpath://*[@id="nav-list-item-CLOUD"]/a/span

     Sleep   1
     click element   xpath://*[@id="nav-list-item-INSTANCES"]/div/span
    click element   xpath://*[@id="nav-list-item-CENTRAL_AUTHORITY"]/a/span
    click element   xpath://*[@id="toolbar-item-central-authority-instances-1"]/div/div/div/i[2]
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]
    click element   xpath://*[@id="toolbar-item-central-authority-instances-0"]/span
    input text      xpath://*[@id="form-component-input-name"]      ${nodes2}[0]5-instance   #CA2-instance
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[1]
    wait until element is Visible   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[1]/div[1]/ul/li[4]
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[1]/div[1]/ul/li[4]
    Sleep   1
    wait until element is Visible   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[2]/span[1]
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[2]/span[1]
    click element   xpath://*[@id="form-component-dropDown-node"]/div
    wait until element is Visible   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[6]
    click element   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[6]
    input text      xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[1]/textarea    ${mips}[0]
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[2]/i
    input text      xpath://*[@id="form-component-input-servicePort"]   443
    input text      xpath://*[@id="form-component-input-instancePath"]  /sc
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]

Instance2
    Sleep   1
    click element   xpath://*[@id="nav-list-item-NANOLOG"]/a/span
    # Click Link  link:Nanolog
    click element   xpath://*[@id="toolbar-item-nanolog-instances-1"]/div/div/div/i[2]
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]
    click element   xpath://*[@id="toolbar-item-nanolog-instances-0"]/span
    # Execute Javascript
    input text  xpath://*[@id="form-component-input-name"]              ${nodes2}[3]5-instance         #Nanolog2-Instance
    click element   xpath://*[@id="form-component-dropDown-type"]/div[1]
    click element   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[3]
    Sleep   1
    click element   xpath://*[@id="form-component-dropDown-type"]/div
    click element   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[2]
    
    click element   xpath://*[@id="form-component-dropDown-node"]/div
    wait until element is Visible   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[4]
    click element   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[4]
     
    click element   xpath://*[@id="form-component-toggleButton-maintenanceModeEnabled"]/div
    click element   xpath://*[@id="form-component-toggleButton-ahmMonitorEnabled"]/div
    input text  xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[1]/textarea   ${nanologsip}
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[2]/i
    input text      xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[4]/div/div/div/div/div[1]/div/input[1]   ${nanologsip}
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[4]/div/div/div/div/div/i
    input text   xpath://*[@id="form-component-input-instancePath"]      /sc
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Instance3
    Sleep   2
    Click link  link:Sandbox
    click element   xpath://*[@id="toolbar-item-behavioral-analysis-instances-1"]/div/div/div/span
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]
    click element   xpath://*[@id="toolbar-item-behavioral-analysis-instances-0"]/span
    input text      xpath://*[@id="form-component-input-name"]              Sandbox5-instance
    click element   xpath://*[@id="form-component-dropDown-type"]/div[1]
    wait until element is Visible   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[2]
    click element   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[2]
    Sleep   1
    click element   xpath://*[@id="form-component-dropDown-type"]/div[1]
    wait until element is Visible   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[3]
    click element   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[3]
    click element   xpath://*[@id="form-component-dropDown-node"]/div
    wait until element is Visible   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[4]
    click element   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[4]
    input text  xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[1]/textarea    ${mips}[4]
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[2]/i
    input text  xpath://*[@id="form-component-input-instancePath"]      /sc
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Instance4
    Sleep   1
    Click link  link:User Interface
    click element   xpath://*[@id="toolbar-item-user-interface-instances-1"]/div/div/div/span
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]
    click element   xpath://*[@id="toolbar-item-user-interface-instances-0"]/span
    input text      xpath://*[@id="form-component-input-name"]      AdminUI5-instance
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[1]/i
    Sleep   1
    wait until element is Visible   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[1]/div[1]/ul/li[9]/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[1]/div[1]/ul/li[9]/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[2]/span[1]
    click element   xpath://*[@id="form-component-dropDown-node"]/div[1]
    wait until element is Visible   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[2]
    click element   xpath://*[@id="form-component-dropDown-node"]/div[2]/ul/li[2]
    input text      xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[1]/textarea    ${mips}[2]
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[1]/div/div/div/div[2]/div[2]/i
    input text      xpath://*[@id="form-component-input-instancePath"]      /sc
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]


Cluster1
     Sleep   2
     click element   xpath://*[@id="nav-list-item-INSTANCES"]/div/span
     Sleep   2
     click element   xpath://*[@id="nav-list-item-CLUSTERS"]/div/span
    click link  link:Nanolog
    click element   xpath://*[@id="toolbar-item-nanolog-clusters-1"]/div/div/div/i[2]
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]
    click element   xpath://*[@id="toolbar-item-nanolog-clusters-0"]/span
    input text      xpath://*[@id="form-component-input-name"]      ${nodes2}[3]5-cluster                  #Nanolog2-cluster
    click element   xpath://*[@id="form-component-dropDown-type"]/div[1]/i
    click element   xpath://*[@id="form-component-dropDown-type"]/div[2]/ul/li[3]
    click element   xpath://*[@id="form-component-multiSelect-instances"]/div/i
    wait until element is Visible   xpath://*[@id="form-component-multiSelect-instances"]/div[2]/div[1]/div[1]/ul/li/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-instances"]/div[2]/div[1]/div[1]/ul/li/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-instances"]/div[2]/div[2]/span[1]
    click element   xpath://*[@id="form-component-dropDown-primaryNanologStorageInstance"]/div[1]/i
    wait until element is Visible   xpath://*[@id="form-component-dropDown-primaryNanologStorageInstance"]/div[2]/ul/li
    click element   xpath://*[@id="form-component-dropDown-primaryNanologStorageInstance"]/div[2]/ul/li
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
 
Cluster2
    Sleep   1
    click link  link:Sandbox

    click element   xpath://*[@id="toolbar-item-behavioral-analysis-clusters-0"]/span
    input text  xpath://*[@id="form-component-input-name"]      Sandbox5-cluster
    click element   xpath://*[@id="form-component-multiSelect-instances"]/div[1]
    wait until element is Visible   xpath://*[@id="form-component-multiSelect-instances"]/div[2]/div[1]/div[1]/ul/li/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-instances"]/div[2]/div[1]/div[1]/ul/li/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-instances"]/div[2]/div[2]/span[1]
    click element   xpath://*[@id="form-component-dropDown-primaryInstance"]/div/i
    click element   xpath://*[@id="form-component-dropDown-primaryInstance"]/div[2]/ul/li
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]
    Sleep   3
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span
    Sleep   1
    # Sleep   
    # wait until element is Visible   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span
    # click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span
  
Instance5
    Sleep   1
    click element   xpath://*[@id="nav-list-item-CLUSTERS"]/div/span
    click element   xpath://*[@id="nav-list-item-INSTANCES"]/div/i
    Sleep   1
    click link  link:ZEN
    Sleep   1
    click element   xpath://*[@id="toolbar-item-zen-instances-1"]/div/div/div/i[2]
    
    click element   xpath://*[@id="context-selector-list-item-ZSCALER"]
    click element   xpath://*[@id="toolbar-item-zen-instances-0"]
    input text  xpath://*[@id="form-component-input-name"]              ${nodes2}[1]5-instance        #ZEN2-instance
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[1]
    wait until element is Visible   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[1]/div[1]/ul/li[2]/div/span[2]
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[1]/div[1]/ul/li[2]/div/span[2]
    Sleep   1
    click element   xpath://*[@id="form-component-multiSelect-types"]/div[2]/div[2]/span[1]
    click element   xpath://*[@id="form-component-dropDown-node"]/div/i
    wait until element is Visible   //li[@title="SME4-node"]
    click element   //li[@title="SME4-node"]
    Sleep   1
    click element   xpath://*[@id="form-component-dropDown-nanologCluster"]/div/i
    wait until element is Visible   //li[@title="SMSM5-cluster"]
    click element   //li[@title="SMSM5-cluster"]
    click element   xpath://*[@id="form-component-dropDown-behaviorAnalysisInstance"]/div[1]
    wait until element is Visible   //li[@title="Sandbox5-instance"]
    click element   //li[@title="Sandbox5-instance"]
    input text  xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[2]/div/div/div/div[2]/div[1]/textarea    ${zensip}
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[2]/div/div/div/div[2]/div[2]/i
    input text  xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[7]/div/div/div/div/div[1]/div/input[1]   ${zensip}
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[2]/div/div/div[8]/div[7]/div/div/div/div/div[1]/i
    input text  xpath://*[@id="form-component-input-instancePath"]      /sc
    click element   xpath://*[@id="zscm"]/div/div[2]/div/div[3]/span/div/div[3]/span[1]

    close browser
    