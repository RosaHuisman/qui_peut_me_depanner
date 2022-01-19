-- Trouver tous les users --
SELECT * FROM _user_ ;

-- Trouver tous les services --
SELECT * FROM service ;

-- Trouver toutes les réservations --
SELECT * FROM reservation ;

-- Trouver les services du user qui a l'id 1 --
SELECT * FROM service WHERE id_user = 1;

-- Trouver tous les services de statut disponibles pour le lundi --
SELECT *
FROM service
JOIN disponibility ON service.id_service = disponibility.id_disponibility
WHERE disponibility.day_of_week = 'lundi' AND service.status = 'disponible';

-- Trouver un service de statut disponible de la compétence BabySitting --
SELECT *
FROM service
JOIN competence ON service.id_service = competence.id_competence
WHERE service.status = 'disponible' AND competence.title = 'BabySitting';

