# pwsh-lint
Lint Powershell with PSScriptAnalyzer

## Usage

This image will automatically analyze a Powershell script mounted to `/scripts/script.ps1`.


## Example

```
$ docker run --rm -v $PWD/test.ps1:/scripts/script.ps1 dpendolino/pwsh-lint:latest

RuleName                            Severity     ScriptName Line  Message
--------                            --------     ---------- ----  -------
PSAvoidUsingCmdletAliases           Warning      script.ps1 1     'echo' is an
                                                                  alias of 'Wri
                                                                  te-Output'.
                                                                  Alias can
                                                                  introduce
                                                                  possible
                                                                  problems and
                                                                  make scripts
                                                                  hard to
                                                                  maintain.
                                                                  Please
                                                                  consider
                                                                  changing
                                                                  alias to its
                                                                  full content.
```
