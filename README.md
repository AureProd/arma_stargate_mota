# Mission Stargate de la team MOTA

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

### Création et importation des bases de données

Installez ce gestionnaire de BDD [HeidiSQL](https://www.heidisql.com/download.php) et connectez-vous via le tunnel SSH.

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

### Logiciels requis

- [git](https://git-scm.com/downloads)
- [FileZilla](https://filezilla-project.org/download.php?type=client)

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

### Création les fichiers pbo de la mission



## Installation et lancement du serveur principal

A ne pas faire si Steam est déjà installé

```
$ useradd -m -s /bin/bash <USERNAME>
$ su <USERNAME>
$ mkdir ~/steam && cd ~/steam
$ tar xf steamcmd_linux.tar.gz
$ chmod +x steamcmd.sh
$ ./steamcmd.sh
```

## Installation et lancement du serveur de développement
