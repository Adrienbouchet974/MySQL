# Requête SQL

## Ajouter un film

```
INSERT INTO `movie` (`movie_ID`, `title`, `release_date`, `duration`, `director`, `creation_date`, `update_time`) VALUES (NULL, 'nom du film', 'date de sortie', 'durée', 'Directeur', 'date de création de la ligne', CURRENT_TIMESTAMP);
```

## Ajouter un acteur

```
INSERT INTO `actor` (`actor_ID`, `First_name`, `Last_name`, `Date_of_Birth`, `Creation_date`, `Update_time`) VALUES (NULL, 'Prénom', 'Nom', 'date de naissance', 'date de création de la ligne', CURRENT_TIMESTAMP);
```