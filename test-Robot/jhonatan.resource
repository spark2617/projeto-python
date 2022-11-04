***Variables ***
#variavel padrão
${site}  https://www.digitalhouse.com/br
${navegador}  Chrome
${outrosCursos}  xpath=//*[@id="__next"]/div/main/section/div/div[3]/div/a
${btnInscreverAgora}  xpath=//*[@id="__next"]/div/main/section/div/div/div[1]/div/div[2]/div[1]/a
${btnInscrever}  xpath=//*[@id="0"]/div/a



#variavel do Data Analytics
${btnDataAnalytics}  xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[3]/a/span
${textoDataAnalytics}  voltado para qualquer pessoa que deseja ampliar suas capacidades analíticas
${textoDataAnalytics_}  pessoas interessadas em business intelligence


#Data Science
${textoDataScience}  profissionais de diversas áreas que desejam melhorar sua comunicação como engenheiros de Big Data
${textoDataScience_}  adquirir habilidades práticas com as ferramentas específicas para fazer análises
${btnDataScience}  xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[4]/a/span


#Marketing Digital
${textoMarketing}  voltado para as pessoas que querem ingressar na carreira de marketing digital
${textoMarketing_}  Empreendedores que desejam compreender os fundamentos da área e as principais estratégias de marketing digital
${btnMarketing}  xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[8]/a/span


#Certified Tech Developer
${textoCTD}  Uma carreira pensada e desenhada pela Digital House, Mercado Livre e Globant
${textoCTD_}  Se você deseja mergulhar no mundo da programação e no desenvolvimento de novos produtos digitais
${btnCTD}  xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[1]/a/span/p[1]


#dados para inputs
${nome}  Jhonatan
${sobrenome}  Souza
${email}  jhonatandesouzade13@gmail.com
${DD}  66
${telefone}  999971678

#endereços dos inputs do CTD
${inputNome}  id=name
${inputSobrenome}  id=lastname
${inputEmail}  id=email
${inputDD}  id=phonecode
${inputFone}  id=phone
${checkbox}  id=tyc

#variavel para o Programa de Bolsas BLK PWR DEV
${textoBLK_PWR_DEV}  Uma carreira em Programação para mudar o seu futuro
${textoBLK_PWR_DEV_}  Confira os requisitos para a bolsa de estudo
${btnQueroMinhaBolsa}  xpath=//*[@id="__next"]/div/main/div[1]/div/div/div[2]/div/a
${botaoQueroMinhaBolsa}  xpath=//*[@id="Iviuo3df7xldB3pOAff2pIiZqwcUd3tv"]/div[1]
${campoNome}  xpath=//*[@id="CzpXMe7EhpI6diDHrN8Oa1GHrhEPfIsA"]
${campoSobrenome}  xpath=//*[@id="f02RR9bt0eNTrF0fJuC2azUMkD7TRX7M"]
${campoEmail}  xpath=//*[@id="MUDBMzoKRZnrEBNp5XfGwgA0rdT7iCUw"]
${campoCelular}  xpath=//*[@id="IIqCGDME1hJVbZz5duh3TgaPEzSbSd6G"]
${campoEstado}  xpath=//*[@id="ZGczPPDExPE6xndDZ05KhIgLkrMZSfbL"]
${campoCor}  css=#dZIt6ReeUqhJIp1n4Z5zAAJNmPqCvK1T 
${checkboxMinhaBolsa}  css=#nB2kF0hw2IEBSJmBHz1NbqnG9XylORio


*** Keywords ***
processo dataAnalytics
  processo principal  ${textoDataAnalytics}  ${textoDataAnalytics_}  ${btnDataAnalytics}  ${btnInscreverAgora}  ${btnInscrever}  R$10.315

processo dataScience
  processo principal  ${textoDataScience}  ${textoDataScience_}  ${btnDataScience}  ${btnInscreverAgora}  ${btnInscrever}  R$11.878

processo Marketing
  processo principal  ${textoMarketing}  ${textoMarketing_}  ${btnMarketing}  ${btnInscreverAgora}  ${btnInscrever}  R$9.376

processo CTD
  Open Browser  ${site}  ${navegador}
  Maximize Browser Window

  Sleep  3
  Select frame   xpath=/html/body/iframe[2]
  Click Element  xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect Frame

  Click Element  ${outrosCursos}
  Click Element  ${btnCTD}

  Page Should Contain  ${textoCTD}
  Page Should Contain  ${textoCTD_}

  Click Element  ${btnInscreverAgora}
  Click Element  ${btnInscrever}

  Page Should Contain  a partir de R$ 289,00 mensais

  Input Text  ${inputNome}  ${nome}
  Input Text  ${inputSobrenome}  ${sobrenome}
  Input Text  ${inputEmail}  ${email}
  Input Text  ${inputDD}  ${DD}
  Input Text  ${inputFone}  ${telefone}
  Click Element  ${checkbox}

  Sleep  5

  Close Browser




Validação das informações do Programa de Bolsas BLK PWR DEV
  Open Browser  ${site}  ${navegador}
  Maximize Browser Window

  Sleep  3
  Select frame   xpath=/html/body/iframe[2]
  Click Element  xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect Frame
  
  Click Element  ${btnQueroMinhaBolsa}

  Page Should Contain  ${textoBLK_PWR_DEV}
  Page Should Contain  ${textoBLK_PWR_DEV_}

  Click Element  ${botaoQueroMinhaBolsa}
  
  Page Should Contain  a partir de R$88,00 mensais

  Input Text  ${campoNome}  ${nome}
  Input Text  ${campoSobrenome}  ${sobrenome}
  Input Text  ${campoEmail}  ${email}
  Input Text  ${campoCelular}  ${DD} ${telefone}
  Select from list by label  ${campoEstado}  Mato Grosso
  Select from list by label  ${campoCor}  Pardo
  Click Element  ${checkboxMinhaBolsa}  
  Close Browser

processo principal
  [Arguments]  ${texto1}  ${texto2}  ${btnCurso}  ${btnInscreverAgora}  ${btnInscrever}  ${valor}

  Open Browser  ${site}  ${navegador}
  Maximize Browser Window
  Sleep  3
  Select frame   xpath=/html/body/iframe[2]
  Click Element  xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
  Unselect Frame
  Click Element  ${outrosCursos}
  Click Element  ${btnCurso}
  Page Should Contain  ${texto1}
  Page Should Contain  ${texto2}
  Click Element  ${btnInscreverAgora}
  Click Element  ${btnInscrever}
  Page Should Contain  ${valor}
  Close Browser