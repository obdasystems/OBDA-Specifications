# OBDA-Specifications

## Come Contribuire

### Specifiche

Ciascuna specifica DEVE contenere almeno un file .owl o .graphol. In alternativa al file .owl, sono ammessi file con le estensioni altertive ad owl, oppure file con estensioni ref (.ttl, etc.).

### Layout del repository

I nomi di file e directory DEVONO rispettare il pattern [A-Za-z0-9_.-]{,64}; non possono quindi contenere spazi. Le directory associate alle ontologie DOVREBBERO essere in CamelCase.

### Versionamento

Le directory delle specifiche POSSONO avere sub-directory per supportare il versionamento. Il nome delle sub-directory DEVE rispettare il pattern: (latest|v?[0-9]+(\.[0-9]+){0,2}).

Una directory contenente specifiche NON DEVE contenere contemporaneamente sub-directory versionate con e senza il prefisso v perché questo rende impossibile ordinare le versioni.

Ogni directory DEVE avere una sub-directory chiamate latest, dove vengono riportati i file di specifica aggiornati alla più recente versione stabile. Questi file sono da ritenersi quelli di riferimento per test, demo, etc.

Sub-directory contenenti specifiche obsolete devono essere prefissate con old_.

