# Universe - Celestial bodies Database Dump README

## Description
This database dump contains information about galaxies, moons, planets, and stars. It was created from a PostgreSQL database version 12.17 using pg_dump version 12.17.

## Tables
- **Galaxy Table**: Contains details about galaxies, including their names, types, number of stars, presence of active galactic nuclei, diameter, and age.
- **Moon Table**: Includes information about moons, such as their names, tidally locked status, orbital periods, surface temperatures, and the planets they orbit.
- **Planet Table**: Provides data on planets, including habitability, names, types, number of moons, surface temperatures, and the stars they belong to.
- **Star Table**: Contains details about stars, including exoplanet hosting status, constellations, spectral classes, temperatures, ages, galaxies they belong to, and names.

## Data Sample
- **Galaxy Table**: Milky Way, Andromeda, Triangulum, Messier 87, Whirlpool, Sombrero
- **Moon Table**: Io, Europa, Ganymede, Callisto, Titan, Enceladus, Dione, Rhea, Iapetus, Miranda
- **Planet Table**: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune, Ceres, Pluto
- **Star Table**: Orion, Ursa Major, Cygnus, Draco, Lyra, Sculptor

## Schema
The database dump includes primary keys, foreign keys, and constraints to maintain data integrity.

## Restore Instructions
To restore the database from this dump file, use a PostgreSQL client and run the appropriate commands.

## Notes
- This README provides an overview of the database dump.
- Ensure to review the schema and data before restoring the database.
