Primeiramente, obrigado 🎉! É muito gratificante saber que podemos contar com novas features e pull-requests do nosso time! Caso sua mudança não seja trivial, abra uma issue nesse projeto para podermos discutir a sua ideia e estratégia de implementação. Será incrível poder interagir e se conectar com novos contribuidores! Esperamos que todos possam ajudar nessa evolução 🤗!

## ➤ Overview

O objetivo aqui é gerar valor para projetos de desenvolvimento com múltiplas participações. Com isso, sabemos que quando temos vários colaboradores interagindo dessa forma, a complexidade do trabalho aumenta significativamente. Pensando nisso elaboramos o documento **CONTRIBUTING.md**, que basicamente é onde abordarmos as melhores práticas a serem seguidas durante o processo de desenvolvimento no projeto, definindo o passo a passo de contribução para qualquer novo contribuidor, desde de o que ele precisa ter na sua máquina para entrar no processo, até o que ele precisa fazer para gerar uma nova versão da aplicação.

Nessa perspectiva a padronização é algo que mais cedo ou mais tarde deve acontecer. Além dessa padronização é imprescindível uma boa comunicação interna, uma vez que de nada adianta ter um processo de trabalho padronizado e ninguém do time se comunicar. Definir um padrão de trabalho em equipe e ter uma boa comunicação mostra o quão maduro o seu time vai estar para colaborar e consequentemente colher os frutos em seu processo de automação, versionamento e pipeline. 

## ➤ Tools, Packages and Conventions

Ao enviar qualquer commit para esse repositório é de extrema importância que o contribuidor saiba o que ele precisa refletir em seu ambiente local para que a sua contribução esteja seguindo as nossas diretrizes de trabalho. Portanto, nesse tópico listamos todas as ferramentas, pacotes e padrões utilizados pelos membros que colaboram aqui.

### Tools

