--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Debian 12.9-1.pgdg110+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO samantha_guzman;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO samantha_guzman;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO samantha_guzman;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO samantha_guzman;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO samantha_guzman;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO samantha_guzman;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO samantha_guzman;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO samantha_guzman;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO samantha_guzman;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO samantha_guzman;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO samantha_guzman;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO samantha_guzman;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO samantha_guzman;

--
-- Name: store_address; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.store_address (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    int_number integer,
    ext_number integer
);


ALTER TABLE public.store_address OWNER TO samantha_guzman;

--
-- Name: store_address_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.store_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_address_id_seq OWNER TO samantha_guzman;

--
-- Name: store_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.store_address_id_seq OWNED BY public.store_address.id;


--
-- Name: store_employee; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.store_employee (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    age integer NOT NULL,
    last_grade character varying(100) NOT NULL,
    branch_id bigint NOT NULL,
    home_address_id bigint NOT NULL
);


ALTER TABLE public.store_employee OWNER TO samantha_guzman;

--
-- Name: store_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.store_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_employee_id_seq OWNER TO samantha_guzman;

--
-- Name: store_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.store_employee_id_seq OWNED BY public.store_employee.id;


--
-- Name: store_employee_job; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.store_employee_job (
    id bigint NOT NULL,
    employee_id bigint NOT NULL,
    job_id bigint NOT NULL
);


ALTER TABLE public.store_employee_job OWNER TO samantha_guzman;

--
-- Name: store_employee_job_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.store_employee_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_employee_job_id_seq OWNER TO samantha_guzman;

--
-- Name: store_employee_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.store_employee_job_id_seq OWNED BY public.store_employee_job.id;


