# Requête SQL

## Bonus

### Ajouter un film

```
INSERT INTO `movie`
(`movie_ID`, `title`, `release_date`, `duration`, `director`, `creation_date`, `update_time`)
VALUES
(NULL, 'nom du film', 'date de sortie', 'durée', 'Directeur', CURRENT_DATE(), CURRENT_TIMESTAMP);
```

### Ajouter un acteur

```
INSERT INTO `actor`
(`actor_ID`, `First_name`, `Last_name`, `Date_of_Birth`, `Creation_date`, `Update_time`) 
VALUES
(NULL, 'Prénom', 'Nom', 'date de naissance', CURRENT_DATE(), CURRENT_TIMESTAMP);
```

### Modifier un film

```
UPDATE `movie` 
SET `movie_ID`= valeur_souhaité,
`title`= nom du film,
`release_date`=  format AAAA-MM-JJ,
`duration`= 00:00:00,
`director`= nom du directeur,
`creation_date`= CURRENT_DATE(),
`update_time`= CURRENT_TIEMSTAMP;
```

### Supprimer un acteur

```
DELETE `numéro de l\'ID` FROM `actor`
```