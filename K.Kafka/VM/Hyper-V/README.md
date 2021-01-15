# Sur le serveur du Collège

## :a: Installation Windows Server

:pushpin: Créer une machine virtuelle

```
PS > docker-machine create --driver hyperv `
                           --hyperv-cpu-count "2" `
                           --hyperv-memory "4096" `
                           CB-KAFKA
```

Si vous voulez debugger la creation de la machine rajouter `--debug` juste apres `docker-machine` 

```
PS > docker-machine --debug ...
```