--
-- Name: store_job; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.store_job (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.store_job OWNER TO samantha_guzman;

--
-- Name: store_job_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.store_job_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_job_id_seq OWNER TO samantha_guzman;

--
-- Name: store_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.store_job_id_seq OWNED BY public.store_job.id;


--
-- Name: store_store; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.store_store (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    address text NOT NULL,
    owner character varying(255) NOT NULL
);


ALTER TABLE public.store_store OWNER TO samantha_guzman;

--
-- Name: store_store_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.store_store_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_store_id_seq OWNER TO samantha_guzman;

--
-- Name: store_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.store_store_id_seq OWNED BY public.store_store.id;


--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO samantha_guzman;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO samantha_guzman;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id bigint,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO samantha_guzman;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO samantha_guzman;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.users_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(255) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(255) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.users_user OWNER TO samantha_guzman;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.users_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO samantha_guzman;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.users_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO samantha_guzman;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO samantha_guzman;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: samantha_guzman
--

CREATE TABLE public.users_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO samantha_guzman;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: samantha_guzman
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO samantha_guzman;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: samantha_guzman
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: store_address id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_address ALTER COLUMN id SET DEFAULT nextval('public.store_address_id_seq'::regclass);


--
-- Name: store_employee id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee ALTER COLUMN id SET DEFAULT nextval('public.store_employee_id_seq'::regclass);


--
-- Name: store_employee_job id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee_job ALTER COLUMN id SET DEFAULT nextval('public.store_employee_job_id_seq'::regclass);


--
-- Name: store_job id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_job ALTER COLUMN id SET DEFAULT nextval('public.store_job_id_seq'::regclass);


--
-- Name: store_store id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_store ALTER COLUMN id SET DEFAULT nextval('public.store_store_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add blacklisted token	6	add_blacklistedtoken
22	Can change blacklisted token	6	change_blacklistedtoken
23	Can delete blacklisted token	6	delete_blacklistedtoken
24	Can view blacklisted token	6	view_blacklistedtoken
25	Can add outstanding token	7	add_outstandingtoken
26	Can change outstanding token	7	change_outstandingtoken
27	Can delete outstanding token	7	delete_outstandingtoken
28	Can view outstanding token	7	view_outstandingtoken
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add store	9	add_store
34	Can change store	9	change_store
35	Can delete store	9	delete_store
36	Can view store	9	view_store
37	Can add address	10	add_address
38	Can change address	10	change_address
39	Can delete address	10	delete_address
40	Can view address	10	view_address
41	Can add job	11	add_job
42	Can change job	11	change_job
43	Can delete job	11	delete_job
44	Can view job	11	view_job
45	Can add employee	12	add_employee
46	Can change employee	12	change_employee
47	Can delete employee	12	delete_employee
48	Can view employee	12	view_employee
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	token_blacklist	blacklistedtoken
7	token_blacklist	outstandingtoken
8	users	user
9	store	store
10	store	address
11	store	job
12	store	employee
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-11-24 15:59:08.26763+00
2	contenttypes	0002_remove_content_type_name	2021-11-24 15:59:08.287901+00
3	auth	0001_initial	2021-11-24 15:59:08.356617+00
4	auth	0002_alter_permission_name_max_length	2021-11-24 15:59:08.366256+00
5	auth	0003_alter_user_email_max_length	2021-11-24 15:59:08.378833+00
6	auth	0004_alter_user_username_opts	2021-11-24 15:59:08.389067+00
7	auth	0005_alter_user_last_login_null	2021-11-24 15:59:08.399394+00
8	auth	0006_require_contenttypes_0002	2021-11-24 15:59:08.40343+00
9	auth	0007_alter_validators_add_error_messages	2021-11-24 15:59:08.417051+00
10	auth	0008_alter_user_username_max_length	2021-11-24 15:59:08.427537+00
11	auth	0009_alter_user_last_name_max_length	2021-11-24 15:59:08.437723+00
12	auth	0010_alter_group_name_max_length	2021-11-24 15:59:08.450489+00
13	auth	0011_update_proxy_permissions	2021-11-24 15:59:08.465089+00
14	auth	0012_alter_user_first_name_max_length	2021-11-24 15:59:08.475317+00
15	users	0001_initial	2021-11-24 15:59:08.541915+00
16	admin	0001_initial	2021-11-24 15:59:08.57568+00
17	admin	0002_logentry_remove_auto_add	2021-11-24 15:59:08.590674+00
18	admin	0003_logentry_add_action_flag_choices	2021-11-24 15:59:08.60328+00
19	sessions	0001_initial	2021-11-24 15:59:08.624743+00
20	store	0001_initial	2021-11-24 15:59:08.641091+00
21	store	0002_address_employee_job	2021-11-24 15:59:08.715563+00
22	token_blacklist	0001_initial	2021-11-24 15:59:08.77172+00
23	token_blacklist	0002_outstandingtoken_jti_hex	2021-11-24 15:59:08.786912+00
24	token_blacklist	0003_auto_20171017_2007	2021-11-24 15:59:08.813148+00
25	token_blacklist	0004_auto_20171017_2013	2021-11-24 15:59:08.832003+00
26	token_blacklist	0005_remove_outstandingtoken_jti	2021-11-24 15:59:08.847907+00
27	token_blacklist	0006_auto_20171017_2113	2021-11-24 15:59:08.865441+00
28	token_blacklist	0007_auto_20171017_2214	2021-11-24 15:59:08.905441+00
29	token_blacklist	0008_migrate_to_bigautofield	2021-11-24 15:59:08.97185+00
30	token_blacklist	0010_fix_migrate_to_bigautofield	2021-11-24 15:59:09.006795+00
31	token_blacklist	0011_linearizes_history	2021-11-24 15:59:09.01017+00
32	users	0002_auto_20211119_2301	2021-11-24 15:59:09.047584+00
33	users	0003_alter_user_id	2021-11-24 15:59:09.15474+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: store_address; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.store_address (id, name, state, int_number, ext_number) FROM stdin;
1	Florida	Florida	\N	12
2	Revillagigedo	Guanajuato	123	32
3	Santa Fe	California	23	32
4	Reforma	Mexico City	43	\N
\.


--
-- Data for Name: store_employee; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.store_employee (id, name, age, last_grade, branch_id, home_address_id) FROM stdin;
4	Mariano	28	High School	1	1
5	Maria	32	Bachelor	2	2
6	Hugo	21	Bachelor	3	3
7	Israel	29	Master degree	4	4
\.


--
-- Data for Name: store_employee_job; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.store_employee_job (id, employee_id, job_id) FROM stdin;
5	4	1
6	5	2
7	6	4
8	7	3
\.


--
-- Data for Name: store_job; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.store_job (id, name) FROM stdin;
1	Maintenance
2	Development
3	Monitoring
4	Design
5	Management
\.


--
-- Data for Name: store_store; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.store_store (id, name, address, owner) FROM stdin;
1	Liverpool	Correo Mayor #13	Salinas
2	Liverpool	Correo Mayor #13	Salinas
3	Coppel	Tlalpan #1200	Slim
4	Sanborns	Insurgentes #40	Salins
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2021-11-24 17:13:42.20986+00	1
2	2021-11-24 19:04:25.812449+00	4
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg1OTE4OSwiaWF0IjoxNjM3NzcyNzg5LCJqdGkiOiIxMTNlMGFlYTFjNmY0NGUzODkzZGFhMmY5YWE3MDE5NiIsInVzZXJfaWQiOjF9.UPiQynbFo-0D7B8951219twrlSJLDvUjyN35DQr0ZeQ	2021-11-24 16:53:09.954241+00	2021-11-25 16:53:09+00	1	113e0aea1c6f44e3893daa2f9aa70196
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2MDc1NSwiaWF0IjoxNjM3Nzc0MzU1LCJqdGkiOiIxNjEzZjM5NzZhNjY0YTY4OWQxYTlkOTA0MWU3ZTQ4ZSIsInVzZXJfaWQiOjF9.v20VR4A99OyvbgRGN9ovRtFDWKf8u1IGUE71-gN3T_s	2021-11-24 17:19:15.146835+00	2021-11-25 17:19:15+00	1	1613f3976a664a689d1a9d9041e7e48e
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2MTk0MSwiaWF0IjoxNjM3Nzc1NTQxLCJqdGkiOiI5ODcxMTdkZjM4OTg0ZDBjOWU3ZGJkNmNjY2YyYzI0ZSIsInVzZXJfaWQiOjF9.DPgSPQAeo-MU2vsD3nIk9L-zkElPi54p7VbSOk07D48	2021-11-24 17:39:01.908235+00	2021-11-25 17:39:01+00	1	987117df38984d0c9e7dbd6cccf2c24e
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYzNzg2MjAyNiwiaWF0IjoxNjM3Nzc1NjI2LCJqdGkiOiJlNTEzNDZjZjYyNjQ0MmI1OWY3YzM0Y2YyZGIyYzZlMSIsInVzZXJfaWQiOjF9.61fCTXYf8VAdxUcth8MM8W0HprPyTRDVk3wfPS1ThDY	2021-11-24 17:40:26.249482+00	2021-11-25 17:40:26+00	1	e51346cf626442b59f7c34cf2db2c6e1
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$env3ELxI1zYsR5qcM24fQe$IaM6C/7TBVR7xW3RCETydZzqXlPc6ws31MO8kHtsAKI=	\N	f	u2			e2@e2.com	f	t	2021-11-24 16:51:34.508652+00
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: samantha_guzman
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);


--
-- Name: store_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.store_address_id_seq', 4, true);


--
-- Name: store_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.store_employee_id_seq', 7, true);


--
-- Name: store_employee_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.store_employee_job_id_seq', 8, true);


--
-- Name: store_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.store_job_id_seq', 5, true);


--
-- Name: store_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.store_store_id_seq', 4, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 2, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 4, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: samantha_guzman
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: store_address store_address_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_address
    ADD CONSTRAINT store_address_pkey PRIMARY KEY (id);


--
-- Name: store_employee store_employee_home_address_id_key; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_home_address_id_key UNIQUE (home_address_id);


--
-- Name: store_employee_job store_employee_job_employee_id_job_id_ffaaf70c_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_employee_id_job_id_ffaaf70c_uniq UNIQUE (employee_id, job_id);


--
-- Name: store_employee_job store_employee_job_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_pkey PRIMARY KEY (id);


--
-- Name: store_employee store_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_pkey PRIMARY KEY (id);


--
-- Name: store_job store_job_name_key; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_job
    ADD CONSTRAINT store_job_name_key UNIQUE (name);


--
-- Name: store_job store_job_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_job
    ADD CONSTRAINT store_job_pkey PRIMARY KEY (id);


--
-- Name: store_store store_store_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_store
    ADD CONSTRAINT store_store_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_email_243f6e77_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_243f6e77_uniq UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: store_employee_branch_id_37106d11; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX store_employee_branch_id_37106d11 ON public.store_employee USING btree (branch_id);


--
-- Name: store_employee_job_employee_id_4ba6904a; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX store_employee_job_employee_id_4ba6904a ON public.store_employee_job USING btree (employee_id);


--
-- Name: store_employee_job_job_id_43f375b7; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX store_employee_job_job_id_43f375b7 ON public.store_employee_job USING btree (job_id);


--
-- Name: store_job_name_af58d936_like; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX store_job_name_af58d936_like ON public.store_job USING btree (name varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: samantha_guzman
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee store_employee_branch_id_37106d11_fk_store_store_id; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_branch_id_37106d11_fk_store_store_id FOREIGN KEY (branch_id) REFERENCES public.store_store(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee store_employee_home_address_id_958bfaa2_fk_store_address_id; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee
    ADD CONSTRAINT store_employee_home_address_id_958bfaa2_fk_store_address_id FOREIGN KEY (home_address_id) REFERENCES public.store_address(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee_job store_employee_job_employee_id_4ba6904a_fk_store_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_employee_id_4ba6904a_fk_store_employee_id FOREIGN KEY (employee_id) REFERENCES public.store_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_employee_job store_employee_job_job_id_43f375b7_fk_store_job_id; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.store_employee_job
    ADD CONSTRAINT store_employee_job_job_id_43f375b7_fk_store_job_id FOREIGN KEY (job_id) REFERENCES public.store_job(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_user_id_83bc629a_fk; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_user_id_83bc629a_fk FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: samantha_guzman
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

