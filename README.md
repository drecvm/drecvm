==============================================
Execucao rapida (diretamente do Docker Hub)
==============================================
1 - Instalar o Docker

2 - Rodar o docker com os dados da imagem ja publicada no docker hub

docker run -i -t -p 8888:8888 drecvm/drecvm:0.1 

3 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888

==============================================
Executando localmente from scratch
==============================================

1 - Instalar o Docker

2 - Abrir o terminal e rodar o comando que cria uma nova imagem a partir do docker file desse diretorio config
    
docker build -t drecvm/drecvm:0.1 .
    
3 - Executar a imagem e com isso criar o container e rodando o jupter no diretorio que ele ja baixou o notebook do trabalho

docker run -i -t -p 8888:8888 trabalhodrecvm/drecvm:0.1 

4 - Abrir no navegador da maquina host e acessar a URL do jupyter notbook

http://127.0.0.1:8888

5 - Ir para o diretório do trabalho no jupyter, abrir o notebook e executar

==============================================
Outros Comandos importantes
==============================================

Imagens
-----------
I - Listar as imagens configuradas no docker

docker images

II - Remover uma imagem existente

docker rmi <ID-IMAGEM>

Container
-----------
I - Listar todos os containers do docker (inclusive os inativos)

docker ps -a

II - Remover um container inativo

docker rm <ID-CONTAINER>

III - Iniciar um container desativado

docker start -i <ID-CONTAINER>

IV - Parar um container ativo

docker stop <ID-CONTAINER>

V - Conectar em um container atraves do comendo exec

docker exec -it <ID-CONTAINER> /bin/bash

Docker hub
-----------
I - Verificando se esta logado no docker hub

docker login

II - Fazendo push da imagem para o Docker hub (pode ser necessario ter que retaggear anterioremente) 

docker push <DOCKE-USER>/<REPOSITORIO>:<TAG>

EX: docker push drecvm/drecvm:0.1
