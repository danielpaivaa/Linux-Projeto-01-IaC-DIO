#! /bin/bash

echo "Iniciando Script!!"

echo "Deletando diretorios..."
rm -Rf /publico/
rm -Rf /adm/
rm -Rf /ven/
rm -Rf /sec/

echo "Deletando os grupos..."
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC

echo "Deletando os usuarios..."
userdel -f -r carlos
userdel -f -r maria 
userdel -f -r joao

userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto

userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio

echo "Script Finalizado!!"