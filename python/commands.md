# Comandos no terminal

No terminal, você pode executar comandos Python interativamente usando o interpretador Python ou executar scripts Python a partir de arquivos com extensão `.py`. Abaixo, vou explicar os principais comandos do Python no terminal:

1. **Executando o interpretador Python (modo interativo)**:

   Para entrar no modo interativo do Python, onde você pode inserir comandos Python um a um e obter resultados imediatos, basta digitar `python` ou `python3` (dependendo da configuração do seu sistema) no terminal e pressionar Enter.

   ```bash
   $ python  # ou python3
   Python 3.9.7 (default, Sep  3 2021, 11:17:40)
   [GCC 10.3.0] on linux
   Type "help", "copyright", "credits" or "license" for more information.
   >>>
   ```

   Agora você pode digitar comandos Python, linha por linha, e ver os resultados imediatamente.

2. **Executando um arquivo Python (modo de script)**:

   Se você tiver um arquivo Python com extensão `.py`, pode executá-lo diretamente no terminal usando o comando `python` ou `python3` seguido pelo nome do arquivo.

   ```bash
   $ python arquivo.py  # ou python3 arquivo.py
   ```

   Isso executará o código contido no arquivo `arquivo.py`.

3. **Executando um módulo no modo interativo**:

   Conforme explicado anteriormente, para executar um módulo no modo interativo, você pode usar o seguinte comando:

   ```bash
   $ python -i arquivo.py  # ou python3 -i arquivo.py
   ```

   Isso permitirá que você interaja com o módulo após a execução.

4. **Saindo do modo interativo**:

   Para sair do modo interativo do Python, você pode usar o comando `exit()` ou pressionar `Ctrl + D` (no Linux ou macOS) ou `Ctrl + Z` (no Windows).

5. **Instalando pacotes com o pip**:

   O `pip` é uma ferramenta usada para instalar pacotes externos em Python. Você pode usá-lo diretamente no terminal para instalar pacotes em seu ambiente Python. Por exemplo, para instalar o pacote `numpy`, você pode usar o seguinte comando:

   ```bash
   $ pip install numpy
   ```

   Isso instalará o pacote `numpy` em seu ambiente Python, tornando-o disponível para uso em seus scripts e projetos.

6. **Executando um script Python com shebang (Linux e macOS)**:

   Em sistemas Linux e macOS, é possível executar um arquivo Python diretamente sem a necessidade de chamar explicitamente o interpretador Python. Para fazer isso, coloque um shebang (indicador do interpretador a ser usado) no início do arquivo Python e torne-o executável.

   ```python
   #!/usr/bin/env python3

   print("Olá, mundo!")
   ```

   Em seguida, no terminal, torne o arquivo executável com o comando `chmod` e execute-o.

   ```bash
   $ chmod +x arquivo.py
   $ ./arquivo.py
   ```

Esses são os principais comandos do Python no terminal. Eles permitem que você execute comandos Python diretamente, interaja com módulos e execute scripts Python a partir de arquivos, tornando o desenvolvimento e a execução de programas Python mais práticos e eficientes.
