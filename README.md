# 📊 Meu Primeiro Banco de Dados

## 📋 Descrição do Projeto

Este é o meu primeiro projeto de banco de dados relacional, desenvolvido como parte do meu aprendizado em modelagem de dados e SQL. O sistema foi projetado para gerenciar informações de uma **biblioteca escolar**, incluindo livros, autores, usuários e empréstimos.

## 🎯 Objetivos

- Aplicar conceitos de modelagem de banco de dados
- Implementar relacionamentos entre entidades
- Praticar comandos SQL (DDL, DML, DQL)
- Compreender normalização de dados
- Criar consultas complexas com JOINs

## 📐 Modelo Conceitual (DER)

### Entidades Principais:

**📚 LIVRO**
- id_livro (PK)
- titulo
- isbn
- ano_publicacao
- quantidade_total
- quantidade_disponivel

**✍️ AUTOR**
- id_autor (PK)
- nome
- nacionalidade
- data_nascimento

**👤 USUARIO**
- id_usuario (PK)
- nome
- email
- telefone
- data_cadastro
- tipo_usuario (aluno/professor/funcionario)

**📖 EMPRESTIMO**
- id_emprestimo (PK)
- id_usuario (FK)
- id_livro (FK)
- data_emprestimo
- data_prevista_devolucao
- data_devolucao
- status

**🔗 LIVRO_AUTOR** (Tabela de relacionamento N:N)
- id_livro (FK)
- id_autor (FK)

### Relacionamentos:

- **USUARIO** ←→ **EMPRESTIMO** (1:N) - Um usuário pode ter vários empréstimos
- **LIVRO** ←→ **EMPRESTIMO** (1:N) - Um livro pode ser emprestado várias vezes
- **LIVRO** ←→ **AUTOR** (N:N) - Um livro pode ter vários autores e um autor pode escrever vários livros

## 🗄️ Estrutura do Banco

### Tecnologias Utilizadas:
- **SGBD:** MySQL 8.0
- **Linguagem:** SQL
- **Ferramenta de Modelagem:** MySQL Workbench

### Scripts Principais:

```
📁 database/
├── 📄 01_create_database.sql    # Criação do banco e tabelas
├── 📄 02_insert_data.sql        # Inserção de dados de exemplo
├── 📄 03_queries.sql            # Consultas de exemplo
└── 📄 04_procedures.sql         # Stored procedures (opcional)
```

## 🚀 Como Executar

### Pré-requisitos:
- MySQL Server instalado
- Cliente MySQL (MySQL Workbench, phpMyAdmin, ou terminal)

### Passos para Instalação:

1. **Clone o repositório** (se aplicável):
```bash
git clone [seu-repositorio]
cd meu-primeiro-banco
```

2. **Conecte ao MySQL**:
```bash
mysql -u root -p
```

3. **Execute os scripts na ordem**:
```sql
-- Criar banco e tabelas
SOURCE database/01_create_database.sql;

-- Inserir dados de exemplo
SOURCE database/02_insert_data.sql;
```

4. **Teste com algumas consultas**:
```sql
-- Listar todos os livros disponíveis
SELECT * FROM livro WHERE quantidade_disponivel > 0;

-- Buscar empréstimos em aberto
SELECT u.nome, l.titulo, e.data_emprestimo 
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN livro l ON e.id_livro = l.id_livro
WHERE e.status = 'ativo';
```

## 📊 Exemplos de Consultas

### Consultas Básicas:
```sql
-- Listar todos os autores
SELECT nome, nacionalidade FROM autor ORDER BY nome;

-- Contar livros por autor
SELECT a.nome, COUNT(la.id_livro) as total_livros
FROM autor a
LEFT JOIN livro_autor la ON a.id_autor = la.id_autor
GROUP BY a.id_autor, a.nome;
```

### Consultas Avançadas:
```sql
-- Usuários com empréstimos em atraso
SELECT u.nome, u.email, l.titulo, 
       DATEDIFF(CURDATE(), e.data_prevista_devolucao) as dias_atraso
FROM emprestimo e
JOIN usuario u ON e.id_usuario = u.id_usuario
JOIN livro l ON e.id_livro = l.id_livro
WHERE e.status = 'ativo' 
  AND e.data_prevista_devolucao < CURDATE();
```

## 🎓 Aprendizados

Durante o desenvolvimento deste projeto, aprendi sobre:

- **Normalização:** Aplicação das formas normais para evitar redundância
- **Chaves Primárias e Estrangeiras:** Garantia da integridade referencial
- **Relacionamentos:** Implementação de relacionamentos 1:1, 1:N e N:N
- **Índices:** Otimização de consultas com índices apropriados
- **Constraints:** Uso de restrições para manter consistência dos dados

## 🔧 Melhorias Futuras

- [ ] Implementar triggers para auditoria
- [ ] Adicionar views para relatórios comuns
- [ ] Criar stored procedures para operações complexas
- [ ] Implementar backup automatizado
- [ ] Adicionar mais validações de dados

## 📚 Recursos Utilizados

- [Documentação MySQL](https://dev.mysql.com/doc/)
- [Tutorial de Modelagem de Dados](exemplo.com)
- Curso de Banco de Dados - [Nome do Curso]

## 👨‍💻 Autor

**[Seu Nome]**
- Email: [seu.email@exemplo.com]
- LinkedIn: [seu-perfil]
- GitHub: [seu-usuario]

## 📝 Licença

Este projeto foi desenvolvido para fins educacionais.

---

*Primeiro projeto de banco de dados - [Data de criação]*
