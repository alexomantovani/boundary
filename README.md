# Counter with RepaintBoundary

Este é um **mini-projeto Flutter** que demonstra o uso prático do widget `RepaintBoundary` em conjunto com o gerenciamento de estado utilizando o pacote `flutter_bloc`. O objetivo principal do projeto é ilustrar como otimizar a renderização de partes específicas da interface para evitar redesenhos desnecessários, mesmo em aplicações dinâmicas.

## 🎯 **Objetivo do Projeto**

- Demonstrar como isolar subárvores de widgets usando `RepaintBoundary` para melhorar o desempenho da renderização.
- Integrar o gerenciamento de estado com `flutter_bloc` para atualizar apenas partes necessárias da interface.
- Proporcionar uma base prática para aprendizado de otimização de performance no Flutter.

---

## 🛠 **Tecnologias Utilizadas**

- **Flutter**: Framework principal para desenvolvimento da interface e lógica do aplicativo.
- **Dart**: Linguagem de programação usada para o desenvolvimento da aplicação.
- **flutter_bloc**: Biblioteca para gerenciamento de estado baseado em blocos.
- **RepaintBoundary**: Widget Flutter usado para otimizar a renderização, criando um limite de pintura para subárvores.

---

## 📋 **Fundamentos do Projeto**

### **1. Gerenciamento de Estado**

- Utiliza o padrão **BLoC (Business Logic Component)** com o pacote `flutter_bloc`.
- O contador é controlado por um `Bloc`, com estados (`CounterState`) e eventos (`CounterEvent`) definidos para gerenciar as atualizações de forma reativa.

### **2. Otimização de Renderização**

- O widget `RepaintBoundary` é utilizado para isolar partes da interface:
  - **Texto do contador:** Atualiza apenas o valor do contador quando o estado muda.
  - **Texto estático:** Não é redesenhado, mesmo quando o estado do contador muda.
- Essa abordagem reduz o consumo de recursos e melhora o desempenho em interfaces complexas.

---

## 🚀 **Como Funciona**

### **Interações**

1. O contador exibe o valor inicial como `0`.
2. Ao clicar no botão "Increment", o estado do contador é atualizado, e apenas o texto do contador é redesenhado.
3. O texto estático permanece inalterado, demonstrando o efeito do `RepaintBoundary`.

### **Widgets Principais**

- `BlocProvider`: Injeta o `CounterBloc` na árvore de widgets.
- `BlocBuilder`: Reconstrói apenas widgets dependentes do estado gerenciado.
- `RepaintBoundary`: Isola widgets que não precisam ser redesenhados.
