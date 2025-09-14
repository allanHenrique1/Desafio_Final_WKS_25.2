# Desafio_Final_WKS_25.2

Desafio Final- 
Visão Geral
Este projeto foi desenvolvido com o objetivo de analisar o perfil dos clientes da academia RedFit e criar um modelo de Machine Learning capaz de classificá-los em diferentes níveis de atividade física: Sedentário, Ativo ou Atleta. A análise abrange desde a extração e transformação dos dados até a visualização interativa e a modelagem preditiva.

Recursos e Tecnologias
Python: Para o processamento de dados e modelagem.

Pandas: Análise e manipulação de dados.

Matplotlib: Geração de gráficos estáticos para a análise exploratória.

SQL: Modelagem do banco de dados e manipulação de dados.

DDL (Data Definition Language): Script de criação das tabelas.

DML (Data Manipulation Language): Comandos para inserção de dados.

DQL (Data Query Language): Consultas para extração de informações.

Power BI: Criação de um dashboard interativo para análise de negócio.

Estrutura do Projeto
O projeto é dividido em etapas lógicas para garantir um fluxo de trabalho completo e replicável.

1. Extração, Transformação e Carga (ETL)
Extração: Os dados dos clientes foram carregados a partir de um arquivo CSV.

Transformação: Os dados foram padronizados, incluindo:

Limpeza e padronização de categorias (ex: sexo, estado, tipo_atividade).

Conversão do tipo de dados da coluna data_matricula para datetime.

Cálculo de novas métricas importantes para a análise, como IMC Estimado e a Evolução do PGC (Percentual de Gordura Corporal).

Carga: Uma versão limpa e tratada dos dados foi salva para uso futuro.

2. Análise de Dados e Visualização
Matplotlib: Gráficos estáticos foram gerados, incluindo um gráfico de barras para comparar diferentes métricas e um gráfico de pizza para visualizar a distribuição dos dados.

Power BI: Um dashboard completo foi construído para fornecer uma visão interativa dos principais indicadores de desempenho da academia, permitindo uma análise mais profunda e dinâmica.

3. Modelagem de Dados e SQL
Um modelo de banco de dados foi projetado para estruturar os dados da academia.

Scripts SQL foram criados para:

Definir a estrutura das tabelas (DDL).

Manipular os dados (DML).

Realizar consultas complexas (DQL).

4. Modelagem Preditiva (Classificação)
A etapa final do projeto visa construir um modelo de Machine Learning para prever o nível de atividade do cliente (sedentária, ativa ou atleta) com base em suas características.
