--
-- PostgreSQL database dump
--

-- Dumped from database version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)

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
    name character varying(40) NOT NULL,
    age integer,
    favorite_number integer,
    average_cycle numeric(3,2),
    favorite_quote text,
    like_science boolean
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
    name character varying(40) NOT NULL,
    age integer,
    favorite_number integer,
    average_cycle numeric(3,2),
    favorite_quote text,
    like_science boolean,
    planet_id integer NOT NULL
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
-- Name: organism; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.organism (
    organism_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    favorite_number integer,
    average_cycle numeric(3,2),
    favorite_quote text,
    like_science boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.organism OWNER TO freecodecamp;

--
-- Name: organism_organism_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.organism_organism_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organism_organism_id_seq OWNER TO freecodecamp;

--
-- Name: organism_organism_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.organism_organism_id_seq OWNED BY public.organism.organism_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    favorite_number integer,
    average_cycle numeric(3,2),
    favorite_quote text,
    like_science boolean,
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
    name character varying(40) NOT NULL,
    age integer,
    favorite_number integer,
    average_cycle numeric(3,2),
    favorite_quote text,
    like_science boolean,
    galaxy_id integer NOT NULL
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
-- Name: organism organism_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism ALTER COLUMN organism_id SET DEFAULT nextval('public.organism_organism_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 32, 23, 3.45, 'I can do this all day.', true);
INSERT INTO public.galaxy VALUES (2, 'Cartwheel', 46, 12, 8.76, 'Whatever it takes.', false);
INSERT INTO public.galaxy VALUES (3, 'Mice', 67, 99, 5.60, 'I love you 3000.', true);
INSERT INTO public.galaxy VALUES (4, 'Milky', 35, 222, 5.42, 'You Need Some Milk.', true);
INSERT INTO public.galaxy VALUES (5, 'Magellanic', 66, 123, 4.12, 'Some Time Is Clock.', false);
INSERT INTO public.galaxy VALUES (6, 'Mensa', 99, 12, 9.88, 'It Is What It Is.', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mona', 27, 66, 3.03, 'She Is Not Alone.', false, 2);
INSERT INTO public.moon VALUES (2, 'Luna', 62, 38, 2.32, 'That Is My Secret, Cap; I Am Always Angry.', true, 3);
INSERT INTO public.moon VALUES (3, 'Sasi', 86, 4, 3.12, 'Wakanda Forever!', false, 1);
INSERT INTO public.moon VALUES (4, 'Indu', 11, 12, 2.30, 'Grapes taste like how you want it.', true, 12);
INSERT INTO public.moon VALUES (5, 'Jaci', 22, 23, 3.41, 'Now Or Never.', false, 11);
INSERT INTO public.moon VALUES (6, 'Mahina', 33, 34, 4.52, 'You Have Burden Of Performance.', false, 10);
INSERT INTO public.moon VALUES (7, 'Hang', 44, 45, 5.63, 'This Is Not That, It Is That.', true, 9);
INSERT INTO public.moon VALUES (8, 'Neoma', 55, 56, 6.74, 'Case Is Dependent On The Duty.', false, 8);
INSERT INTO public.moon VALUES (9, 'Dawa', 66, 67, 7.85, 'You Can Only Control Yourself.', true, 7);
INSERT INTO public.moon VALUES (10, 'Qamar', 77, 78, 8.96, 'Jack Of All Traits, Master Of Some.', false, 6);
INSERT INTO public.moon VALUES (11, 'Kuu', 88, 89, 9.07, 'That Is Your Existential Fear.', true, 5);
INSERT INTO public.moon VALUES (12, 'Bader', 73, 37, 4.90, 'If You Slide, You Will Be In The Hook.', false, 10);
INSERT INTO public.moon VALUES (13, 'Luan', 99, 98, 8.71, 'Establish The Foundation First.', false, 4);
INSERT INTO public.moon VALUES (14, 'Chan', 87, 76, 5.26, 'Responsibility Without Authority Is Slavery.', true, 3);
INSERT INTO public.moon VALUES (15, 'Mani', 65, 54, 3.34, 'Data Cannot  Lie, Only The Interpretation Of It.', false, 2);
INSERT INTO public.moon VALUES (16, 'Vikesh', 37, 18, 1.39, 'Truth Does Not Care About Your Opinion.', true, 1);
INSERT INTO public.moon VALUES (17, 'Aku', 15, 25, 7.26, 'There Is Good One And Bad One, I Am The One.', false, 6);
INSERT INTO public.moon VALUES (18, 'Aruna', 18, 27, 1.49, 'To Much Isolation Is Dangerous', true, 8);
INSERT INTO public.moon VALUES (19, 'Deva', 10, 17, 5.21, 'Do Not Root Through Garbage', false, 9);
INSERT INTO public.moon VALUES (20, 'Neil', 39, 38, 1.72, 'Right Is Not Always Right', true, 11);


--
-- Data for Name: organism; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.organism VALUES (1, 'Amoeba', 91, 87, 6.07, 'I Am Iron Man.', true, 3);
INSERT INTO public.organism VALUES (2, 'Planet', 43, 0, 2.12, 'We Have A Hulk.', true, 2);
INSERT INTO public.organism VALUES (3, 'Bacterium', 21, 41, 4.21, 'There Was An Idea...', false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 78, 70, 4.23, 'We Are Fighting An Army Of Robots And I Have A Bow And Arrow. None Of This Makes Sense.', false, 3);
INSERT INTO public.planet VALUES (2, 'Venus', 29, 23, 1.10, 'If You Are Nothing Without The Suit, Then You Should Not Have It.', true, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 64, 674, 2.01, 'I Have Nothing To Prove To You.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 11, 12, 1.23, 'Getting Hot In Here', false, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 22, 23, 3.45, 'Rolling In The Deep', true, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 33, 34, 4.58, 'One More Step.', false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 44, 45, 5.67, 'Move Always To The Right', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 55, 56, 6.78, 'Just Let It Out.', true, 2);
INSERT INTO public.planet VALUES (9, 'Plato', 66, 67, 7.89, 'You Need To Be Wrong Sometimes.', true, 4);
INSERT INTO public.planet VALUES (10, 'Mushroom', 77, 78, 8.90, 'Check Before Yout Eat It', false, 3);
INSERT INTO public.planet VALUES (11, 'Planeta', 88, 89, 9.80, 'Is This For Real?', true, 6);
INSERT INTO public.planet VALUES (12, 'Mema', 99, 90, 9.12, 'Just Let It Do Itself.', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Canopus', 28, 607, 3.43, 'You Will Never Be A God.', false, 1);
INSERT INTO public.star VALUES (2, 'Arcturus', 59, 534, 7.72, 'Asgard Is Not A Place. Never Was. This Could Be Asgard. Asgard Is Where Our People Stand.', false, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 57, 41, 1.89, 'He May Have Been Your Father, Boy, But He Was Not Your Daddy.', true, 3);
INSERT INTO public.star VALUES (4, 'Alpha', 44, 22, 4.56, 'You Need To Become.', false, 4);
INSERT INTO public.star VALUES (5, 'Caelum', 90, 12, 7.22, 'Eat Your Breakfast Always.', true, 5);
INSERT INTO public.star VALUES (6, 'Norma', 91, 48, 2.22, 'Got To Be Quick.', true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: organism_organism_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.organism_organism_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_favorite_quote_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_favorite_quote_key UNIQUE (favorite_quote);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_favorite_quote_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_favorite_quote_key UNIQUE (favorite_quote);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: organism organism_favorite_quote_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT organism_favorite_quote_key UNIQUE (favorite_quote);


--
-- Name: organism organism_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT organism_pkey PRIMARY KEY (organism_id);


--
-- Name: planet planet_favorite_quote_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_favorite_quote_key UNIQUE (favorite_quote);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_favorite_quote_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_favorite_quote_key UNIQUE (favorite_quote);


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
-- Name: organism organism_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.organism
    ADD CONSTRAINT organism_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

