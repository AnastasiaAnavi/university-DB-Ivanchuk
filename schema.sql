--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2019-01-23 16:50:27

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16469)
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    faculty_id integer NOT NULL,
    title character varying NOT NULL,
    address character varying NOT NULL,
    year_of_fundation integer NOT NULL,
    dean_surname character varying NOT NULL
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16477)
-- Name: lecturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lecturer (
    lecturer_id integer NOT NULL,
    surname character varying NOT NULL,
    name character varying NOT NULL,
    date_of_birth date NOT NULL,
    degree character varying NOT NULL,
    "position" character varying NOT NULL,
    faculty_id integer NOT NULL
);


ALTER TABLE public.lecturer OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16490)
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    subject_id integer NOT NULL,
    title character varying NOT NULL,
    faculty_id integer NOT NULL,
    semester character varying NOT NULL,
    hours integer NOT NULL,
    form_of_control character varying NOT NULL,
    lecturer_id integer NOT NULL
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- TOC entry 2695 (class 2606 OID 16476)
-- Name: faculty faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);


--
-- TOC entry 2697 (class 2606 OID 16484)
-- Name: lecturer lecturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT lecturer_pkey PRIMARY KEY (lecturer_id);


--
-- TOC entry 2699 (class 2606 OID 16497)
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (subject_id);


--
-- TOC entry 2700 (class 2606 OID 16485)
-- Name: lecturer faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecturer
    ADD CONSTRAINT faculty_id FOREIGN KEY (lecturer_id) REFERENCES public.faculty(faculty_id);


--
-- TOC entry 2701 (class 2606 OID 16498)
-- Name: subject faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT faculty_id FOREIGN KEY (subject_id) REFERENCES public.faculty(faculty_id);


--
-- TOC entry 2702 (class 2606 OID 16503)
-- Name: subject lecturer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT lecturer_id FOREIGN KEY (subject_id) REFERENCES public.lecturer(lecturer_id);


-- Completed on 2019-01-23 16:50:27

--
-- PostgreSQL database dump complete
--

