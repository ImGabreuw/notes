# Comando `chmod`

### Função

* Alterar as permissões de um arquivo

### Sintaxe básica

* `$ chmod <alvo da alteração>=<permissões (rwx)>`

* **Exemplo**

  * `$ chmod u=rwx script.sh`

    * `u` (*user*) = alterar a permissão de usuário

    * `rwx` = adicionar as permissões de leitura, escrita e execução

  * `$ chmod u=x script.sh`

    * `u` = alterar a permissão de usuário

    * `x` = adicionar apenas a permissão de execução

  * `$ chmod g=rw script.sh`

    * `g` (*group*) = alterar a permissão de grupo

    * `rw` = adicionar as permissões de leitura e escrita

  * `$ chmod o=rw script.sh`

    * `o` (*others*) = alterar a permissão de outros usuários

    * `rw` = adicionar as permissões de leitura e escrita