--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    speed integer,
    description text,
    name character varying(255) NOT NULL,
    atmosphere character varying(255),
    gravitational_pull integer DEFAULT 100000 NOT NULL
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
-- Name: minor_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.minor_planets (
    minor_planets_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    vortex boolean DEFAULT false NOT NULL,
    ages_in_millions_of_years character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.minor_planets OWNER TO freecodecamp;

--
-- Name: minor_planets_minor_planets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.minor_planets_minor_planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.minor_planets_minor_planets_id_seq OWNER TO freecodecamp;

--
-- Name: minor_planets_minor_planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.minor_planets_minor_planets_id_seq OWNED BY public.minor_planets.minor_planets_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    explored_by_earth boolean NOT NULL,
    planet_id integer NOT NULL,
    color_code character varying(255) NOT NULL
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
    name character varying(255) NOT NULL,
    amount_of_oxygen numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    species_occupying character varying(255) NOT NULL
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
    diameter integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    ecosystem character varying(255) NOT NULL
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
-- Name: minor_planets minor_planets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minor_planets ALTER COLUMN minor_planets_id SET DEFAULT nextval('public.minor_planets_minor_planets_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'aries', NULL, 100000);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'galaxy2', NULL, 100000);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'galaxy3', NULL, 100000);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'galaxy4', NULL, 100000);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, 'galaxy5', NULL, 100000);
INSERT INTO public.galaxy VALUES (8, NULL, NULL, 'galaxy6', NULL, 100000);


--
-- Data for Name: minor_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.minor_planets VALUES (1, 20, 3, false, 'thiry_thousand', 'bean');
INSERT INTO public.minor_planets VALUES (2, 12, 4, false, 'twenty_thousand', 'celery');
INSERT INTO public.minor_planets VALUES (3, 24, 5, false, 'ten_thousand', 'carrot');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'apple', true, 3, 'red');
INSERT INTO public.moon VALUES (2, 'banana', true, 4, 'yellow');
INSERT INTO public.moon VALUES (3, 'pear', false, 5, 'green');
INSERT INTO public.moon VALUES (4, 'orange', false, 6, 'orange');
INSERT INTO public.moon VALUES (5, 'pineapple', true, 7, 'brown');
INSERT INTO public.moon VALUES (6, 'peach', true, 8, 'pinkish');
INSERT INTO public.moon VALUES (8, 'dragonfruit', true, 10, 'pink');
INSERT INTO public.moon VALUES (9, 'ube', true, 11, 'purple');
INSERT INTO public.moon VALUES (11, 'lemon', true, 12, 'yellowish');
INSERT INTO public.moon VALUES (12, 'blueberry', true, 13, 'blue');
INSERT INTO public.moon VALUES (13, 'raspberry', true, 14, 'reddish');
INSERT INTO public.moon VALUES (14, 'jackfruit', true, 14, 'greenish');
INSERT INTO public.moon VALUES (15, 'spam', true, 13, 'multi');
INSERT INTO public.moon VALUES (16, 'turkey', true, 12, 'white');
INSERT INTO public.moon VALUES (17, 'lime', true, 11, 'lt_green');
INSERT INTO public.moon VALUES (18, 'jalapeno', true, 10, 'drk_green');
INSERT INTO public.moon VALUES (20, 'broccolli', false, 8, 'very_green');
INSERT INTO public.moon VALUES (21, 'moldy_cabbage', false, 7, 'black');
INSERT INTO public.moon VALUES (22, 'cherry', true, 6, 'maroon');
INSERT INTO public.moon VALUES (23, 'kiwi', false, 5, 'lt_brown');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'earth', NULL, false, 2, 'greymen');
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, false, 3, 'reptilian');
INSERT INTO public.planet VALUES (5, 'pluto', NULL, false, 4, 'humanoid');
INSERT INTO public.planet VALUES (6, 'uranus', NULL, false, 5, 'puppies');
INSERT INTO public.planet VALUES (7, 'mars', NULL, false, 6, 'cats');
INSERT INTO public.planet VALUES (8, 'neptune', NULL, false, 7, 'parrots');
INSERT INTO public.planet VALUES (10, 'saturn', NULL, false, 7, 'tortugas');
INSERT INTO public.planet VALUES (11, 'venus', NULL, false, 6, 'monkeys');
INSERT INTO public.planet VALUES (12, 'medullary', NULL, false, 5, 'dolphins');
INSERT INTO public.planet VALUES (13, 'mercury', NULL, false, 4, 'ostriches');
INSERT INTO public.planet VALUES (14, 'aphrodite', NULL, false, 3, 'lovebirds');
INSERT INTO public.planet VALUES (15, 'persephone', NULL, false, 2, 'hellangels');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 222, 'purple', 'hermaphrodite', 3, 'lush');
INSERT INTO public.star VALUES (3, 333, 'blue', 'thirdgender', 4, 'clean');
INSERT INTO public.star VALUES (4, 444, 'red', 'unity', 5, 'harmonious');
INSERT INTO public.star VALUES (5, 666, 'green', 'chaos', 6, 'disorphicus');
INSERT INTO public.star VALUES (6, 777, 'silver', 'luck', 7, 'lucus');
INSERT INTO public.star VALUES (7, 888, 'maroon', 'cycles', 8, 'cyclical');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: minor_planets_minor_planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.minor_planets_minor_planets_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_atmosphere_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_atmosphere_key UNIQUE (atmosphere);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: minor_planets minor_planets_ages_in_millions_of_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minor_planets
    ADD CONSTRAINT minor_planets_ages_in_millions_of_years_key UNIQUE (ages_in_millions_of_years);


--
-- Name: minor_planets minor_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minor_planets
    ADD CONSTRAINT minor_planets_pkey PRIMARY KEY (minor_planets_id);


--
-- Name: moon moon_color_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_color_code_key UNIQUE (color_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_species_occupying_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_species_occupying_key UNIQUE (species_occupying);


--
-- Name: star star_ecosystem_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ecosystem_key UNIQUE (ecosystem);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

