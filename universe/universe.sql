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
    name character varying(30),
    we_are_in boolean,
    dooo integer NOT NULL,
    fleo integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_dooo_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_dooo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_dooo_seq OWNER TO freecodecamp;

--
-- Name: galaxy_dooo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_dooo_seq OWNED BY public.galaxy.dooo;


--
-- Name: galaxy_fleo_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_fleo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_fleo_seq OWNER TO freecodecamp;

--
-- Name: galaxy_fleo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_fleo_seq OWNED BY public.galaxy.fleo;


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
    diameter integer,
    planet_id integer,
    kmto integer NOT NULL,
    luao integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_kmto_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_kmto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_kmto_seq OWNER TO freecodecamp;

--
-- Name: moon_kmto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_kmto_seq OWNED BY public.moon.kmto;


--
-- Name: moon_luao_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_luao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_luao_seq OWNER TO freecodecamp;

--
-- Name: moon_luao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_luao_seq OWNED BY public.moon.luao;


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
    diameter integer,
    we_are_in boolean,
    star_id integer,
    dppo integer NOT NULL,
    kmto integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_dppo_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_dppo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_dppo_seq OWNER TO freecodecamp;

--
-- Name: planet_dppo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_dppo_seq OWNED BY public.planet.dppo;


--
-- Name: planet_kmto_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_kmto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_kmto_seq OWNER TO freecodecamp;

--
-- Name: planet_kmto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_kmto_seq OWNED BY public.planet.kmto;


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
    diameter integer,
    brightness numeric(4,2),
    color text,
    galaxy_id integer,
    fleo integer NOT NULL,
    dppo integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_dppo_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_dppo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_dppo_seq OWNER TO freecodecamp;

--
-- Name: star_dppo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_dppo_seq OWNED BY public.star.dppo;


--
-- Name: star_fleo_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_fleo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_fleo_seq OWNER TO freecodecamp;

--
-- Name: star_fleo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_fleo_seq OWNED BY public.star.fleo;


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
-- Name: what_this_for; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.what_this_for (
    what_this_for_id integer NOT NULL,
    really boolean,
    serious integer,
    name character varying(30),
    luao integer NOT NULL
);


ALTER TABLE public.what_this_for OWNER TO freecodecamp;

--
-- Name: what_this_for_luao_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.what_this_for_luao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.what_this_for_luao_seq OWNER TO freecodecamp;

--
-- Name: what_this_for_luao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.what_this_for_luao_seq OWNED BY public.what_this_for.luao;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy dooo; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN dooo SET DEFAULT nextval('public.galaxy_dooo_seq'::regclass);


