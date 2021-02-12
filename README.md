# Mission Stargate de la team MOTA

## Logiciels requis

- [git](https://git-scm.com/downloads)
- [FileZilla](https://filezilla-project.org/download.php?type=client) (connectez-vous via le protocole ```sftp```) 
- [PBO Manager](https://www.armaholic.com/page.php?id=16369)
- [Sublime Text](https://www.sublimetext.com/3)
- [HeidiSQL](https://www.heidisql.com/download.php) (connectez-vous via le tunnel SSH)

## Installation de Screen

A ne pas faire si Screen est déjà installé

```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install screen
```

## Installation de la BDD

A ne pas faire si le site de la mota est déjà installé

### Installation de MySQL Server 

A ne pas faire si MySQL server est déjà installé

```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install mysql-server
$ sudo mysql_secure_installation
$ mysql -u root -p
$ CREATE USER '<USERNAME>'@'%' IDENTIFIED BY '<PASSWORD>';
$ GRANT ALL PRIVILEGES ON *.* TO '<USERNAME>'@'%' WITH GRANT OPTION;
```

#### Création des bases de données

Via HeidiSQL, créez deux bases de données, la première pour le serveur principal, qu'on nomera ```stargatedb``` et la seconde pour le serveur de développement, qu'on nomera ```stargatedb_dev```.

#### Importation des bases de données

Via HeidiSQL, importez le fichier [BDD_users.sql](autre/BDD.sql), dans la base de données ```stargatedb``` et dans la base de données ```stargatedb_dev```.

## Installation de Steam

A ne pas faire si Steam est déjà installé

```
$ useradd -m -s /bin/bash <USERNAME>
$ su <USERNAME>
$ mkdir ~/steam && cd ~/steam
$ tar xf steamcmd_linux.tar.gz
$ chmod +x steamcmd.sh
$ ./steamcmd.sh
```

## Récupération des fichiers de la mission

### Récupération du git

```
$ git clone git@github.com:HuetJB/arma_stargate.git
```

### Récupération des mods de la mission

Abonnées vous à ces mods sur le workshop de steam (vous devez posséder Arma 3 pour qu'ils se téléchargent) et une fois qu'ils sont téléchargés, vous les trouvezrez dans le fichier ```Arma3/!Workshop/``` 

(Sous Windows, pour afficher le dossier ```!Workshop```, vous devez cochez l'option éléments masqués dans l'onglet affichage de l'explorateur de fichiers).

Mods :
- [@CBA_A3](https://steamcommunity.com/sharedfiles/filedetails/?id=450814997&searchtext=cba)
- [@map_stargate_impact](https://steamcommunity.com/sharedfiles/filedetails/?id=2128300311)
- [@stargate_arma_ta](https://steamcommunity.com/sharedfiles/filedetails/?id=2129566387)
- [@stargate_mota](https://steamcommunity.com/sharedfiles/filedetails/?id=2322349802)

### Génération des fichiers pbo de la mission

A l'aide de PBO Manager, générez le fichier mod_server.pbo du répertoire [mod_server](@mod_server/addons/mod_server) et le fichier mission.Stargate_Impact_Map.pbo du répertoire [mission.Stargate_Impact_Map](mission.Stargate_Impact_Map).

## Installation et lancement du serveur principal

### Installation du serveur principal

A l'aide de FileZilla, copiez le fichier [stargate_update.sh](autre/main/stargate_update.sh) dans le répertoire ```~/```, puis faites les commandes suivantes :

```
$ cd
$ chmod +x stargate_update.sh
$ ./stargate_update.sh
```

### Importation des fichiers de la mission pour le serveur principal

A l'aide de FileZilla,

- copiez le fichier [run.sh](autre/main/run.sh) dans le répertoire ```~/stargate/```

- copiez le fichier [server.cfg](autre/main/server.cfg) dans le répertoire ```~/stargate/```

- copiez le fichier [server.cfg](autre/basic.cfg) dans le répertoire ```~/stargate/```
- copiez le fichier [tbbmalloc.dll](autre/tbbmalloc.dll) dans le répertoire ```~/stargate/```

- copiez le fichier [tbbmalloc_x64.dll](autre/tbbmalloc_x64.dll) dans le répertoire ```~/stargate/```

- copiez le répertoire [@mod_server](@mod_server/) dans le répertoire ```~/stargate/```, avec dans le dossier ```~/stargate/@mod_server/addons/```, seulement le fichier mod_server.pbo (générer précédement)

- copiez le mod @CBA_A3 (télécharger précédement) dans le répertoire ```~/stargate/```

- copiez le mod @map_stargate_impact (télécharger précédement) dans le répertoire ```~/stargate/```

- copiez le mod @stargate_arma_ta (télécharger précédement) dans le répertoire ```~/stargate/```

- copiez le mod @stargate_mota (télécharger précédement) dans le répertoire ```~/stargate/```

- copiez les fichiers bikey présent dans les dossiers ```~/stargate/@CBA_A3/addons/```, ```~/stargate/@map_stargate_impact/addons/```, ```~/stargate/@stargate_arma_ta/addons/``` et ```~/stargate/@stargate_mota/addons/```, puis collez les dans le dossier ```~/stargate/keys/```

- copiez dans le répertoire ```~/stargate/mpmissions/```, le fichier mission.Stargate_Impact_Map.pbo (générer précédement)

Pour finir, faites les commandes suivantes :

```
$ cd ~/stargate
$ chmod +x run.sh
```

### Lancement du serveur principal

```
$ screen -S stargate
$ cd ~/stargate
$ ./run.sh
$ ctrl + A + D
```

### Arrêt du serveur principal

```
$ screen -r stargate
$ ctrl + C
$ ctrl + D
```

## Installation et lancement du serveur de développement

A l'aide de FileZilla, copiez le fichier [stargate-dev_update.sh](autre/dev/stargate-dev_update.sh) dans le répertoire ```~/```, puis faites les commandes suivantes :

```
$ cd
$ chmod +x stargate-dev_update.sh
$ ./stargate-dev_update.sh
```

### Importation des fichiers de la mission pour le serveur principal

A l'aide de FileZilla, 

- copiez le fichier [run.sh](autre/dev/run.sh) dans le répertoire ```~/stargate-dev/```

- copiez le fichier [server.cfg](autre/dev/server.cfg) dans le répertoire ```~/stargate-dev/```

- copiez le fichier [server.cfg](autre/basic.cfg) dans le répertoire ```~/stargate-dev/```

- copiez le fichier [tbbmalloc.dll](autre/tbbmalloc.dll) dans le répertoire ```~/stargate-dev/```

- copiez le fichier [tbbmalloc_x64.dll](autre/tbbmalloc_x64.dll) dans le répertoire ```~/stargate-dev/```

- copiez le répertoire [@mod_server](@mod_server/) dans le répertoire ```~/stargate-dev/```, avec dans le dossier ```~/stargate-dev/@mod_server/addons/```, seulement le fichier mod_server.pbo (générer précédement)

- copiez le mod @CBA_A3 (télécharger précédement) dans le répertoire ```~/stargate-dev/```

- copiez le mod @map_stargate_impact (télécharger précédement) dans le répertoire ```~/stargate-dev/```

- copiez le mod @stargate_arma_ta (télécharger précédement) dans le répertoire ```~/stargate-dev/```

- copiez le mod @stargate_mota (télécharger précédement) dans le répertoire ```~/stargate-dev/```

- copiez les fichiers bikey présent dans les dossiers ```~/stargate-dev/@CBA_A3/addons/```, ```~/stargate-dev/@map_stargate_impact/addons/```, ```~/stargate-dev/@stargate_arma_ta/addons/``` et ```~/stargate-dev/@stargate_mota/addons/```, puis collez les dans le dossier ```~/stargate-dev/keys/```

- copiez dans le répertoire ```~/stargate-dev/mpmissions/```, le fichier mission.Stargate_Impact_Map.pbo (générer précédement)

Pour finir, faites les commandes suivantes :

```
$ cd ~/stargate-dev
$ chmod +x run.sh
```

### Lancement du serveur principal

```
$ screen -S stargate-dev
$ cd ~/stargate-dev
$ ./run.sh
$ ctrl + A + D
```

### Arrêt du serveur principal

```
$ screen -r stargate-dev
$ ctrl + C
$ ctrl + D
```
