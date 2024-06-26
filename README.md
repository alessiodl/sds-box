# sds-box
Ambiente di lavoro containerizzato, orientato alla Spatial Data Science. 

### Requisiti
L'unico requisito è avere Docker sul proprio computer

## Creazione del container
 * Lanciare Docker
 * Scaricare ed estrarre (o clonare) il repository in locale
 * Da terminale, spostarsi nella cartella scaricata ed eseguire la build
   
```
docker build . -t sds-box
```

La label _sds-box_ può essere sostituita a piacimento, per esempio col nome del progetto per la quale la si utilizza
