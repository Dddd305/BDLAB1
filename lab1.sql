--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

-- Started on 2024-10-25 23:38:31

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4880 (class 1262 OID 5)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16411)
-- Name: Booking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Booking" (
    booking_id integer NOT NULL,
    user_id integer NOT NULL,
    facility_id integer NOT NULL,
    booking_date timestamp with time zone NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public."Booking" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16401)
-- Name: Facility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Facility" (
    facility_id integer NOT NULL,
    venue_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL
);


ALTER TABLE public."Facility" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16426)
-- Name: Payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Payment" (
    payment_id integer NOT NULL,
    amount money NOT NULL,
    payment_date timestamp with time zone NOT NULL,
    status boolean NOT NULL,
    booking_id integer NOT NULL
);


ALTER TABLE public."Payment" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    user_id integer NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    phone_number character varying(30) NOT NULL,
    date_of_registration date NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16393)
-- Name: Venue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Venue" (
    venue_id integer NOT NULL,
    name character varying(30) NOT NULL,
    address character varying(64) NOT NULL,
    city character varying(25) NOT NULL,
    capacity integer NOT NULL
);


ALTER TABLE public."Venue" OWNER TO postgres;

--
-- TOC entry 4873 (class 0 OID 16411)
-- Dependencies: 220
-- Data for Name: Booking; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Booking" (booking_id, user_id, facility_id, booking_date, start_time, end_time, status) FROM stdin;
1	1	2	2024-10-28 00:00:00+00	2024-10-28 15:00:00+00	2024-10-28 17:00:00+00	t
2	2	1	2024-10-30 00:00:00+00	2024-10-30 10:00:00+00	2024-10-30 12:00:00+00	t
\.


--
-- TOC entry 4872 (class 0 OID 16401)
-- Dependencies: 219
-- Data for Name: Facility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Facility" (facility_id, venue_id, name, type) FROM stdin;
2	2	Basketball	basketball court
1	1	Football	football court
\.


--
-- TOC entry 4874 (class 0 OID 16426)
-- Dependencies: 221
-- Data for Name: Payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Payment" (payment_id, amount, payment_date, status, booking_id) FROM stdin;
2	250,00 ?	2024-10-22 14:30:00+00	t	2
1	150,00 ?	2024-10-24 16:00:00+00	t	1
\.


--
-- TOC entry 4870 (class 0 OID 16388)
-- Dependencies: 217
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Users" (user_id, first_name, last_name, email, phone_number, date_of_registration) FROM stdin;
2	Kirill	Plyashenko	plyashenko@gmail.com	0975398742	2022-01-08
1	Mark	Petrenko	petrenko@gmail.com	0639871071	2024-07-11
\.


--
-- TOC entry 4871 (class 0 OID 16393)
-- Dependencies: 218
-- Data for Name: Venue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Venue" (venue_id, name, address, city, capacity) FROM stdin;
2	Sport Arena 2	st. Smolyana 13	Kyiv	15
1	Sport Arena 2	st. Grishka 4	Kyiv	27
\.


-- Completed on 2024-10-25 23:38:31

--
-- PostgreSQL database dump complete
--

