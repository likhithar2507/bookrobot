*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000/
${email}    pradeep@gmail.com
${password}     12345

*** Test Cases ***
User Registration test
    [Documentation]  Registration page
    [Tags]  user
    open browser  ${web_url}    chrome
    maximize browser window
    sleep  1s
    click link  xpath=//html/body/div/div/div/form/table/tbody/tr[7]/td[2]/a
    sleep  2s

User Login test
    [Documentation]  Login page
    [Tags]  user
    input text  name:email  ${email}
    sleep  1s
    input text  name:password   ${password}
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Search Book test
    [Documentation]  Search page
    [Tags]  user
    click link  xpath=//html/body/nav/a[2]
    sleep  1s
    input text  name:name   KGF
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table[1]/tbody/tr[2]/td[2]/button
    sleep  3s

Logout test
    [Documentation]  Logout page
    [Tags]  user
    click link  xpath=//html/body/nav/a[3]
    sleep  2s
    close browser