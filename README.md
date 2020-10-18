# Maven-Docker

Questo docker serve per testare in locale le funzioni di pipeline delle varie CI e testare se le repository sono online senza andar a sbattere nelle pipeline di vari gestori.

## Build

```shell
docker build -t merl .
```

## Run

Per esegurlo dobbiamo fare il bind della cartella del progetto in esame dentro alla cartella `/data-mvn`.

Come in questo esempio:

```shell
docker run -it --rm -v $PWD/demoDevOps:/data-mvn:ro merl
```
