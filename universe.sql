--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text NOT NULL,
    no_of_stars_in_billion integer,
    active_galactic_nucleus boolean NOT NULL,
    diameter_in_light_years integer NOT NULL,
    age_in_billion_years numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    tidally_locked boolean NOT NULL,
    name character varying(30),
    orbital_period_in_earth_days numeric(10,1) NOT NULL,
    planet_id integer NOT NULL,
    surface_temperature_in_degree_celcius integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    habitable boolean NOT NULL,
    name character varying(30) NOT NULL,
    planet_type text,
    no_of_moons integer NOT NULL,
    surface_temperature_in_degree_celcius integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    exoplanethost boolean,
    constellation text,
    spectral_class character varying(10) NOT NULL,
    temperature_in_degree_celcius integer NOT NULL,
    age_in_billion_years integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100, true, 100000, 13.6);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 1000, false, 220000, 10.3);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 40, false, 60000, 10.0);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', 500, true, 150000, 13.2);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 100, false, 60000, 400.0);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral', 1000, false, 50000, 13.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 'Io', 1.8, 5, -150);
INSERT INTO public.moon VALUES (2, true, 'Europa', 3.2, 5, -100);
INSERT INTO public.moon VALUES (3, true, 'Ganymede', 7.2, 5, -150);
INSERT INTO public.moon VALUES (4, true, 'Callisto', 16.7, 5, -100);
INSERT INTO public.moon VALUES (5, false, 'Amalthea', 0.5, 5, -200);
INSERT INTO public.moon VALUES (6, false, 'Thebe', 0.7, 5, -150);
INSERT INTO public.moon VALUES (7, false, 'Metis', 1.1, 5, -100);
INSERT INTO public.moon VALUES (8, false, 'Adrastea', 0.3, 5, -150);
INSERT INTO public.moon VALUES (9, false, 'Themisto', 129.9, 5, -100);
INSERT INTO public.moon VALUES (10, false, 'Carme', 693.2, 5, -150);
INSERT INTO public.moon VALUES (11, false, 'Titan', 15.9, 6, -100);
INSERT INTO public.moon VALUES (12, false, 'Enceladus', 1.4, 6, -150);
INSERT INTO public.moon VALUES (13, false, 'Dione', 2.7, 6, -100);
INSERT INTO public.moon VALUES (14, false, 'Rhea', 4.5, 6, -150);
INSERT INTO public.moon VALUES (15, false, 'Iapetus', 79.3, 6, -100);
INSERT INTO public.moon VALUES (16, false, 'Miranda', 1.4, 7, -150);
INSERT INTO public.moon VALUES (17, false, 'Ariel', 2.5, 7, -100);
INSERT INTO public.moon VALUES (18, false, 'Umbriel', 4.1, 7, -150);
INSERT INTO public.moon VALUES (19, false, 'Titania', 8.7, 7, -100);
INSERT INTO public.moon VALUES (20, false, 'Oberon', 13.5, 7, -150);
INSERT INTO public.moon VALUES (21, true, 'Moon', 27.3, 3, -150);
INSERT INTO public.moon VALUES (22, false, 'Phobos', 0.3, 4, -100);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 'Mercury', 'Terrestrial', 0, 800, 6);
INSERT INTO public.planet VALUES (2, false, 'Venus', 'Terrestrial', 0, 450, 6);
INSERT INTO public.planet VALUES (3, true, 'Earth', 'Terrestrial', 1, 15, 6);
INSERT INTO public.planet VALUES (4, false, 'Mars', 'Terrestrial', 2, -60, 6);
INSERT INTO public.planet VALUES (5, false, 'Jupiter', 'Gas giant', 79, -150, 6);
INSERT INTO public.planet VALUES (6, false, 'Saturn', 'Gas giant', 82, -178, 6);
INSERT INTO public.planet VALUES (7, false, 'Uranus', 'Ice giant', 27, -214, 6);
INSERT INTO public.planet VALUES (8, false, 'Neptune', 'Ice giant', 14, -201, 6);
INSERT INTO public.planet VALUES (9, false, 'Ceres', 'Dwarf', 0, -106, 6);
INSERT INTO public.planet VALUES (10, false, 'Pluto', 'Dwarf', 5, -240, 6);
INSERT INTO public.planet VALUES (11, false, 'Haumea', 'Dwarf', 2, -119, 6);
INSERT INTO public.planet VALUES (12, false, 'Makemake', 'Dwarf', 1, -239, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, true, 'Orion', 'G2V', 5778, 4, 5, 'Sun');
INSERT INTO public.star VALUES (2, false, 'Ursa Major', 'K0III', 4400, 6, 2, 'Arcturus');
INSERT INTO public.star VALUES (3, true, 'Cygnus', 'F8V', 6100, 2, 3, 'Kepler-22');
INSERT INTO public.star VALUES (4, true, 'Draco', 'M1V', 3600, 8, 1, 'Proxima Centauri');
INSERT INTO public.star VALUES (5, true, 'Lyra', 'M4V', 3200, 9, 4, 'Vega');
INSERT INTO public.star VALUES (6, true, 'Sculptor', 'K2III', 4500, 10, 6, 'Alpha Sculptoris');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

