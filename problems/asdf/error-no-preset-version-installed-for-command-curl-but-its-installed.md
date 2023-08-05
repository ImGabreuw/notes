# Error "No preset version installed for command curl", but it's installed

## **Problema**

Ao instalar a versão `3.10.11` do Python utilizando a ferramenta ASDF a seguinte mensagem de erro aparecia no terminal:

```
Error "No preset version installed for command curl"
```

> **OBS**: a ferramenta `curl` já estava instalada.

## **Solução**

A solução para esse problema foi desinstalar a versão `anaconda` do Python instalado na máquina:

```console
$ asdf uninstall python anaconda3-2023.03
```

Após isso, basta instalar normalmente a versão desejado do Python:

```console
$ asdf install python 3.10.11
```

## **Referências**

- [Stack Overflow](https://stackoverflow.com/questions/71431607/error-no-preset-version-installed-for-command-curl-but-its-installed)
