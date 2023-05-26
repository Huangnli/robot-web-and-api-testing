*** Settings ***
Resource    ../resources/api_testing_users_resource.robot

*** Variables ***


*** Test Cases ***
Cenário 01: Cadastrar um novo usuário
    Criar um usuário novo
    Cadastrar o usuário criado na ServeRest
    Conferir se o usuário foi cadastrado corretamente