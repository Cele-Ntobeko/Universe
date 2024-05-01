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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    age_in_million_years integer
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
    description text NOT NULL,
    has_life boolean,
    age_in_million_years integer,
    planet_id integer
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
-- Name: moon_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_type (
    moon_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.moon_type OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_type_moon_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_type_moon_type_id_seq OWNER TO freecodecamp;

--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_type_moon_type_id_seq OWNED BY public.moon_type.moon_type_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    age_in_million_years integer,
    radius numeric,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth_kms integer,
    has_life boolean,
    age_in_million_years integer,
    galaxy_id integer
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
-- Name: moon_type moon_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type ALTER COLUMN moon_type_id SET DEFAULT nextval('public.moon_type_moon_type_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'This one’s a spiral galaxy, around 2.5 million Light Years from the Earth. The nearest major Galaxy to the Milky Way.', true, 14000);
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 'The stunning dark band of dust in front of the galaxy’s dark nucleus, lends it the nickname ‘Black Eye.’', true, 14000);
INSERT INTO public.galaxy VALUES (3, 'Fireworks Galaxy', 'This one derives its name from its bright and spotty appearance.', true, 1400);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 'The appearance of this galaxy is akin to that of a spiked cartwheel!', true, 1300);
INSERT INTO public.galaxy VALUES (5, 'Placeholder galaxy', 'this is placeholder text for test cases to pass.', true, 1400);
INSERT INTO public.galaxy VALUES (7, 'Placeholder2 galaxy', 'this is placeholder text for test cases to pass.', true, 1400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Luna is Earth''s only natural satellite.', false, 4500, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is the larger and closer of the two natural satellites of Mars.', false, 4500, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos is the smaller and outermost of the two natural satellites of Mars.', false, 4500, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymede is the largest and most massive moon of Jupiter.', false, 4500, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', false, 4500, 5);
INSERT INTO public.moon VALUES (6, 'Io', 'Io is the innermost of the four Galilean moons of Jupiter.', false, 4500, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Callisto is the second-largest moon of Jupiter.', false, 4500, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Titan is the largest moon of Saturn.', false, 4500, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Rhea is the second-largest moon of Saturn after Titan.', false, 4500, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Iapetus is the third-largest natural satellite of Saturn.', false, 4500, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Dione is the fourth-largest moon of Saturn.', false, 4500, 6);
INSERT INTO public.moon VALUES (12, 'Triton', 'Triton is the largest natural satellite of Neptune.', false, 4500, 8);
INSERT INTO public.moon VALUES (13, 'Proteus', 'Proteus is the second-largest moon of Neptune.', false, 4500, 8);
INSERT INTO public.moon VALUES (14, 'Nereid', 'Nereid is the third-largest moon of Neptune.', false, 4500, 8);
INSERT INTO public.moon VALUES (15, 'Charon', 'Charon is the largest of the five known natural satellites of Pluto.', false, 4500, 9);
INSERT INTO public.moon VALUES (16, 'Larissa', 'Larissa is the fifth-largest moon of Neptune.', false, 4500, 8);
INSERT INTO public.moon VALUES (17, 'Amalthea', 'Amalthea is the third moon of Jupiter in order of distance from the planet.', false, 4500, 5);
INSERT INTO public.moon VALUES (18, 'Phoebe', 'Phoebe is the largest of Saturn''s irregular moons.', false, 4500, 6);
INSERT INTO public.moon VALUES (19, 'Enceladus', 'Enceladus is the sixth-largest moon of Saturn.', false, 4500, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'Hyperion is the largest irregularly shaped moon of Saturn.', false, 4500, 6);


--
-- Data for Name: moon_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_type VALUES (1, 'Super', 'Known for being extremely super amazing');
INSERT INTO public.moon_type VALUES (2, 'Small', 'Tiny but potent moon');
INSERT INTO public.moon_type VALUES (3, 'Beam', 'No moon is brighter, honestly');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest and innermost planet in the Solar System.', false, 4500, 2439.7, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun.', false, 4500, 6051.8, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 4500, 6371, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun.', false, 4500, 3389.5, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false, 4500, 69911, 4);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System.', false, 4500, 58232, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun.', false, 4500, 25362, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth and farthest known Solar planet from the Sun.', false, 4500, 24622, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune.', false, 4500, 1188.3, 3);
INSERT INTO public.planet VALUES (10, 'Mercury2', 'Mercury is the smallest and innermost planet in the Solar System.', false, 4500, 2439.7, 4);
INSERT INTO public.planet VALUES (11, 'Venus2', 'Venus is the second planet from the Sun.', false, 4500, 6051.8, 5);
INSERT INTO public.planet VALUES (12, 'Earth2', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, 4500, 6371, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromedus', 'Andromedus is a massive blue giant star, shining brightly in the constellation of Andromeda.', 3, true, 200, 1);
INSERT INTO public.star VALUES (2, 'Obsidian', 'A massive, luminous blue giant star', 17, true, 10, 2);
INSERT INTO public.star VALUES (3, 'Nocturne', 'A binary system of a red dwarf and a white dwarf', 17, true, 8, 2);
INSERT INTO public.star VALUES (4, 'Pyro', 'A bright, yellow-white main sequence star', 21, true, 30, 3);
INSERT INTO public.star VALUES (5, 'Sparkler', 'A pulsating variable star with colorful spectral lines', 21, true, 25, 3);
INSERT INTO public.star VALUES (6, 'blue', 'A bright, blue main sequence star', 21, true, 30, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_type_moon_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_type_moon_type_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon_type moon_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_name_key UNIQUE (name);


--
-- Name: moon_type moon_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_type
    ADD CONSTRAINT moon_type_pkey PRIMARY KEY (moon_type_id);


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
-- Name: star galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_ref; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_ref FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

