# Comparativo entre VM e container

> ## Virtual Machine (VM)

### **Caso 1 (1 aplicação = 1 servidor)**

![](./assets/caso-1.png)

- **Problemas**

  - **Custo elevado** na manutenção e recursos da máquina

  - **Escalonamento vertical**

    > Escalonamento vertical é a ação de aumentar os recursos utilizados, como por exemplo CPU e memória.

  - **_Downtime_ elevado**

### **Caso 2 (OS compartilhado)**

![](./assets/caso-2.png)

- **Vantagens em relação ao "caso 1"**

  - **Redução no custo**

- **Problemas**

  - **Falta de isolamento de dependências e serviços** após alguma atualização de uma das aplicações

  - **Dificuldade nas trocas de versões da aplicação**

  - **_Downtime_ elevado**

### **Caso 3 (Virtual Server)**

![](./assets/caso-3.png)

- **Vantagens**

  - **Maior isolamento entre aplicações** (OS / binários para cada aplicação)

  - A partir do _Hypervisor_ é possível salvar **_snapshots_ da imagem da VM** (facilidade na persistência e gerenciamento de backups)

  - **Redução no _downtime_** entre atualizações

> ## **Container**

![](./assets/representacao-containerizacao.png)

### **Características**

- Substituição do _Hypervisor_ por um _Container Engine_ (Exemplo: Docker Engine)

> A virtualização com um _Container Engine_ é em nível de sistema operacional.

- Imutabilidade das imagens (em caso de alteração na imagem, é necessário recriá-la)

### **Vantagens**

- **Simplificação na gestão** (1 único sistema operacional e os _container runtime_ o simula)

- **Economia de recurso**

- **Controle de memória e CPU** para cada container

- **Troca das versões facilidade** e **sem _downtime_** entre as as atualizações

- **Viabilizam implantações bem sucedidas**

  - Imagens de containers garantem eficiência na entrega da aplicação

  - Inibem dependências ausentes ou incorretas

  - Evitam conflitos entre programas/bibliotecas

- **Descrevem a aplicação a ser implantada**

### **Problemas que os containers ainda não resolvem**

- **Para DevOps**

  - Implantações bem sucedidas

  - Alta disponibilidade

  - Escalabilidade

  - Segurança

- **Para Devs**

  - Interface agradável (apenas CLI)
