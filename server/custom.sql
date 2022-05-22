--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-05-22 02:51:29

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
-- TOC entry 210 (class 1259 OID 16400)
-- Name: images; Type: TABLE; Schema: public; Owner: supremeleader
--

CREATE TABLE public.images (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    cloudinary_id character varying(128) NOT NULL,
    image_url character varying(128) NOT NULL
);


ALTER TABLE public.images OWNER TO supremeleader;

--
-- TOC entry 209 (class 1259 OID 16399)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: supremeleader
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO supremeleader;

--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 209
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supremeleader
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 3164 (class 2604 OID 16403)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: supremeleader
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 3307 (class 0 OID 16400)
-- Dependencies: 210
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: supremeleader
--

COPY public.images (id, title, cloudinary_id, image_url) FROM stdin;
2	new image	p4l641nyoxfhuxjqgly4	https://res.cloudinary.com/dfz3w7pwr/image/upload/v1652841587/p4l641nyoxfhuxjqgly4.jpg
3	new image	ohm9cmxyblrxiexmcd80	https://res.cloudinary.com/dfz3w7pwr/image/upload/v1652843864/ohm9cmxyblrxiexmcd80.jpg
4	new image	g09jclwiv0gkr57rv3ga	https://res.cloudinary.com/dfz3w7pwr/image/upload/v1652844463/g09jclwiv0gkr57rv3ga.jpg
5	new image	vidhs11whglie5apbv4s	https://res.cloudinary.com/dfz3w7pwr/image/upload/v1652846055/vidhs11whglie5apbv4s.jpg
\.


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 209
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supremeleader
--

SELECT pg_catalog.setval('public.images_id_seq', 5, true);


--
-- TOC entry 3166 (class 2606 OID 16405)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: supremeleader
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


-- Completed on 2022-05-22 02:51:30

--
-- PostgreSQL database dump complete
--

