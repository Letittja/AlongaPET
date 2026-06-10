# AlongaPET - Projeto de Bem-Estar Académico

O **AlongaPET** é uma aplicação móvel desenvolvida para monitorizar e promover o bem-estar físico e mental de estudantes de computação e sistemas. Através da gamificação e de um "Pet Espelho" (animal de estimação virtual), a aplicação incentiva a quebra do comportamento sedentário e a realização de pausas ativas.

## Funcionalidades Principais

- **Bichinho Virtual (Pet Espelho):** Um companheiro virtual cujo estado de humor e saúde reflete os hábitos diários do utilizador.
- **Registo de Sintomas (Log):** Ecrã interativo para o registo rápido de dores físicas, níveis de ansiedade e tempo de ecrã.
- **Prescrição Inteligente:** Motor de recomendação baseado em literatura científica que sugere alongamentos e atividades físicas com base nos sintomas registados.
- **Integração Passiva (Futuro):** Leitura de passos e mobilidade através do Google Health Connect e Apple HealthKit.

## Tecnologias e Arquitetura

O projeto foi construído utilizando o framework **Flutter** e segue os princípios da **Clean Architecture (MVC)** para garantir a separação de responsabilidades.

- **Frontend & Mobile:** Flutter (Dart)
- **Gestão de Estado:** Provider
- **Animações Vetoriais:** Lottie e Rive
- **Base de Dados Local (MVP):** SQLite
- **Backend (Futuro):** Node.js com PostgreSQL

## Equipe de Desenvolvimento

- Letittja (Let): Coordenação, Arquitetura e Base de Dados (5º Ano)

- Sofia: Estruturação de Dados e Base de Conhecimento Científico (3º Ano)

- Andrei: UI e Ecrã de Onboarding (2º Ano)

- Duda Silva: UI e Ecrã Principal/Dashboard (2º Ano)

- Angelo: UI, Layout Base e Roteamento do Log de Sintomas (1º Ano)

- Duda Ferreira: UI, Componentização e Grelhas do Log de Sintomas (1º Ano)

- Carlos Junior: UI, Interações e Lógica de Ação do Log de Sintomas (1º Ano)

## Como executar
- Clone o repositório:

git clone [https://github.com/SEU-USUARIO/alongapet_app.git](https://github.com/SEU-USUARIO/alongapet_app.git)

- Acesse a pasta do projeto:

cd alongapet_app

- Instale as dependências:

flutter pub get

- Execute a aplicação (certifique-se de que tem um emulador aberto ou um dispositivo conectado):

flutter run

## Estrutura de Pastas

O código fonte está organizado na pasta `lib/` da seguinte forma:

```text
lib/
├── core/           # Configurações globais e base de dados (database_helper.dart)
├── data/           # Base de conhecimento e dicionários de dados (recomendacoes_data.dart)
├── views/          # Ecrãs e interface gráfica do utilizador
│   ├── onboarding_view.dart
│   ├── dashboard_view.dart
│   └── log_sintomas_view.dart
└── main.dart       # Ponto de entrada da aplicação