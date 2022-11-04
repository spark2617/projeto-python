*** Settings ***
Library  SeleniumLibrary
Resource  ./jhonatan.resource
*** Test Cases ***
testando data Analytics
  processo dataAnalytics
  
testando data Science
  processo dataScience

testando Marketing Digital
  processo Marketing

testando CTD
  processo CTD
testando programa de bolsa
  Validação das informações do Programa de Bolsas BLK PWR DEV