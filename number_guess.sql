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
    num_of_guesses integer NOT NULL,
    user_id integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 4, 1);
INSERT INTO public.games VALUES (2, 8, 1);
INSERT INTO public.games VALUES (3, 20, 1);
INSERT INTO public.games VALUES (4, 30, 1);
INSERT INTO public.games VALUES (5, 80, 1);
INSERT INTO public.games VALUES (6, 9, 2);
INSERT INTO public.games VALUES (7, 13, 2);
INSERT INTO public.games VALUES (8, 13, 2);
INSERT INTO public.games VALUES (9, 104, 7);
INSERT INTO public.games VALUES (10, 249, 8);
INSERT INTO public.games VALUES (11, 732, 7);
INSERT INTO public.games VALUES (12, 4, 7);
INSERT INTO public.games VALUES (13, 875, 7);
INSERT INTO public.games VALUES (14, 691, 9);
INSERT INTO public.games VALUES (15, 761, 10);
INSERT INTO public.games VALUES (16, 682, 9);
INSERT INTO public.games VALUES (17, 790, 9);
INSERT INTO public.games VALUES (18, 246, 9);
INSERT INTO public.games VALUES (19, 283, 11);
INSERT INTO public.games VALUES (20, 710, 12);
INSERT INTO public.games VALUES (21, 706, 11);
INSERT INTO public.games VALUES (22, 862, 11);
INSERT INTO public.games VALUES (23, 890, 11);
INSERT INTO public.games VALUES (24, 871, 13);
INSERT INTO public.games VALUES (25, 809, 14);
INSERT INTO public.games VALUES (26, 398, 13);
INSERT INTO public.games VALUES (27, 848, 13);
INSERT INTO public.games VALUES (28, 660, 13);
INSERT INTO public.games VALUES (29, 178, 15);
INSERT INTO public.games VALUES (30, 565, 16);
INSERT INTO public.games VALUES (31, 166, 15);
INSERT INTO public.games VALUES (32, 266, 15);
INSERT INTO public.games VALUES (33, 936, 15);
INSERT INTO public.games VALUES (34, 983, 17);
INSERT INTO public.games VALUES (35, 527, 18);
INSERT INTO public.games VALUES (36, 633, 17);
INSERT INTO public.games VALUES (37, 627, 17);
INSERT INTO public.games VALUES (38, 772, 17);
INSERT INTO public.games VALUES (39, 10, 2);
INSERT INTO public.games VALUES (40, 322, 19);
INSERT INTO public.games VALUES (41, 508, 20);
INSERT INTO public.games VALUES (42, 299, 19);
INSERT INTO public.games VALUES (43, 630, 19);
INSERT INTO public.games VALUES (44, 98, 19);
INSERT INTO public.games VALUES (45, 934, 21);
INSERT INTO public.games VALUES (46, 472, 22);
INSERT INTO public.games VALUES (47, 167, 21);
INSERT INTO public.games VALUES (48, 17, 21);
INSERT INTO public.games VALUES (49, 820, 21);
INSERT INTO public.games VALUES (50, 450, 23);
INSERT INTO public.games VALUES (51, 921, 24);
INSERT INTO public.games VALUES (52, 232, 23);
INSERT INTO public.games VALUES (53, 967, 23);
INSERT INTO public.games VALUES (54, 595, 23);
INSERT INTO public.games VALUES (55, 248, 25);
INSERT INTO public.games VALUES (56, 502, 26);
INSERT INTO public.games VALUES (57, 210, 25);
INSERT INTO public.games VALUES (58, 911, 25);
INSERT INTO public.games VALUES (59, 996, 25);
INSERT INTO public.games VALUES (60, 25, 27);
INSERT INTO public.games VALUES (61, 209, 28);
INSERT INTO public.games VALUES (62, 285, 27);
INSERT INTO public.games VALUES (63, 143, 27);
INSERT INTO public.games VALUES (64, 518, 27);
INSERT INTO public.games VALUES (65, 459, 29);
INSERT INTO public.games VALUES (66, 784, 30);
INSERT INTO public.games VALUES (67, 525, 29);
INSERT INTO public.games VALUES (68, 498, 29);
INSERT INTO public.games VALUES (69, 803, 29);
INSERT INTO public.games VALUES (70, 748, 31);
INSERT INTO public.games VALUES (71, 327, 32);
INSERT INTO public.games VALUES (72, 843, 31);
INSERT INTO public.games VALUES (73, 307, 31);
INSERT INTO public.games VALUES (74, 427, 31);
INSERT INTO public.games VALUES (75, 535, 33);
INSERT INTO public.games VALUES (76, 201, 34);
INSERT INTO public.games VALUES (77, 785, 33);
INSERT INTO public.games VALUES (78, 22, 33);
INSERT INTO public.games VALUES (79, 757, 33);
INSERT INTO public.games VALUES (80, 601, 35);
INSERT INTO public.games VALUES (81, 328, 36);
INSERT INTO public.games VALUES (82, 532, 35);
INSERT INTO public.games VALUES (83, 654, 35);
INSERT INTO public.games VALUES (84, 207, 35);
INSERT INTO public.games VALUES (85, 621, 37);
INSERT INTO public.games VALUES (86, 619, 38);
INSERT INTO public.games VALUES (87, 836, 37);
INSERT INTO public.games VALUES (88, 650, 37);
INSERT INTO public.games VALUES (89, 817, 37);
INSERT INTO public.games VALUES (90, 8, 1);
INSERT INTO public.games VALUES (91, 389, 39);
INSERT INTO public.games VALUES (92, 634, 40);
INSERT INTO public.games VALUES (93, 329, 39);
INSERT INTO public.games VALUES (94, 453, 39);
INSERT INTO public.games VALUES (95, 682, 39);
INSERT INTO public.games VALUES (96, 0, 41);
INSERT INTO public.games VALUES (97, 0, 42);
INSERT INTO public.games VALUES (98, 0, 41);
INSERT INTO public.games VALUES (99, 0, 41);
INSERT INTO public.games VALUES (100, 0, 41);
INSERT INTO public.games VALUES (101, 0, 43);
INSERT INTO public.games VALUES (102, 0, 44);
INSERT INTO public.games VALUES (103, 0, 43);
INSERT INTO public.games VALUES (104, 0, 43);
INSERT INTO public.games VALUES (105, 0, 43);
INSERT INTO public.games VALUES (106, 0, 45);
INSERT INTO public.games VALUES (107, 0, 46);
INSERT INTO public.games VALUES (108, 0, 45);
INSERT INTO public.games VALUES (109, 0, 45);
INSERT INTO public.games VALUES (110, 0, 45);
INSERT INTO public.games VALUES (111, 0, 47);
INSERT INTO public.games VALUES (112, 0, 48);
INSERT INTO public.games VALUES (113, 0, 47);
INSERT INTO public.games VALUES (114, 0, 47);
INSERT INTO public.games VALUES (115, 0, 47);
INSERT INTO public.games VALUES (116, 0, 49);
INSERT INTO public.games VALUES (117, 0, 50);
INSERT INTO public.games VALUES (118, 0, 49);
INSERT INTO public.games VALUES (119, 0, 49);
INSERT INTO public.games VALUES (120, 0, 49);
INSERT INTO public.games VALUES (121, 0, 51);
INSERT INTO public.games VALUES (122, 0, 52);
INSERT INTO public.games VALUES (123, 0, 51);
INSERT INTO public.games VALUES (124, 0, 51);
INSERT INTO public.games VALUES (125, 0, 51);
INSERT INTO public.games VALUES (126, 0, 53);
INSERT INTO public.games VALUES (127, 0, 54);
INSERT INTO public.games VALUES (128, 0, 53);
INSERT INTO public.games VALUES (129, 0, 53);
INSERT INTO public.games VALUES (130, 0, 53);
INSERT INTO public.games VALUES (131, 0, 55);
INSERT INTO public.games VALUES (132, 0, 55);
INSERT INTO public.games VALUES (133, 0, 56);
INSERT INTO public.games VALUES (134, 0, 56);
INSERT INTO public.games VALUES (135, 0, 55);
INSERT INTO public.games VALUES (136, 0, 55);
INSERT INTO public.games VALUES (137, 0, 55);
INSERT INTO public.games VALUES (138, 549, 57);
INSERT INTO public.games VALUES (139, 453, 57);
INSERT INTO public.games VALUES (140, 86, 58);
INSERT INTO public.games VALUES (141, 452, 58);
INSERT INTO public.games VALUES (142, 337, 57);
INSERT INTO public.games VALUES (143, 585, 57);
INSERT INTO public.games VALUES (144, 911, 57);
INSERT INTO public.games VALUES (145, 12, 2);
INSERT INTO public.games VALUES (146, 362, 59);
INSERT INTO public.games VALUES (147, 884, 59);
INSERT INTO public.games VALUES (148, 392, 60);
INSERT INTO public.games VALUES (149, 382, 60);
INSERT INTO public.games VALUES (150, 213, 59);
INSERT INTO public.games VALUES (151, 262, 59);
INSERT INTO public.games VALUES (152, 810, 59);
INSERT INTO public.games VALUES (153, 246, 61);
INSERT INTO public.games VALUES (154, 266, 61);
INSERT INTO public.games VALUES (155, 201, 62);
INSERT INTO public.games VALUES (156, 196, 62);
INSERT INTO public.games VALUES (157, 295, 61);
INSERT INTO public.games VALUES (158, 343, 61);
INSERT INTO public.games VALUES (159, 997, 61);
INSERT INTO public.games VALUES (160, 170, 63);
INSERT INTO public.games VALUES (161, 409, 63);
INSERT INTO public.games VALUES (162, 647, 64);
INSERT INTO public.games VALUES (163, 376, 64);
INSERT INTO public.games VALUES (164, 981, 63);
INSERT INTO public.games VALUES (165, 589, 63);
INSERT INTO public.games VALUES (166, 394, 63);
INSERT INTO public.games VALUES (167, 371, 65);
INSERT INTO public.games VALUES (168, 79, 65);
INSERT INTO public.games VALUES (169, 167, 66);
INSERT INTO public.games VALUES (170, 348, 66);
INSERT INTO public.games VALUES (171, 317, 65);
INSERT INTO public.games VALUES (172, 218, 65);
INSERT INTO public.games VALUES (173, 441, 65);
INSERT INTO public.games VALUES (174, 377, 67);
INSERT INTO public.games VALUES (175, 52, 67);
INSERT INTO public.games VALUES (176, 878, 68);
INSERT INTO public.games VALUES (177, 490, 68);
INSERT INTO public.games VALUES (178, 658, 67);
INSERT INTO public.games VALUES (179, 708, 67);
INSERT INTO public.games VALUES (180, 683, 67);
INSERT INTO public.games VALUES (181, 338, 69);
INSERT INTO public.games VALUES (182, 492, 69);
INSERT INTO public.games VALUES (183, 184, 70);
INSERT INTO public.games VALUES (184, 872, 70);
INSERT INTO public.games VALUES (185, 689, 69);
INSERT INTO public.games VALUES (186, 823, 69);
INSERT INTO public.games VALUES (187, 564, 69);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'John');
INSERT INTO public.users VALUES (2, 'Paul');
INSERT INTO public.users VALUES (3, 'user_1711981805983');
INSERT INTO public.users VALUES (4, 'user_1711981805982');
INSERT INTO public.users VALUES (5, 'user_1711982047427');
INSERT INTO public.users VALUES (6, 'user_1711982047426');
INSERT INTO public.users VALUES (7, 'user_1711983219706');
INSERT INTO public.users VALUES (8, 'user_1711983219705');
INSERT INTO public.users VALUES (9, 'user_1711983401298');
INSERT INTO public.users VALUES (10, 'user_1711983401297');
INSERT INTO public.users VALUES (11, 'user_1711983429427');
INSERT INTO public.users VALUES (12, 'user_1711983429426');
INSERT INTO public.users VALUES (13, 'user_1711983460397');
INSERT INTO public.users VALUES (14, 'user_1711983460396');
INSERT INTO public.users VALUES (15, 'user_1711983506482');
INSERT INTO public.users VALUES (16, 'user_1711983506481');
INSERT INTO public.users VALUES (17, 'user_1711983518383');
INSERT INTO public.users VALUES (18, 'user_1711983518382');
INSERT INTO public.users VALUES (19, 'user_1711984024804');
INSERT INTO public.users VALUES (20, 'user_1711984024803');
INSERT INTO public.users VALUES (21, 'user_1711984193464');
INSERT INTO public.users VALUES (22, 'user_1711984193463');
INSERT INTO public.users VALUES (23, 'user_1711984216265');
INSERT INTO public.users VALUES (24, 'user_1711984216264');
INSERT INTO public.users VALUES (25, 'user_1711984268372');
INSERT INTO public.users VALUES (26, 'user_1711984268371');
INSERT INTO public.users VALUES (27, 'user_1711984293629');
INSERT INTO public.users VALUES (28, 'user_1711984293628');
INSERT INTO public.users VALUES (29, 'user_1711984604308');
INSERT INTO public.users VALUES (30, 'user_1711984604307');
INSERT INTO public.users VALUES (31, 'user_1711984687452');
INSERT INTO public.users VALUES (32, 'user_1711984687451');
INSERT INTO public.users VALUES (33, 'user_1711984745109');
INSERT INTO public.users VALUES (34, 'user_1711984745108');
INSERT INTO public.users VALUES (35, 'user_1711984787173');
INSERT INTO public.users VALUES (36, 'user_1711984787172');
INSERT INTO public.users VALUES (37, 'user_1711984862678');
INSERT INTO public.users VALUES (38, 'user_1711984862677');
INSERT INTO public.users VALUES (39, 'user_1711985101916');
INSERT INTO public.users VALUES (40, 'user_1711985101915');
INSERT INTO public.users VALUES (41, 'user_1711985709598');
INSERT INTO public.users VALUES (42, 'user_1711985709597');
INSERT INTO public.users VALUES (43, 'user_1711985744015');
INSERT INTO public.users VALUES (44, 'user_1711985744014');
INSERT INTO public.users VALUES (45, 'user_1711985799692');
INSERT INTO public.users VALUES (46, 'user_1711985799691');
INSERT INTO public.users VALUES (47, 'user_1711985883100');
INSERT INTO public.users VALUES (48, 'user_1711985883099');
INSERT INTO public.users VALUES (49, 'user_1711985898972');
INSERT INTO public.users VALUES (50, 'user_1711985898971');
INSERT INTO public.users VALUES (51, 'user_1711985912584');
INSERT INTO public.users VALUES (52, 'user_1711985912583');
INSERT INTO public.users VALUES (53, 'user_1711986095508');
INSERT INTO public.users VALUES (54, 'user_1711986095507');
INSERT INTO public.users VALUES (55, 'user_1711986236952');
INSERT INTO public.users VALUES (56, 'user_1711986236951');
INSERT INTO public.users VALUES (57, 'user_1711986439590');
INSERT INTO public.users VALUES (58, 'user_1711986439589');
INSERT INTO public.users VALUES (59, 'user_1711986513592');
INSERT INTO public.users VALUES (60, 'user_1711986513591');
INSERT INTO public.users VALUES (61, 'user_1711986614518');
INSERT INTO public.users VALUES (62, 'user_1711986614517');
INSERT INTO public.users VALUES (63, 'user_1711986628204');
INSERT INTO public.users VALUES (64, 'user_1711986628203');
INSERT INTO public.users VALUES (65, 'user_1711986650146');
INSERT INTO public.users VALUES (66, 'user_1711986650145');
INSERT INTO public.users VALUES (67, 'user_1711986688649');
INSERT INTO public.users VALUES (68, 'user_1711986688648');
INSERT INTO public.users VALUES (69, 'user_1711986725653');
INSERT INTO public.users VALUES (70, 'user_1711986725652');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 187, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 70, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

