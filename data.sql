INSERT INTO _user_ ( "last_name", "first_name", "email", "address", "postal_code", "city", "photo", "applicant", "supplier" ) VALUES
('Chovel', 'Elodie', 'clovel.elodie@gmail.com', '8 rue des tortues', '30350', 'Cardet', 'myphoto.png', true, false ),
('Fardeau', 'Antoine', 'fardeau.antoine@gmail.com', '80 avenue du kepi', '48000', 'Chassaignes', 'myphoto.png', true, false ),
('Pinceau', 'Gertrude', 'pinceau.gertrude@gmail.com', '500 boulevard de strasbourg', '66000', 'Youtube', 'myphoto.png', true, false ),
('Poulvard', 'Tristan', 'poulvard.tristan@gmail.com', '534 rue de la companie', '76530', 'Spontan sur mer', 'myphoto.png', true, false ),
('Kourtin', 'Bérangère', 'kourtin.berangere@gmail.com', '909 rue de montpellier', '45000', 'Saint Denis sur Auzon', 'myphoto.png', true, false ),
('Opanus', 'Gisèle', 'opanus.gisele@gmail.com', '87 chemin de la farniente', '23400', 'Ouxon', 'myphoto.png', false, true ),
('Vouxon', 'Philippe', 'vouxon.philippe@gmail.com', '304 rue de kourton', '54000', 'Trouton', 'myphoto.png', false, true ),
('Trintignac', 'Arielle', 'trintignac.arielle@gmail.com', '45 avenue de la chaussette', '34560', 'Montpesat', 'myphoto.png', false, true ),
('Gourdon', 'Nina', 'gourdon.nina@gmail.com', '487b boulevard du looping', '98700', 'PSQL', 'myphoto.png', false, true ),
('Quehen', 'Caroline', 'quehen.caroline@gmail.com', '827 quartier de VSCode', '94300', 'Nancy', 'myphoto.png', false, true ),
('Lyx', 'José', 'lyx.jose@gmail.com', '67 rue histoire', '7600', 'Grenoble', 'myphoto.png', false, true ),
('Siphon', 'Fiona', 'siphon.fiona@gmail.com', '1 chemin josephine', '34000', 'Houxon', 'myphoto.png', false, true ),
('Urtrese', 'Jules', 'urtrese.jules@gmail.com', '342 boulevard uruguay', 'Copenhague', 'Ouxon', 'myphoto.png', false, true ),
('Sims', 'Damien', 'sims.damien@gmail.com', '30 impasse groupin', '12300', 'Routon', 'myphoto.png', false, true ),
('Trobo', 'Oriane', 'trobo.oriane@gmail.com', '764 chemin du found', '89050', 'Montpellier', 'myphoto.png', false, true );


INSERT INTO "competence" ("title") VALUES 
('BabySitting'),
('Tondre la pelouse'),
('Ménage'),
('Promenade chien');

 
INSERT INTO "disponibility" ("day_of_week", "start_hour", "end_hour") VALUES
('lundi', '14:00:00', '15:00:00'),
('mercredi', '20:00:00', '23:00:00'),
('vendredi', '16:00:00', '17:00:00'),
('samedi', '10:00:00', '17:00:00');

INSERT INTO "service"("status", "geographical_zone", "hourly_rate", "description", "id_user", "id_disponibility", "id_competence") VALUES
('disponible', 'Montpellier', 14, 'Je peux garder vos enfants pour une sortie en amoureux', 1, 2, 1 ),
('réservé', 'Alès', 5, 'Tondre votre pelouse, c est ma passion', 2, 1, 2 ),
('disponible', 'Nîmes', 20, 'Femme de ménage professionnelle propose ses services', 3, 4, 3 );

INSERT INTO "reservation" ("date_of_service", "id_user", "id_service") VALUES
('2022-01-24', 7, 2);
