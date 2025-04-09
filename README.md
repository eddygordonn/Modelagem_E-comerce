# 📊 Projeto de Banco de Dados para E-commerce

Este projeto consiste em um sistema completo de banco de dados para um e-commerce, implementando desde a modelagem conceitual até consultas SQL avançadas. Foi desenvolvido como parte de um desafio de modelagem de dados, com foco em boas práticas de estruturação e performance.

## 🛠️ Funcionalidades Principais

### Modelagem de Dados
- **Esquema relacional completo** com tabelas normalizadas
- **Tipos de clientes**: PF (Pessoa Física) e PJ (Pessoa Jurídica)
- **Controle de estoque** multi-armazém
- **Rastreamento de pedidos** e entregas
- **Múltiplas formas de pagamento**

### Consultas Implementadas
- ✅ SELECTs básicos e avançados
- ✅ JOINs entre múltiplas tabelas
- ✅ Filtros com WHERE e HAVING
- ✅ Agregações com GROUP BY
- ✅ Atributos derivados
- ✅ Ordenação com ORDER BY

## 🗃️ Estrutura do Banco de Dados

```
erDiagram
    CLIENTE ||--o{ PEDIDO : faz
    CLIENTE {
        int id_cliente PK
        enum tipo
    }
    CLIENTE_PF {
        int id_cliente PK,FK
        varchar(11) CPF
        varchar(100) nome
    }
    PRODUTO ||--o{ PRODUTO_PEDIDO : contém
    PRODUTO {
        int id_produto PK
        varchar(100) nome
        decimal(10,2) preco
    }
    PEDIDO ||--o{ PRODUTO_PEDIDO : possui
    PEDIDO {
        int id_pedido PK
        varchar(45) status
    }
```




