# Clean Architecture Flutter Demo

Este é um projeto de exemplo que demonstra a implementação de uma arquitetura limpa (Clean Architecture) em um aplicativo Flutter, juntamente com o uso de Provider para gerenciamento de estado.

## Estrutura do Projeto

O projeto é dividido em camadas conforme a arquitetura limpa:

- **data**: Contém implementações concretas para os repositórios e a lógica de acesso a dados.
- **domain**: Define as entidades de domínio e os contratos para os repositórios.
- **presentation**: Lida com a camada de apresentação, incluindo a UI e o gerenciamento de estado usando Provider.
- **domain/models**: Contém os modelos de dados do domínio.

## Como Executar

Certifique-se de ter o Flutter instalado em seu ambiente de desenvolvimento. Em seguida, execute os seguintes comandos:

Flutter version 3.16.5

```bash
flutter pub get
flutter run