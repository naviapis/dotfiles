# macOS

* [Odourless](https://github.com/xiaozhuai/odourless)
* [VPN Tracker 365](https://www.vpntracker.com/)

## Installation

* Install [Xcode](https://apps.apple.com/jp/app/xcode/id497799835)

## Aliases

### [brew plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/brew)

| Alias  | Command                                                     |
|--------|-------------------------------------------------------------|
| brewp  | `brew pin`                                                  |
| brews  | `brew list -1`                                              |
| brewsp | `brew list --pinned`                                        |
| bubo   | `brew update && brew outdated`                              |
| bubc   | `brew upgrade && brew cleanup`                              |
| bubu   | `bubo && bubc`                                              |
| bcubo  | `brew update && brew cask outdated`                         |
| bcubc  | `brew cask reinstall $(brew cask outdated) && brew cleanup` |

### [composer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/composer)

| Alias | Command                                     |
|-------|---------------------------------------------|
| c     | `composer`                                  |
| csu   | `composer self-update`                      |
| cu    | `composer update`                           |
| cr    | `composer require`                          |
| crm   | `composer remove`                           |
| ci    | `composer install`                          |
| ccp   | `composer create-project`                   |
| cdu   | `composer dump-autoload`                    |
| cdo   | `composer dump-autoload -o`                 |
| cgu   | `composer global update`                    |
| cgr   | `composer global require`                   |
| cgrm  | `composer global remove`                    |
| cget  | `curl -s https://getcomposer.org/installer` |
| co    | `composer outdated`                         |
| cod   | `composer outdated --direct`                |

### [Common Aliases Plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases)

| Alias | Command     |
|-------|-------------|
| l     | `ls -lFh`   |
| la    | `ls -lAFh`  |
| lr    | `ls -tRFh`  |
| lt    | `ls -ltFh`  |
| ll    | `ls -l`     |
| ldot  | `ls -ld .*` |

#### File handling

| Alias | Command   |
|-------|-----------|
| rm    | `rm -l`   |
| cp    | `cp -l`   |
| mv    | `mv -l`   |
| t     | `tail -f` |

#### find and grep

| Alias | Command                |
|-------|------------------------|
| fd    | `find . -type d -name` |
| ff    | `find . -type f -name` |
| grep  | `grep --color`         |

#### Other Aliases

| Alias    | Command                |
|----------|------------------------|
| h        | `history`              |
| help     | `find . -type d -name` |
| p        | `ps -f`                |
| unexport | `unset`                |
