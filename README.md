API Usuarios Node.js, Express e PostgreSQL, com calculo de idade e signo.
Este é um exemplo de uma API web construída com Node.js, Express e PostgreSQL para gerenciar usuários. A API permite a criação, leitura, atualização e exclusão (CRUD) de usuários em um banco de dados PostgreSQL.

Configuração do Ambiente
Certifique-se de ter o Node.js e o PostgreSQL instalados em sua máquina.

Instale as dependências do projeto: npm install express pg

Configure as variáveis de ambiente:

PORT: Porta em que o servidor será executado.
Dados de acesso ao banco de dados PostgreSQL (user, host, database, password, port).
Comandos iniciais para criação do projeto
npm init -y
npm install express pg
npm install -g nodemon
Criando o Banco de Dados
1 . Antes de iniciar o servidor, é necessário criar o banco de dados no PostgreSQL. Você pode fazer isso executando os comandos no console do PostgreSQL ou em uma ferramenta de administração:

Os comandos encontram-se dentro da pasta db, no arquivo script.sql.
Aviso Importante
Os dados de acesso ao banco de dados estão expostos neste projeto, pois é destinado a fins educacionais como projeto de estudo para alunos. Certifique-se de não utilizar informações sensíveis neste contexto.

Endpoints
POST /users: Adiciona um novo usuário.

Corpo da requisição:{
	"nome" : "joao",
	"email" : "joao@dev",
	"datanascimento" : "1993-04-20",
	"sexo" : "Masculino"
}
GET /users: Retorna todos os usuários.

Resposta: { "total": 2, "users": [...] }

PUT /users/:id: Atualiza um usuário existente.

Parâmetros da URL: id do usuário.

Corpo da requisição: {
	"nome" : "CLEITON",
	"email" : "CLEITONN@dev",
	"datanascimento" : "1996-06-20",
	"sexo" : "Masculino"
}

DELETE /users/:id: Exclui um usuário existente.

Parâmetros da URL: id do usuário.

Execução
Para iniciar o servidor, execute: node nome-do-arquivo.js

O servidor será iniciado na porta especificada.

Certifique-se de substituir nome-do-arquivo.js pelo nome do arquivo onde o código está localizado.

Testando as Rotas com Insomnia
Você pode usar o Insomnia para testar as rotas da API de Gerenciamento de Usuários. O Insomnia é uma ferramenta de teste de API que permite enviar solicitações HTTP para o seu servidor e visualizar as respostas.

Configuração do Ambiente no Insomnia
Faça o download e instale o Insomnia.
Abra o Insomnia e crie um novo Workspace para o projeto.
Adicionando as Requisições
Abra o Insomnia e crie uma nova Pasta para o projeto.
Adicione as requisições para cada rota da API:
POST /users: Adicione uma requisição do tipo POST para criar um novo usuário. Configure o corpo da requisição com o JSON contendo os dados do usuário. alt text
GET /users: Adicione uma requisição do tipo GET para obter todos os usuários.
GET /users/:id: Adicione uma requisição do tipo GET para obter um usuário específico. Substitua :id pelo ID do usuário desejado.
PUT /users/:id: Adicione uma requisição do tipo PUT para atualizar um usuário existente. Substitua :id pelo ID do usuário que deseja atualizar e configure o corpo da requisição com os novos dados do usuário.
DELETE /users/:id: Adicione uma requisição do tipo DELETE para excluir um usuário existente. Substitua :id pelo ID do usuário que deseja excluir.
Testando as Requisições
Com as requisições adicionadas, você pode testá-las clicando no botão "Send" ao lado de cada requisição.
Após enviar a requisição, o Insomnia exibirá a resposta do servidor, permitindo que você visualize o resultado da operação.
