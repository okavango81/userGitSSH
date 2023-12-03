@echo off
rem Define as credenciais no git
git config --global --replace-all user.name "edvaldoLeite81"
git config --global --replace-all user.email "eguilhermeleite@uni9.edu.br"

rem Define o configurador para a chave SSH a ser usada
set "fileToDelete=C:\Git\etc\ssh\ssh_config"
set "sourceFile=ssh_config"
set "destinationFile=C:\Git\etc\ssh"

rem Usuario e email definido
set "usernameProfile=edvaldoLeite81"
set "userEmailProfile=eguilhermeleite@uni9.edu.br"


rem Deleta o arquivo no destino se existir
if exist "%fileToDelete%" (
    del /q "%fileToDelete%"
)

rem Copia o arquivo de origem para o destino
copy "%sourceFile%" "%destinationFile%"

echo Credenciais definidas para "%usernameProfile%" 

timeout /nobreak /t 5 > nul
exit