# Aprendendo comandos do terminal Linux 👨🏿‍💻🐧

## Comandos de transição entre diretórios

- `pwd`: Este comando serve para verificar seu diretório atual;

- `ls`: Serve para listar o que estiver no diretório;

- `cd`: Este comando serve para transitar entre diretórios;
    - `cd /`: Vai para o diretório raíz;

    - `cd ~`: Vai para o diretório do usuário;

    - `cd {nome_do_diretório}`: Entra no diretório escolhido;

    - `cd ..`: Sai do diretório atual.


## Comandos de listagem/filtragem de arquivos/diretórios

- `ls | more`: Lista arquivos em uma única coluna;

- `ls {nome_do_arquivo}`: Lista um arquivo específico;

- `ls {caractere(s)}`: Lista os diretórios e arquivos que iniciarem com o _caractere_ escolhido;

- `ls {caractere(s)}*`: Lista arquivos e diretórios, porém mostrando também seu conteúdo (caso seja um diretório)

- `ls {caractere?caractere}*`: Utilizar o símbolo de '?' siginifica que onde ele estiver pode ser qualquer caractere;

- `ls {nome_do_arquivo}[inicial-final]*`: Listar arquivos em sequência dado o intervalo escolhido;

- `ls {nome_do_arquivo}[^exceção1, exceção2, ...]*`: Listar arquivos em sequência, **exceto** as exceções escolhidas;

- `ls {nome_do_arquivo}[^inicial-final]*`: Listar arquivos em sequência, **exceto** os do intervalo escolhidas.


## Comando de localização de arquivos
    Para buscar um aquivo não precisar estar no mesmo diretório que o arquivo. Muito usado para quando não se conhece o caminho do mesmo.

- `find -name {nome_do_arquivo}*`: Procura arquivos que tem o nome especificado;

## Comandos de manipulação/criação de arquivos/diretórios

- `touch {nome_do_arquivo.extensão}`: Cria um arquivo vazio;

- `mkdir {nome_do_diretório}`: Cria um diretório/pastas
    - `mkdir '{nome da pasta}'`: Cria uma pasta com espaços no nome deve usar _' '_ (aspas simples);

- `rmdir {nome_da_pasta}`: Deleta a pasta selecionada, caso esteja vazia;

- `rm {nome_do_arquivo}`: Para deleter o arquivo selecionado
    - `rm {nome_do_arquivo}*`: Deleta todos os arquivos em comum com o nome escolhido;

    - `rm -rf {nome_da_pasta}`: Deleta a pasta selecionada mesmo que haja conteúdo na mesma;

## Comandos de "ajuda"

- `{comando} --help`: Mostra uma descrição de como funciona o comando assim como os parâmetros que pode-se usar;

- `man {comando}`: Mostra uma descrição com mais detalhes.

## Logando como Super Usuário (root)

- `sudo passwd root`: Comando para criar uma senha para o Super Usuário;

- `su`: Comando para logar como Super Usuário

- `su {nome_do_usuário}`: Comando para voltar o logom de usuário convencional;

## Gerenciando Usuários

- `useradd {nome_de_usuário}`: Para criar um novo usuário

- `userdel -f {nome_de_usuário}`: Para deletar um usuário