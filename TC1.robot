***Settings***
Library     RequestsLibrary
Library     Collections


***Variables***
${url}        https://10.66.103.200/zscmui/zsapi/v1/authenticatedSession

***Test Cases***
Authentication
    create session      session1       ${url}   #disable_warnings=1   
    ${body}=       create dictionary        apiKey=0fggjg88Gg7G     username=admin@zscm.zscaler.com     password=admin
    ${body}  Evaluate  json.dumps(${body})  json
    ${header}=      create dictionary       Content-Type=application/json

    # ${response}=    post request    session1        data=${body}        headers=${header}       uri={url}
    ${response}=    post on session    session1         /         data=${body}        headers=${header}       #url={url}
    log to console      ${response.status_code}
    log to console      ${response.content}