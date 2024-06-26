# sds-box
Template per container orientato alla **Spatial Data Science** con Python, comprensivo delle principali librerie e di un ambiente **JupyterLab**.

### Requisiti
L'unico requisito è avere Docker sul proprio computer

## Creazione del container
 * Lanciare Docker
 * Scaricare ed estrarre (o clonare) il repository in locale
 * Da terminale, spostarsi nella cartella scaricata ed eseguire la build
   
```
docker build . -t sds-box
```

La label <mark>sds-box</mark> può essere sostituita a piacimento, per esempio col nome del progetto per la quale la si vuole utilizzare.

## Avvio dell'ambiente Jupyter

Una volta creato il container (la prima volta potrebbe volerci qualche minuto dovuto più che altro all'installazione delle dipendenze nel file _requirements.txt_) è possibile eseguirlo lanciando questo comando:

```
docker run -p 8888:8888 sds-box
```

Il terminale mostrerà un link che, una volta aperto nel browser, darà accesso all'ambiente Jupyter.

Sebbene ciò sia sufficiente per testare l'ambiente, per un utilizzo reale è il caso di mappare nel container una directory del sistema locale (es: la directory del progetto su cui stiamo lavorando!). 
Supponiamo di aver scaricato sds-box sul desktop, possiamo lanciarla in questo modo:

```
docker run -p 8888:8888 -v /Users/alessio/Desktop/sds-box/Projects:/app/Projects sds-box
```
