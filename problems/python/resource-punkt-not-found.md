# Resource punkt not found. Please use the NLTK Downloader to obtain the resource

## **Problema**

Ao tentar executar o script `python ingest.py` do repositório [privateGPT](https://github.com/imartinez/privateGPT), o seguinte erro era exibido em tela:

```
...
LookupError:

Resource punkt not found.
Please use the NLTK Downloader to obtain the resource:

import nltk
nltk.download('punkt')

Searched in:
- '/root/nltk_data'
- '/usr/share/nltk_data'
- '/usr/local/share/nltk_data'
- '/usr/lib/nltk_data'
- '/usr/local/lib/nltk_data'
- '/usr/nltk_data'
- '/usr/lib/nltk_data'
```

## **Solução**

Como solução, basta executar o seguinte comando para baixar os arquivos necessários do `nltk`:

```console
$ python -c "import nltk;nltk.download('punkt')"
```

> Os arquivos serão armazenados em `~/nltk_data`.

## **Referências**

- [GitHub Issues](https://github.com/delip/PyTorchNLPBook/issues/14)
