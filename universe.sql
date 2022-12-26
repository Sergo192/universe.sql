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
    name character varying(30) NOT NULL,
    age integer,
    weight numeric(4,1),
    description text
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    weight numeric(4,1),
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    weight numeric(4,1),
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_more_info (
    planet_more_info_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    age integer,
    population integer,
    weight numeric(4,1),
    populated boolean,
    has_atmosphere boolean
);


ALTER TABLE public.planet_more_info OWNER TO freecodecamp;

--
-- Name: planet_more_info_planet_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_more_info_planet_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_more_info_planet_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: planet_more_info_planet_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_more_info_planet_more_info_id_seq OWNED BY public.planet_more_info.planet_more_info_id;


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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    weight numeric(4,1),
    description text
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
-- Name: planet_more_info planet_more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info ALTER COLUMN planet_more_info_id SET DEFAULT nextval('public.planet_more_info_planet_more_info_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Ukraine', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Vinnytsia', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 23, 478.9, NULL);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 212, 47.9, NULL);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 7, 23.3, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Calisto', 2, 777.7, 'Satelite from videogame "Calisto Protocol"');
INSERT INTO public.moon VALUES (4, 'Europa', 2, 666.6, 'Satelite named as Europa Earths continent');
INSERT INTO public.moon VALUES (5, 'Ganymede', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Herse', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Carpo', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Thebe', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Viking', 3, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Mariner', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Phobos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Deimos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Arche', 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Sinope', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Thyone', 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Sponde', 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Eirene', 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ersa', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Mneme', 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Aithe', 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Adrastea', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet1', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet2', 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet3', 2, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet1', 3, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet2', 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet3', 3, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet1', 4, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet2', 4, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Planet3', 4, NULL, NULL);


--
-- Data for Name: planet_more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_more_info VALUES (2, 2, NULL, NULL, 999999, NULL, NULL, false, false);
INSERT INTO public.planet_more_info VALUES (3, 3, NULL, NULL, 999888, NULL, NULL, false, false);
INSERT INTO public.planet_more_info VALUES (1, 1, NULL, NULL, 999999, 1200000, NULL, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Vega', 2, 555.5, 'The best integrated videochip in the Ukraine galaxy');
INSERT INTO public.star VALUES (3, 'Sirius', 3, 456.7, 'Sam');
INSERT INTO public.star VALUES (4, 'R71', 4, 53.5, NULL);
INSERT INTO public.star VALUES (5, 'R85', 4, 98.5, NULL);
INSERT INTO public.star VALUES (6, 'R99', 4, 73.1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_more_info_planet_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_more_info_planet_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unq UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unq UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unq UNIQUE (planet_id);


--
-- Name: planet_more_info planet_more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_pkey PRIMARY KEY (planet_more_info_id);


--
-- Name: planet_more_info planet_more_info_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unq UNIQUE (name);


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
-- Name: planet_more_info planet_more_info_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_more_info
    ADD CONSTRAINT planet_more_info_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

