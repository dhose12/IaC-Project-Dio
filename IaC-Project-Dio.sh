#!/bin/bash
sudo apt update && upgrade -y

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários do Grupo ADM..."

useradd mary -m -s "Usuário do Grupo ADM" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Juca -m -s "Usuário do Grupo ADM" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
usseradd Joao -m -s "Usuário do Grupo ADM" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Criando Usuários do Grupo Vendas..."

useradd Gabriel -m -s "Usuário do Grupo Vendas" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Bia -m -s "Usuário do Grupo Vendas" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd New -m -s "Usuário do Grupo Vendas" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Criando Usuários do Grupo SEC..."

useradd Tux -m -s "Usuário do Grupo Sec" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Linus -m -s "Usuário do Grupo Sec" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Gui -m -s "Usuário do Grupo Sec" /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Criando de permissões de acessos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Que a força esteja com Você..."
