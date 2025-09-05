# Desafio - Projeto lógico de Banco de Dados

Baseado no modelo conceitual desenvolvido sobre E-Commerce em atividade anterior criei as queryes, tive que renomear entidades e atributos pela existência do caracter "espaço" em seus nomes mas preservei ao máximo sua integridade. 

Descrição do conteúdo das queryes desenvolvidas:

## criar_db.sql
Script principal de criação do banco de dados `db_ecommerce` e suas tabelas:
- Estrutura de tabelas para clientes, pessoas físicas e jurídicas, produtos, pedidos, fornecedores, estoque, entrega, pagamento, vendedor terceiro, entre outras.
- Definição de chaves primárias, índices únicos e relacionamentos.
- Utiliza o padrão InnoDB e charset utf8mb4.

## popular_db.sql
Script de inserção de dados de exemplo:
- Popula as tabelas de pessoa física, pessoa jurídica, cliente, produto, pedido, fornecedor, estoque, estocarproduto, disponibilizandoUmProduto.
- Exemplos de dados para testes e desenvolvimento.

## recuperar_db.sql
Consultas SQL para recuperação de dados:
- Seleções simples e filtradas (produtos, pessoas físicas).
- Cálculo de valor total de estoque por produto e categoria.
- Ordenações e agrupamentos.
- Junções entre tabelas para exibir pedidos com nome do cliente (físico e jurídico).
- Exemplos de uso de HAVING, AVG, SUM.
- Respostas a perguntas propostas.

## Utilizei
- **MySQL**: Banco de dados relacional utilizado para modelagem, criação e manipulação dos dados.
- **MySQL Workbench**: Ferramenta gráfica para modelagem lógica, geração de scripts e administração do banco.
- **SQL**: Linguagem utilizada para criação de tabelas, inserção de dados e consultas.
- **VScode+Copilot**: Como facilitador da escrita das queryes.

---
> by CBS construido no VScode com auxílio do chatGPT
