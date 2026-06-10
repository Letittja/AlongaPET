# Requisitos de Sistema e Dependências (AlongaPET)
Para garantir que toda a equipa desenvolve no mesmo ambiente e evitar conflitos de versão, certifique-se de que o seu computador cumpre os seguintes requisitos antes de iniciar a sua Sprint.

## 1. Ambiente de Desenvolvimento (SDKs)

- **Flutter SDK:** Versão `3.x.x` ou superior.
- **Dart SDK:** Versão `>=3.0.0 <4.0.0` (incluído automaticamente com as versões recentes do Flutter).
- **IDE Recomendada:** Visual Studio Code (com as extensões de Flutter e Dart instaladas) ou Android Studio.
- **Emulador:** Android Virtual Device (AVD) configurado no Android Studio, ou um dispositivo Android/iOS físico conectado via cabo/Wi-Fi.

## 2. Dependências do Projeto (Pacotes Flutter)

As bibliotecas utilizadas na construção da interface e lógica estão declaradas no ficheiro `pubspec.yaml`. O comando `flutter pub get` irá transferir automaticamente as seguintes versões (ou superiores compatíveis):

### Core & Gestão de Estado
- `provider: ^6.1.1` - Para a injeção de dependências e atualização do estado do Pet e das barras de progresso.

### Armazenamento e Base de Dados
- `sqflite: ^2.3.0` - Motor SQLite para guardar os dados do utilizador e da aplicação localmente, cumprindo as normas de privacidade (LGPD).
- `path_provider: ^2.1.1` - Necessário para encontrar o caminho correto onde o ficheiro `.db` do SQLite será guardado no sistema de ficheiros do telemóvel.

### UI e Animações
- `lottie: ^2.7.0` - Renderização de animações complexas exportadas do After Effects.
- `rive: ^0.12.0` - Motor de animação interativa para as expressões e reações em tempo real do Pet Virtual.

## 3. Requisitos de Hardware (Para a compilação local)

- **Sistema Operativo:** Windows 10/11, macOS ou Linux.
- **Armazenamento:** Pelo menos 10 GB de espaço livre (o Android Studio e os SDKs ocupam bastante espaço).
- **Memória RAM:** Mínimo de 8 GB (Recomendado 16 GB para executar o emulador do Android e o VS Code em simultâneo sem abrandamentos).