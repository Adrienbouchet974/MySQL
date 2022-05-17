# Requête SQL

## Les requêtes demandées

### Classer les films du plus récent au plus ancien

```sql
SELECT `title`, `release_date`
FROM `marvel`.`movie`
ORDER BY `release_date` DESC
```

### Noms, Prénoms et Ages des acteurs de plus de 30 dans l'ordre alphabétique des noms de familles

```sql
SELECT `First_name`,`Last_name`,`Date_of_Birth`
FROM `actor`
WHERE `Date_of_Birth` NOT BETWEEN '1992-05-17' AND '2022-05-17' 
ORDER BY `Last_name`
```

### La liste des acteurs pour un film donnés

```sql
SELECT *
FROM `movie/actor`
NATURAL JOIN `actor` WHERE `movie_ID` = valeur
```

### La liste desfilms pour un acteur donné

```sql
SELECT *
FROM `movie/actor`
NATURAL JOIN `movie` WHERE `actor_ID` = valeur
```

## Bonus

### Ajouter un film

```sql
INSERT INTO `movie`
(`movie_ID`, `title`, `release_date`, `duration`, `director`, `creation_date`, `update_time`)
VALUES
(NULL, 'nom du film', 'date de sortie', 'durée', 'Directeur', CURRENT_DATE(), CURRENT_TIMESTAMP);
```

### Modifier un film

```sql
UPDATE `movie` 
SET `movie_ID`= valeur_souhaité,
`title`= nom du film,
`release_date`=  format AAAA-MM-JJ,
`duration`= 00:00:00,
`director`= nom du directeur,
`creation_date`= CURRENT_DATE(),
`update_time`= CURRENT_TIEMSTAMP;
```

### Ajouter un acteur

```sql
INSERT INTO `actor`
(`actor_ID`, `First_name`, `Last_name`, `Date_of_Birth`, `Creation_date`, `Update_time`) 
VALUES
(NULL, 'Prénom', 'Nom', 'date de naissance', CURRENT_DATE(), CURRENT_TIMESTAMP);
```

### Supprimer un acteur

```sql
DELETE `numéro de l\'ID` FROM `actor`
```

### Les 3 derniers acteurs ajoutés

```sql
SELECT `First_name`,`Last_name`,`Update_time`
FROM `actor`
ORDER BY `Update_time` DESC LIMIT 3
```
