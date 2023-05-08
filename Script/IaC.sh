#! /bin/bash

echo "Iniciando Script!!"

echo "Criando diretorios..."

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -1 senha123)

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 senha123)

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 senha123)

echo "Adicionando os respectivos usuaros ao GRP_ADM..."
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao 

echo "Adicionando os respectivos usuaros ao GRP_VEN..."
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana 
usermod -G GRP_VEN roberto 

echo "Adicionando os respectivos usuaros ao GRP_SEC..."
usermod -G GRP_SEC josefina 
usermod -G GRP_SEC amanda 
usermod -G GRP_SEC rogerio 

echo "Definindo o dono de cada grupo..."
chown -R root:GRP_ADM /adm/
chown -R root:GRP_VEN /ven/
chown -R root:GRP_SEC /sec/

echo "Definindo as respectivas permissoes..."
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Script Finalizado!!"