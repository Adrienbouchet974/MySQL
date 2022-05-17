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

### La liste des acteurs pour un film donné

```sql
SELECT *
FROM `movie/actor`
NATURAL JOIN `actor` WHERE `movie_ID` = valeur
```

### La liste des films pour un acteur donné

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
SET `title` = 'Hulk' 
WHERE `movie`.`movie_ID` = 2;
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
DELETE FROM `actor` WHERE `actor_ID` = value
```

### Les 3 derniers acteurs ajoutés

```sql
SELECT `First_name`,`Last_name`,`Update_time`
FROM `actor`
ORDER BY `Update_time` DESC LIMIT 3
```
