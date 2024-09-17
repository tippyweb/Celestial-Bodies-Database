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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(50) NOT NULL,
    home_star_system character varying(50),
    description character varying(100)
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    constellation character varying(50),
    appearance character varying(50),
    distance_from_earth_in_mly numeric(6,2),
    description character varying(100)
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
    name character varying(50) NOT NULL,
    planet_id integer,
    diameter_in_km integer,
    orbital_period_in_h integer,
    description text
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
    name character varying(50) NOT NULL,
    star_id integer,
    has_life boolean,
    has_moon boolean,
    number_of_moons integer
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
    name character varying(50) NOT NULL,
    galaxy_id integer,
    has_planet boolean,
    number_of_planets integer,
    description character varying(100)
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


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
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Pleiadian', 'The Pleiades star cluster', 'Highly ascended');
INSERT INTO public.alien VALUES (2, 'Andromedan', 'Andromeda galaxy', 'Highly ascended');
INSERT INTO public.alien VALUES (3, 'Arcturian', 'Arcturus', 'Highly ascended');
INSERT INTO public.alien VALUES (4, 'Sirian', 'Sirius A and Sirius B', 'Highly ascended');
INSERT INTO public.alien VALUES (5, 'Orion', 'Orion', 'Highly ascended');
INSERT INTO public.alien VALUES (6, 'Mintakan', 'Mintaka', 'Highly ascended');
INSERT INTO public.alien VALUES (7, 'Lyran', 'Vega', 'Highly ascended');
INSERT INTO public.alien VALUES (8, 'Lemurian', 'Lemuria', 'Highly ascended');
INSERT INTO public.alien VALUES (9, 'Alpha Centaurian', 'Alpha Centauri', 'Highly ascended');
INSERT INTO public.alien VALUES (10, 'Venusian', 'Venus', 'Highly ascended');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 'Hazy band of light', 0.00, 'A band of light, containing the Solar System and Earth');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda', 'Barred spiral', 2.54, 'The closest big galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'Coma Berenices', 'Black eye', 17.30, 'Also known as "Sleeping Beauty Galaxy"');
INSERT INTO public.galaxy VALUES (4, 'Grasshopper', 'Lynx', 'Grasshopper', 500.00, 'Two colliding galaxies');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Ursa Major', 'Pinwheel', 20.90, 'Also known as Messier 101 or M101');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Virgo', 'Sombrero', 9.55, 'Also known as Messier Object 104 or M104');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1737, 696, 'Only natural satellite of Earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 27, 8, 'The larger moon of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 15, 30, 'Small and lumpy, heavily cratered');
INSERT INTO public.moon VALUES (4, 'Io', 5, 3643, 42, 'Discovered by Galileo in 1610');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3121, 84, 'Discovered by Galileo in 1610');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5268, 172, 'Discovered by Galileo in 1610');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4820, 400, 'Discovered by Galileo in 1610');
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, 167, 12, 'Discovered by Barnard in 1892');
INSERT INTO public.moon VALUES (9, 'Leda', 5, 21, 5782, 'Discovered by Kowal in 1974');
INSERT INTO public.moon VALUES (10, 'Themisto', 5, 9, 3120, 'Discovered by Kowal & Roemer/Sheppard et al. in 1975');
INSERT INTO public.moon VALUES (11, 'Adrastea', 5, 16, 7, 'Discovered by Jewitt in 1979');
INSERT INTO public.moon VALUES (12, 'Thebe', 5, 98, 16, 'Discovered by Synnott in 1980');
INSERT INTO public.moon VALUES (13, 'Metis', 5, 43, 7, 'Discovered by Synnott in 1980');
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 396, 21, 'The major satellites of Saturn');
INSERT INTO public.moon VALUES (15, 'Enceladus', 6, 504, 33, 'The major satellites of Saturn');
INSERT INTO public.moon VALUES (16, 'Tethys', 6, 1062, 45, 'The major satellites of Saturn');
INSERT INTO public.moon VALUES (17, 'Dione', 6, 1123, 64, 'The major satellites of Saturn');
INSERT INTO public.moon VALUES (18, 'Rhea', 6, 1527, 108, 'The major satellites of Saturn');
INSERT INTO public.moon VALUES (19, 'Titan', 6, 5149, 384, 'The major satellites of Saturn');
INSERT INTO public.moon VALUES (20, 'Iapetus', 6, 1470, 1896, 'The major satellites of Saturn');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, true, false, 0);
INSERT INTO public.planet VALUES (3, 'Venus', 1, true, false, 0);
INSERT INTO public.planet VALUES (4, 'Mars', 1, true, true, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, true, true, 95);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, true, true, 146);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, true, true, 28);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, true, true, 16);
INSERT INTO public.planet VALUES (9, 'Epsilon Eridani', 2, true, false, 0);
INSERT INTO public.planet VALUES (10, 'TZ Arietis', 2, true, false, 0);
INSERT INTO public.planet VALUES (11, 'Gliese 555', 2, true, false, 0);
INSERT INTO public.planet VALUES (12, 'Brown Dwarf', 6, true, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 8, 'The center of the Solar System');
INSERT INTO public.star VALUES (2, 'RW Cephei', 1, false, 0, 'Has a radius of 1,100 times that of the Sun');
INSERT INTO public.star VALUES (3, 'KY Cygni', 1, false, 0, 'Located in the constellation of Cygnus, The Swan');
INSERT INTO public.star VALUES (4, 'Antares', 1, false, 0, 'The brightest star in the constellation of Scorpius');
INSERT INTO public.star VALUES (5, 'Alpheratz', 2, false, 0, 'A binary star');
INSERT INTO public.star VALUES (6, 'Mirach', 2, true, 1, 'Has a planet, brown dwarf');


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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