- ⮚ Gerenciador de pacotes [NPM](https://www.npmjs.com/get-npm) ou [Yarn](https://yarnpkg.com/getting-started/install) para instação das dependências de suporte.
  - Este projeto não é um projeto **Node.js**. O arquivo `package.json` é usado apenas para definir alguns metadados e dependências que darão suporte para o nosso workflow no git.
- ⮚ Automatizador de tarefas locais [make](https://www.gnu.org/software/make/manual/make.html).
- ⮚ Scan de segredos [GitLeaks](https://github.com/zricethezav/gitleaks).

### Packages

- ⮚ [Semantic Release](https://github.com/semantic-release) + Plugins de configuração
  - [`semantic-release`](https://github.com/semantic-release/semantic-release)
  - [`@semantic-release/git`](https://github.com/semantic-release/git)
  - [`@semantic-release/github`](https://github.com/semantic-release/github)
  - [`@semantic-release/changelog`](https://github.com/semantic-release/changelog)
  - [`@semantic-release/commit-analyzer`](https://github.com/semantic-release/commit-analyzer)
  - [`@semantic-release/release-notes-generator`](https://github.com/semantic-release/release-notes-generator)
- ⮚ [Commit Lint](https://github.com/conventional-changelog/commitlint) usando o [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).
  - [`commitizen`](https://github.com/commitizen/cz-cli)
  - [`@commitlint/cli`](https://github.com/conventional-changelog/commitlint)
  - [`@commitlint/config-conventional`](https://github.com/conventional-changelog/commitlint)
- ⮚ Git Hooks com [Husky](https://github.com/typicode/husky).
  - [`husky`](https://github.com/semantic-release/git)

### Conventions

- ⮚ [Semantic Versioning](https://semver.org/)
- ⮚ [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

## ➤ Regras de codificação

Para garantir a consistência do nosso código fonte, lembre-se de seguir essas regras enquanto trabalhar:

- ⮚ Antes de iniciar o desenvolvimento certifique-se de instalar todas as ferramentas abordadas na seção [Tools, Packages and Conventions](#-tools-packages-and-patterns).
- ⮚ Sempre se certifique de não commitar nenhum arquivo com conteúdo sensível.
- ⮚ Certifique-se de dar um `git rebase` antes de mesclar sua branch, isso vai evitar possíveis conflitos além de gerar um histórico linear das modificações.
- ⮚ Faça um `git squash` dos commits, isso é uma boa prática para manter um histórico de commits mais limpo.
- ⮚ Ao abrir um merge-request, certifique-se de comunicar os maintainers-owners do projeto.

## ➤ Submission Guidelines

Nesse projeto utilizamos a convenção do [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) como boa prática para criação de mensagens de commit, que é totalmente ligada a convenção [SemVer](https://semver.org/), responsável por ditar as regras de versionamentodo/release do código. A partir dessas convenções conseguimos utilizar plugins **npm** para automatizar todo nosso processo de geração de **tag/release**, tudo de forma automática e com base em regras pré-configuradas, podendo ser customizáveis de acordo com o cenário.

>
> 1. Crie uma **branch**. 
> 1. Leia as regras de contribução.
> 1. Siga a organização do repositório sempre que você for alterar ou adicionar coisas.
> 1. Faça um **commit** com suas alterações.
> 1. Abra um **merge-request** assim que perceber que suas alterações estão prontas para serem promovidas.
> 1. Espere até que seu **merge-request** seja aprovada... 🚀
>

**Lembre-se**: Não existe código ruim, temos diferentes formas de resolver um mesmo problema. 😊

### Add to git and push

📝 Você precisa mandar suas modificações para o servidor do Git assim que terminá-las. Para isso, faça o seguinte:

```bash
git add -f .
git commit -m "chore(initial): include config files"
git push -u origin <branch-alvo>
```

### Submitting a Merge Request (MR)

Antes de aceitar um **merge-request**, preferimos que você esmague seus commits em um único commit utilizando o `git stash`. Essa ação visa garantir um histórico de commits mais limpo. A maioria das ferramentas Git já possuem integração pela própria UI para já acionar esse comando durante a abertura dessa mesclagem e no GitLab não é diferente.

Assumindo que o **code-review** foi concluído e os teste foram passados (a pipeline foi bem sucedida), sua mudança deve ser mesclada o mais rápido possível para a branch alvo.

Lembre-se de sempe marcar para delete a branch caso ela não seja a default. Não recomendamos guardar branches de curta durança em seu histórico de branchs (pode causar conflitos e confusão no futuro).

## ➤ Commit Message Guidelines

Como dito nas regras de codificação, temos regras muito precisas sobre como nossas mensagens `git commit` devem ser formatadas. Isso leva a mensagens mais legíveis e fáceis de seguir ao examinar o histórico de contribução do projeto. Também usamos essa convenção de mensagens git commit para estruturar e gerar um arquivo de log com as alterações do nosso projeto, o famoso **CHANGELOG.md**.

### Overview

A especificação do [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) é uma convenção para suas mensagens de commit. Ele fornece um conjunto fácil de regras para criar um histórico de commit explícito; o que torna mais fácil escrever ferramentas automatizadas. Essa convenção se encaixa com o [SemVer](https://semver.org/), descrevendo os recursos, correções e alterações importantes feitas nas mensagens de commit.

### Commit Message Format

A mensagem de commit deve ser estruturada da seguinte forma:

```text
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

Cada mensagem de commit consiste na estrutura acima. Temos um `header`, um `body`e um `footer`. O `header` tem um formato especial que inclui um `type`, um `scope` e uma `description`, sendo o `header` um campo obrigatório, porém seu `scope` opcional.

Para poder comuniar a intenção da sua alteração, a mensagem de commit contém os seguintes elementos estruturais:

1. **fix**: um commit do tipo `fix` corrige um bug em seu código (isso se correlaciona com o **PATCH** no **semantic versioning**).
1. **feat**: um commit do tipo `feat` introduz uma nova feature (recurso) em seu código (isso se correlaciona com o **MINOR** no **semantic versioning**)
1. **BREAKING CHANGE**: um commit que tem seu `footer` com a mensagem `BREAKING CHANGE` ou possui um `!` após o type ou scope, introduz uma mudança significativa em seu código (isso se correlaciona com o **MAJOR** no **semantic versioning**). Uma `BREAKING CHANGE` pode fazer parte de qualquer tipo de commit.
1. Existem outros tipos de commit além do `fix` e `feat`. São permitidos vários tipos, como - `build`, `chore`, `ci`, `docs`, `style`, `refactor`, `perf`, `test` e outros. A lista completa é baseada na [convenção do angular](https://github.com/angular/angular/blob/22b96b9/CONTRIBUTING.md#-commit-message-guidelines) e pode ser vista em [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/%40commitlint/config-conventional).

Qualquer mensagem de commit não pode ter mais que 100 caracteres! Isso quebraria a nossa convenção. Esse limite permite que a mensagem seja mais fácil de ler em várias ferramentas Git.

```bash
C:\>  git add .
C:\>  git commit -m "commit"


husky > commit-msg (node v12.14.0)
⧗   input: commit
✖   subject may not be empty [subject-empty]
✖   type may not be empty [type-empty]

✖   found 2 problems, 0 warnings
ⓘ   Get help: https://github.com/conventional-changelog/commitlint/#what-is-commitlint

husky > commit-msg hook failed (add --no-verify to bypass)
```

Usando o commitzen para te ajudar a construir a mensagem de commit:

```
C:\>  git add .
C:\>  npm run cm


cz-cli@4.0.3, cz-conventional-changelog@3.2.0

? Select the type of change that you're committing: (Use arrow keys)
> feat:     A new feature
  fix:      A bug fix
  docs:     Documentation only changes
  style:    Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
  refactor: A code change that neither fixes a bug nor adds a feature
  perf:     A code change that improves performance
  test:     Adding missing tests or correcting existing tests
  build:    Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
  ci:       Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs) 
  chore:    Other changes that don't modify src or test files
  revert:   Reverts a previous commit
```

### TL;DR

- Commit messages starting with `fix: ` trigger a patch version bump
- Commit messages starting with `feat: ` trigger a minor version bump
- Commit messages starting with `BREAKING CHANGE: ` trigger a major version bump.

## ➤Automatic versioning

Each push to `master` triggers a [`semantic-release`](https://semantic-release.gitbook.io/semantic-release/) CI job that determines and pushes a new version tag (if any) based on the last version tagged and the new commits pushed. Notice that this means that if a Merge Request contains, for example, several `feat: ` commits, only one minor version bump will occur on merge. If your Merge Request includes several commits you may prefer to ignore the prefix on each individual commit and instead add an empty commit sumarizing your changes like so:

```
git commit --allow-empty -m '[BREAKING CHANGE|feat|fix]: <changelog summary message
```

### Stable tag

This project updates a `stable:latest` tag in the container registry which tracks the latest build of the image specified in `STABLE_VERSION` in `.gitlab-ci.yml`. Simply update this to reflect what version series is considered stable by upstream and the `stable:latest` tag will be updated automatically.

## ➤ Release Steps

```bash
export GITLAB_TOKEN=""
make release-debug
git add . && git commit -am "chore: bump version file"
make release
git push --all
git pull --all
```
