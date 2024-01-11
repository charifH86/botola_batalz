--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Homebrew)
-- Dumped by pg_dump version 15.3

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO youssefnafaa;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO youssefnafaa;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO youssefnafaa;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO youssefnafaa;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO youssefnafaa;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO youssefnafaa;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO youssefnafaa;

--
-- Name: games; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.games (
    id bigint NOT NULL,
    localteam_id integer,
    visitorteam_id integer,
    league_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    status character varying DEFAULT 'pending'::character varying,
    date date,
    endgame character varying DEFAULT 'draw'::character varying,
    score_l character varying,
    score_v character varying
);


ALTER TABLE public.games OWNER TO youssefnafaa;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.games_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO youssefnafaa;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: leagues; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.leagues (
    id bigint NOT NULL,
    name character varying,
    budget integer,
    balance integer,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.leagues OWNER TO youssefnafaa;

--
-- Name: leagues_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.leagues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.leagues_id_seq OWNER TO youssefnafaa;

--
-- Name: leagues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.leagues_id_seq OWNED BY public.leagues.id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.players (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    price integer,
    height character varying,
    nationality character varying,
    "position" character varying,
    current_team character varying,
    image_url character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    poste character varying DEFAULT ''::character varying,
    tm_id character varying,
    new_goal character varying,
    past_goal character varying
);


ALTER TABLE public.players OWNER TO youssefnafaa;

--
-- Name: players_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_id_seq OWNER TO youssefnafaa;

--
-- Name: players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.players_id_seq OWNED BY public.players.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO youssefnafaa;

--
-- Name: team_players; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.team_players (
    id bigint NOT NULL,
    team_id bigint NOT NULL,
    player_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    "position" character varying DEFAULT '0'::character varying,
    score integer DEFAULT 0
);


ALTER TABLE public.team_players OWNER TO youssefnafaa;

--
-- Name: team_players_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.team_players_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_players_id_seq OWNER TO youssefnafaa;

--
-- Name: team_players_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.team_players_id_seq OWNED BY public.team_players.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.teams (
    id bigint NOT NULL,
    name character varying,
    valo integer,
    league_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL,
    budget integer DEFAULT 5000000
);


ALTER TABLE public.teams OWNER TO youssefnafaa;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.teams_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO youssefnafaa;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: youssefnafaa
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    admin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO youssefnafaa;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: youssefnafaa
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO youssefnafaa;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: youssefnafaa
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: leagues id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.leagues ALTER COLUMN id SET DEFAULT nextval('public.leagues_id_seq'::regclass);


--
-- Name: players id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.players ALTER COLUMN id SET DEFAULT nextval('public.players_id_seq'::regclass);


--
-- Name: team_players id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.team_players ALTER COLUMN id SET DEFAULT nextval('public.team_players_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
5	photo	Team	7	5	2023-12-23 15:14:43.980031
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
5	ibsttf23vktg7i6d25ndgffzlf99	Screen Shot 2023-12-23 at 11.50.12 AM.png	image/png	{"identified":true,"analyzed":true}	cloudinary	136955	MKqVIAHk68sBBwnb/TkFQg==	2023-12-23 15:14:43.973804
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-12-19 21:29:43.136361	2023-12-19 21:29:43.136361
\.


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.games (id, localteam_id, visitorteam_id, league_id, created_at, updated_at, status, date, endgame, score_l, score_v) FROM stdin;
\.


--
-- Data for Name: leagues; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.leagues (id, name, budget, balance, user_id, created_at, updated_at) FROM stdin;
5	league1	1000000	1000000	1	2023-12-23 14:47:10.180496	2023-12-23 14:47:10.180496
6	My league	1000000	1000000	1	2023-12-23 14:59:23.84562	2023-12-23 14:59:23.84562
7	bundes	1000000	1000000	1	2023-12-23 15:14:30.409257	2023-12-23 15:14:30.409257
\.


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.players (id, first_name, last_name, price, height, nationality, "position", current_team, image_url, created_at, updated_at, poste, tm_id, new_goal, past_goal) FROM stdin;
295	Abdellah Azakane	Abdellah Azakane	10000	\N	Morocco	Centre-Forward	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.92751	2024-01-04 20:19:48.045539	Striker	897595	\N	\N
6	Jamal Harkass	Jamal Harkass	1200000	1,85m	Morocco	Centre-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.696918	2024-01-04 21:15:08.017663	Defender	612041	\N	\N
8	Hamza Regragui	Hamza Regragui	650000	1,90m	Morocco	Centre-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.726035	2024-01-04 21:15:08.539884	Defender	537209	\N	\N
9	Amine Farhane	Amine Farhane	550000	1,89m	Morocco	Centre-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.733623	2024-01-04 21:15:09.23093	Defender	834876	\N	\N
11	Sami El Anabi	Sami El Anabi	50000	1,90m	Morocco	Centre-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/762094-1635321974.png?lm=1	2023-12-19 21:29:45.748657	2024-01-04 21:15:09.840865	Defender	762094	\N	\N
12	Yahia Attiyat Allah	Yahia Attiyat Allah	2500000	1,76m	Morocco	Left-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/366746-1669283376.jpg?lm=1	2023-12-19 21:29:45.75725	2024-01-04 21:34:42.333227	Defender	366746	2	2
14	Souhail Amri	Souhail Amri	10000	1,80m	Morocco	Left-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.772467	2024-01-04 21:15:10.985993	Defender	1042477	\N	\N
15	Ayoub El Amloud	Ayoub El Amloud	1200000	1,77m	Morocco	Right-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/375634-1643125229.png?lm=1	2023-12-19 21:29:45.778935	2024-01-04 21:34:36.105641	Defender	375634	2	2
17	Yahya Jabrane	Yahya Jabrane	1700000	1,87m	Morocco	Defensive Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/255749-1643125373.png?lm=1	2023-12-19 21:29:45.798183	2024-01-04 21:15:12.385731	Mittelfeld	255749	\N	\N
18	Zakaria Draoui	Zakaria Draoui	800000	1,74m	Algeria	Defensive Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/345555-1641421081.jpg?lm=1	2023-12-19 21:29:45.808424	2024-01-04 21:15:13.069161	Mittelfeld	345555	\N	\N
20	Houmam Baaouch	Houmam Baaouch	300000	1,70m	Morocco	Defensive Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.822096	2024-01-04 21:15:13.614128	Mittelfeld	717226	\N	\N
21	Oussama Mahrous	Oussama Mahrous	450000	\N	Morocco	Central Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.833964	2024-01-04 21:15:14.124568	Mittelfeld	841118	\N	\N
24	Hamdou El Houni	Hamdou El Houni	1400000	1,69m	Libya	Left Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/377605-1477992873.jpg?lm=1	2023-12-19 21:29:45.856177	2024-01-04 21:15:14.810448	Striker	377605	\N	\N
26	Soufyan Ahannach	Soufyan Ahannach	350000	1,79m	Netherlands	Left Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/262895-1492674867.jpg?lm=1	2023-12-19 21:29:45.874644	2024-01-04 21:15:15.415999	Striker	262895	\N	\N
27	Imad Khannouss	Imad Khannouss	20000	1,79m	Morocco	Left Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.88093	2024-01-04 21:15:16.245254	Striker	933020	\N	\N
29	Mohamed Ounajem	Mohamed Ounajem	600000	1,73m	Morocco	Right Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/365354-1653233765.jpg?lm=1	2023-12-19 21:29:45.894102	2024-01-04 21:15:16.8799	Striker	365354	\N	\N
30	Saifeddine Bouhra	Saifeddine Bouhra	600000	1,78m	Morocco	Right Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.899798	2024-01-04 21:15:17.497127	Striker	692595	\N	\N
33	Bouly Junior Sambou	Bouly Junior Sambou	800000	1,83m	Senegal	Centre-Forward	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.933171	2024-01-04 21:15:19.22003	Striker	853535	\N	\N
35	Mounir Habach	Mounir Habach	0	\N	Morocco	Striker	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.947917	2024-01-04 21:15:19.724521	Striker	1133030	\N	\N
36	Anas Zniti	Anas Zniti	1200000	1,82m	Morocco	Goalkeeper	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/216954-1646818019.jpg?lm=1	2023-12-19 21:29:47.162315	2024-01-04 21:15:20.225172	Goalkeeper	216954	\N	\N
38	Mohamed Baayou	Mohamed Baayou	175000	1,82m	Morocco	Goalkeeper	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.195137	2024-01-04 21:15:21.459645	Goalkeeper	530999	\N	\N
39	Yassine Zoubir	Yassine Zoubir	0	\N	Morocco	Goalkeeper	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.202017	2024-01-04 21:15:22.118115	Goalkeeper	913377	\N	\N
41	Abdellah Khafifi	Abdellah Khafifi	400000	1,83m	Morocco	Centre-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.219693	2024-01-04 21:15:23.099064	Defender	569755	\N	\N
42	Bouchaib Arrassi	Bouchaib Arrassi	300000	\N	Morocco	Centre-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.229405	2024-01-04 21:15:23.677754	Defender	969934	\N	\N
44	Youssef Belammari	Youssef Belammari	850000	1,83m	Morocco	Left-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.241678	2024-01-04 21:15:24.505967	Defender	518804	\N	\N
45	Mohamed Souboul	Mohamed Souboul	350000	\N	Morocco	Left-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/744960-1646818239.png?lm=1	2023-12-19 21:29:47.249971	2024-01-04 21:15:25.134754	Defender	744960	\N	\N
47	Mohamed Boulacsout	Mohamed Boulacsout	400000	1,79m	Morocco	Right-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.271287	2024-01-04 21:15:25.84338	Defender	560873	\N	\N
48	Roger Aholou	Roger Aholou	1000000	1,82m	Togo	Defensive Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/727208-1672079076.jpeg?lm=1	2023-12-19 21:29:47.280259	2024-01-04 21:15:26.504915	Mittelfeld	727208	\N	\N
50	Mohamed Zrida	Mohamed Zrida	1300000	1,75m	Morocco	Central Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.293844	2024-01-04 21:15:27.039538	Mittelfeld	678296	\N	\N
51	Mohamed Al Makahasi	Mohamed Al Makahasi	700000	1,77m	Morocco	Central Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.301928	2024-01-04 21:15:27.663077	Mittelfeld	274235	\N	\N
55	Haashim Domingo	Haashim Domingo	650000	1,72m	South Africa	Attacking Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/353056-1614019432.JPG?lm=1	2023-12-19 21:29:47.338361	2024-01-04 21:15:28.19982	Mittelfeld	353056	\N	\N
56	Adam Ennaffati	Adam Ennaffati	600000	1,80m	Morocco	Attacking Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.348208	2024-01-04 21:15:28.899179	Mittelfeld	238634	\N	\N
298	Achraf Gagua	Achraf Gagua	10000	\N	Morocco	Goalkeeper	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.330952	2024-01-04 20:19:51.321976	Goalkeeper	1179834	\N	\N
61	Mansour Nachet	Mansour Nachet	0	\N	Morocco	Centre-Forward	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.393815	2024-01-04 21:15:30.098608	Striker	1074344	\N	\N
63	Ayoub El Khayati	Ayoub El Khayati	225000	1,91m	Morocco	Goalkeeper	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/859133-1700985409.jpeg?lm=1	2023-12-19 21:29:49.279519	2024-01-04 21:15:30.735557	Goalkeeper	859133	\N	\N
64	Youssef Tafay	Youssef Tafay	0	1,87m	Morocco	Goalkeeper	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.327079	2024-01-04 21:15:31.238372	Goalkeeper	903845	\N	\N
66	Anouar Tarkhatt	Anouar Tarkhatt	550000	1,82m	Morocco	Centre-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.340901	2024-01-04 21:15:31.785064	Defender	712125	\N	\N
67	Zouhair Marour	Zouhair Marour	450000	1,82m	Morocco	Centre-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.349796	2024-01-04 21:15:32.743948	Defender	375629	\N	\N
70	Emmanuel Imanishimwe	Emmanuel Imanishimwe	700000	\N	Rwanda	Left-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/465949-1649158391.jpg?lm=1	2023-12-19 21:29:49.376258	2024-01-04 21:15:33.795426	Defender	465949	\N	\N
72	Youssef Arbidi	Youssef Arbidi	400000	1,71m	Morocco	Left-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.399104	2024-01-04 21:15:34.416884	Defender	721822	\N	\N
75	Et-Tayeb Boukhriss	Et-Tayeb Boukhriss	550000	1,77m	Morocco	Right-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/665744-1669191358.JPG?lm=1	2023-12-19 21:29:49.418849	2024-01-04 21:15:35.000793	Defender	665744	\N	\N
77	Zineddine Derrag	Zineddine Derrag	650000	1,71m	Morocco	Defensive Midfield	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.439005	2024-01-04 21:15:35.52241	Mittelfeld	711572	\N	\N
78	Larbi Naji	Larbi Naji	650000	1,85m	Morocco	Defensive Midfield	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/239127-1653653861.png?lm=1	2023-12-19 21:29:49.449795	2024-01-04 21:15:36.461359	Mittelfeld	239127	\N	\N
80	Amine Zouhzouh	Amine Zouhzouh	450000	\N	Morocco	Attacking Midfield	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.462837	2024-01-04 21:15:37.004598	Mittelfeld	859134	\N	\N
81	Abdelfettah Hadraf	Abdelfettah Hadraf	450000	\N	Morocco	Attacking Midfield	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/711281-1669191399.JPG?lm=1	2023-12-19 21:29:49.473861	2024-01-04 21:15:37.642474	Mittelfeld	711281	\N	\N
83	Khalid Aït Ouarkhane	Khalid Aït Ouarkhane	450000	1,79m	Morocco	Left Winger	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.49087	2024-01-04 21:15:38.225328	Striker	631508	\N	\N
84	Zakaria Habti	Zakaria Habti	250000	\N	Morocco	Right Winger	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.539194	2024-01-04 21:15:39.0844	Striker	719445	\N	\N
86	Ayoub Assout	Ayoub Assout	0	1,77m	Morocco	Right Winger	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.555492	2024-01-04 21:15:39.68464	Striker	1042060	\N	\N
87	Lamine Diakité	Lamine Diakité	600000	1,84m	Cote d'Ivoire	Centre-Forward	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.566016	2024-01-04 21:15:40.646433	Striker	159542	\N	\N
89	Alaeddine Ajaraie	Alaeddine Ajaraie	350000	1,77m	Morocco	Centre-Forward	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.580297	2024-01-04 21:15:41.139195	Striker	724898	\N	\N
90	Ismaïl Ouro-Agoro	Ismaïl Ouro-Agoro	150000	1,82m	Togo	Centre-Forward	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.594582	2024-01-04 21:15:42.000649	Striker	730029	\N	\N
92	Amine El Ouaad	Amine El Ouaad	200000	\N	Morocco	Goalkeeper	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.492774	2024-01-04 21:15:42.610408	Goalkeeper	846673	\N	\N
94	Adil Tahif	Adil Tahif	600000	1,81m	Morocco	Centre-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.507329	2024-01-04 21:15:43.264604	Defender	593431	\N	\N
95	Abdelhak Assal	Abdelhak Assal	600000	1,90m	Morocco	Centre-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.513255	2024-01-04 21:15:44.221789	Defender	842418	\N	\N
96	Amine El Maswab	Amine El Maswab	10000	\N	Morocco	Centre-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.519479	2024-01-04 21:15:45.057872	Defender	1165481	\N	\N
100	Hamza Semmoumy	Hamza Semmoumy	300000	1,74m	Morocco	Right-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.555667	2024-01-04 21:15:45.880788	Defender	244941	\N	\N
103	Mohamed Farhane	Mohamed Farhane	250000	1,77m	Morocco	Defensive Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.575658	2024-01-04 21:15:47.059481	Mittelfeld	627933	\N	\N
104	Claude Gnolou	Claude Gnolou	10000	\N	Cote d'Ivoire	Mittelfeld	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.616872	2024-01-04 21:15:47.582703	Mittelfeld	1204104	\N	\N
105	Mohamed Ouyahia	Mohamed Ouyahia	10000	\N	Morocco	Mittelfeld	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.622886	2024-01-04 21:15:48.140087	Mittelfeld	1091178	\N	\N
107	Oussama Bourouba	Oussama Bourouba	10000	\N	Morocco	Mittelfeld	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.644458	2024-01-04 21:15:48.773878	Mittelfeld	893415	\N	\N
108	Abdessamad Sejjam	Abdessamad Sejjam	0	\N	Morocco	Mittelfeld	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.651277	2024-01-04 21:15:49.363471	Mittelfeld	1175881	\N	\N
110	Ayoub Khairi	Ayoub Khairi	125000	\N	Morocco	Central Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.668691	2024-01-04 21:15:49.919191	Mittelfeld	665738	\N	\N
111	Yassine Labhiri	Yassine Labhiri	600000	1,78m	Morocco	Attacking Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.678891	2024-01-04 21:15:50.398801	Mittelfeld	522302	\N	\N
58	Naoufel Zerhouni	Naoufel Zerhouni	450000	1,73m	Morocco	Right Winger	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.362702	2023-12-28 18:39:29.319354	Striker	\N	\N	\N
301	Ilias Haddad	Ilias Haddad	300000	1,87m	Netherlands	Centre-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/64490-1418929501.jpg?lm=1	2023-12-19 21:30:06.35211	2024-01-04 20:19:55.477542	Defender	64490	\N	\N
118	Youssef Zghoudi	Youssef Zghoudi	200000	1,82m	Morocco	Right Winger	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.733674	2024-01-04 21:19:14.207649	Striker	536879	\N	\N
119	Youssef Mehri	Youssef Mehri	800000	1,77m	Morocco	Centre-Forward	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.741061	2024-01-04 21:19:14.822037	Striker	868636	\N	\N
120	Youssef El Fahli	Youssef El Fahli	550000	1,82m	Morocco	Centre-Forward	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.755231	2024-01-04 21:19:15.338463	Striker	660041	\N	\N
122	Paul Bassène	Paul Bassène	500000	1,82m	Senegal	Centre-Forward	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.77068	2024-01-04 21:19:16.1066	Striker	847288	\N	\N
123	Aymane Majid	Aymane Majid	600000	1,82m	Morocco	Goalkeeper	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.94896	2024-01-04 21:19:16.637322	Goalkeeper	366783	\N	\N
125	Mehdi Bellarabi	Mehdi Bellarabi	25000	\N	Morocco	Goalkeeper	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.96065	2024-01-04 21:19:17.257489	Goalkeeper	851529	\N	\N
126	Ayoub Qasmi	Ayoub Qasmi	600000	1,78m	Morocco	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.967575	2024-01-04 21:19:18.295301	Defender	235448	\N	\N
128	Bilal El Ouadghiri	Bilal El Ouadghiri	350000	\N	Morocco	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.978983	2024-01-04 21:19:18.834673	Defender	859901	\N	\N
129	Hadi Al-Hourani	Hadi Al-Hourani	300000	1,86m	Jordan	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.98678	2024-01-04 21:19:19.46524	Defender	734746	\N	\N
131	Oumar Comara	Oumar Comara	50000	1,84m	Cote d'Ivoire	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.002732	2024-01-04 21:19:20.017242	Defender	857924	\N	\N
132	Achraf Ramzi	Achraf Ramzi	10000	\N	Morocco	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.011355	2024-01-04 21:19:20.537748	Defender	667998	\N	\N
134	Oussama Soukhane	Oussama Soukhane	450000	\N	Morocco	Left-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/737182-1676669080.jpg?lm=1	2023-12-19 21:29:54.0225	2024-01-04 21:19:21.048156	Defender	737182	\N	\N
135	James Ajako	James Ajako	125000	1,78m	Nigeria	Left-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.032009	2024-01-04 21:19:21.59671	Defender	855878	\N	\N
137	Youssef El Omari	Youssef El Omari	350000	\N	Morocco	Right-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.048499	2024-01-04 21:19:22.261666	Defender	234941	\N	\N
140	Amine El Msane	Amine El Msane	500000	\N	Morocco	Defensive Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.071166	2024-01-04 21:19:23.160414	Mittelfeld	507134	\N	\N
142	Hamza Qarqor	Hamza Qarqor	25000	1,86m	Morocco	Defensive Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.084727	2024-01-04 21:19:23.667002	Mittelfeld	1046373	\N	\N
143	Reda Laalaoui	Reda Laalaoui	0	\N	Morocco	Mittelfeld	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.092442	2024-01-04 21:19:24.297093	Mittelfeld	1094135	\N	\N
146	Idriss Bousbaa	Idriss Bousbaa	0	1,74m	Morocco	Central Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.117982	2024-01-04 21:19:25.860975	Mittelfeld	859910	\N	\N
147	Mehdi Karnass	Mehdi Karnass	350000	1,81m	Morocco	Right Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.124592	2024-01-04 21:19:27.051339	Mittelfeld	178155	\N	\N
149	Amine Azri	Amine Azri	350000	1,83m	Morocco	Right Winger	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.137369	2024-01-04 21:19:27.626205	Striker	1044891	\N	\N
151	Haytham El Bahja	Haytham El Bahja	175000	1,75m	Morocco	Right Winger	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.156552	2024-01-04 21:19:28.246166	Striker	507358	\N	\N
152	Taoufik Razko	Taoufik Razko	25000	\N	Morocco	Right Winger	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.166699	2024-01-04 21:19:29.26273	Striker	904465	\N	\N
153	Ayoub Nanah	Ayoub Nanah	600000	1,82m	Morocco	Second Striker	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.17635	2024-01-04 21:19:30.08334	Striker	355224	\N	\N
155	Hamza Hannouri	Hamza Hannouri	550000	1,88m	Morocco	Centre-Forward	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.190562	2024-01-04 21:19:30.671184	Striker	517712	\N	\N
157	Ayoub Mouloua	Ayoub Mouloua	25000	\N	Morocco	Centre-Forward	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.206888	2024-01-04 21:19:31.440323	Striker	844300	\N	\N
158	Sellam Chaouma	Sellam Chaouma	10000	\N	Morocco	Striker	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.214085	2024-01-04 21:19:31.943842	Striker	1131961	\N	\N
160	Salaheddine Chihab	Salaheddine Chihab	300000	1,98m	Morocco	Goalkeeper	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.26599	2024-01-04 21:19:32.562823	Goalkeeper	356586	\N	\N
163	Youssef Bouamar	Youssef Bouamar	0	\N	Morocco	Defender	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.287426	2024-01-04 21:19:33.19896	Defender	1174675	\N	\N
164	Youssef Aguerdoum	Youssef Aguerdoum	500000	1,83m	Morocco	Centre-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.292889	2024-01-04 21:19:33.812761	Defender	355223	\N	\N
166	Saad Ait Khorsa	Saad Ait Khorsa	225000	1,86m	Morocco	Centre-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/255642-1464786533.jpg?lm=1	2023-12-19 21:29:56.30775	2024-01-04 21:19:34.455656	Defender	255642	\N	\N
167	Kangnivi Ama Tchoutchoui	Kangnivi Ama Tchoutchoui	10000	1,83m	Togo	Centre-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.316471	2024-01-04 21:19:35.281117	Defender	633961	\N	\N
169	Omar Jerrari	Omar Jerrari	500000	1,77m	Morocco	Left-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.329815	2024-01-04 21:19:36.017509	Defender	275262	\N	\N
170	Zakaria Nassik	Zakaria Nassik	300000	\N	Morocco	Left-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.334886	2024-01-04 21:19:36.642675	Defender	518849	\N	\N
178	Achraf Harmach	Achraf Harmach	550000	1,76m	Morocco	Central Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.402594	2024-01-04 21:19:37.996815	Mittelfeld	367149	\N	\N
179	Salaheddine Ouali Alami	Salaheddine Ouali Alami	50000	1,82m	Morocco	Central Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.414301	2024-01-04 21:19:38.556128	Mittelfeld	842402	\N	\N
181	Mohamed Loumim	Mohamed Loumim	25000	\N	Morocco	Attacking Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.437371	2024-01-04 21:19:39.200943	Mittelfeld	1091105	\N	\N
182	Nizar Guessous	Nizar Guessous	10000	1,74m	Morocco	Attacking Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.444588	2024-01-04 21:19:39.71395	Mittelfeld	1091104	\N	\N
184	Karim Hachimi	Karim Hachimi	300000	1,85m	Morocco	Left Winger	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.456143	2024-01-04 21:19:40.473394	Striker	617588	\N	\N
185	Imad Riahi	Imad Riahi	550000	1,78m	Morocco	Right Winger	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.462484	2024-01-04 21:19:41.173579	Striker	838829	\N	\N
187	Soufiane Lagzir	Soufiane Lagzir	200000	1,80m	Morocco	Right Winger	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/483104-1610987742.jpeg?lm=1	2023-12-19 21:29:56.479816	2024-01-04 21:19:41.713548	Striker	483104	\N	\N
188	Ismail El Harrach	Ismail El Harrach	150000	1,79m	Morocco	Right Winger	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.489527	2024-01-04 21:19:42.313766	Striker	623875	\N	\N
190	Mohamed El Badoui	Mohamed El Badoui	250000	1,84m	Morocco	Centre-Forward	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.499955	2024-01-04 21:19:42.837392	Striker	1039603	\N	\N
191	Mouhcine Bouriga	Mouhcine Bouriga	250000	\N	Morocco	Centre-Forward	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.510437	2024-01-04 21:19:43.424143	Striker	872090	\N	\N
193	Justin Yeré	Justin Yeré	25000	1,85m	Togo	Centre-Forward	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.53222	2024-01-04 21:19:44.036683	Striker	995095	\N	\N
194	Omar El Amrani	Omar El Amrani	0	1,80m	Morocco	Striker	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.538579	2024-01-04 21:19:44.670014	Striker	716682	\N	\N
198	Youssef Laghzal	Youssef Laghzal	0	\N	Morocco	Goalkeeper	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.526252	2024-01-04 21:19:45.842279	Goalkeeper	836632	\N	\N
201	Ayoub El Jorfi	Ayoub El Jorfi	275000	1,79m	Morocco	Centre-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.549473	2024-01-04 21:19:46.418932	Defender	520439	\N	\N
202	Oussama Al Aiz	Oussama Al Aiz	150000	\N	Morocco	Centre-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.557987	2024-01-04 21:19:47.360659	Defender	823072	\N	\N
204	Mohamed Walid Bencherifa	Mohamed Walid Bencherifa	225000	1,80m	Algeria	Left-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.57131	2024-01-04 21:19:47.941116	Defender	231972	\N	\N
205	Youssef Chaina	Youssef Chaina	350000	1,74m	Morocco	Right-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.580019	2024-01-04 21:19:48.501908	Defender	628349	\N	\N
207	Jalal Daoudi	Jalal Daoudi	350000	1,75m	Morocco	Defensive Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.59731	2024-01-04 21:19:49.08591	Mittelfeld	236322	\N	\N
208	Faouzi Abdoul Mutalib	Faouzi Abdoul Mutalib	225000	\N	Morocco	Defensive Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.608389	2024-01-04 21:19:49.715576	Mittelfeld	683336	\N	\N
210	Madické Kane	Madické Kane	150000	1,87m	Senegal	Defensive Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.625806	2024-01-04 21:19:50.499776	Mittelfeld	639088	\N	\N
211	Mohamed El Mehdi	Mohamed El Mehdi	0	\N	Morocco	Mittelfeld	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.634613	2024-01-04 21:19:51.873075	Mittelfeld	384969	\N	\N
213	Reda Jaadi	Reda Jaadi	650000	1,83m	Morocco	Central Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/194433-1484751427.jpg?lm=1	2023-12-19 21:29:58.648415	2024-01-04 21:19:52.463512	Mittelfeld	194433	\N	\N
214	Ahmed Chentouf	Ahmed Chentouf	175000	\N	Morocco	Central Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.654561	2024-01-04 21:19:52.978488	Mittelfeld	240714	\N	\N
216	Hamza Hassani Boouia	Hamza Hassani Boouia	100000	1,79m	Morocco	Attacking Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.671768	2024-01-04 21:19:53.62005	Mittelfeld	371219	\N	\N
217	Mahmoud El Kayssoumi	Mahmoud El Kayssoumi	50000	1,81m	Morocco	Attacking Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.680036	2024-01-04 21:19:54.200386	Mittelfeld	1048590	\N	\N
219	Hassan Zraibi	Hassan Zraibi	225000	\N	Morocco	Left Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.69341	2024-01-04 21:19:54.843727	Striker	812367	\N	\N
220	Abdellatif Akhrif	Abdellatif Akhrif	150000	1,82m	Morocco	Left Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.698693	2024-01-04 21:19:55.45289	Striker	851527	\N	\N
222	Abdelhamid Maali	Abdelhamid Maali	100000	1,77m	Morocco	Left Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.716173	2024-01-04 21:19:55.960074	Striker	1134280	\N	\N
223	Zouhair El Ouassli	Zouhair El Ouassli	200000	1,82m	Morocco	Right Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.726613	2024-01-04 21:19:56.624539	Striker	500034	\N	\N
225	Jawad Ghabra	Jawad Ghabra	100000	1,84m	Morocco	Right Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.741735	2024-01-04 21:19:57.213731	Striker	701611	\N	\N
226	Bilal El Hankouri	Bilal El Hankouri	10000	\N	Morocco	Right Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.752267	2024-01-04 21:19:58.241842	Striker	1048592	\N	\N
228	Alexis Sanchez	Alexis Sanchez	75000	\N	Spain	Striker	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.772332	2024-01-04 21:20:00.01438	Striker	40433	\N	\N
173	Christian Nsundi	Christian Nsundi	350000	1,89m	DR Congo	Defensive Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.360414	2024-01-04 21:20:00.601586	Mittelfeld	853692	\N	\N
306	Achraf Berqi	Achraf Berqi	125000	1,79m	Morocco	Right-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.392804	2024-01-04 20:20:01.417585	Defender	375639	\N	\N
234	Yassine Kordani	Yassine Kordani	275000	\N	Morocco	Centre-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.036175	2024-01-04 21:20:01.879518	Defender	858910	\N	\N
235	Karim El Bounagate	Karim El Bounagate	200000	1,85m	Morocco	Centre-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.042254	2024-01-04 21:20:02.460851	Defender	842528	\N	\N
236	Mehdi Ashabi	Mehdi Ashabi	10000	1,85m	Morocco	Centre-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.052256	2024-01-04 21:20:03.138535	Defender	1049354	\N	\N
238	Souhail Yechou	Souhail Yechou	225000	\N	Morocco	Left-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.068737	2024-01-04 21:20:03.758463	Defender	530997	\N	\N
239	Mohamed Elabdi	Mohamed Elabdi	10000	1,80m	Morocco	Left-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.075641	2024-01-04 21:20:04.402079	Defender	1043567	\N	\N
241	Ayman Hadry	Ayman Hadry	10000	\N	Morocco	Right-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.090719	2024-01-04 21:20:05.043617	Defender	908108	\N	\N
242	Youssef Michte	Youssef Michte	125000	1,78m	Morocco	Defensive Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.096628	2024-01-04 21:20:05.633292	Mittelfeld	820480	\N	\N
244	Faraji Karmoune	Faraji Karmoune	0	1,86m	Morocco	Mittelfeld	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.115634	2024-01-04 21:20:06.504566	Mittelfeld	902847	\N	\N
245	Walid Rhailouf	Walid Rhailouf	500000	\N	Morocco	Central Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.120922	2024-01-04 21:20:07.150441	Mittelfeld	848420	\N	\N
247	Mohamed Rouhi	Mohamed Rouhi	150000	1,76m	Morocco	Central Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.134655	2024-01-04 21:20:07.804098	Mittelfeld	518641	\N	\N
251	Abdoulaye Diarra	Abdoulaye Diarra	450000	\N	Mali	Left Winger	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/410426-1458812245.JPG?lm=1	2023-12-19 21:30:01.172268	2024-01-04 21:20:09.140211	Striker	45573	\N	\N
253	Saad El Morsli	Saad El Morsli	325000	1,70m	Morocco	Left Winger	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.187355	2024-01-04 21:20:09.963169	Striker	518828	\N	\N
254	Kamal El Keraa	Kamal El Keraa	275000	1,84m	Morocco	Left Winger	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.194621	2024-01-04 21:20:10.793997	Striker	822537	\N	\N
256	Younes Najjari	Younes Najjari	200000	\N	Morocco	Right Winger	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.212005	2024-01-04 21:20:11.370419	Striker	974042	\N	\N
257	Salaheddine Saadaoui	Salaheddine Saadaoui	10000	\N	Morocco	Second Striker	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.2201	2024-01-04 21:20:12.256876	Striker	705156	\N	\N
259	Zakaria Belmaachi	Zakaria Belmaachi	300000	1,80m	Morocco	Centre-Forward	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.240115	2024-01-04 21:20:12.93578	Striker	353595	\N	\N
260	Cheickna Samaké	Cheickna Samaké	250000	1,76m	Mali	Centre-Forward	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.248849	2024-01-04 21:20:13.573942	Striker	970953	\N	\N
262	Mehdi El Jourbaoui	Mehdi El Jourbaoui	425000	\N	Morocco	Goalkeeper	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.658835	2024-01-04 21:20:14.569754	Goalkeeper	234900	\N	\N
263	Hicham El Majhed	Hicham El Majhed	325000	1,93m	Morocco	Goalkeeper	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.666937	2024-01-04 21:20:15.361958	Goalkeeper	292309	\N	\N
265	Ilyas El Qaada	Ilyas El Qaada	10000	\N	Morocco	Defender	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.678281	2024-01-04 21:20:16.179062	Defender	918024	\N	\N
266	Zakaria Ami	Zakaria Ami	10000	\N	Morocco	Defender	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.688352	2024-01-04 21:20:17.108716	Defender	858735	\N	\N
268	Mehdi Khallati	Mehdi Khallati	150000	\N	Morocco	Centre-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.701502	2024-01-04 21:20:17.721835	Defender	235075	\N	\N
269	Youssef Esdiri	Youssef Esdiri	100000	1,87m	Morocco	Centre-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.713569	2024-01-04 21:20:18.220523	Defender	857727	\N	\N
271	Assane Bèye	Assane Bèye	10000	1,80m	Senegal	Centre-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.727521	2024-01-04 21:20:18.939846	Defender	1184401	\N	\N
272	Jamal Ech-Chamakh	Jamal Ech-Chamakh	375000	\N	Morocco	Left-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.73447	2024-01-04 21:20:19.458896	Defender	734155	\N	\N
274	Taha Souiri	Taha Souiri	0	\N	Morocco	Left-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.749711	2024-01-04 21:20:20.038437	Defender	869460	\N	\N
277	Karim Abouchououb	Karim Abouchououb	10000	1,72m	Morocco	Right-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.77547	2024-01-04 21:20:20.604542	Defender	879641	\N	\N
278	Hamza Kalai	Hamza Kalai	400000	1,78m	Morocco	Defensive Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.787276	2024-01-04 21:20:21.115545	Mittelfeld	365250	\N	\N
280	Abdellah Ait Brahim	Abdellah Ait Brahim	10000	\N	Morocco	Mittelfeld	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.808418	2024-01-04 21:20:21.819735	Mittelfeld	1110587	\N	\N
281	Badreddine Octobre	Badreddine Octobre	10000	\N	Morocco	Defensive Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.814594	2024-01-04 21:20:22.453497	Mittelfeld	908118	\N	\N
283	Jalal Tachtach	Jalal Tachtach	500000	\N	Morocco	Central Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.831806	2024-01-04 21:20:23.06537	Mittelfeld	353473	\N	\N
284	Sofian El Moudane	Sofian El Moudane	450000	1,78m	France	Central Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/203755-1581494334.png?lm=1	2023-12-19 21:30:03.838582	2024-01-04 21:20:24.071872	Mittelfeld	203755	\N	\N
516	Ismail Gourad	Ismail Gourad	50000	\N	Morocco	Left Winger	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.160908	2024-01-04 20:24:22.98484	Striker	738953	\N	\N
294	Mohamed Bakhkhach	Mohamed Bakhkhach	100000	\N	Morocco	Centre-Forward	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.920041	2024-01-04 20:19:46.979686	Striker	975918	\N	\N
296	Abderahmane El Houasli	Abderahmane El Houasli	150000	1,85m	Morocco	Goalkeeper	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.317439	2024-01-04 20:19:49.362248	Goalkeeper	235602	\N	\N
297	Reda Asmama	Reda Asmama	50000	\N	Morocco	Goalkeeper	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.324536	2024-01-04 20:19:50.282824	Goalkeeper	667992	\N	\N
299	Tahar Ahmed El Khalej	Tahar Ahmed El Khalej	400000	1,91m	Morocco	Centre-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.337555	2024-01-04 20:19:52.682818	Defender	943495	\N	\N
300	Ayman Dairani	Ayman Dairani	325000	1,91m	Morocco	Centre-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.342769	2024-01-04 20:19:53.98453	Defender	732952	\N	\N
303	Ilyass Lagrimi	Ilyass Lagrimi	150000	1,80m	Morocco	Left-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.369184	2024-01-04 20:19:56.420912	Defender	1174681	\N	\N
304	Anas Nanah	Anas Nanah	50000	1,77m	Morocco	Left-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.376912	2024-01-04 20:19:58.136214	Defender	667999	\N	\N
305	Haytam Manaout	Haytam Manaout	400000	\N	Morocco	Right-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.38722	2024-01-04 20:19:59.618641	Defender	836640	\N	\N
289	Reda Zemrani	Reda Zemrani	25000	1,83m	Morocco	Left Winger	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.883745	2024-01-04 21:20:25.338927	Striker	836630	\N	\N
292	Joé Amian	Joé Amian	175000	1,80m	Cote d'Ivoire	Centre-Forward	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/897572-1635240122.JPG?lm=1	2023-12-19 21:30:03.904545	2024-01-04 21:20:26.69608	Striker	897572	\N	\N
286	Fedi Ben Choug	Fedi Ben Choug	600000	1,89m	Tunisia	Attacking Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/415482-1589959716.jpg?lm=1	2023-12-19 21:30:03.853982	2024-01-04 21:20:27.404274	Mittelfeld	415482	\N	\N
307	Akram Nakach	Akram Nakach	350000	\N	Morocco	Defensive Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.398715	2024-01-04 20:20:03.00585	Mittelfeld	667971	\N	\N
309	Aymane Mourid	Aymane Mourid	250000	1,80m	Morocco	Defensive Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.413222	2024-01-04 20:20:05.363058	Mittelfeld	593480	\N	\N
311	Aissa Saidi	Aissa Saidi	25000	\N	Morocco	Mittelfeld	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.4338	2024-01-04 20:20:06.927988	Mittelfeld	902855	\N	\N
312	Papa Amady Gadio	Papa Amady Gadio	150000	1,82m	Senegal	Central Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.439636	2024-01-04 20:20:08.466725	Mittelfeld	1178485	\N	\N
314	Hachim Mastour	Hachim Mastour	150000	1,75m	Morocco	Attacking Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/253267-1570698882.jpg?lm=1	2023-12-19 21:30:06.453209	2024-01-04 20:20:11.037866	Mittelfeld	253267	\N	\N
315	Ayoub Haiki	Ayoub Haiki	25000	1,77m	Morocco	Attacking Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.458637	2024-01-04 20:20:12.446761	Mittelfeld	902809	\N	\N
317	Redouan Ait Lamkadem	Redouan Ait Lamkadem	300000	1,75m	Morocco	Left Winger	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.485407	2024-01-04 20:20:14.866725	Striker	1055339	\N	\N
318	Tawfik Bentayeb	Tawfik Bentayeb	300000	\N	Morocco	Right Winger	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.494001	2024-01-04 20:20:16.225809	Striker	667995	\N	\N
319	Badie Aouk	Badie Aouk	250000	1,66m	Morocco	Right Winger	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/361936-1646819584.png?lm=1	2023-12-19 21:30:06.501184	2024-01-04 20:20:17.722706	Striker	361936	\N	\N
322	Simon Diédhiou	Simon Diédhiou	300000	1,81m	Senegal	Centre-Forward	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/363537-1476111002.jpg?lm=1	2023-12-19 21:30:06.523965	2024-01-04 20:20:21.069043	Striker	363537	\N	\N
324	Souhayl Zamrat	Souhayl Zamrat	50000	\N	Morocco	Striker	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.55109	2024-01-04 20:20:24.385541	Striker	1175868	\N	\N
325	Tiago Lopes	Tiago Lopes	25000	1,85m	Portugal	Centre-Forward	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.556981	2024-01-04 20:20:25.406415	Striker	708663	\N	\N
327	Yahia El Filali	Yahia El Filali	350000	1,89m	Morocco	Goalkeeper	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:08.95997	2024-01-04 20:20:28.043734	Goalkeeper	530834	\N	\N
328	Mohamed Saber	Mohamed Saber	75000	1,84m	Morocco	Goalkeeper	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:08.966055	2024-01-04 20:20:29.425397	Goalkeeper	927165	\N	\N
330	Yassine Amhih	Yassine Amhih	10000	\N	Morocco	Defender	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:08.978029	2024-01-04 20:20:32.640781	Defender	1055193	\N	\N
332	Mohamed Yassine Abouzra	Mohamed Yassine Abouzra	125000	1,85m	Morocco	Centre-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:08.996024	2024-01-04 20:20:33.863848	Defender	1050902	\N	\N
334	Ismaïla Simpara	Ismaïla Simpara	50000	1,87m	Mali	Centre-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.012294	2024-01-04 20:20:36.547682	Defender	568734	\N	\N
335	Mohamed Amine Ezzemani	Mohamed Amine Ezzemani	350000	1,73m	Algeria	Left-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.018306	2024-01-04 20:20:37.848092	Defender	326655	\N	\N
336	Yassine Jbira	Yassine Jbira	250000	1,72m	Morocco	Left-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.029038	2024-01-04 20:20:38.979194	Defender	238963	\N	\N
338	Ayoub Chabboud	Ayoub Chabboud	100000	1,8m	Morocco	Right-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.04421	2024-01-04 20:20:41.939593	Defender	913360	\N	\N
308	Eric Mbangossoum	Eric Mbangossoum	275000	1,85m	Chad	Defensive Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.405173	2024-01-04 20:20:04.103417	Mittelfeld	703163	\N	\N
344	Abdessamad Mahir	Abdessamad Mahir	200000	1,76m	Morocco	Central Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.094544	2024-01-04 20:20:44.968829	Mittelfeld	811084	\N	\N
345	Ayoub Ouadrassi	Ayoub Ouadrassi	175000	1,73m	Morocco	Central Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.10787	2024-01-04 20:20:46.371566	Mittelfeld	278782	\N	\N
347	Ouail el Merabet	Ouail el Merabet	10000	1,86m	Netherlands	Central Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.126444	2024-01-04 20:20:48.408321	Mittelfeld	451299	\N	\N
348	Mamadou Seck	Mamadou Seck	10000	1,87m	Senegal	Central Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.131702	2024-01-04 20:20:50.123883	Mittelfeld	740347	\N	\N
351	Mouad Goulouss	Mouad Goulouss	50000	1,71m	Morocco	Attacking Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.151575	2024-01-04 20:20:53.182129	Mittelfeld	868656	\N	\N
352	Mehdi	Mehdi	10000	1,83m	Morocco	Attacking Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.157023	2024-01-04 20:20:54.031546	Mittelfeld	935083	\N	\N
354	Yassine Lamine	Yassine Lamine	125000	\N	Morocco	Left Winger	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.171187	2024-01-04 20:20:56.242944	Striker	1004272	\N	\N
355	Bilal El Megri	Bilal El Megri	125000	1,80m	Morocco	Left Winger	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.179248	2024-01-04 20:20:57.322166	Striker	244205	\N	\N
356	Abdellah Farah	Abdellah Farah	375000	\N	Morocco	Right Winger	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/837173-1676669004.jpg?lm=1	2023-12-19 21:30:09.19011	2024-01-04 20:20:58.963017	Striker	837173	\N	\N
358	Ayoub Lakhal	Ayoub Lakhal	100000	1,75m	Morocco	Right Winger	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.205408	2024-01-04 20:21:01.666352	Striker	519206	\N	\N
359	Pape Badji	Pape Badji	175000	1,83m	Senegal	Centre-Forward	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.211003	2024-01-04 20:21:02.748647	Striker	707062	\N	\N
362	Mohssine Abba	Mohssine Abba	50000	1,78m	Morocco	Centre-Forward	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.234902	2024-01-04 20:21:05.421213	Striker	859897	\N	\N
364	Mehdi Ouaya	Mehdi Ouaya	250000	1,87m	Morocco	Goalkeeper	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.633051	2024-01-04 20:21:07.731065	Goalkeeper	553102	\N	\N
365	Achraf Hilali	Achraf Hilali	200000	1,82m	Morocco	Goalkeeper	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.6392	2024-01-04 20:21:09.422587	Goalkeeper	240250	\N	\N
366	Tarik Aoutah	Tarik Aoutah	100000	1,85m	Morocco	Goalkeeper	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.64541	2024-01-04 20:21:10.609061	Goalkeeper	235572	\N	\N
368	Hamza Malki	Hamza Malki	25000	\N	Morocco	Defender	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.660181	2024-01-04 20:21:13.626358	Defender	1178984	\N	\N
370	Issam Benbouabdellah	Issam Benbouabdellah	125000	1,86m	Morocco	Centre-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.681224	2024-01-04 20:21:14.582561	Defender	717212	\N	\N
372	Ibrahim Najm Eddine	Ibrahim Najm Eddine	100000	1,86m	Morocco	Centre-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.692838	2024-01-04 20:21:17.592451	Defender	518737	\N	\N
373	Naoufal Zannane	Naoufal Zannane	75000	1,83m	Morocco	Centre-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.698764	2024-01-04 20:21:18.815018	Defender	590695	\N	\N
374	Mélo Ndiaye	Mélo Ndiaye	75000	1,87m	Senegal	Centre-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.708047	2024-01-04 20:21:19.987843	Defender	754175	\N	\N
376	Mounir Mouknia	Mounir Mouknia	0	1,70m	Morocco	Left-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.726846	2024-01-04 20:21:22.983911	Defender	842865	\N	\N
377	Achraf Marzak	Achraf Marzak	475000	\N	Morocco	Right-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.736388	2024-01-04 20:21:23.982353	Defender	682117	\N	\N
380	Reda Moussadek	Reda Moussadek	50000	1,76m	Morocco	Mittelfeld	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.760766	2024-01-04 20:21:25.950262	Mittelfeld	831001	\N	\N
381	Said Grada	Said Grada	0	1,76m	Morocco	Defensive Midfield	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.769006	2024-01-04 20:21:26.964395	Mittelfeld	236327	\N	\N
382	Issam Chouikh	Issam Chouikh	0	1,69m	Morocco	Mittelfeld	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.777066	2024-01-04 20:21:28.089752	Mittelfeld	549324	\N	\N
384	Abdelaziz El Achab	Abdelaziz El Achab	0	\N	Morocco	Central Midfield	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.796811	2024-01-04 20:21:30.343819	Mittelfeld	995699	\N	\N
385	Youssef Karmani	Youssef Karmani	0	1,86m	Morocco	Central Midfield	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.804069	2024-01-04 20:21:31.520066	Mittelfeld	244934	\N	\N
386	Mahmoud Benhalib	Mahmoud Benhalib	250000	1,78m	Morocco	Left Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.809673	2024-01-04 20:21:33.322275	Striker	500035	\N	\N
389	Taha Al Achbili	Taha Al Achbili	10000	1,75m	Morocco	Left Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/800592-1597422334.jpeg?lm=1	2023-12-19 21:30:12.835957	2024-01-04 20:21:36.041208	Striker	800592	\N	\N
390	Hicham Marchad	Hicham Marchad	250000	1,8m	Morocco	Right Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.842352	2024-01-04 20:21:36.840859	Striker	530992	\N	\N
392	Youness Moukhlis	Youness Moukhlis	25000	\N	Morocco	Right Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.861253	2024-01-04 20:21:39.151244	Striker	1172372	\N	\N
313	Mohamed Chemlal	Mohamed Chemlal	275000	1,70m	France	Attacking Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/s_182885_10831_2010_1.jpg?lm=1	2023-12-19 21:30:06.447098	2024-01-04 20:20:09.563781	Mittelfeld	182885	\N	\N
396	Youssef Bouabid	Youssef Bouabid	150000	\N	Morocco	Striker	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.894422	2024-01-04 20:21:42.590725	Striker	1175880	\N	\N
397	Youssef Baba	Youssef Baba	125000	\N	Morocco	Striker	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.906354	2024-01-04 20:21:43.860629	Striker	1172371	\N	\N
399	Yassine El Mahdaoui	Yassine El Mahdaoui	0	\N	Morocco	Striker	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.922323	2024-01-04 20:21:46.001326	Striker	1178986	\N	\N
401	Mehdi Harrar	Mehdi Harrar	150000	\N	Morocco	Goalkeeper	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:14.987609	2024-01-04 20:21:47.552014	Goalkeeper	822538	\N	\N
402	Mouad Gari	Mouad Gari	10000	\N	Morocco	Defender	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:14.994175	2024-01-04 20:21:48.963259	Defender	1176893	\N	\N
404	Anas Moulhami	Anas Moulhami	200000	1,81m	Morocco	Centre-Back	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.006913	2024-01-04 20:21:51.986208	Defender	909924	\N	\N
405	Hamza Bahaj	Hamza Bahaj	150000	1,80m	Morocco	Centre-Back	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.012351	2024-01-04 20:21:52.981251	Defender	1058812	\N	\N
407	Ayoub Boucheta	Ayoub Boucheta	650000	\N	Morocco	Left-Back	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.030179	2024-01-04 20:21:56.251237	Defender	245194	\N	\N
410	Anas Boukram	Anas Boukram	100000	\N	Morocco	Mittelfeld	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.052879	2024-01-04 20:21:58.746971	Mittelfeld	1176894	\N	\N
411	Omar Benjdiya	Omar Benjdiya	25000	1,90m	Morocco	Defensive Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.058355	2024-01-04 20:22:00.282283	Mittelfeld	902841	\N	\N
412	Tidiane Doumbouya	Tidiane Doumbouya	10000	1,70m	Guinea	Defensive Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/1068248-1664917783.jpeg?lm=1	2023-12-19 21:30:15.064802	2024-01-04 20:22:01.358825	Mittelfeld	1068248	\N	\N
414	Oussama Noureddine	Oussama Noureddine	10000	\N	Morocco	Defensive Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.080149	2024-01-04 20:22:03.360337	Mittelfeld	1176890	\N	\N
415	Oussama Zemraoui	Oussama Zemraoui	450000	\N	Morocco	Central Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.09424	2024-01-04 20:22:05.481603	Mittelfeld	667970	\N	\N
418	Marouane Afallah	Marouane Afallah	175000	1,70m	Morocco	Central Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.115239	2024-01-04 20:22:07.838114	Mittelfeld	1056111	\N	\N
419	Faical El Haddadi	Faical El Haddadi	75000	1,87m	Morocco	Central Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.120622	2024-01-04 20:22:09.265966	Mittelfeld	518785	\N	\N
420	Saad Lamti	Saad Lamti	0	1,77m	Morocco	Central Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.127537	2024-01-04 20:22:10.122953	Mittelfeld	366750	\N	\N
422	Ayoub Ballouchy	Ayoub Ballouchy	125000	1,76m	Morocco	Right Winger	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.149179	2024-01-04 20:22:12.40567	Striker	1056140	\N	\N
423	Amin Tighazoui	Amin Tighazoui	0	1,72m	Morocco	Right Winger	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/106268-1686124719.jpg?lm=1	2023-12-19 21:30:15.155917	2024-01-04 20:22:14.079908	Striker	106268	\N	\N
425	Aziz Ennakhli	Aziz Ennakhli	125000	1,85m	Morocco	Centre-Forward	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.170778	2024-01-04 20:22:16.663115	Striker	841306	\N	\N
426	Loïc Paul Elloh Nze	Loïc Paul Elloh Nze	25000	1,75m	Gabon	Striker	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/763543-1609596256.jpg?lm=1	2023-12-19 21:30:15.177781	2024-01-04 20:22:18.17554	Striker	763543	\N	\N
428	Karim Lagrouch	Karim Lagrouch	25000	\N	Morocco	Centre-Forward	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.199265	2024-01-04 20:22:21.440556	Striker	1113613	\N	\N
430	Hamza El Ouidane	Hamza El Ouidane	0	1,77m	Morocco	Centre-Forward	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.216694	2024-01-04 20:22:23.109194	Striker	928313	\N	\N
432	Adil Cherkaoui	Adil Cherkaoui	100000	1,84m	Morocco	Goalkeeper	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.751361	2024-01-04 20:22:25.224243	Goalkeeper	366788	\N	\N
433	Younes Hardala	Younes Hardala	0	\N	Morocco	Goalkeeper	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.758543	2024-01-04 20:22:26.799045	Goalkeeper	717218	\N	\N
435	Abdelkhalek Hamidouch	Abdelkhalek Hamidouch	225000	1,86m	Morocco	Centre-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.772178	2024-01-04 20:22:28.769636	Defender	366413	\N	\N
436	Abderrahim Khaddou	Abderrahim Khaddou	200000	1,92m	Morocco	Centre-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.777747	2024-01-04 20:22:30.144361	Defender	276615	\N	\N
439	Ayoub Malki	Ayoub Malki	150000	\N	Morocco	Left-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.800631	2024-01-04 20:22:32.038707	Defender	1174683	\N	\N
440	Hamza Ait Allal	Hamza Ait Allal	175000	1,84m	Morocco	Right-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.807346	2024-01-04 20:22:34.007035	Defender	692591	\N	\N
442	Imad Ben Sghir	Imad Ben Sghir	10000	1,73m	Morocco	Right-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.81826	2024-01-04 20:22:38.458981	Defender	1110593	\N	\N
443	Soufiane Karkache	Soufiane Karkache	175000	1,85m	Morocco	Defensive Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.826302	2024-01-04 20:22:40.747905	Mittelfeld	344067	\N	\N
446	Brahim El Idrissi Bouzidi	Brahim El Idrissi Bouzidi	125000	1,81m	Morocco	Defensive Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.853036	2024-01-04 20:22:44.781622	Mittelfeld	1172375	\N	\N
450	Baïdy Diallo	Baïdy Diallo	50000	1,85m	Senegal	Central Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.884151	2024-01-04 20:22:49.620545	Mittelfeld	1060860	\N	\N
452	Abdelhay Forsy	Abdelhay Forsy	125000	1,70m	Morocco	Attacking Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.898396	2024-01-04 20:22:51.685895	Mittelfeld	665741	\N	\N
453	Adil El Jeddaoui	Adil El Jeddaoui	50000	\N	Morocco	Attacking Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.912765	2024-01-04 20:22:55.262184	Mittelfeld	1202823	\N	\N
455	Zakaria Hadraf	Zakaria Hadraf	400000	1,75m	Morocco	Left Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.92874	2024-01-04 20:23:00.538006	Striker	236371	\N	\N
456	Oumar Goudiaby	Oumar Goudiaby	200000	1,77m	Senegal	Left Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/410506-1632061109.png?lm=1	2023-12-19 21:30:17.934021	2024-01-04 20:23:02.218301	Striker	410506	\N	\N
457	Soufiane Jazouli	Soufiane Jazouli	50000	\N	Morocco	Left Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.93921	2024-01-04 20:23:03.261695	Striker	902848	\N	\N
460	Mounsef Chrachem	Mounsef Chrachem	125000	1,77m	Morocco	Right Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.966312	2024-01-04 20:23:06.341839	Striker	856375	\N	\N
461	Youssef Lakhal	Youssef Lakhal	25000	1,76m	Morocco	Right Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.976488	2024-01-04 20:23:07.218881	Striker	1133038	\N	\N
463	Oussama Srhiri	Oussama Srhiri	0	1,82m	Morocco	Right Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.993151	2024-01-04 20:23:09.609492	Striker	1178981	\N	\N
464	Zakaria Bahrou	Zakaria Bahrou	175000	1,83m	Morocco	Centre-Forward	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.998348	2024-01-04 20:23:10.489106	Striker	790406	\N	\N
466	Hicham El Allouch	Hicham El Allouch	75000	1,82m	Morocco	Goalkeeper	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.812053	2024-01-04 20:23:12.660964	Goalkeeper	235380	\N	\N
467	Abdelhaq Ezzoumi	Abdelhaq Ezzoumi	25000	1,85m	Morocco	Goalkeeper	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.818931	2024-01-04 20:23:13.942308	Goalkeeper	517708	\N	\N
470	Mouhcine Erbibi	Mouhcine Erbibi	125000	\N	Morocco	Centre-Back	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.83792	2024-01-04 20:23:16.53514	Defender	541398	\N	\N
471	Mouad Bahsain	Mouad Bahsain	550000	1,8m	Morocco	Left-Back	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/816064-1700417466.PNG?lm=1	2023-12-19 21:30:20.845166	2024-01-04 20:23:17.429987	Defender	816064	\N	\N
473	Ayman Hadidi	Ayman Hadidi	300000	\N	Morocco	Right-Back	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.859569	2024-01-04 20:23:22.623654	Defender	859159	\N	\N
474	Omar Boutayeb	Omar Boutayeb	100000	1,73m	Morocco	Right-Back	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.871079	2024-01-04 20:23:23.923113	Defender	500036	\N	\N
477	Ennaama El Bellali	Ennaama El Bellali	150000	1,90m	Morocco	Defensive Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.890163	2024-01-04 20:23:29.621822	Mittelfeld	660039	\N	\N
478	Anas Sabyh	Anas Sabyh	150000	1,77m	Morocco	Defensive Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.896137	2024-01-04 20:23:32.298246	Mittelfeld	935591	\N	\N
479	Adnane Bentagana	Adnane Bentagana	25000	\N	Morocco	Defensive Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.905839	2024-01-04 20:23:33.223511	Mittelfeld	1187342	\N	\N
481	Ayoub Lakhlifi	Ayoub Lakhlifi	10000	\N	Morocco	Mittelfeld	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.921735	2024-01-04 20:23:36.243112	Mittelfeld	903850	\N	\N
482	Soulaimane El Bouchqali	Soulaimane El Bouchqali	175000	1,82m	Morocco	Central Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.930775	2024-01-04 20:23:38.47957	Mittelfeld	1055358	\N	\N
483	Said Azeroual	Said Azeroual	10000	1,75m	Morocco	Attacking Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.936481	2024-01-04 20:23:39.951159	Mittelfeld	902806	\N	\N
485	Mohamed El Khaloui	Mohamed El Khaloui	250000	1,80m	Morocco	Left Winger	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.955056	2024-01-04 20:23:44.558955	Striker	617594	\N	\N
486	Pa Modou Sohna	Pa Modou Sohna	50000	\N	The Gambia	Left Winger	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.96402	2024-01-04 20:23:45.360333	Striker	678294	\N	\N
489	Maati Tamaiazou	Maati Tamaiazou	175000	\N	Morocco	Right Winger	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/518788-1669302952.JPG?lm=1	2023-12-19 21:30:20.990501	2024-01-04 20:23:47.303693	Striker	518788	\N	\N
490	Hamza Beloued	Hamza Beloued	10000	\N	Morocco	Right Winger	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.996902	2024-01-04 20:23:48.346576	Striker	1175216	\N	\N
492	Salaheddine Icharane	Salaheddine Icharane	100000	\N	Morocco	Centre-Forward	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:21.011007	2024-01-04 20:23:50.727353	Striker	842335	\N	\N
493	Younes Sakhi	Younes Sakhi	50000	\N	Morocco	Centre-Forward	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:21.02125	2024-01-04 20:23:51.828639	Striker	1125067	\N	\N
494	Houssine Rahimi	Houssine Rahimi	25000	1,87m	Morocco	Centre-Forward	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:21.03351	2024-01-04 20:23:53.562049	Striker	860188	\N	\N
496	Nacer Moustaghfir	Nacer Moustaghfir	10000	1,90m	Morocco	Centre-Forward	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:21.050055	2024-01-04 20:23:56.447603	Striker	1091486	\N	\N
497	Ziad Laafsa	Ziad Laafsa	100000	1,85m	Morocco	Goalkeeper	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.017442	2024-01-04 20:23:58.785031	Goalkeeper	787010	\N	\N
499	Jaouad Bensaid	Jaouad Bensaid	0	\N	Morocco	Defender	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.03212	2024-01-04 20:24:00.627692	Defender	1175887	\N	\N
316	Mohamed Amine Essahel	Mohamed Amine Essahel	10000	\N	Morocco	Attacking Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.472485	2024-01-04 20:20:13.649266	Mittelfeld	667966	\N	\N
2	Mehdi Maftah	Mehdi Maftah	400000	1,90m	Morocco	Goalkeeper	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.627804	2024-01-04 21:20:28.037838	Goalkeeper	599573	\N	\N
503	Badr Gaddarine	Badr Gaddarine	300000	1,78m	Morocco	Left-Back	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.057931	2024-01-04 20:24:08.382773	Defender	496570	\N	\N
504	Imad Serbout	Imad Serbout	275000	1,75m	Morocco	Right-Back	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.06725	2024-01-04 20:24:09.546992	Defender	1057386	\N	\N
507	Habib Allah Dahmani	Habib Allah Dahmani	100000	1,79m	Morocco	Defensive Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.087746	2024-01-04 20:24:11.426255	Mittelfeld	361905	\N	\N
508	Achraf Kasbaoui	Achraf Kasbaoui	10000	1,82m	Morocco	Mittelfeld	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.094626	2024-01-04 20:24:13.303661	Mittelfeld	1065116	\N	\N
510	Mohammed El Hbaili	Mohammed El Hbaili	10000	\N	Morocco	Mittelfeld	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.10922	2024-01-04 20:24:16.237753	Mittelfeld	1175885	\N	\N
511	Yassine Filali	Yassine Filali	175000	1,74m	Morocco	Central Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.117215	2024-01-04 20:24:17.423209	Mittelfeld	366768	\N	\N
514	El Habib Brija	El Habib Brija	175000	\N	Morocco	Attacking Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.149909	2024-01-04 20:24:19.96759	Mittelfeld	842564	\N	\N
515	Youssef Anouar	Youssef Anouar	450000	1,65m	Morocco	Left Winger	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.155598	2024-01-04 20:24:21.065711	Striker	234836	\N	\N
517	Anis Tabich	Anis Tabich	10000	\N	Morocco	Left Winger	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.170784	2024-01-04 20:24:23.869395	Striker	1175882	\N	\N
518	Nadir Lougmani	Nadir Lougmani	175000	1,73m	Morocco	Centre-Forward	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.177793	2024-01-04 20:24:24.783769	Striker	990144	\N	\N
520	Chouaib Faidi	Chouaib Faidi	100000	\N	Morocco	Centre-Forward	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.198516	2024-01-04 20:24:29.087901	Striker	920971	\N	\N
521	Youssef Malki	Youssef Malki	10000	\N	Morocco	Centre-Forward	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.206925	2024-01-04 20:24:30.579806	Striker	1178439	\N	\N
5	Boubacar Bah	Boubacar Bah	10000	1,88m	France	Goalkeeper	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/980733-1672039536.jpg?lm=1	2023-12-19 21:29:45.688721	2024-01-04 21:20:29.144131	Goalkeeper	980733	\N	\N
7	Arsène Zola	Arsène Zola	800000	1,83m	DR Congo	Centre-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/494374-1633862191.jpeg?lm=1	2023-12-19 21:29:45.718387	2024-01-04 21:20:29.95624	Defender	494374	\N	\N
10	Amine Aboulfath	Amine Aboulfath	400000	1,83m	Morocco	Centre-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.740685	2024-01-04 21:20:30.56121	Defender	681691	\N	\N
13	Ilyes Chetti	Ilyes Chetti	350000	1,76m	Algeria	Left-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/477834-1672328969.jpg?lm=1	2023-12-19 21:29:45.763059	2024-01-04 21:20:31.097311	Defender	477834	\N	\N
16	Hicham Ait Brayem	Hicham Ait Brayem	10000	\N	Morocco	Right-Back	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.789252	2024-01-04 21:20:31.93994	Defender	1173700	\N	\N
19	Anas Serrhat	Anas Serrhat	400000	1,78m	Morocco	Defensive Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.81583	2024-01-04 21:20:32.537376	Mittelfeld	717213	\N	\N
22	Abdellah Haimoud	Abdellah Haimoud	300000	\N	Morocco	Central Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.839389	2024-01-04 21:20:33.356129	Mittelfeld	862363	\N	\N
25	Zouhair El Moutaraji	Zouhair El Moutaraji	400000	1,82m	Morocco	Left Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/240707-1643125298.jpg?lm=1	2023-12-19 21:29:45.867943	2024-01-04 21:20:34.380108	Striker	240707	\N	\N
28	Montasser Lahtimi	Montasser Lahtimi	700000	1,85m	Morocco	Right Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/731876-1663875491.png?lm=1	2023-12-19 21:29:45.888398	2024-01-04 21:20:34.89926	Striker	731876	\N	\N
34	Charki El Bahri	Charki El Bahri	500000	\N	Morocco	Centre-Forward	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.938835	2024-01-04 21:20:35.521731	Striker	860299	\N	\N
40	Ismail Mokadem	Ismail Mokadem	850000	1,81m	Morocco	Centre-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.211004	2024-01-04 21:20:37.02588	Defender	617592	\N	\N
46	Abdessamad Badaoui	Abdessamad Badaoui	500000	\N	Morocco	Right-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.257942	2024-01-04 21:20:38.669536	Defender	858917	\N	\N
49	Mehdi Moubarik	Mehdi Moubarik	800000	1,76m	Morocco	Defensive Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.287	2024-01-04 21:20:39.603031	Mittelfeld	593432	\N	\N
52	Zakaria El Wardi	Zakaria El Wardi	600000	1,83m	Morocco	Central Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/518643-1646819234.png?lm=1	2023-12-19 21:29:47.311194	2024-01-04 21:20:40.373821	Mittelfeld	518643	\N	\N
54	Sabir Bougrine	Sabir Bougrine	700000	1,74m	Morocco	Attacking Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/318904-1598165311.png?lm=1	2023-12-19 21:29:47.331699	2024-01-04 21:20:40.959571	Mittelfeld	318904	\N	\N
57	Yousri Bouzok	Yousri Bouzok	1100000	1,75m	Algeria	Right Winger	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/532366-1688897285.jpeg?lm=1	2023-12-19 21:29:47.355302	2024-01-04 21:20:41.556958	Striker	532366	\N	\N
59	Marouane Zila	Marouane Zila	300000	1,83m	Morocco	Right Winger	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.373568	2024-01-04 21:20:42.194002	Striker	732951	\N	\N
43	Mehdi Mchakh'chekh	Mehdi Mchakh'chekh	0	\N	Morocco	Centre-Back	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.235719	2023-12-28 18:39:32.600476	Defender	\N	\N	\N
320	Mohamed Radid	Mohamed Radid	10000	1,79m	Morocco	Right Winger	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.510233	2024-01-04 20:20:19.625767	Striker	904577	\N	\N
68	Messie Biatoumoussoka	Messie Biatoumoussoka	150000	1,89m	Congo	Centre-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/593442-1657997078.png?lm=1	2023-12-19 21:29:49.358551	2024-01-04 21:20:43.398273	Defender	593442	\N	\N
71	Moncef Amri	Moncef Amri	500000	1,8m	Morocco	Left-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.390712	2024-01-04 21:20:44.024443	Defender	838828	\N	\N
74	Mohamed Moufid	Mohamed Moufid	800000	1,72m	Morocco	Right-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.412973	2024-01-04 21:20:44.576667	Defender	800363	\N	\N
79	Mohamed Nofal Tahri	Mohamed Nofal Tahri	0	\N	Morocco	Mittelfeld	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.456994	2024-01-04 21:20:45.69475	Mittelfeld	1142426	\N	\N
82	Ahmed Hammoudan	Ahmed Hammoudan	600000	1,76m	Morocco	Left Winger	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.481245	2024-01-04 21:20:46.660923	Striker	507374	\N	\N
85	Bernard Morrison	Bernard Morrison	150000	1,78m	Ghana	Right Winger	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/269575-1564164428.png?lm=1	2023-12-19 21:29:49.54941	2024-01-04 21:20:47.204765	Striker	269575	\N	\N
88	Hamza Igamane	Hamza Igamane	400000	1,81m	Morocco	Centre-Forward	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.573398	2024-01-04 21:20:47.974922	Striker	885445	\N	\N
91	Hamza Hamiani	Hamza Hamiani	750000	1,87m	Morocco	Goalkeeper	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.486305	2024-01-04 21:20:48.714102	Goalkeeper	681726	\N	\N
93	Issoufou Dayo	Issoufou Dayo	1000000	1,87m	Burkina Faso	Centre-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/326150-1649063386.png?lm=1	2023-12-19 21:29:51.499405	2024-01-04 21:20:49.217304	Defender	326150	\N	\N
99	Abdelilah Madkour	Abdelilah Madkour	400000	\N	Morocco	Right-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/689435-1590420116.jpg?lm=1	2023-12-19 21:29:51.548835	2024-01-04 21:20:50.411415	Defender	689435	\N	\N
102	Mamadou Lamine Camara	Mamadou Lamine Camara	600000	1,93m	Senegal	Defensive Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/776215-1684832612.jpg?lm=1	2023-12-19 21:29:51.568119	2024-01-04 21:20:51.382721	Mittelfeld	776215	\N	\N
106	Ilyas Bel Fakih	Ilyas Bel Fakih	10000	\N	Morocco	Mittelfeld	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.636184	2024-01-04 21:20:51.883825	Mittelfeld	861016	\N	\N
109	Bakr El Helali	Bakr El Helali	150000	1,87m	Morocco	Central Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/s_234994_6603_2012_1.jpg?lm=1	2023-12-19 21:29:51.657363	2024-01-04 21:20:52.416359	Mittelfeld	234994	\N	\N
113	Reda Hajji	Reda Hajji	150000	\N	Morocco	Attacking Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.693779	2024-01-04 21:20:52.917541	Mittelfeld	882910	\N	\N
114	Chadrack Muzungu	Chadrack Muzungu	550000	\N	DR Congo	Left Winger	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/427633-1574102180.jpg?lm=1	2023-12-19 21:29:51.699624	2024-01-04 21:20:53.421797	Striker	427633	\N	\N
117	Tuisila Kisinda	Tuisila Kisinda	225000	\N	DR Congo	Right Winger	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.725496	2024-01-04 21:20:54.020808	Striker	644917	\N	\N
121	Oussama Lamlioui	Oussama Lamlioui	550000	1,80m	Morocco	Centre-Forward	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.761605	2024-01-04 21:20:54.599677	Striker	732950	\N	\N
124	Rachid Ghanimi	Rachid Ghanimi	25000	\N	Morocco	Goalkeeper	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.955071	2024-01-04 21:20:55.175366	Goalkeeper	981522	\N	\N
127	Salah Moussadak	Salah Moussadak	400000	1,87m	Morocco	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/920972-1671653013.jpeg?lm=1	2023-12-19 21:29:53.972745	2024-01-04 21:20:56.094742	Defender	920972	\N	\N
130	El Mehdi El Bassil	El Mehdi El Bassil	125000	\N	Morocco	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:53.996152	2024-01-04 21:20:56.686387	Defender	225086	\N	\N
133	Yahya Benkhaleq	Yahya Benkhaleq	10000	\N	Morocco	Centre-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.01752	2024-01-04 21:20:57.321211	Defender	1092074	\N	\N
136	Zouheir El Hachemi	Zouheir El Hachemi	400000	1,77m	Morocco	Right-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.038626	2024-01-04 21:20:58.001732	Defender	558706	\N	\N
139	Anas Bach	Anas Bach	650000	1,76m	Morocco	Defensive Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/518802-1649063699.jpg?lm=1	2023-12-19 21:29:54.062031	2024-01-04 21:20:58.703844	Mittelfeld	518802	\N	\N
141	Brahim Sabaouni	Brahim Sabaouni	275000	1,84m	Morocco	Defensive Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/375002-1597831233.jpg?lm=1	2023-12-19 21:29:54.077218	2024-01-04 21:20:59.257895	Mittelfeld	375002	\N	\N
148	Marwane Elaz	Marwane Elaz	200000	1,72m	Morocco	Left Winger	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/650001-1601303160.png?lm=1	2023-12-19 21:29:54.13203	2024-01-04 21:20:59.779144	Striker	650001	\N	\N
150	Chouaib El Maftoul	Chouaib El Maftoul	300000	1,72m	Morocco	Right Winger	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/363735-1669191271.JPG?lm=1	2023-12-19 21:29:54.142773	2024-01-04 21:21:00.361608	Striker	363735	\N	\N
154	Hamid Ahadad	Hamid Ahadad	600000	1,78m	Morocco	Centre-Forward	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/507135-1653055619.png?lm=1	2023-12-19 21:29:54.181648	2024-01-04 21:21:00.941936	Striker	507135	\N	\N
156	Junior Kameni	Junior Kameni	350000	1,97m	Cameroon	Centre-Forward	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/930947-1678083319.jpg?lm=1	2023-12-19 21:29:54.198788	2024-01-04 21:21:01.701304	Striker	930947	\N	\N
159	Ahmed Reda Tagnaouti	Ahmed Reda Tagnaouti	1300000	1,92m	Morocco	Goalkeeper	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/238997-1668080784.jpg?lm=1	2023-12-19 21:29:56.259266	2024-01-04 21:21:02.373096	Goalkeeper	238997	\N	\N
162	Hamza El Ichaoui	Hamza El Ichaoui	0	\N	Morocco	Goalkeeper	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.280952	2024-01-04 21:21:03.262013	Goalkeeper	914242	\N	\N
165	Yassine El Ghazouani	Yassine El Ghazouani	400000	\N	Morocco	Centre-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.298976	2024-01-04 21:21:04.117202	Defender	518791	\N	\N
168	Driss El Jabali	Driss El Jabali	0	\N	Morocco	Centre-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.322582	2024-01-04 21:21:04.942001	Defender	1174262	\N	\N
323	Anass Eddaou	Anass Eddaou	75000	1,72m	Morocco	Striker	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.535757	2024-01-04 20:20:22.940724	Striker	1097559	\N	\N
174	Hamza Oukaili	Hamza Oukaili	10000	\N	Morocco	Mittelfeld	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.375606	2024-01-04 21:21:06.579921	Mittelfeld	1055761	\N	\N
177	Soufiane Mestari	Soufiane Mestari	0	\N	Morocco	Mittelfeld	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.397055	2024-01-04 21:21:07.501364	Mittelfeld	1174676	\N	\N
180	Haytem Aina	Haytem Aina	40000	\N	Morocco	Central Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.424414	2024-01-04 21:21:08.258297	Mittelfeld	628351	\N	\N
183	Egah Saviour	Egah Saviour	0	\N	Nigeria	Attacking Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.450546	2024-01-04 21:21:09.042404	Mittelfeld	980045	\N	\N
186	Hamza El Janati	Hamza El Janati	475000	1,83m	Morocco	Right Winger	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.472307	2024-01-04 21:21:09.723513	Striker	841736	\N	\N
189	Mustapha Sahd	Mustapha Sahd	500000	1,82m	Morocco	Centre-Forward	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.494706	2024-01-04 21:21:10.241745	Striker	857713	\N	\N
197	Imad Askar	Imad Askar	25000	1,90m	Morocco	Goalkeeper	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.519449	2024-01-04 21:21:11.5444	Goalkeeper	823069	\N	\N
200	Mohamed Saoud	Mohamed Saoud	350000	1,86m	Morocco	Centre-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.539331	2024-01-04 21:21:12.195989	Defender	240721	\N	\N
203	Anass Lamrabat	Anass Lamrabat	350000	\N	Morocco	Left-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.565684	2024-01-04 21:21:12.755277	Defender	245202	\N	\N
206	Zakaria Kiani	Zakaria Kiani	300000	1,70m	Morocco	Right-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.590091	2024-01-04 21:21:13.408963	Defender	717214	\N	\N
209	Nouaman Aarab	Nouaman Aarab	150000	1,79m	Morocco	Defensive Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.617818	2024-01-04 21:21:14.049933	Mittelfeld	366478	\N	\N
212	Yassine El Guartit	Yassine El Guartit	0	\N	Morocco	Mittelfeld	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.640506	2024-01-04 21:21:14.670338	Mittelfeld	1175879	\N	\N
215	Mohamed Said Bouksyr	Mohamed Said Bouksyr	150000	1,77m	Morocco	Central Midfield	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.661648	2024-01-04 21:21:15.536676	Mittelfeld	1039610	\N	\N
218	Hamza Elowasti	Hamza Elowasti	325000	\N	Morocco	Left Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.688155	2024-01-04 21:21:16.481815	Striker	441982	\N	\N
221	Ali El Harrak	Ali El Harrak	125000	\N	Morocco	Left Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.704239	2024-01-04 21:21:17.05167	Striker	844795	\N	\N
227	Ismail Khafi	Ismail Khafi	300000	1,83m	Morocco	Centre-Forward	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.758245	2024-01-04 21:21:18.175368	Striker	707310	\N	\N
229	Khalid Kbiri Alaoui	Khalid Kbiri Alaoui	300000	1,92m	Morocco	Goalkeeper	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:00.999354	2024-01-04 21:21:19.20097	Goalkeeper	240712	\N	\N
230	Abderrahmane Kernane	Abderrahmane Kernane	50000	1,86m	Morocco	Goalkeeper	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.007212	2024-01-04 21:21:19.900912	Goalkeeper	593395	\N	\N
233	Soulaiman El Amrani	Soulaiman El Amrani	400000	1,81m	Morocco	Centre-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.025154	2024-01-04 21:21:20.584927	Defender	238952	\N	\N
237	Houari Ferhani	Houari Ferhani	275000	1,68m	Algeria	Left-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.059398	2024-01-04 21:21:21.083804	Defender	321186	\N	\N
240	Mohamed Mourad Naji	Mohamed Mourad Naji	325000	1,70m	Morocco	Right-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/234963-1649063917.png?lm=1	2023-12-19 21:30:01.082071	2024-01-04 21:21:21.776004	Defender	234963	\N	\N
243	Yassine Belfadla	Yassine Belfadla	10000	1,88m	Morocco	Mittelfeld	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.103591	2024-01-04 21:21:22.541435	Mittelfeld	863629	\N	\N
246	Hamza Moujahid	Hamza Moujahid	250000	\N	Morocco	Central Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.12877	2024-01-04 21:21:23.058365	Mittelfeld	628354	\N	\N
249	Abderrahmane Qassaq	Abderrahmane Qassaq	100000	\N	Morocco	Attacking Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.155916	2024-01-04 21:21:23.557075	Mittelfeld	836467	\N	\N
252	Oussama Haffari	Oussama Haffari	350000	1,70m	Morocco	Left Winger	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.179366	2024-01-04 21:21:24.105744	Striker	720443	\N	\N
261	Ndifreke Effiong	Ndifreke Effiong	25000	1,73m	Nigeria	Centre-Forward	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.255771	2024-01-04 21:21:25.764353	Striker	409102	\N	\N
264	Badreddine Abyir	Badreddine Abyir	25000	\N	Morocco	Goalkeeper	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.672838	2024-01-04 21:21:26.262724	Goalkeeper	1036559	\N	\N
267	Yassine Rami	Yassine Rami	225000	1,85m	Morocco	Centre-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.695268	2024-01-04 21:21:26.916709	Defender	204493	\N	\N
270	Abdelkarim Lalioune	Abdelkarim Lalioune	10000	\N	Morocco	Centre-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.719507	2024-01-04 21:21:27.624903	Defender	879640	\N	\N
273	Samir Benamar	Samir Benamar	0	1,82m	Morocco	Left-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/279062-1666621648.jpg?lm=1	2023-12-19 21:30:03.740554	2024-01-04 21:21:28.250837	Defender	279062	\N	\N
276	Brahim Dahmoun	Brahim Dahmoun	100000	1,78m	France	Right-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.768009	2024-01-04 21:21:28.947115	Defender	721408	\N	\N
279	Salaheddine Bahi	Salaheddine Bahi	150000	1,85m	Morocco	Defensive Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.796447	2024-01-04 21:21:29.593242	Mittelfeld	598505	\N	\N
326	Achraf Zriouile	Achraf Zriouile	0	1,79m	Morocco	Striker	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.56436	2024-01-04 20:20:26.913736	Striker	374308	\N	\N
287	Abdallah Boukhanfer	Abdallah Boukhanfer	175000	\N	Morocco	Attacking Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.862224	2024-01-04 21:21:40.096649	Mittelfeld	926806	\N	\N
290	Junior Mbele	Junior Mbele	350000	1,70m	DR Congo	Right Winger	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.89154	2024-01-04 21:21:41.398758	Striker	727640	\N	\N
3	Yanis Hénin	Yanis Hénin	20000	1,86m	Morocco	Goalkeeper	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/460637-1543573137.jpg?lm=1	2023-12-19 21:29:45.671477	2024-01-04 21:21:30.278644	Goalkeeper	460637	\N	\N
302	Yassine El Khalej	Yassine El Khalej	150000	1,90m	Morocco	Centre-Back	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.357697	2024-01-04 20:24:34.189909	Defender	713000	\N	\N
321	Hicham Khaloua	Hicham Khaloua	350000	1,74m	Morocco	Second Striker	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:06.516066	2024-01-04 20:24:37.598749	Striker	186796	\N	\N
331	Houssam Ben Youssef	Houssam Ben Youssef	10000	\N	Morocco	Defender	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:08.985079	2024-01-04 20:24:38.523275	Defender	1055195	\N	\N
340	Mouad Karmoun	Mouad Karmoun	150000	1,78m	Morocco	Mittelfeld	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.059542	2024-01-04 20:24:41.801017	Mittelfeld	1091426	\N	\N
342	Anass Haffout	Anass Haffout	10000	\N	Morocco	Mittelfeld	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.079613	2024-01-04 20:24:42.685692	Mittelfeld	1055194	\N	\N
361	Mouhssine Iajour	Mouhssine Iajour	100000	1,78m	Morocco	Centre-Forward	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/64661-1494846113.jpg?lm=1	2023-12-19 21:30:09.225929	2024-01-04 20:24:46.724712	Striker	64661	\N	\N
369	Mohamed El Jaaouani	Mohamed El Jaaouani	300000	1,89m	Morocco	Centre-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/234899-1624902733.jpg?lm=1	2023-12-19 21:30:12.672132	2024-01-04 20:24:47.925794	Defender	234899	\N	\N
387	Saleh Essallami	Saleh Essallami	150000	\N	Morocco	Left Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.816351	2024-01-04 20:24:51.546789	Striker	841119	\N	\N
393	Mohammed Ben Hssain	Mohammed Ben Hssain	0	1,72m	Morocco	Right Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.871886	2024-01-04 20:24:52.907414	Striker	721823	\N	\N
409	Ayoub Adila	Ayoub Adila	125000	\N	Morocco	Defensive Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.047393	2024-01-04 20:24:55.887214	Mittelfeld	520720	\N	\N
417	Taoufik Safsafi	Taoufik Safsafi	225000	1,78m	Morocco	Central Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.107007	2024-01-04 20:24:56.950274	Mittelfeld	375641	\N	\N
429	Youssef Dalouzi	Youssef Dalouzi	10000	\N	Morocco	Striker	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.209988	2024-01-04 20:24:57.737821	Striker	1176891	\N	\N
445	Younes Khoutari	Younes Khoutari	150000	\N	Morocco	Defensive Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.8394	2024-01-04 20:24:59.626048	Mittelfeld	1174682	\N	\N
447	Bilal Ait Allal	Bilal Ait Allal	10000	\N	Morocco	Mittelfeld	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.861037	2024-01-04 20:25:00.67114	Mittelfeld	1174684	\N	\N
459	Mohamed Habbali	Mohamed Habbali	200000	1,66m	Morocco	Right Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.955303	2024-01-04 20:25:02.602613	Striker	1172369	\N	\N
468	Hassan Doughmi	Hassan Doughmi	10000	1,85m	Morocco	Goalkeeper	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.826846	2024-01-04 20:25:03.806657	Goalkeeper	885446	\N	\N
23	Ismail Moutaraji	Ismail Moutaraji	450000	\N	Morocco	Attacking Midfield	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/593405-1680296281.jpeg?lm=1	2023-12-19 21:29:45.847832	2024-01-04 21:21:30.82336	Mittelfeld	593405	\N	\N
53	Ahmadou Ama Camara	Ahmadou Ama Camara	75000	\N	Guinea	Central Midfield	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/1029170-1671719604.jpeg?lm=1	2023-12-19 21:29:47.321987	2024-01-04 21:21:31.625654	Mittelfeld	1029170	\N	\N
73	El Kouri Cheikhi	El Kouri Cheikhi	10000	\N	Morocco	Left-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.407435	2024-01-04 21:21:32.310066	Defender	914628	\N	\N
98	Abdelkarim Baadi	Abdelkarim Baadi	450000	1,73m	Morocco	Left-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/371606-1649064359.png?lm=1	2023-12-19 21:29:51.538647	2024-01-04 21:21:32.852704	Defender	371606	\N	\N
115	Djibril Ouattara	Djibril Ouattara	550000	1,77m	Burkina Faso	Right Winger	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/587556-1646818802.png?lm=1	2023-12-19 21:29:51.708478	2024-01-04 21:21:33.540307	Striker	587556	\N	\N
138	Oussama Raoui	Oussama Raoui	175000	\N	Morocco	Right-Back	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.055802	2024-01-04 21:21:34.175248	Defender	667994	\N	\N
161	Ahmedkhalil Jamal Eddine	Ahmedkhalil Jamal Eddine	0	\N	Morocco	Goalkeeper	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.275187	2024-01-04 21:21:34.818292	Goalkeeper	884828	\N	\N
176	Semelo Gueï	Semelo Gueï	0	1,86m	Cote d'Ivoire	Defensive Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.391118	2024-01-04 21:21:35.595638	Mittelfeld	877476	\N	\N
199	El Hadji Youssoupha Konaté	El Hadji Youssoupha Konaté	400000	1,85m	Senegal	Centre-Back	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.533366	2024-01-04 21:21:36.297965	Defender	562373	\N	\N
231	Mehdi Denna	Mehdi Denna	10000	\N	Morocco	Goalkeeper	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.012727	2024-01-04 21:21:36.90929	Goalkeeper	1071012	\N	\N
248	Ali Acha	Ali Acha	125000	\N	Morocco	Attacking Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.147853	2024-01-04 21:21:37.938405	Mittelfeld	854609	\N	\N
285	Hamza Afsal	Hamza Afsal	400000	1,84m	Morocco	Central Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.846459	2024-01-04 21:21:39.422127	Mittelfeld	858584	\N	\N
329	Said Lamaiz	Said Lamaiz	10000	1,90m	Morocco	Goalkeeper	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:08.971712	2024-01-04 20:20:30.852855	Goalkeeper	738954	\N	\N
333	Ayoub Mouddane	Ayoub Mouddane	100000	1,85m	Morocco	Centre-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.00184	2024-01-04 20:20:35.286377	Defender	557940	\N	\N
337	Hodifa El Mahssani	Hodifa El Mahssani	500000	1,65m	Morocco	Right-Back	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.036163	2024-01-04 20:20:40.360216	Defender	627926	\N	\N
341	Zaid Ben Khajjou	Zaid Ben Khajjou	10000	\N	Morocco	Mittelfeld	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.072724	2024-01-04 20:20:42.90148	Mittelfeld	1055745	\N	\N
343	Hilal Ferdaoussi	Hilal Ferdaoussi	225000	1,77m	Morocco	Central Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.086876	2024-01-04 20:20:44.165348	Mittelfeld	738952	\N	\N
346	Mohamed Radouani	Mohamed Radouani	175000	1,72m	Morocco	Central Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.116761	2024-01-04 20:20:47.184691	Mittelfeld	825406	\N	\N
350	Zaid Krouch	Zaid Krouch	200000	1,71m	Morocco	Attacking Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.146249	2024-01-04 20:20:51.663379	Mittelfeld	235074	\N	\N
353	Sheikh Omar Faye	Sheikh Omar Faye	10000	1,80m	The Gambia	Attacking Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.165215	2024-01-04 20:20:55.126159	Mittelfeld	1181780	\N	\N
357	Youssef El Houari	Youssef El Houari	175000	1,79m	Morocco	Right Winger	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.197169	2024-01-04 20:21:00.07882	Striker	804241	\N	\N
360	Hamza Ghatas	Hamza Ghatas	175000	1,85m	Morocco	Centre-Forward	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.217481	2024-01-04 20:21:03.880554	Striker	365363	\N	\N
363	Moukhtar Majid	Moukhtar Majid	250000	1,80m	Morocco	Goalkeeper	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.624158	2024-01-04 20:21:06.501352	Goalkeeper	366749	\N	\N
367	Mourad Izzem	Mourad Izzem	0	1,90m	Morocco	Goalkeeper	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.654246	2024-01-04 20:21:12.342637	Goalkeeper	366774	\N	\N
371	Youssef Kajai	Youssef Kajai	100000	1,87m	Morocco	Centre-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.687797	2024-01-04 20:21:16.202599	Defender	1066475	\N	\N
375	Yasser Jarici	Yasser Jarici	225000	1,72m	Morocco	Left-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.716914	2024-01-04 20:21:21.366529	Defender	237760	\N	\N
379	Abdelkhalek Ait Ourehbi	Abdelkhalek Ait Ourehbi	250000	\N	Morocco	Defensive Midfield	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.755654	2024-01-04 20:21:24.935967	Mittelfeld	364031	\N	\N
383	Hamza El Houssini	Hamza El Houssini	250000	1,85m	Morocco	Central Midfield	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.789279	2024-01-04 20:21:29.425327	Mittelfeld	553454	\N	\N
388	Mouad Fekkak	Mouad Fekkak	150000	\N	Morocco	Left Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.822253	2024-01-04 20:21:34.493849	Striker	936709	\N	\N
391	Mouhamed Johnson	Mouhamed Johnson	100000	1,80m	Senegal	Right Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.85491	2024-01-04 20:21:38.028225	Striker	1178284	\N	\N
394	Ayoub El Kenbouchi	Ayoub El Kenbouchi	0	1,80m	Morocco	Right Winger	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.880075	2024-01-04 20:21:40.786746	Striker	1105272	\N	\N
395	Abdelaziz El Hamzaoui	Abdelaziz El Hamzaoui	150000	1,86m	Morocco	Striker	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.887629	2024-01-04 20:21:41.600473	Striker	897600	\N	\N
1	Youssef El Motie	Youssef El Motie	800000	1,93m	Morocco	Goalkeeper	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.522559	2024-01-04 21:21:41.986998	Goalkeeper	732953	\N	\N
500	Mohamed Qellis	Mohamed Qellis	0	\N	Morocco	Defender	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.038072	2024-01-04 20:25:07.464828	Defender	1175884	\N	\N
505	Amine Souane	Amine Souane	400000	1,82m	Morocco	Defensive Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.07532	2024-01-04 20:25:08.765188	Mittelfeld	738951	\N	\N
31	Hicham Boussefiane	Hicham Boussefiane	350000	1,77m	Morocco	Right Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/465321-1584458382.jpg?lm=1	2023-12-19 21:29:45.916887	2024-01-04 21:21:42.625336	Striker	465321	\N	\N
62	El Mehdi Benabid	El Mehdi Benabid	1500000	1,88m	Morocco	Goalkeeper	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/544414-1649065846.png?lm=1	2023-12-19 21:29:49.203867	2024-01-06 09:26:13.040112	Goalkeeper	544414	\N	\N
76	Mohamed Rabie Hrimat	Mohamed Rabie Hrimat	1200000	1,86m	Morocco	Defensive Midfield	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.428448	2024-01-06 09:26:13.96222	Mittelfeld	553100	\N	\N
112	Adama Ba	Adama Ba	150000	1,79m	Mauritania	Attacking Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/s_197857_3911_2012_1.jpg?lm=1	2023-12-19 21:29:51.688094	2024-01-06 09:26:16.446923	Mittelfeld	126673	\N	\N
144	Presnel Arnaud Banga	Presnel Arnaud Banga	450000	1,76m	Cote d'Ivoire	Central Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/693033-1650805789.jpg?lm=1	2023-12-19 21:29:54.099521	2024-01-06 09:26:17.030902	Mittelfeld	693033	\N	\N
171	Omar Namsaoui	Omar Namsaoui	500000	1,81m	Morocco	Right-Back	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.341149	2024-01-06 09:26:17.953185	Defender	223213	\N	\N
192	Lahcen Gourbi	Lahcen Gourbi	25000	1,81m	Morocco	Centre-Forward	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.519367	2024-01-06 09:26:18.874707	Striker	882528	\N	\N
224	Nabil Jaadi	Nabil Jaadi	150000	1,78m	Morocco	Right Winger	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/200790-1487761991.jpg?lm=1	2023-12-19 21:29:58.73555	2024-01-06 09:26:19.494403	Striker	200790	\N	\N
282	Mohamed Amine Katiba	Mohamed Amine Katiba	0	1,81m	Morocco	Defensive Midfield	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.822527	2024-01-06 09:26:21.331297	Mittelfeld	1134278	\N	\N
398	Soufiane Harisse	Soufiane Harisse	0	1,82m	Morocco	Centre-Forward	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.915787	2024-01-04 20:21:44.80675	Striker	530406	\N	\N
403	Issouf Traoré	Issouf Traoré	225000	1,85m	Mali	Centre-Back	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/410424-1649158322.jpg?lm=1	2023-12-19 21:30:15.000019	2024-01-04 20:21:50.60704	Defender	410424	\N	\N
406	Jad Assouab	Jad Assouab	0	1,89m	Morocco	Centre-Back	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.018454	2024-01-04 20:21:54.129049	Defender	717223	\N	\N
408	Zakaria Drouich	Zakaria Drouich	250000	1,73m	Morocco	Right-Back	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.039015	2024-01-04 20:21:57.586486	Defender	593429	\N	\N
413	Mohammed Malik	Mohammed Malik	10000	\N	Morocco	Mittelfeld	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.071481	2024-01-04 20:22:02.482673	Mittelfeld	1176892	\N	\N
416	Ismael Benktib	Ismael Benktib	375000	1,78m	Morocco	Central Midfield	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/440323-1649063630.jpg?lm=1	2023-12-19 21:30:15.099576	2024-01-04 20:22:06.718851	Mittelfeld	440323	\N	\N
421	Ismail Mihrab	Ismail Mihrab	175000	1,73m	Morocco	Right Winger	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.137652	2024-01-04 20:22:11.527092	Striker	1033957	\N	\N
424	Abderrazak Ennakouss	Abderrazak Ennakouss	250000	1,9m	Morocco	Centre-Forward	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.16456	2024-01-04 20:22:15.12575	Striker	891953	\N	\N
427	Zakaria Fatihi	Zakaria Fatihi	25000	\N	Morocco	Centre-Forward	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:15.184818	2024-01-04 20:22:20.135382	Striker	1033958	\N	\N
431	Mohamed Ferni	Mohamed Ferni	325000	1,86m	Morocco	Goalkeeper	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.745349	2024-01-04 20:22:24.238598	Goalkeeper	727075	\N	\N
434	Youssef Faqir	Youssef Faqir	0	\N	Morocco	Goalkeeper	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.766478	2024-01-04 20:22:27.691278	Goalkeeper	1178985	\N	\N
437	Mohamed Rahim	Mohamed Rahim	200000	1,80m	Morocco	Centre-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.787278	2024-01-04 20:22:31.086002	Defender	732660	\N	\N
441	Ayoub Tine	Ayoub Tine	175000	\N	Morocco	Right-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.812551	2024-01-04 20:22:36.831077	Defender	822539	\N	\N
444	Anass El Ghannouj	Anass El Ghannouj	150000	1,71m	Morocco	Defensive Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.831556	2024-01-04 20:22:43.09765	Mittelfeld	1076082	\N	\N
449	Aymen Moutawi	Aymen Moutawi	100000	\N	Morocco	Central Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.877662	2024-01-04 20:22:47.979821	Mittelfeld	1174686	\N	\N
451	Charaf-Eddine Boulahroud	Charaf-Eddine Boulahroud	10000	1,80m	Morocco	Central Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.889991	2024-01-04 20:22:50.819793	Mittelfeld	857712	\N	\N
454	Zakaria Maknoun	Zakaria Maknoun	0	1,85m	Morocco	Attacking Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/853747-1610198953.jpeg?lm=1	2023-12-19 21:30:17.921195	2024-01-04 20:22:56.830232	Mittelfeld	853747	\N	\N
458	Imad Tab	Imad Tab	0	1,78m	Morocco	Left Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.946782	2024-01-04 20:23:04.387399	Striker	1172378	\N	\N
462	Aymane Lotfi	Aymane Lotfi	0	1,83m	Morocco	Right Winger	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.981986	2024-01-04 20:23:08.259155	Striker	1178315	\N	\N
465	Emmanuel Obounou	Emmanuel Obounou	25000	\N	Cameroon	Centre-Forward	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:18.004811	2024-01-04 20:23:11.368938	Striker	1174678	\N	\N
469	Youssef Limouri	Youssef Limouri	325000	\N	Morocco	Centre-Back	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.832336	2024-01-04 20:23:15.170166	Defender	712124	\N	\N
472	Zakaria Labib	Zakaria Labib	100000	\N	Morocco	Left-Back	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.851657	2024-01-04 20:23:21.302935	Defender	1056145	\N	\N
475	Hicham Merzaq Alaoui	Hicham Merzaq Alaoui	350000	\N	Morocco	Defensive Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.875842	2024-01-04 20:23:27.2075	Mittelfeld	935579	\N	\N
480	Baye Dame Dieng	Baye Dame Dieng	10000	1,85m	Senegal	Defensive Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.915033	2024-01-04 20:23:34.647933	Mittelfeld	1000561	\N	\N
484	Khalil Tamrani	Khalil Tamrani	10000	\N	Morocco	Attacking Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.94183	2024-01-04 20:23:41.980828	Mittelfeld	902813	\N	\N
488	Chemseddine Knaidil	Chemseddine Knaidil	25000	\N	Morocco	Left Winger	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.980202	2024-01-04 20:23:46.367979	Striker	1092073	\N	\N
491	Achraf Gharib	Achraf Gharib	125000	1,80m	Morocco	Centre-Forward	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:21.004199	2024-01-04 20:23:49.694944	Striker	593434	\N	\N
495	Ibrahima Guèye	Ibrahima Guèye	25000	1,86m	Senegal	Centre-Forward	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:21.042005	2024-01-04 20:23:55.123864	Striker	388952	\N	\N
498	Amine Amri	Amine Amri	50000	1,82m	Morocco	Goalkeeper	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.023566	2024-01-04 20:23:59.744713	Goalkeeper	842583	\N	\N
501	Anass Nouader	Anass Nouader	200000	1,82m	Morocco	Centre-Back	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.044939	2024-01-04 20:24:02.978169	Defender	484572	\N	\N
502	Ayoub Kermaoui	Ayoub Kermaoui	10000	1,78m	Morocco	Centre-Back	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.050351	2024-01-04 20:24:05.328433	Defender	721824	\N	\N
506	Hamza Buihamghet	Hamza Buihamghet	175000	\N	Morocco	Defensive Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.080698	2024-01-04 20:24:10.350085	Mittelfeld	846295	\N	\N
509	Mohamed Bahadi	Mohamed Bahadi	10000	\N	Morocco	Mittelfeld	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.100402	2024-01-04 20:24:14.758359	Mittelfeld	967422	\N	\N
513	Zakaria Hamadi	Zakaria Hamadi	150000	1,82m	Italy	Right Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/343949-1611693620.jpg?lm=1	2023-12-19 21:30:23.136926	2024-01-04 20:24:18.502937	Mittelfeld	343949	\N	\N
519	Oussama Radi	Oussama Radi	150000	1,82m	Morocco	Centre-Forward	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.192648	2024-01-04 20:24:26.607671	Striker	967443	\N	\N
522	Akram Kaddouri	Akram Kaddouri	10000	\N	Morocco	Striker	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.213454	2024-01-04 20:24:31.58586	Striker	1175886	\N	\N
293	Katulondi Kati	Katulondi Kati	175000	1,8m	DR Congo	Centre-Forward	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.912103	2024-01-04 20:24:32.543105	Striker	950275	\N	\N
310	Martial Zemba Ikoung	Martial Zemba Ikoung	75000	1,85m	Cameroon	Defensive Midfield	Union Touarga Sportif	https://img.a.transfermarkt.technology/portrait/header/683894-1636124264.JPG?lm=1	2023-12-19 21:30:06.420217	2024-01-04 20:24:35.846267	Mittelfeld	683894	\N	\N
339	Roshdi Wahabi	Roshdi Wahabi	225000	1,78m	Morocco	Defensive Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:09.05228	2024-01-04 20:24:39.605882	Mittelfeld	861366	\N	\N
349	Abdelilah Hafidi	Abdelilah Hafidi	325000	1,69m	Morocco	Attacking Midfield	Moghreb Tétouan	https://img.a.transfermarkt.technology/portrait/header/236850-1515597477.jpg?lm=1	2023-12-19 21:30:09.13753	2024-01-04 20:24:44.119097	Mittelfeld	236850	\N	\N
378	Anass Addaoui	Anass Addaoui	350000	\N	Morocco	Right-Back	Club Athletic Youssoufia Berrechid	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:12.749078	2024-01-04 20:24:49.104933	Defender	974504	\N	\N
400	Soufiane Barrouhou	Soufiane Barrouhou	450000	1,91m	Morocco	Goalkeeper	SC Chabab Mohammedia	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:14.979957	2024-01-04 20:24:54.227603	Goalkeeper	665742	\N	\N
438	Bilal Soufi	Bilal Soufi	150000	\N	Morocco	Centre-Back	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.793999	2024-01-04 20:24:58.646087	Defender	727252	\N	\N
448	Karim Ait Mohamed	Karim Ait Mohamed	250000	\N	Morocco	Central Midfield	Renaissance Zemamra	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:17.871307	2024-01-04 20:25:01.624395	Mittelfeld	593428	\N	\N
476	Achraf Hmaidou	Achraf Hmaidou	175000	1,76m	Morocco	Defensive Midfield	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.884165	2024-01-04 20:25:04.700045	Mittelfeld	805351	\N	\N
487	Abdelouahed Hasty	Abdelouahed Hasty	50000	\N	Morocco	Left Winger	Jeunesse Sportive de Soualem	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:20.97438	2024-01-04 20:25:05.602721	Striker	530407	\N	\N
512	Salaheddine Boukhnifrate	Salaheddine Boukhnifrate	10000	\N	Morocco	Central Midfield	Mouloudia d'Oujda	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:23.131301	2024-01-04 20:25:09.778435	Mittelfeld	1175883	\N	\N
4	Taha Mourid	Taha Mourid	20000	\N	Morocco	Goalkeeper	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/667993-1643125392.jpg?lm=1	2023-12-19 21:29:45.678969	2024-01-04 21:15:07.383534	Goalkeeper	667993	\N	\N
32	Salaheddine Benyachou	Salaheddine Benyachou	225000	1,68m	Morocco	Right Winger	Wydad Casablanca	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:45.927612	2024-01-04 21:15:18.441872	Striker	799742	\N	\N
60	El Mehdi Maouhoub	El Mehdi Maouhoub	375000	\N	Morocco	Centre-Forward	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.38009	2024-01-04 21:15:29.405256	Striker	667974	\N	\N
69	Abdessamad Ammal	Abdessamad Ammal	0	1,90m	Morocco	Centre-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.36696	2024-01-04 21:15:33.235483	Defender	1027422	\N	\N
101	Omar Arjoune	Omar Arjoune	700000	1,78m	Morocco	Defensive Midfield	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/240697-1646818451.jpg?lm=1	2023-12-19 21:29:51.561261	2024-01-04 21:15:46.384193	Mittelfeld	240697	\N	\N
116	Mohamed El Morabit	Mohamed El Morabit	350000	1,79m	Morocco	Right Winger	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/519192-1649064014.png?lm=1	2023-12-19 21:29:51.714824	2024-01-04 21:19:13.448994	Striker	519192	\N	\N
145	Hamza El Moudene	Hamza El Moudene	300000	\N	Morocco	Central Midfield	FUS Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:54.110189	2024-01-04 21:19:25.241262	Mittelfeld	972603	\N	\N
175	Mohamed Lamni	Mohamed Lamni	0	\N	Morocco	Mittelfeld	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.381193	2024-01-04 21:19:37.285513	Mittelfeld	1174674	\N	\N
196	Badereddine Benaachour	Badereddine Benaachour	150000	1,78m	Morocco	Goalkeeper	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:58.512426	2024-01-04 21:19:45.281631	Goalkeeper	239285	\N	\N
232	Abdelghafour Lamirat	Abdelghafour Lamirat	500000	\N	Morocco	Centre-Back	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.018146	2024-01-04 21:20:01.264158	Defender	925782	\N	\N
250	Salaheddine Errahouli	Salaheddine Errahouli	0	\N	Morocco	Attacking Midfield	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.166916	2024-01-04 21:20:08.424473	Mittelfeld	846437	\N	\N
288	Aziz Kaidi	Aziz Kaidi	350000	1,83m	Morocco	Left Winger	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.874395	2024-01-04 21:20:24.746614	Striker	920577	\N	\N
291	Mohsine Moutaouali	Mohsine Moutaouali	175000	1,74m	Morocco	Right Winger	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/s_77385_2068_2012_1.jpg?lm=1	2023-12-19 21:30:03.897109	2024-01-04 21:20:26.058632	Striker	77385	\N	\N
37	Marouane Fakhr	Marouane Fakhr	250000	1,82m	Morocco	Goalkeeper	Raja Club Athletic	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:47.188676	2024-01-04 21:20:36.175105	Goalkeeper	499511	\N	\N
65	Hatim Essaouabi	Hatim Essaouabi	750000	\N	Morocco	Centre-Back	FAR Rabat	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:49.334278	2024-01-04 21:20:42.685065	Defender	800364	\N	\N
97	Hamza El Moussaoui	Hamza El Moussaoui	900000	1,81m	Morocco	Left-Back	Renaissance de Berkane	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:51.52912	2024-01-04 21:20:49.758879	Defender	348772	\N	\N
172	Banfa Sylla	Banfa Sylla	425000	1,83m	Cote d'Ivoire	Defensive Midfield	MAS Fes	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:29:56.349242	2024-01-04 21:21:05.841989	Mittelfeld	192234	\N	\N
195	Gaya Merbah	Gaya Merbah	600000	1,90m	Algeria	Goalkeeper	Ittihad Tanger	https://img.a.transfermarkt.technology/portrait/header/388477-1580670559.jpeg?lm=1	2023-12-19 21:29:58.505716	2024-01-04 21:21:10.882477	Goalkeeper	388477	\N	\N
255	Boniface Haba	Boniface Haba	325000	1,75m	Guinea	Right Winger	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.201068	2024-01-04 21:21:24.90402	Striker	569307	\N	\N
275	Tarik Asstati	Tarik Asstati	500000	1,75m	Morocco	Right-Back	Hassania d'Agadir	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:03.756293	2024-01-04 21:21:38.852769	Defender	507137	\N	\N
258	Brahim El Bahraoui	Brahim El Bahraoui	325000	1,77m	Morocco	Centre-Forward	Olympique Safi	https://img.a.transfermarkt.technology/portrait/header/default.jpg?lm=1	2023-12-19 21:30:01.232045	2024-01-06 09:26:20.410775	Striker	245346	\N	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.schema_migrations (version) FROM stdin;
20231209144011
20231209162543
20231209162807
20231209162956
20231209163040
20231216112143
20231223103955
20231223150439
20231227114706
20231226184917
20231228131045
20240102200924
20240102201056
20240102201147
20240102201339
20240102201423
20240104200250
20240104204622
20240106095400
20240106095558
20240106100705
\.


--
-- Data for Name: team_players; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.team_players (id, team_id, player_id, created_at, updated_at, "position", score) FROM stdin;
4	7	15	2024-01-04 21:25:26.629796	2024-01-04 21:25:26.629796	0	0
5	7	12	2024-01-04 21:25:31.207823	2024-01-04 21:25:31.207823	0	0
6	7	29	2024-01-04 21:25:51.973678	2024-01-04 21:25:51.973678	0	0
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.teams (id, name, valo, league_id, created_at, updated_at, user_id, budget) FROM stdin;
7	team	600000	7	2023-12-23 15:14:43.906827	2024-01-04 21:25:51.956592	1	700000
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: youssefnafaa
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, admin) FROM stdin;
2	seb@lewagon.org	$2a$12$h9r/8ujmChrqIa500dNibO2huJB2i4IjwkwLnaift7KzSwMeG.p02	\N	\N	\N	2023-12-27 11:51:07.227212	2023-12-27 11:51:07.227212	t
1	user1@gmail.com	$2a$12$qmwqjO2fAxd2FLCxm8NHLO9OeTLINpBPTNdxJknQ/518KNjw38eSC	\N	\N	\N	2023-12-19 21:29:43.773398	2023-12-28 17:21:50.625088	t
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 5, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 5, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.games_id_seq', 1, false);


--
-- Name: leagues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.leagues_id_seq', 7, true);


--
-- Name: players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.players_id_seq', 522, true);


--
-- Name: team_players_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.team_players_id_seq', 6, true);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.teams_id_seq', 7, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: youssefnafaa
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: leagues leagues_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.leagues
    ADD CONSTRAINT leagues_pkey PRIMARY KEY (id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: team_players team_players_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.team_players
    ADD CONSTRAINT team_players_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_games_on_league_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_games_on_league_id ON public.games USING btree (league_id);


--
-- Name: index_leagues_on_user_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_leagues_on_user_id ON public.leagues USING btree (user_id);


--
-- Name: index_team_players_on_player_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_team_players_on_player_id ON public.team_players USING btree (player_id);


--
-- Name: index_team_players_on_team_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_team_players_on_team_id ON public.team_players USING btree (team_id);


--
-- Name: index_teams_on_league_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_teams_on_league_id ON public.teams USING btree (league_id);


--
-- Name: index_teams_on_user_id; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE INDEX index_teams_on_user_id ON public.teams USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: youssefnafaa
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: teams fk_rails_45096701b6; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT fk_rails_45096701b6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: games fk_rails_4710c083e1; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_4710c083e1 FOREIGN KEY (visitorteam_id) REFERENCES public.teams(id);


--
-- Name: team_players fk_rails_5389e2fe6f; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.team_players
    ADD CONSTRAINT fk_rails_5389e2fe6f FOREIGN KEY (team_id) REFERENCES public.teams(id);


--
-- Name: leagues fk_rails_7897c307a5; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.leagues
    ADD CONSTRAINT fk_rails_7897c307a5 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: teams fk_rails_99e3bbb19c; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT fk_rails_99e3bbb19c FOREIGN KEY (league_id) REFERENCES public.leagues(id);


--
-- Name: games fk_rails_ab6f464063; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_ab6f464063 FOREIGN KEY (localteam_id) REFERENCES public.teams(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: team_players fk_rails_c3fed964e3; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.team_players
    ADD CONSTRAINT fk_rails_c3fed964e3 FOREIGN KEY (player_id) REFERENCES public.players(id);


--
-- Name: games fk_rails_c7a04448a4; Type: FK CONSTRAINT; Schema: public; Owner: youssefnafaa
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_rails_c7a04448a4 FOREIGN KEY (league_id) REFERENCES public.leagues(id);


--
-- PostgreSQL database dump complete
--

