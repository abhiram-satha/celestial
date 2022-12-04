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
    name character varying(20) NOT NULL,
    description character varying(20),
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_types character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    human_id integer NOT NULL,
    address text,
    phone character varying(12) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: humans_human_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.humans_human_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.humans_human_id_seq OWNER TO freecodecamp;

--
-- Name: humans_human_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.humans_human_id_seq OWNED BY public.human.human_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    landed boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_types character varying(50),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    star_types character varying(50),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: human human_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human ALTER COLUMN human_id SET DEFAULT nextval('public.humans_human_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'our system', true, 66, 'This is our system');
INSERT INTO public.galaxy VALUES (2, 'Milky Way2', 'our system', false, 66, 'This is not our system');
INSERT INTO public.galaxy VALUES (3, 'Milky Way3', 'our system', false, 66, 'This is not our system');
INSERT INTO public.galaxy VALUES (4, 'Milky Way4', 'our system', false, 66, 'This is not our system');
INSERT INTO public.galaxy VALUES (5, 'Milky Way5', 'our system', false, 66, 'This is not our system');
INSERT INTO public.galaxy VALUES (6, 'Milky Way6', 'our system', false, 66, 'This is not our system');


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (1, '1111', '232323', '222424');
INSERT INTO public.human VALUES (2, '111', '2323', '2224');
INSERT INTO public.human VALUES (3, 'f111', '232ff3', '22ff24');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (2, '2', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (3, '22', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (4, '2121', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (5, '122', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (8, '2144', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (7, '222', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (11, '244', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (9, '22222', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (13, '2441', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (12, '22243', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (14, '24412', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (15, '22245', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (16, '244121', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (17, '22246', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (18, '2441521', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (19, '522246', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (20, '244r321', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (21, '52246', 'another moon', false, 43, true, 1);
INSERT INTO public.moon VALUES (22, '244rt321', 'this is a moon', false, 44, true, 1);
INSERT INTO public.moon VALUES (23, '52f246', 'another moon', false, 43, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (3, 'Earth2', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (4, 'Earth3', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (5, 'Earth4', 'life is non-existant', false, 55, 'cold', 3);
INSERT INTO public.planet VALUES (7, 'Earth6', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (8, 'Earth5', 'life is non-existant', false, 55, 'cold', 3);
INSERT INTO public.planet VALUES (9, 'Earth8', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (10, 'Earth7', 'life is non-existant', false, 55, 'cold', 3);
INSERT INTO public.planet VALUES (11, 'Earth10', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (12, 'Earth9', 'life is non-existant', false, 55, 'cold', 3);
INSERT INTO public.planet VALUES (13, 'Earth12', 'Life is here', true, 66, 'warm', 1);
INSERT INTO public.planet VALUES (14, 'Earth11', 'life is non-existant', false, 55, 'cold', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 'This is a star', false, 6, 'Fire Ball', 1);
INSERT INTO public.star VALUES (2, 'Star2', 'This is a star', false, 6, 'Fire Ball', 2);
INSERT INTO public.star VALUES (3, 'Star3', 'A star', false, 7, 'Another fire ball', 3);
INSERT INTO public.star VALUES (4, 'Star4', 'This is a star', false, 6, 'Fire Ball', 4);
INSERT INTO public.star VALUES (5, 'Star5', 'A star', false, 7, 'Another fire ball', 5);
INSERT INTO public.star VALUES (8, 'Star6', 'This is a star', false, 6, 'Fire Ball', 6);
INSERT INTO public.star VALUES (9, 'Star7', 'A star', false, 7, 'Another fire ball', 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: humans_human_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.humans_human_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 9, true);


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
-- Name: human humans_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT humans_phone_key UNIQUE (phone);


--
-- Name: human humans_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT humans_pkey PRIMARY KEY (human_id);


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

