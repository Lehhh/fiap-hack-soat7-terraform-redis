# terraform-postgres-aws

## Descrição
Este projeto utiliza Terraform para provisionar uma instância do PostgreSQL na AWS.

## Estrutura do Projeto
- `main.tf`: Arquivo principal do Terraform.
- `variables.tf`: Definição das variáveis utilizadas no projeto.
- `outputs.tf`: Definição das saídas do Terraform.
- `README.md`: Documentação do projeto.

## Pré-requisitos
- Terraform instalado na máquina local.
- Credenciais da AWS configuradas.

## Como Usar
1. Clone o repositório:
    ```sh
    git clone https://github.com/seu-usuario/terraform-postgres-aws.git
    cd terraform-postgres-aws
    ```

2. Inicialize o Terraform:
    ```sh
    terraform init
    ```

3. Planeje a infraestrutura:
    ```sh
    terraform plan
    ```

4. Aplique a infraestrutura:
    ```sh
    terraform apply
    ```

## Variáveis
Liste as variáveis importantes e seus valores padrão, se houver:
- `aws_region`: Região da AWS onde os recursos serão criados.
- `db_name`: Nome do banco de dados PostgreSQL.

## Saídas
Liste as saídas importantes:
- `db_endpoint`: Endpoint do banco de dados PostgreSQL.

## Contribuição
Para contribuir com este projeto, por favor, abra um pull request.

## Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.