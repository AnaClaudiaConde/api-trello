# API-Trello

Para uma correta execução do projeto certifique de ter o ruby 2.6.* instalado e funcionando na sua máquina, para mais detalhes veja o [link](https://gorails.com/setup/osx/10.14-mojave)

## Dependencias

### Globais
  - Bundler

Para instalar o bundler globalmente execute no terminal `gem install -g bundler`.

### Projeto
  - httparty
  - rspec
  - rspec_junit_formatter

As dependências do projeto estão descritas no arquivo Gemfile e podem ser instaladas acessando o diretório do projeto e executando o comando `bundler install` no seu terminal.

## Execução dos testes

No terminal acesse o diretório do seu projeto como mostra o comando a baixo:

```shell
cd <PATH_TO_YOUR_PROJECT>
```

E então execute os teste atraves do cucumber como mostra o comando a baixo:

```shell
rspec
```
