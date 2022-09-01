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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_try integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 7, 1);
INSERT INTO public.games VALUES (2, 242, 2);
INSERT INTO public.games VALUES (3, 953, 2);
INSERT INTO public.games VALUES (4, 253, 3);
INSERT INTO public.games VALUES (5, 941, 3);
INSERT INTO public.games VALUES (6, 852, 2);
INSERT INTO public.games VALUES (7, 104, 2);
INSERT INTO public.games VALUES (8, 138, 2);
INSERT INTO public.games VALUES (9, 506, 4);
INSERT INTO public.games VALUES (10, 408, 4);
INSERT INTO public.games VALUES (11, 839, 5);
INSERT INTO public.games VALUES (12, 649, 5);
INSERT INTO public.games VALUES (13, 995, 4);
INSERT INTO public.games VALUES (14, 769, 4);
INSERT INTO public.games VALUES (15, 645, 4);
INSERT INTO public.games VALUES (16, 658, 6);
INSERT INTO public.games VALUES (17, 14, 6);
INSERT INTO public.games VALUES (18, 247, 7);
INSERT INTO public.games VALUES (19, 867, 7);
INSERT INTO public.games VALUES (20, 373, 6);
INSERT INTO public.games VALUES (21, 555, 6);
INSERT INTO public.games VALUES (22, 743, 6);
INSERT INTO public.games VALUES (23, 958, 8);
INSERT INTO public.games VALUES (24, 808, 8);
INSERT INTO public.games VALUES (25, 613, 9);
INSERT INTO public.games VALUES (26, 503, 9);
INSERT INTO public.games VALUES (27, 853, 8);
INSERT INTO public.games VALUES (28, 981, 8);
INSERT INTO public.games VALUES (29, 350, 8);
INSERT INTO public.games VALUES (30, 341, 10);
INSERT INTO public.games VALUES (31, 994, 10);
INSERT INTO public.games VALUES (32, 336, 11);
INSERT INTO public.games VALUES (33, 846, 11);
INSERT INTO public.games VALUES (34, 713, 10);
INSERT INTO public.games VALUES (35, 566, 10);
INSERT INTO public.games VALUES (36, 501, 10);
INSERT INTO public.games VALUES (37, 992, 12);
INSERT INTO public.games VALUES (38, 164, 12);
INSERT INTO public.games VALUES (39, 921, 13);
INSERT INTO public.games VALUES (40, 626, 13);
INSERT INTO public.games VALUES (41, 243, 12);
INSERT INTO public.games VALUES (42, 857, 12);
INSERT INTO public.games VALUES (43, 662, 12);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'jorge');
INSERT INTO public.users VALUES (2, 'user_1662075099092');
INSERT INTO public.users VALUES (3, 'user_1662075099091');
INSERT INTO public.users VALUES (4, 'user_1662075329347');
INSERT INTO public.users VALUES (5, 'user_1662075329346');
INSERT INTO public.users VALUES (6, 'user_1662075669038');
INSERT INTO public.users VALUES (7, 'user_1662075669037');
INSERT INTO public.users VALUES (8, 'user_1662075755014');
INSERT INTO public.users VALUES (9, 'user_1662075755013');
INSERT INTO public.users VALUES (10, 'user_1662075786365');
INSERT INTO public.users VALUES (11, 'user_1662075786364');
INSERT INTO public.users VALUES (12, 'user_1662076004422');
INSERT INTO public.users VALUES (13, 'user_1662076004421');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

