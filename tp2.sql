create database tramwayRabat;
use tramwayRabat;

create table arrondissement(
    rumArrondissement int primary key,
    superficie double,
    rbHabitants int
);

create table Station(
    numStation int primary key,
    nomStation varchar(45),
    rumArrondissement int,
    foreign key(rumArrondissement) references arrondissement(rumArrondissement)
);

create table ligne(
    numLigne int primary key,
    rbrStations int,
    rbrpassager_2018 int,
    dateMService date,
    stationDepart int,
    stationArrivee int,
    numStation int,
    foreign key (numStation) references Station(numStation)
);

create table travaux(
    rumArrondissement int,
    numLigne int,
    dateDebut date,
    foreign key(rumArrondissement) references arrondissement(rumArrondissement),
    foreign key(numLigne) references ligne(numLigne),
    primary key (rumArrondissement, numLigne, dateDebut),
    duree double
);

