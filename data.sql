--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-01-23 16:52:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2824 (class 0 OID 16469)
-- Dependencies: 196
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty (faculty_id, title, address, year_of_fundation, dean_surname) FROM stdin;
1	management	Ukraine, Chernivtsi, Holovna str. 129	2011	Chaikovskiy
2	tourism	Ukraine, Lviv, Zelena str. 24	2002	Mahomedov
3	marketing	Ukraine, Kyiv, Nezalezhnosti Ave 4	2019	Sich
4	mathematics	Poland, Warsaw, Zlota str. 12	1996	Olashyn
5	foreign languages	UK, London, Lenina str. 1	2004	McGregor
6	historical	Russia, Moscow, Bandery str. 55	2010	Klychko
\.


--
-- TOC entry 2825 (class 0 OID 16477)
-- Dependencies: 197
-- Data for Name: lecturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lecturer (lecturer_id, surname, name, date_of_birth, degree, "position", faculty_id) FROM stdin;
1	Kirkorov	Filipp	1945-12-24	doctor	teacher	1
2	Pugacheva	Alla	1955-02-12	candidate	teacher	3
3	Oleninets	Silvia	1982-03-02	doctor	mentor\n	2
4	Mykhailova	Alina	1992-11-01	doctor	mentor	5
5	Ivanenko\n	Evgeniy	1989-02-20	candidate	teacher	6
6	Chan	Jackie	1995-02-13	candidate	mentor	4
\.


--
-- TOC entry 2826 (class 0 OID 16490)
-- Dependencies: 198
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (subject_id, title, faculty_id, semester, hours, form_of_control, lecturer_id) FROM stdin;
1	management	2	1	20	exam	3
2	history	5	2	10	credit	1
3	english	3	5	30	exam	2
4	java	6	4	50	exam	6
5	mathematics	4	1	40	credit	5
6	music	1	2	25	credit	4
\.


-- Completed on 2019-01-23 16:52:41

--
-- PostgreSQL database dump complete
--

