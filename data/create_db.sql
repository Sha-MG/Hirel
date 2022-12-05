DROP TABLE IF EXISTS "news";
CREATE TABLE IF NOT EXISTS "conseil" (
  "id" SERIAL PRIMARY KEY,
  "nom" TEXT NOT NULL,
  "prenom" TEXT NOT NULL,
  "role" TEXT NOT NULL,
  "photo" TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS "news" (
  "id" SERIAL PRIMARY KEY,
  "title" TEXT NOT NULL UNIQUE,
  "date" TEXT NOT NULL,
  "saison" TEXT NOT NULL,
  "photo" TEXT,
  "contact" TEXT NOT NULL,
  "numero" TEXT,
  "description_details" TEXT,
  "description" TEXT,
  "category" TEXT NOT NULL

);


INSERT INTO "news"("title", "date", "saison", "photo", "contact", "numero", "description_details", "description", "category") VALUES 
('SIAJE', '18/07/2022 au 24/08/2022', 'automne', 'SIAJE', 'centredeloisirs.siaje@orange.fr || sivulesiaje@orange.fr', '06 30 86 07 76 || 02 99 89 12 73', 'Avec leurs manèges, jeux, gourmandises festives et autres attractions, les fêtes foraines ravissent chaque année petits et grands. En effet, près de trente cinq milles fêtes foraines ont lieu chaque année en France et un français sur 3 y passe en moyenne une journée par an. Nous vous présentons ici le calendrier des plus importantes fêtes foraines de France ! </br> Au mois de novembre 2022 débute la Foire Saint-Martin de Pontoise (le 4 novembre), la Foire Saint-Martin d’Angers (le 5 novembre) et l’American Lunapark de Saint-Brieuc (le 5 novembre). Les manèges tourneront encore en novembre à la Foire aux Plaisirs de Bordeaux (jusqu’au 2 novembre), la Vogue des Marrons de Lyon Croix-Rousse (jusqu’au 13 novembre), la Foire d’automne de Nancy (jusqu’au 13 novembre), la Foire Attractions de Monaco (jusqu’au 19 novembre), la Foire Saint-Romain à Rouen (jusqu’au 20 novembre) et le Luna Park de Clermont-Ferrand (jusqu’au 20 novembre).', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'jeunesse'), 
('Fête Forraine', '01/12/2022 au 10/01/2023', 'hiver', 'fete_foraine', 'mairiedhirel@gmail.com', '06 06 06 07 07', 'Avec leurs manèges, jeux, gourmandises festives et autres attractions, les fêtes foraines ravissent chaque année petits et grands. En effet, près de trente cinq milles fêtes foraines ont lieu chaque année en France et un français sur 3 y passe en moyenne une journée par an. Nous vous présentons ici le calendrier des plus importantes fêtes foraines de France ! </br> Au mois de novembre 2022 débute la Foire Saint-Martin de Pontoise (le 4 novembre), la Foire Saint-Martin d’Angers (le 5 novembre) et l’American Lunapark de Saint-Brieuc (le 5 novembre). Les manèges tourneront encore en novembre à la Foire aux Plaisirs de Bordeaux (jusqu’au 2 novembre), la Vogue des Marrons de Lyon Croix-Rousse (jusqu’au 13 novembre), la Foire d’automne de Nancy (jusqu’au 13 novembre), la Foire Attractions de Monaco (jusqu’au 19 novembre), la Foire Saint-Romain à Rouen (jusqu’au 20 novembre) et le Luna Park de Clermont-Ferrand (jusqu’au 20 novembre).', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'évènement'),
('Fête de l''école', 'Le 03/06/2023', 'printemps', 'fete_ecole', 'ecoleprimaire@gmail.com', '06 01 02 03 04', 'Moment de rencontres privilégié, les parents nouent des contacts entre eux et avec les petits camarades de leurs enfants tout en découvrant l’école sous un autre angle. <br> Au-delà de l’aspect purement festif, les recettes de cette animation permettent de récolter des fonds afin de financer les projets en cours ou futurs (achat de livres ou matériel informatique, sorties ou voyages scolaires …). </br> Traditionnellement, les enfants de l’école offrent un spectacle préparé par les enseignants. On peut lire, alors, sur leur visage le plaisir et la joie qu’ils ont d’être les acteurs principaux de cette représentation, récompensés par le sourire de leurs parents émerveillés. </br>Après le spectacle, place aux jeux et à la gourmandise pour les grands et les petits. Ils occuperont cette journée à se divertir en jouant avec leurs amis et en testant leur adresse aux différents stands de jeux comme le chamboule tout, ou bien la pêche à la ligne. Ils s’arrêteront pour reprendre des forces aux stands gâteaux et buvette.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'jeunesse'),
('Marché d''Hiver', '01/12/2022 au 30/12/2022', 'hiver', 'marche_hiver', 'mairiedhirel@gmail.com', '06 01 02 03 04', 'Voici venir le temps des rires et chants... vous l''aurez compris, c''est déjà le retour de l''esprit des fêtes de fin d''année à Paris et en Île-de-France. Chaque année, alors que la région parisienne revêt son manteau d''hiver, les animations festives signent leur retour au pays des Franciliens. Peu à peu, les rues s''illuminent, les vitrines s''animent, et les marchés de Noël fleurissent aux quatre coins de la capitale. </br> Dès lors, les Parisiens et touristes de passages s''y précipitent pour profiter de cette belle ambiance régressive, en famille, en amoureux ou avec leurs proches. Sur les stands, des artisans dévoilent leur savoir-faire et nous inspirent pour des idées cadeaux de Noël ou de déco pour sa table de fête. Alors que le froid s''installe, la gourmandise est également au programme avec très souvent, du vin chaud, du chocolat chaud, des marrons chauds, bref tout ce qu''il faut pour contrer la météo hivernale et se réchauffer les mimines. Pour les petits et les grands enfants, on peut même y retrouver des manèges, des fêtes foraines ou encore un spot photo pour immortaliser sa rencontre avec le Père Noël.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'évènement'),
('Marché des créateurs', '01/07/2023 au 25/08/2023', 'été', 'marche_createurs', 'mairiedhirel@gmail.Com', '06 82 93 93 93', 'Début 1900, un groupe d''artistes baptisé « la horde de Montparnasse » exposait en plein air des toiles à même le sol, d’où l’allusion à ces légumes ! </br> Ce marché eut un grand succès. En effet, à cette époque le boulevard du Montparnasse était un haut lieu du marché de l’art. Les artistes venaient, toiles et esquisses sous le bras, marchander dans les nombreux cafés alentours et si affaire conclue, partageaient leur repas avec les moins chanceux.</br> Une partie de cette horde était hébergée et travaillait dans un édifice dénommé la Ruche. Celui-ci (initialement réalisée par G. Eiffel pour l’exposition universelle) fut reconstruit sur un terrain non loin de ce quartier sous les bons hospices du sculpteur A. Boucher. Artiste célèbre et fortuné, il souhaita mettre à disposition des ateliers pour de jeunes artistes en devenir : Léger, Modigliani, Chagall, Soutine, et bien d’autres.</br>Aujourd’hui : « le marché de la création Paris Montparnasse »</br>Depuis sa création en 1994, à l’initiative de monsieur André Felten, entouré des élus du 14ème arrondissement et du Groupement des Marchés Libres de Paris, le marché de la création est comparable à une grande galerie d’art exposant toutes les diversités artistiques : peintures, gravures, sculptures, céramiques, création en marqueterie, vitrail, soie et autres domaines créatifs. Cette galerie à « ciel ouvert » permet à l’amateur d’art de rencontrer et de communiquer directement avec les artistes pour des échanges privilégiés.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'évènement'),
('Pêche à pied', 'Interdite du 1er avril au 30 juin', 'printemps', 'peche', 'mairiedhier@gmail.com', '06 97 97 97 97', 'Petit point sur la zone 2 de pêche à pied coques et palourdes peche : </br> La zone de pêche de Hirel se situe entre le bief de Saint-Benoit-des-Ondes et le bief de Le-Vivier-sur-Mer. Il s''agit de la zone 2. En 2022, à Hirel, la pêche est interdite du 1er avril au 30 juin et ouverte le reste de l''année.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'environnement');


INSERT INTO "conseil"("nom", "prenom", "photo", "role") VALUES 
('HARDOUIN', 'Michel', 'michelHardouin', 'Maire'),
('COSSONNIÈRE', 'Alain', 'alainCossonnière', 'Premier adjoint'),
('CARRÉ-LESÉNÉCHAL', 'Béatrice','beatriceCarreLesenechal','Deuxième adjointe'),
('LEUDIÈRE','Cyrille','cyrilleLeudiere','Troisième adjoint'),
('DEROUSSEAUX', 'Olivier','olivierDerousseaux','Conseiller'),
('DROVAL','Annick','annickDroval','Conseillère'),
( 'VIVIEN','Sandrine','sandrineVivien','Conseillère'),
('GASNIER','Lucien','lucienGasnier','Conseiller'),
('HUET','Claire','claireHuet','Conseillère'),
('MONNIER','Christophe','christopheMonnier','Conseiller'), 
( 'PLANTIS','Magali','magaliPlantis','Conseillère'),
('PANEL','Stéphanie','stéphaniePanel','Conseillère'),
('GUERINEL','Pierrette','pierretteGuerinel','Conseillère'),
('LEHOUX','Olivier','olivierLehoux','Conseiller') ,
('POUPLIN','Thierry','thierryPoulpin','Conseiller')

;