--
-- Name: galaxy fleo; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN fleo SET DEFAULT nextval('public.galaxy_fleo_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon kmto; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN kmto SET DEFAULT nextval('public.moon_kmto_seq'::regclass);


--
-- Name: moon luao; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN luao SET DEFAULT nextval('public.moon_luao_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet dppo; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN dppo SET DEFAULT nextval('public.planet_dppo_seq'::regclass);


--
-- Name: planet kmto; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN kmto SET DEFAULT nextval('public.planet_kmto_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star fleo; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN fleo SET DEFAULT nextval('public.star_fleo_seq'::regclass);


--
-- Name: star dppo; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN dppo SET DEFAULT nextval('public.star_dppo_seq'::regclass);


--
-- Name: what_this_for luao; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_this_for ALTER COLUMN luao SET DEFAULT nextval('public.what_this_for_luao_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy', true, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Scorpion', false, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'Kaohsiung', false, 3, 3);
INSERT INTO public.galaxy VALUES (4, 'Marvel', false, 4, 4);
INSERT INTO public.galaxy VALUES (5, 'Pirates', false, 5, 5);
INSERT INTO public.galaxy VALUES (6, 'Magic', false, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3500, 1, 1, 1);
INSERT INTO public.moon VALUES (2, 'A', 1, 1, 2, 2);
INSERT INTO public.moon VALUES (3, 'B', 2, 2, 3, 3);
INSERT INTO public.moon VALUES (4, 'C', 3, 3, 4, 4);
INSERT INTO public.moon VALUES (5, 'D', 4, 4, 5, 5);
INSERT INTO public.moon VALUES (6, 'AA', 1, 1, 6, 6);
INSERT INTO public.moon VALUES (7, 'BB', 2, 2, 7, 7);
INSERT INTO public.moon VALUES (8, 'CC', 3, 3, 8, 8);
INSERT INTO public.moon VALUES (9, 'DD', 4, 4, 9, 9);
INSERT INTO public.moon VALUES (10, 'JAA', 1, 8, 10, 10);
INSERT INTO public.moon VALUES (11, 'BF', 2, 5, 11, 11);
INSERT INTO public.moon VALUES (12, 'CD', 3, 7, 12, 12);
INSERT INTO public.moon VALUES (13, 'DG', 4, 9, 13, 13);
INSERT INTO public.moon VALUES (14, 'JAFA', 1, 10, 14, 14);
INSERT INTO public.moon VALUES (15, 'BFF', 2, 19, 15, 15);
INSERT INTO public.moon VALUES (16, 'VCD', 3, 20, 16, 16);
INSERT INTO public.moon VALUES (17, 'DOG', 4, 22, 17, 17);
INSERT INTO public.moon VALUES (18, 'JAFAR', 1, 23, 18, 18);
INSERT INTO public.moon VALUES (19, 'BEEF', 2, 24, 19, 19);
INSERT INTO public.moon VALUES (20, 'DVD', 3, 25, 20, 20);
INSERT INTO public.moon VALUES (21, 'OG', 4, 21, 21, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 6500, true, 1, 1, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4800, false, 1, 2, 2);
INSERT INTO public.planet VALUES (3, 'Mercury', 2000, false, 1, 3, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 5900, false, 1, 4, 4);
INSERT INTO public.planet VALUES (5, 'Jupyter', 12800, false, 1, 5, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 8700, false, 1, 6, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 8500, false, 1, 7, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 1245, false, 1, 8, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 20, false, 1, 9, 9);
INSERT INTO public.planet VALUES (10, 'Joe', 170, false, 2, 10, 10);
INSERT INTO public.planet VALUES (19, 'Misery', 2000, false, 2, 19, 19);
INSERT INTO public.planet VALUES (20, 'Bruno Mars', 590, false, 3, 20, 20);
INSERT INTO public.planet VALUES (21, 'Jeter', 102800, false, 4, 21, 21);
INSERT INTO public.planet VALUES (22, 'Stern', 87, false, 4, 22, 22);
INSERT INTO public.planet VALUES (23, 'Ur Anus', 888, false, 5, 23, 23);
INSERT INTO public.planet VALUES (24, 'Nee', 125, false, 6, 24, 24);
INSERT INTO public.planet VALUES (25, 'Plus', 20, false, 7, 25, 25);
INSERT INTO public.planet VALUES (26, 'Dole', 170, false, 2, 26, 26);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 123456, 1.00, 'Yellow', 1, 1, 1);
INSERT INTO public.star VALUES (2, 'Syrius', 90000, 29.02, 'Blue', 1, 2, 2);
INSERT INTO public.star VALUES (3, 'Sylar', 10, 0.50, 'Red', 1, 3, 3);
INSERT INTO public.star VALUES (4, 'Magician', 10, 0.02, 'Red', 6, 4, 4);
INSERT INTO public.star VALUES (5, 'Jack Sparrow', 175, 51.50, 'Red', 5, 5, 5);
INSERT INTO public.star VALUES (6, 'The Rock', 1000, 99.00, 'Black', 2, 6, 6);
INSERT INTO public.star VALUES (7, 'Tony Stark', 175, 5.50, 'Gold', 3, 7, 7);


--
-- Data for Name: what_this_for; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.what_this_for VALUES (1, NULL, NULL, NULL, 1);
INSERT INTO public.what_this_for VALUES (2, NULL, NULL, NULL, 2);
INSERT INTO public.what_this_for VALUES (3, NULL, NULL, NULL, 3);


--
-- Name: galaxy_dooo_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_dooo_seq', 6, true);


--
-- Name: galaxy_fleo_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_fleo_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_kmto_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_kmto_seq', 21, true);


--
-- Name: moon_luao_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_luao_seq', 21, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_dppo_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_dppo_seq', 26, true);


--
-- Name: planet_kmto_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_kmto_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_dppo_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_dppo_seq', 7, true);


--
-- Name: star_fleo_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_fleo_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: what_this_for_luao_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.what_this_for_luao_seq', 3, true);


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
-- Name: what_this_for what_this_for_luao_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_this_for
    ADD CONSTRAINT what_this_for_luao_key UNIQUE (luao);


--
-- Name: what_this_for what_this_for_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.what_this_for
    ADD CONSTRAINT what_this_for_pkey PRIMARY KEY (what_this_for_id);


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

