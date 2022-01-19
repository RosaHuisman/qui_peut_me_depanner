CREATE TABLE _user_(
   Id_user SERIAL,
   last_name VARCHAR(256) NOT NULL,
   first_name VARCHAR(256) NOT NULL,
   email VARCHAR(256) NOT NULL,
   address VARCHAR(572),
   postal_code VARCHAR(50),
   city VARCHAR(256),
   photo VARCHAR(256) NOT NULL,
   applicant BOOLEAN NOT NULL,
   supplier BOOLEAN NOT NULL,
   PRIMARY KEY(Id_user),
   UNIQUE(email)
);

CREATE TABLE competence(
   Id_Competence SERIAL,
   title VARCHAR(256) NOT NULL,
   PRIMARY KEY(Id_Competence),
   UNIQUE(title)
);

CREATE TABLE disponibility(
   Id_disponibility SERIAL,
   day_of_week VARCHAR(256),
   start_hour TIME,
   end_hour TIME,
   PRIMARY KEY(Id_disponibility),
   UNIQUE(day_of_week, start_hour, end_hour)
);

CREATE TABLE service(
   Id_Service SERIAL,
   status VARCHAR(256) NOT NULL,
   geographical_zone VARCHAR(256) NOT NULL,
   hourly_rate MONEY NOT NULL,
   description VARCHAR(1000) NOT NULL,
   Id_user INTEGER NOT NULL,
   Id_disponibility INTEGER NOT NULL,
   Id_Competence INTEGER NOT NULL,
   PRIMARY KEY(Id_Service),
   UNIQUE(status, geographical_zone, hourly_rate, description),
   FOREIGN KEY(Id_user) REFERENCES _user_(Id_user),
   FOREIGN KEY(Id_disponibility) REFERENCES disponibility(Id_disponibility),
   FOREIGN KEY(Id_Competence) REFERENCES competence(Id_Competence)
);

CREATE TABLE reservation(
   Id_Reservation SERIAL,
   date_of_service DATE NOT NULL,
   Id_user INTEGER NOT NULL,
   Id_Service INTEGER NOT NULL,
   PRIMARY KEY(Id_Reservation),
   FOREIGN KEY(Id_user) REFERENCES _user_(Id_user),
   FOREIGN KEY(Id_Service) REFERENCES service(Id_Service)
);
