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
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer,
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
    name character varying(30),
    planet_id integer,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(30),
    is_spherical boolean NOT NULL,
    has_life boolean,
    star_id integer
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
    name character varying(30),
    temperature_in_f numeric(10,2),
    galaxy_id integer,
    has_life boolean NOT NULL
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(30),
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'hihi', 1234213, 423233, 'cool planet');
INSERT INTO public.galaxy VALUES (2, 'yoyo', 12314123, 142311, 'awesome');
INSERT INTO public.galaxy VALUES (3, 'lala', 142131, 5123123, 'yes!');
INSERT INTO public.galaxy VALUES (4, 'lolo', 34812937, 2319843, 'cool stuff');
INSERT INTO public.galaxy VALUES (5, 'hehe', 38489, 98043543, 'good galaxy');
INSERT INTO public.galaxy VALUES (6, 'heje', 234235233, 234234234, 'last one');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, false, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, true);
INSERT INTO public.moon VALUES (4, 'Io', 5, false, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, false, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, false, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, false, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, false, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, false, true);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, false, true);
INSERT INTO public.moon VALUES (11, 'Tethys', 6, false, true);
INSERT INTO public.moon VALUES (12, 'Dione', 6, false, true);
INSERT INTO public.moon VALUES (13, 'Rhea', 6, false, true);
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, false, true);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, false, true);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, false, true);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, false, true);
INSERT INTO public.moon VALUES (18, 'Titania', 7, false, true);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, false, true);
INSERT INTO public.moon VALUES (20, 'Triton', 8, false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', true, true, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', true, false, 2);
INSERT INTO public.planet VALUES (11, 'Alpha Centauri Bb', true, false, 3);
INSERT INTO public.planet VALUES (12, 'Betelgeuse b', true, false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'yyoo', 124123.00, 1, true);
INSERT INTO public.star VALUES (2, 'SFEe', 1421.00, 2, false);
INSERT INTO public.star VALUES (3, 'FWE', 313.00, 3, false);
INSERT INTO public.star VALUES (4, 'FES', 3133.00, 4, true);
INSERT INTO public.star VALUES (5, 'FAS', 132.00, 3, true);
INSERT INTO public.star VALUES (6, 'GESDS', 3123.00, 2, true);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Sun', 'The star at the center of our solar system', true, 4600);
INSERT INTO public.sun VALUES (2, 'Proxima Centauri', 'The closest known star to the Sun', true, 4700);
INSERT INTO public.sun VALUES (3, 'Alpha Centauri A', 'The primary star of the Alpha Centauri triple system', true, 5000);
INSERT INTO public.sun VALUES (4, 'Alpha Centauri B', 'The secondary star of the Alpha Centauri triple system', true, 5000);
INSERT INTO public.sun VALUES (5, 'Sirius A', 'The brightest star in the night sky', true, 242);
INSERT INTO public.sun VALUES (6, 'Sirius B', 'A white dwarf companion to Sirius A', true, 120);
INSERT INTO public.sun VALUES (7, 'Betelgeuse', 'A red supergiant star nearing the end of its life', true, 8500);
INSERT INTO public.sun VALUES (8, 'Rigel', 'A blue supergiant star in the constellation Orion', true, 10000);
INSERT INTO public.sun VALUES (9, 'Vega', 'A bright star in the constellation Lyra', true, 455);
INSERT INTO public.sun VALUES (10, 'Altair', 'A bright star in the constellation Aquila', true, 1000);
INSERT INTO public.sun VALUES (11, 'Fomalhaut', 'A bright star in the constellation Piscis Austrinus', true, 440);
INSERT INTO public.sun VALUES (12, 'Deneb', 'A blue supergiant star in the constellation Cygnus', true, 10000);
INSERT INTO public.sun VALUES (13, 'Polaris', 'The current North Star', true, 700);
INSERT INTO public.sun VALUES (14, 'Arcturus', 'A red giant star in the constellation Boötes', true, 7300);
INSERT INTO public.sun VALUES (15, 'Capella', 'A bright star in the constellation Auriga', true, 590);
INSERT INTO public.sun VALUES (16, 'Aldebaran', 'A red giant star in the constellation Taurus', true, 6500);
INSERT INTO public.sun VALUES (17, 'Antares', 'A red supergiant star in the constellation Scorpius', true, 12000);
INSERT INTO public.sun VALUES (18, 'Spica', 'A binary star system in the constellation Virgo', true, 2500);
INSERT INTO public.sun VALUES (19, 'Pollux', 'A red giant star in the constellation Gemini', true, 724);
INSERT INTO public.sun VALUES (20, 'Castor', 'A multiple star system in the constellation Gemini', true, 370);


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
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 20, true);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

