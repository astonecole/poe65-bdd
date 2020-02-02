# Database

## TP SQL

### ADRESSE

### Lister toutes les principale adresses de chaque clients

| customer_id | firstname  | lastname  | title    | street                        | city               | country | zipcode | is_main |
| ----------- | ---------- | --------- | -------- | ----------------------------- | ------------------ | ------- | ------- | ------- |
| 1           | Burnell    | Beauchamp | Domicile | 93 rue du Clair Bocage        | LA TESTE-DE-BUCH   | France  | 33260   | 1       |
| 13          | Troy       | Mailhot   | Domicile | 52 rue Porte d'Orange         | CAYENNE            | France  | 97300   | 1       |
| 4           | D'Arcy     | Cantin    | Domicile | 67 rue Petite Fusterie        | BOULOGNE-SUR-MER   | France  | 62200   | 1       |
| 5           | Yves       | Begin     | Domicile | 27 rue Adolphe Wurtz          | LE PETIT-QUEVILLY  | France  | 76140   | 1       |
| 3           | Thomas     | Ayot      | Domicile | 67 boulevard de la Liberation | MARSEILLE          | France  | 13015   | 1       |
| 6           | Christabel | Boucher   | Domicile | 89 rue de l'Aigle             | LA POSSESSION      | France  | 97419   | 1       |
| 7           | Dorene     | Sabourin  | Domicile | 5 Avenue De Marlioz           | ANTIBES            | France  | 06600   | 1       |
| 8           | Maslin     | Moreau    | Domicle  | 6 rue des Coudriers           | MULHOUSE           | France  | 68200   | 1       |
| 9           | Élise      | Frappier  | Domicile | 57 Chemin Du Lavarin Sud      | CAGNES-SUR-MER     | France  | 06800   | 1       |
| 2           | Roch       | Flamand   | Bureau   | 87 rue Saint Germain          | GENNEVILLIERS      | France  | 92230   | 1       |
| 11          | Algernon   | de Launay | Domicile | 78 avenue de Provence         | VANNES             | France  | 56000   | 1       |
| 12          | Aubrey     | Crête     | Domicile | 31 Quai des Belges            | MARTIGUES          | France  | 13500   | 1       |
| 14          | Vail       | Mailly    | Domicile | 71 place de Miremont          | VILLENEUVE-SUR-LOT | France  | 47300   | 1       |
| 15          | Maureen    | Chartré   | Domicile | 64 Rue Joseph Vernet          | AVIGNON            | France  | 84000   | 1       |
| 16          | Franck     | Jodoin    | Domicile | 42 boulevard Amiral Courbet   | OULLINS            | France  | 69600   | 1       |
| 10          | Grégoire   | Camus     | Domicile | 85 Faubourg Saint Honoré      | PARIS              | France  | 75019   | 1       |
| 17          | Michel     | Chalut    | Domicile | 10 rue des Nations Unies      | SAINT-CLOUD        | France  | 92210   | 1       |
| 18          | Normand    | Couet     | Domicile | 60 rue Clement Marot          | PERPIGNAN          | France  | 66000   | 1       |
| 19          | Jeoffroi   | Garceau   | Domicile | 87 avenue Voltaire            | MAISONS-LAFFITTE   | France  | 78600   | 1       |
| 20          | Marcelle   | Méthot    | Domicile | 33 place Stanislas            | NANTERRE           | France  | 92000   | 1       |

### CATÉGORIE

#### Lister toutes les catégories sans parents
| category_id | name                   |
| ----------- | ---------------------- |
| 1           | Divers                 |
| 3           | Loisirs                |
| 14          | Maison                 |
| 22          | Matériel Professionnel |
| 24          | Mode                   |
| 34          | Multimédia             |

#### Lister toutes les categories parents/enfants

| category_id | name                   | categories                                                                                                      |
| ----------- | ---------------------- | --------------------------------------------------------------------------------------------------------------- |
| 1           | Divers                 | Autres                                                                                                          |
| 3           | Loisirs                | DVD, CD, Collection, Hobbies, Instruments de musique, Jeux, Livres, Vélos, Sports, Vins                         |
| 14          | Maison                 | Jardinage, Linge de Maison, Décoration, Bricolage, Art de la table, Ameublement, Électroménager                 |
| 22          | Matériel Professionnel | Fournitures de Bureau                                                                                           |
| 24          | Mode                   | Luxe et Tendance, Vêtement Bébé, Vêtements, Montre, Équipement Bébé, Chaussures, Bijoux, Bagagerie, Accessoires |
| 34          | Multimédia             | Consoles, Films, Image & Son, Informatique, Jeux Vidéo, Jouets, Téléphonie                                      |

### COMMANDE

#### Trouver les cinqs produits les plus vendus

| product_id | name                                                                                                    | total_qty |
| ---------- | ------------------------------------------------------------------------------------------------------- | --------- |
| 20         | Post-it Pack de 5 Bloc-notes repositionnables                                                           | 3         |
| 6          | Programmer en Go : Pourquoi ? Comment ?                                                                 | 2         |
| 10         | Docker - Pratique des architectures à base de conteneurs                                                | 2         |
| 4          | Canon Objectif EF 50 mm f/1.8 STM                                                                       | 1         |
| 5          | Panasonic Lumix GH5                                                                                     | 1         |

#### Rechercher toutes les commandes avec le total ayant un montant supérieur à 300, 00€.

| firstname   | lastname   | total_ht   | total_ttc   | nb_product   |
| ----------- | ---------- | ---------- | ----------- | ------------ |
| Normand     | Couet      | 1299.00    | 1558.80     | 1            |
| Élise       | Frappier   | 312.05     | 374.46      | 8            |
| Maureen     | Chartré    | 311.29     | 373.55      | 2            |

#### Rechercher le client qui a le plus de commande

| customer_id   | firstname   | lastname   | total_order   |
| ------------- | ----------- | ---------- | ------------- |
| 9             | Élise       | Frappier   | 2             |

