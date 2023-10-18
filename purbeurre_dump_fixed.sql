--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: app_data_off_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_data_off_category (
    id bigint NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.app_data_off_category OWNER TO postgres;

--
-- Name: app_data_off_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_data_off_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_data_off_category_id_seq OWNER TO postgres;

--
-- Name: app_data_off_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_data_off_category_id_seq OWNED BY public.app_data_off_category.id;


--
-- Name: app_data_off_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_data_off_product (
    id bigint NOT NULL,
    name character varying(150) NOT NULL,
    brand character varying(150) NOT NULL,
    store character varying(150) NOT NULL,
    nutrition_grade character varying(1) NOT NULL,
    url character varying(150) NOT NULL,
    image_front_url character varying(150) NOT NULL,
    image_nutrition_small_url character varying(200),
    category_id bigint
);


ALTER TABLE public.app_data_off_product OWNER TO postgres;

--
-- Name: app_data_off_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_data_off_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_data_off_product_id_seq OWNER TO postgres;

--
-- Name: app_data_off_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_data_off_product_id_seq OWNED BY public.app_data_off_product.id;


--
-- Name: app_data_off_userproduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.app_data_off_userproduct (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.app_data_off_userproduct OWNER TO postgres;

--
-- Name: app_data_off_userproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.app_data_off_userproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_data_off_userproduct_id_seq OWNER TO postgres;

--
-- Name: app_data_off_userproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.app_data_off_userproduct_id_seq OWNED BY public.app_data_off_userproduct.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_command_debug_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_command_debug_config (
    id bigint NOT NULL,
    app text,
    name text NOT NULL,
    is_enabled boolean NOT NULL
);


ALTER TABLE public.django_command_debug_config OWNER TO postgres;

--
-- Name: django_command_debug_config_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_command_debug_config_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_command_debug_config_id_seq OWNER TO postgres;

--
-- Name: django_command_debug_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_command_debug_config_id_seq OWNED BY public.django_command_debug_config.id;


--
-- Name: django_command_debug_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_command_debug_message (
    id bigint NOT NULL,
    app text,
    name text NOT NULL,
    msg text NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.django_command_debug_message OWNER TO postgres;

--
-- Name: django_command_debug_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_command_debug_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_command_debug_message_id_seq OWNER TO postgres;

--
-- Name: django_command_debug_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_command_debug_message_id_seq OWNED BY public.django_command_debug_message.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: app_data_off_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_category ALTER COLUMN id SET DEFAULT nextval('public.app_data_off_category_id_seq'::regclass);


--
-- Name: app_data_off_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_product ALTER COLUMN id SET DEFAULT nextval('public.app_data_off_product_id_seq'::regclass);


--
-- Name: app_data_off_userproduct id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_userproduct ALTER COLUMN id SET DEFAULT nextval('public.app_data_off_userproduct_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_command_debug_config id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_command_debug_config ALTER COLUMN id SET DEFAULT nextval('public.django_command_debug_config_id_seq'::regclass);


--
-- Name: django_command_debug_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_command_debug_message ALTER COLUMN id SET DEFAULT nextval('public.django_command_debug_message_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: app_data_off_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_data_off_category (id, name) FROM stdin;
1	Aides culinaires
2	Barres chocolat├®es
3	Barres de c├®r├®ales
4	Boissons lact├®es
5	Boissons instantan├®es
6	Bonbons g├®lifi├®s
7	Chocolats
8	Confitures de fraises
9	Confiseries chocolat├®es
10	Cr├¿mes
11	Cr├¿mes glac├®es en pot
12	Cr├¬pes et galettes
13	Eaux de sources
14	Epicerie
15	Escalopes de dinde
16	Jambons secs
17	Jus de fruits ├á base de concentr├®
18	Laits demi-├®cr├®m├®s
19	L├®gumes frais
20	Nouilles
21	Pains d'├®pices
22	Pates-a-tartiner
23	P├ótes de bl├® dur
24	P├ót├®s v├®g├®taux
25	Poissons
26	Rillettes de poissons
27	ravioli
28	Sardines ├á l'huile
29	Sauces pour p├ótes
30	Saumons fum├®s
31	Velout├®s de l├®gumes
32	Viandes
33	Vins rouges
34	Yaourts brass├®s
\.


--
-- Data for Name: app_data_off_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_data_off_product (id, name, brand, store, nutrition_grade, url, image_front_url, image_nutrition_small_url, category_id) FROM stdin;
1	Donuts sucre			e	https://world.openfoodfacts.org/product/0202627016406/donuts-sucre	https://images.openfoodfacts.org/images/products/020/262/701/6406/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/020/262/701/6406/nutrition_fr.15.200.jpg	1
2	MAGGI Bouillon KUB B┼ôuf	MaggiNestl├®,Kub	Carrefour market,Magasins U,leclerc, carrefour.fr	c	https://world.openfoodfacts.org/product/7613033687983/maggi-bouillon-kub-boeuf-magginestle	https://images.openfoodfacts.org/images/products/761/303/368/7983/front_en.184.400.jpg	\N	1
4	Mon cremfix	Dr. OetkerAncel	Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/3027030028658/mon-cremfix-dr-oetkerancel	https://images.openfoodfacts.org/images/products/302/703/002/8658/front_fr.11.400.jpg	\N	1
5	Pate a sucre	Sainte Lucie	carrefour.fr	e	https://world.openfoodfacts.org/product/3162050022344/pate-a-sucre-sainte-lucie	https://images.openfoodfacts.org/images/products/316/205/002/2344/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/316/205/002/2344/nutrition_fr.16.200.jpg	1
6	Kania, So├ƒenbinder Hell	Kania		c	https://world.openfoodfacts.org/product/20271831/kania-sossenbinder-hell	https://images.openfoodfacts.org/images/products/20271831/front_fr.4.400.jpg	\N	1
8	Cr├¿me de coco	Kara	Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/8886303210207/creme-de-coco-kara	https://images.openfoodfacts.org/images/products/888/630/321/0207/front_fr.88.400.jpg	https://images.openfoodfacts.org/images/products/888/630/321/0207/nutrition_fr.90.200.jpg	1
9	Excellence - Chocolat noir orange intense aux amandes effil├®es	LindtLindt Excellence	Magasins U,Auchan,Carrefour,Cora,Franprix,E.leclerc, carrefour.fr	e	https://world.openfoodfacts.org/product/3046920022705/excellence-chocolat-noir-orange-intense-aux-amandes-effilees-lindtlindt-excellence	https://images.openfoodfacts.org/images/products/304/692/002/2705/front_fr.90.400.jpg	https://images.openfoodfacts.org/images/products/304/692/002/2705/nutrition_fr.93.200.jpg	1
11	Creme chantilly			c	https://world.openfoodfacts.org/product/6111180006059/creme-chantilly	https://images.openfoodfacts.org/images/products/611/118/000/6059/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/611/118/000/6059/nutrition_fr.26.200.jpg	1
14		Kinder Bueno		e	https://world.openfoodfacts.org/product/00985535/kinder-bueno	https://images.openfoodfacts.org/images/products/00985535/front_en.18.400.jpg	https://images.openfoodfacts.org/images/products/00985535/nutrition_en.23.200.jpg	2
15	Twix minis barres x19 - 403g	Twix	Carrefour,Magasins U,E.Leclerc,Carefour Market,Auchan, carrefour.fr	b	https://world.openfoodfacts.org/product/5000159442572/twix-minis-barres-x19-403g	https://images.openfoodfacts.org/images/products/500/015/944/2572/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/500/015/944/2572/nutrition_fr.32.200.jpg	2
16	Peanut & Caramel	Milka		e	https://world.openfoodfacts.org/product/7622210786135/peanut-caramel-milka	https://images.openfoodfacts.org/images/products/762/221/078/6135/front_fr.4.400.jpg	\N	2
17	Corny Big Schoko-Banane	Corny		e	https://world.openfoodfacts.org/product/4011800524012/corny-big-schoko-banane	https://images.openfoodfacts.org/images/products/401/180/052/4012/front_de.7.400.jpg	https://images.openfoodfacts.org/images/products/401/180/052/4012/nutrition_de.9.200.jpg	2
18	Snickers crisp	Mars, Snickers		e	https://world.openfoodfacts.org/product/4607065738242/snickers-crisp-mars	https://images.openfoodfacts.org/images/products/460/706/573/8242/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/460/706/573/8242/nutrition_fr.5.200.jpg	2
19	Mars minis	Mars	Magasins U,carrefour.fr	e	https://world.openfoodfacts.org/product/4011100001220/mars-minis	https://images.openfoodfacts.org/images/products/401/110/000/1220/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/401/110/000/1220/nutrition_fr.21.200.jpg	2
20	Barres chocolat noir intense	Gerlin├®a	E.Leclerc,Auchan,Carefour Market,Carefour,Monoprix,Franprix	c	https://world.openfoodfacts.org/product/3175681125896/barres-chocolat-noir-intense-gerlinea	https://images.openfoodfacts.org/images/products/317/568/112/5896/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/317/568/112/5896/nutrition_fr.16.200.jpg	2
21	Mars x10	Mars	Magasins U,Dollar Store	e	https://world.openfoodfacts.org/product/5000159382694/mars-x10	https://images.openfoodfacts.org/images/products/500/015/938/2694/front_sv.35.400.jpg	https://images.openfoodfacts.org/images/products/500/015/938/2694/nutrition_sv.25.200.jpg	2
22	Choco & milk cereal 4x25g	Loacker	E.leclerc	e	https://world.openfoodfacts.org/product/8000380004072/choco-milk-cereal-4x25g-loacker	https://images.openfoodfacts.org/images/products/800/038/000/4072/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/800/038/000/4072/nutrition_fr.14.200.jpg	2
23	Celebrations	Mars	Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/5000159502672/celebrations-mars	https://images.openfoodfacts.org/images/products/500/015/950/2672/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/500/015/950/2672/nutrition_fr.20.200.jpg	2
24	KITKAT barre chocolat├®e 41,5g	Nestl├®		e	https://world.openfoodfacts.org/product/40052397/kit-kat-nestle	https://images.openfoodfacts.org/images/products/40052397/front_en.43.400.jpg	https://images.openfoodfacts.org/images/products/40052397/nutrition_fr.73.200.jpg	2
25	Choco & caramel	Lidl Mister Choc	Lidl	e	https://world.openfoodfacts.org/product/20394851/choco-caramel-lidl-mister-choc	https://images.openfoodfacts.org/images/products/20394851/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/20394851/nutrition_fr.22.200.jpg	2
27	Mars Mini 227G	Mars		e	https://world.openfoodfacts.org/product/5000159474573/mars-mini-227g	https://images.openfoodfacts.org/images/products/500/015/947/4573/front_fr.8.400.jpg	\N	2
28	Bounty x6	Mars chocolat france		e	https://world.openfoodfacts.org/product/5000159461696/bounty-x6-mars-chocolat-france	https://images.openfoodfacts.org/images/products/500/015/946/1696/front_fr.31.400.jpg	\N	2
29	Kit Kat	Nestl├®		e	https://world.openfoodfacts.org/product/40052410/kit-kat-nestle	https://images.openfoodfacts.org/images/products/40052410/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/40052410/nutrition_fr.25.200.jpg	2
30	Snickers Chocolate 1.86 Oz Each ( 48 In a Pack )	Snickers		d	https://world.openfoodfacts.org/product/0040000514251/satisfies-snickers	https://images.openfoodfacts.org/images/products/004/000/051/4251/front_fr.8.400.jpg	\N	2
31	7 Pack Mars	Mars	Delhaize	e	https://world.openfoodfacts.org/product/5000159366144/7-pack-mars	https://images.openfoodfacts.org/images/products/500/015/936/6144/front_fr.15.400.jpg	\N	2
32	Pingui	kinder	HIT	e	https://world.openfoodfacts.org/product/4008400291727/pingui-kinder	https://images.openfoodfacts.org/images/products/400/840/029/1727/front_de.13.400.jpg	https://images.openfoodfacts.org/images/products/400/840/029/1727/nutrition_de.15.200.jpg	2
34	Schocko snack	Milka	Kaufland	e	https://world.openfoodfacts.org/product/9120025839636/schocko-snack-milka	https://images.openfoodfacts.org/images/products/912/002/583/9636/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/912/002/583/9636/nutrition_fr.13.200.jpg	2
35	Twix Chocolate 2 Finger 50G X	Twix		e	https://world.openfoodfacts.org/product/5000159462594/twix-chocolate-2-finger-50g-x	https://images.openfoodfacts.org/images/products/500/015/946/2594/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/500/015/946/2594/nutrition_fr.25.200.jpg	2
36	Snickers White	Snickers		e	https://world.openfoodfacts.org/product/5000159509756/snickers-white	https://images.openfoodfacts.org/images/products/500/015/950/9756/front_fr.4.400.jpg	\N	2
39	NESTLE CHEERIOS BIO Barres de c├®r├®ales 4x22g	Nestl├®, Cheerios bio, Cheerios bio honey, Cheerios	carrefour.fr	c	https://world.openfoodfacts.org/product/5900020036179/nestle-cheerios-bio-barres-de-cereales-4x22g	https://images.openfoodfacts.org/images/products/590/002/003/6179/front_fr.54.400.jpg	https://images.openfoodfacts.org/images/products/590/002/003/6179/nutrition_fr.41.200.jpg	3
40	Barres Pomme­ƒìÄ­ƒìÅ saveur Framboise	Gerlin├®aMon repas	Carrefour bio,Magasins U,Carrefour market,E.leclerc,Lidl,Biocop	c	https://world.openfoodfacts.org/product/3175681779907/barres-pomme%F0%9F%8D%8E%F0%9F%8D%8F-saveur-framboise-gerlineamon-repas	https://images.openfoodfacts.org/images/products/317/568/177/9907/front_fr.50.400.jpg	https://images.openfoodfacts.org/images/products/317/568/177/9907/nutrition_fr.52.200.jpg	3
42	Barres de c├®r├®ales sans gluten	Gerbl├®	Carrefour,Magasins U,Carefour City,Carefour Market, carrefour.fr	d	https://world.openfoodfacts.org/product/3175681084759/barres-de-cereales-sans-gluten-gerble	https://images.openfoodfacts.org/images/products/317/568/108/4759/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/317/568/108/4759/nutrition_fr.29.200.jpg	3
43	muesli chocolat cereales et chocolat	Country Farm	RCIR,Arm├®e de Terre,Air France	c	https://world.openfoodfacts.org/product/3700496306026/muesli-chocolat-cereales-et-chocolat-country-farm	https://images.openfoodfacts.org/images/products/370/049/630/6026/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/370/049/630/6026/nutrition_fr.31.200.jpg	3
44	Nature Valley Crunchy	Nature valley	E.Leclerc,Carefour Market	c	https://world.openfoodfacts.org/product/8410076601445/nature-valley-crunchy	https://images.openfoodfacts.org/images/products/841/007/660/1445/front_fr.49.400.jpg	https://images.openfoodfacts.org/images/products/841/007/660/1445/nutrition_fr.51.200.jpg	3
45	Frusli myrtilles	Jordans	E.leclerc,Auchan,Carrefour,Cora,Franprix,Magasin U,Lidl,Biocop, carrefour.fr	c	https://world.openfoodfacts.org/product/5010477351753/frusli-myrtilles-jordans	https://images.openfoodfacts.org/images/products/501/047/735/1753/front_fr.84.400.jpg	https://images.openfoodfacts.org/images/products/501/047/735/1753/nutrition_fr.68.200.jpg	3
46	Barre muesli fruit rouge	Country Farm		b	https://world.openfoodfacts.org/product/3700496306057/barre-muesli-fruit-rouge-country-farm	https://images.openfoodfacts.org/images/products/370/049/630/6057/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/370/049/630/6057/nutrition_fr.18.200.jpg	3
47	C├®r├®al bar Chocolate banana	BREAK'N BOOST		d	https://world.openfoodfacts.org/product/3494690060142/cereal-bar-chocolate-banana-break-n-boost	https://images.openfoodfacts.org/images/products/349/469/006/0142/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/349/469/006/0142/nutrition_fr.14.200.jpg	3
48	Grany Pommes	LU Mondelez Grany	Carrefour,Leclerc,Auchan,Magasins U, carrefour.fr	c	https://world.openfoodfacts.org/product/3392460510050/grany-pommes-lu-mondelez-grany	https://images.openfoodfacts.org/images/products/339/246/051/0050/front_fr.100.400.jpg	https://images.openfoodfacts.org/images/products/339/246/051/0050/nutrition_fr.113.200.jpg	3
49	Barre de c├®r├®ales frusli fruit rouges	Jordans	E.Leclerc,Auchan,Carefour,Cora, carrefour.fr	c	https://world.openfoodfacts.org/product/5010477352798/barre-de-cereales-frusli-fruit-rouges-jordans	https://images.openfoodfacts.org/images/products/501/047/735/2798/front_fr.97.400.jpg	https://images.openfoodfacts.org/images/products/501/047/735/2798/nutrition_fr.93.200.jpg	3
50	Barre c├®r├®ales compl├¿tes	Nesquick	E.Leclerc,Auchan,Carrefour,Carrefour Market	d	https://world.openfoodfacts.org/product/5900020036193/barre-cereales-completes-nesquick	https://images.openfoodfacts.org/images/products/590/002/003/6193/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/590/002/003/6193/nutrition_fr.20.200.jpg	3
51	Grain├®a	Grain├®a, Marque Rep├¿re	Leclerc	d	https://world.openfoodfacts.org/product/3564706617506/grainea	https://images.openfoodfacts.org/images/products/356/470/661/7506/front_en.14.400.jpg	https://images.openfoodfacts.org/images/products/356/470/661/7506/nutrition_fr.10.200.jpg	3
52	Barres C├®r├®ali├¿res chocolat noir	Leader Price	Leader Price,Franprix	b	https://world.openfoodfacts.org/product/3263851321411/barres-cerealieres-chocolat-noir-leader-price	https://images.openfoodfacts.org/images/products/326/385/132/1411/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/385/132/1411/nutrition_fr.10.200.jpg	3
53	Grain├®a Figue aux 4 c├®r├®ales bl├®, avoine, seigle, riz	Grain├®a Marque Rep├¿re	E.leclerc,Auchan,Carefour	b	https://world.openfoodfacts.org/product/3564706617520/grainea-figue-aux-4-cereales-ble-avoine-seigle-riz-grainea-marque-repere	https://images.openfoodfacts.org/images/products/356/470/661/7520/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/356/470/661/7520/nutrition_fr.26.200.jpg	3
55	Crunchy avoine et miel	Nature ValleyGeneral Mills	E.leclerc,Auchan, carrefour.fr	c	https://world.openfoodfacts.org/product/8410076601131/crunchy-avoine-et-miel-nature-valleygeneral-mills	https://images.openfoodfacts.org/images/products/841/007/660/1131/front_fr.78.400.jpg	https://images.openfoodfacts.org/images/products/841/007/660/1131/nutrition_fr.84.200.jpg	3
57	Barres c├®r├®ales Abricot	Cora	Cora	c	https://world.openfoodfacts.org/product/3257984658575/barres-cereales-abricot-cora	https://images.openfoodfacts.org/images/products/325/798/465/8575/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/325/798/465/8575/nutrition_fr.21.200.jpg	3
58	Sesam Riegel, Eridanous	Eridanous		d	https://world.openfoodfacts.org/product/20152284/sesam-riegel-eridanous	https://images.openfoodfacts.org/images/products/20152284/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/20152284/nutrition_fr.24.200.jpg	3
59	Chocapic	Nestl├® Chocapic		d	https://world.openfoodfacts.org/product/5900020035264/chocapic-nestle-chocapic	https://images.openfoodfacts.org/images/products/590/002/003/5264/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/590/002/003/5264/nutrition_fr.5.200.jpg	3
60	Ayran	SuntatBaktat	carrefour.fr	e	https://world.openfoodfacts.org/product/4040328033096/ayran-suntatbaktat	https://images.openfoodfacts.org/images/products/404/032/803/3096/front_fr.47.400.jpg	https://images.openfoodfacts.org/images/products/404/032/803/3096/nutrition_fr.49.200.jpg	4
61	Candy'Up Go├╗t Chocolat	Candia	carrefour.fr	b	https://world.openfoodfacts.org/product/3176571731289/candy-up-gout-chocolat-candia	https://images.openfoodfacts.org/images/products/317/657/173/1289/front_fr.89.400.jpg	https://images.openfoodfacts.org/images/products/317/657/173/1289/nutrition_fr.71.200.jpg	4
62	Kefir milk	Milk	Esselunga	d	https://world.openfoodfacts.org/product/8034066307003/kefir-milk	https://images.openfoodfacts.org/images/products/803/406/630/7003/front_it.39.400.jpg	https://images.openfoodfacts.org/images/products/803/406/630/7003/nutrition_it.19.200.jpg	4
64	Yaourt ├á boire vanille	Leader Price, Hip'Op	Leader Price	e	https://world.openfoodfacts.org/product/3263859631017/yaourt-a-boire-vanille-leader-price	https://images.openfoodfacts.org/images/products/326/385/963/1017/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/326/385/963/1017/nutrition_fr.41.200.jpg	4
65		Emmi, Emmi Caff├¿ Latte		b	https://world.openfoodfacts.org/product/7610900056262/emmi	https://images.openfoodfacts.org/images/products/761/090/005/6262/front_en.27.400.jpg	\N	4
66	YOP ANANAS P├èCHE C├ëR├ëALES	YoplaitYop gf		b	https://world.openfoodfacts.org/product/3329770063303/yop-ananas-peche-cereales-yoplaityop-gf	https://images.openfoodfacts.org/images/products/332/977/006/3303/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/332/977/006/3303/nutrition_fr.16.200.jpg	4
68		Milsa	Aldi	b	https://world.openfoodfacts.org/product/27041475/milsa	https://images.openfoodfacts.org/images/products/27041475/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/27041475/nutrition_fr.53.200.jpg	4
69	Colombia	Emmi,Republic of blends	Monoprix	b	https://world.openfoodfacts.org/product/7610900240128/colombia-emmi	https://images.openfoodfacts.org/images/products/761/090/024/0128/front_en.45.400.jpg	\N	4
70	Cappuccino republic of blends	Republic of blends	monoprix,monop,auchan,cora,match,hyper u,super u,utile,leclerc, carrefour.fr	b	https://world.openfoodfacts.org/product/7610900227976/cappuccino-republic-of-blends	https://images.openfoodfacts.org/images/products/761/090/022/7976/front_en.31.400.jpg	\N	4
71	Double zero	Republic of blends	monoprix,auchan,super u,hyper u,utile,casino	b	https://world.openfoodfacts.org/product/7610900227952/double-zero-republic-of-blends	https://images.openfoodfacts.org/images/products/761/090/022/7952/front_en.26.400.jpg	\N	4
73	DANAO P├èCHE ABRICOT 1,35L	Danao	carrefour.fr	b	https://world.openfoodfacts.org/product/3661505086554/danao-peche-abricot-1-35l	https://images.openfoodfacts.org/images/products/366/150/508/6554/front_fr.14.400.jpg	\N	4
74	Actimel	ActimelDanone		b	https://world.openfoodfacts.org/product/3033490839239/actimel-actimeldanone	https://images.openfoodfacts.org/images/products/303/349/083/9239/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/303/349/083/9239/nutrition_fr.19.200.jpg	4
75	Yaourt ├á boire ├á la fraise	Carrefour Bio, Carrefour	Carrefour, carrefour.fr	e	https://world.openfoodfacts.org/product/3560071230036/yaourt-a-boire-a-la-fraise-carrefour-bio	https://images.openfoodfacts.org/images/products/356/007/123/0036/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/356/007/123/0036/nutrition_fr.24.200.jpg	4
76	Caff├® Latte Strong Macchiato Unsweetened	Emmi, Emmi Caff├¿ Latte		b	https://world.openfoodfacts.org/product/7610900073900/caffe-latte-strong-macchiato-unsweetened-emmi	https://images.openfoodfacts.org/images/products/761/090/007/3900/front_en.34.400.jpg	\N	4
77	Coffee Latte Cappuccino	Emmi, Emmi Caff├¿ Latte		b	https://world.openfoodfacts.org/product/7610900041640/coffee-latte-cappuccino-emmi	https://images.openfoodfacts.org/images/products/761/090/004/1640/front_en.25.400.jpg	\N	4
78	Lait ferment├® ├á boire	Kokaz		e	https://world.openfoodfacts.org/product/3701002405219/lait-fermente-a-boire-kokaz	https://images.openfoodfacts.org/images/products/370/100/240/5219/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/370/100/240/5219/nutrition_fr.5.200.jpg	4
79	Laben atlas	Laben Atlas		b	https://world.openfoodfacts.org/product/8437005045545/laben-atlas	https://images.openfoodfacts.org/images/products/843/700/504/5545/front_fr.45.400.jpg	https://images.openfoodfacts.org/images/products/843/700/504/5545/nutrition_fr.50.200.jpg	4
80	Hero Nanos Super Yogur Griego Con Cookies	Hero		c	https://world.openfoodfacts.org/product/8410175063267/hero-nanos-super-yogur-griego-con-cookies	https://images.openfoodfacts.org/images/products/841/017/506/3267/front_fr.12.400.jpg	\N	4
83	Lait choco	everyday	Colruyt	b	https://world.openfoodfacts.org/product/5400141105001/lait-choco-everyday	https://images.openfoodfacts.org/images/products/540/014/110/5001/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/540/014/110/5001/nutrition_fr.19.200.jpg	4
85	Cofee Shop gift selection	Coffee collection		e	https://world.openfoodfacts.org/product/1000032966304/coffee-collection	https://images.openfoodfacts.org/images/products/100/003/296/6304/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/100/003/296/6304/nutrition_fr.12.200.jpg	4
87		Nescaf├®	intermarch├®, carrefour.fr	e	https://world.openfoodfacts.org/product/7613036900072/nescafe	https://images.openfoodfacts.org/images/products/761/303/690/0072/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/761/303/690/0072/nutrition_fr.29.200.jpg	5
95	Nescau 2.0 Actigen e 400g	Nestl├®		c	https://world.openfoodfacts.org/product/7891000053508/nescau-2-0-actigen-e-400g-nestle	https://images.openfoodfacts.org/images/products/789/100/005/3508/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/789/100/005/3508/nutrition_fr.30.200.jpg	5
97	Caf├® soluble d├®caf├®in├®	Bellarom Lidl	Lidl	b	https://world.openfoodfacts.org/product/4056489233305/cafe-soluble-decafeine-bellarom-lidl	https://images.openfoodfacts.org/images/products/405/648/923/3305/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/405/648/923/3305/nutrition_fr.18.200.jpg	5
101	Bonbons Bananes & Co			e	https://world.openfoodfacts.org/product/3760169521316/bonbons-bananes-co	https://images.openfoodfacts.org/images/products/376/016/952/1316/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/376/016/952/1316/nutrition_fr.11.200.jpg	6
104	Haribo Goldb├ñren	Haribo		d	https://world.openfoodfacts.org/product/4001686301784/haribo-goldbaren	https://images.openfoodfacts.org/images/products/400/168/630/1784/front_fr.24.400.jpg	\N	6
105	Bonbons fraise	Elodie	Intermarch├®	d	https://world.openfoodfacts.org/product/3250391214273/bonbons-fraise-elodie	https://images.openfoodfacts.org/images/products/325/039/121/4273/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/325/039/121/4273/nutrition_fr.7.200.jpg	6
106	mix ACID	Carrefour	Carrefour, carrefour.fr	d	https://world.openfoodfacts.org/product/3560070361427/mix-acid-carrefour	https://images.openfoodfacts.org/images/products/356/007/036/1427/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/356/007/036/1427/nutrition_fr.7.200.jpg	6
108	Scoubifizz	Lutti	Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/3116740030614/scoubifizz-lutti	https://images.openfoodfacts.org/images/products/311/674/003/0614/front_fr.32.400.jpg	\N	6
109	Scoubidou	Lutti	Cora,Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/3116740027317/scoubidou-lutti	https://images.openfoodfacts.org/images/products/311/674/002/7317/front_fr.39.400.jpg	https://images.openfoodfacts.org/images/products/311/674/002/7317/nutrition_fr.33.200.jpg	6
110	Sac Langue Citrique	Belle france		d	https://world.openfoodfacts.org/product/3258561070872/sac-langue-citrique-belle-france	https://images.openfoodfacts.org/images/products/325/856/107/0872/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/325/856/107/0872/nutrition_fr.10.200.jpg	6
112	Bonbon Haribo Roulette Cola (45 Pi?ces)	Haribo	Action	d	https://world.openfoodfacts.org/product/4001686383025/bonbon-haribo-roulette-cola-45-pi-ces	https://images.openfoodfacts.org/images/products/400/168/638/3025/front_fr.5.400.jpg	\N	6
114		Sans marque		d	https://world.openfoodfacts.org/product/8716100070158/sans-marque	https://images.openfoodfacts.org/images/products/871/610/007/0158/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/871/610/007/0158/nutrition_fr.15.200.jpg	6
115	fair trade	Oxfam		d	https://world.openfoodfacts.org/product/5400164152105/fair-trade-oxfam	https://images.openfoodfacts.org/images/products/540/016/415/2105/front_fr.4.400.jpg	\N	6
116	Lucioles	Fini		d	https://world.openfoodfacts.org/product/8410525116711/lucioles-fini	https://images.openfoodfacts.org/images/products/841/052/511/6711/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/841/052/511/6711/nutrition_fr.42.200.jpg	6
117	Les Schtroumpfs	Haribo		d	https://world.openfoodfacts.org/product/4001686333044/les-schtroumpfs-haribo	https://images.openfoodfacts.org/images/products/400/168/633/3044/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/400/168/633/3044/nutrition_fr.28.200.jpg	6
118	Kiddies Big Box	Haribo		d	https://world.openfoodfacts.org/product/4001686706114/kiddies-big-box-haribo	https://images.openfoodfacts.org/images/products/400/168/670/6114/front_fr.4.400.jpg	\N	6
119	Fini Little Mix Packet	Fini		d	https://world.openfoodfacts.org/product/8410525160554/fini-little-mix-packet	https://images.openfoodfacts.org/images/products/841/052/516/0554/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/841/052/516/0554/nutrition_fr.38.200.jpg	6
121	Petit tapis arc-en-ciel	Haribo		d	https://world.openfoodfacts.org/product/3103220037201/petit-tapis-arc-en-ciel-haribo	https://images.openfoodfacts.org/images/products/310/322/003/7201/front_fr.18.400.jpg	\N	6
127	Bonbon vers piquants	Samia		c	https://world.openfoodfacts.org/product/3276650117017/bonbon-vers-piquants-samia	https://images.openfoodfacts.org/images/products/327/665/011/7017/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/327/665/011/7017/nutrition_fr.23.200.jpg	6
128	Happy cherries	Haribo		d	https://world.openfoodfacts.org/product/4001686309209/happy-cherries-haribo	https://images.openfoodfacts.org/images/products/400/168/630/9209/front_fr.4.400.jpg	\N	6
129	Saure Pommes	Haribo		d	https://world.openfoodfacts.org/product/9002975330138/saure-pommes-haribo	https://images.openfoodfacts.org/images/products/900/297/533/0138/front_fr.4.400.jpg	\N	6
130	Fini roller bonbon	Fini		d	https://world.openfoodfacts.org/product/8410525159039/fini-roller-bonbon	https://images.openfoodfacts.org/images/products/841/052/515/9039/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/841/052/515/9039/nutrition_fr.33.200.jpg	6
132	Chocolat noir Extra 50%	Fin Carr├®		e	https://world.openfoodfacts.org/product/20090043/chocolat-noir-extra-50-fin-carre	https://images.openfoodfacts.org/images/products/20090043/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/20090043/nutrition_fr.35.200.jpg	7
133	NESTLE DESSERT Chocolat au Lait	Nestl├® Dessert,Nestl├®, Tablettes	Leclerc,Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/7613035587793/nestle-dessert-chocolat-au-lait	https://images.openfoodfacts.org/images/products/761/303/558/7793/front_en.94.400.jpg	\N	7
134	Calendrier de l'Avent	Kinder,Ferrero	Carrefour,Match	e	https://world.openfoodfacts.org/product/8000500242131/calendrier-de-l-avent-kinder	https://images.openfoodfacts.org/images/products/800/050/024/2131/front_fr.63.400.jpg	https://images.openfoodfacts.org/images/products/800/050/024/2131/nutrition_fr.55.200.jpg	7
135	Milka Peanut Caramel	Milka	Magasins U,Delhaize,carrefour.fr	e	https://world.openfoodfacts.org/product/7622210604187/milka-peanut-caramel	https://images.openfoodfacts.org/images/products/762/221/060/4187/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/762/221/060/4187/nutrition_fr.8.200.jpg	7
136	Lait du Pays Alpin	fin carr├®		e	https://world.openfoodfacts.org/product/20089849/lait-du-pays-alpin-fin-carre	https://images.openfoodfacts.org/images/products/20089849/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/20089849/nutrition_fr.31.200.jpg	7
137	Chocolat milk lait	Shneider's		e	https://world.openfoodfacts.org/product/0838948008495/chocolat-milk-lait-shneider-s	https://images.openfoodfacts.org/images/products/083/894/800/8495/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/083/894/800/8495/nutrition_fr.21.200.jpg	7
138	Edle Bitter 66%	Hachez		e	https://world.openfoodfacts.org/product/4008155020948/edle-bitter-66-hachez	https://images.openfoodfacts.org/images/products/400/815/502/0948/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/400/815/502/0948/nutrition_fr.5.200.jpg	7
139	Chocolats lapin chocolat lait Esprit de F├¬te	Carrefour	Carrefour	e	https://world.openfoodfacts.org/product/3560070951000/chocolats-lapin-chocolat-lait-esprit-de-fete-carrefour	https://images.openfoodfacts.org/images/products/356/007/095/1000/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/356/007/095/1000/nutrition_fr.19.200.jpg	7
140	merci Finest Selection	Storck		e	https://world.openfoodfacts.org/product/4014400900217/merci-finest-selection-storck	https://images.openfoodfacts.org/images/products/401/440/090/0217/front_en.64.400.jpg	\N	7
141	smarties buttons	NestleSmarties		e	https://world.openfoodfacts.org/product/7613030081821/smarties-buttons-nestlesmarties	https://images.openfoodfacts.org/images/products/761/303/008/1821/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/761/303/008/1821/nutrition_en.14.200.jpg	7
143	┼Æufs de P├óques	Jacquot		e	https://world.openfoodfacts.org/product/3015497068546/oeufs-de-paques-jacquot	https://images.openfoodfacts.org/images/products/301/549/706/8546/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/301/549/706/8546/nutrition_fr.17.200.jpg	7
144	Chocolat au Lait du Pays Alpin	MilkaMondelez International,Mondelez	Carrefour,Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/7622210720566/chocolat-au-lait-du-pays-alpin-milkamondelez-international	https://images.openfoodfacts.org/images/products/762/221/072/0566/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/762/221/072/0566/nutrition_fr.9.200.jpg	7
145	Kinder Surprise Infinimix	KinderFerrero		e	https://world.openfoodfacts.org/product/8000500222706/kinder-surprise-infinimix-kinderferrero	https://images.openfoodfacts.org/images/products/800/050/022/2706/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/800/050/022/2706/nutrition_fr.6.200.jpg	7
146	Lait noisettes enti├¿res	C├┤te dÔÇÖOr	Carrefour,Super U,Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/7622210995063/lait-noisettes-entieres-cote-d-or	https://images.openfoodfacts.org/images/products/762/221/099/5063/front_fr.118.400.jpg	https://images.openfoodfacts.org/images/products/762/221/099/5063/nutrition_fr.120.200.jpg	7
147	Chocolat noir	Eco Eco		e	https://world.openfoodfacts.org/product/3450970024099/chocolat-noir-eco-eco	https://images.openfoodfacts.org/images/products/345/097/002/4099/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/345/097/002/4099/nutrition_fr.23.200.jpg	7
148	Double lait	C├┤te d'Or	Delhaize	e	https://world.openfoodfacts.org/product/7622210825889/double-lait-cote-d-or	https://images.openfoodfacts.org/images/products/762/221/082/5889/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/762/221/082/5889/nutrition_fr.16.200.jpg	7
149	Lapin or chocolat noir 70 % cacao	Lindt	Carrefour	e	https://world.openfoodfacts.org/product/4000539647703/lapin-or-chocolat-noir-70-cacao-lindt	https://images.openfoodfacts.org/images/products/400/053/964/7703/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/400/053/964/7703/nutrition_fr.31.200.jpg	7
151	lapin smarties	SmartiesNestl├®	NETTO	e	https://world.openfoodfacts.org/product/41007563/lapin-smarties-smartiesnestle	https://images.openfoodfacts.org/images/products/41007563/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/41007563/nutrition_fr.19.200.jpg	7
152	Pate de noisette	milka		e	https://world.openfoodfacts.org/product/7622210778833/pate-de-noisette-milka	https://images.openfoodfacts.org/images/products/762/221/077/8833/front_fr.44.400.jpg	https://images.openfoodfacts.org/images/products/762/221/077/8833/nutrition_fr.46.200.jpg	7
153	Excellence - Chocolat Caramel ├á la pointe de sel	Lindt	Magasins U,E.Leclerc,Auchan,Carefour Market,Carefour City,Lidl,Cora,M├®tro, carrefour.fr	e	https://world.openfoodfacts.org/product/3046920022507/excellence-chocolat-caramel-a-la-pointe-de-sel-lindt	https://images.openfoodfacts.org/images/products/304/692/002/2507/front_fr.86.400.jpg	https://images.openfoodfacts.org/images/products/304/692/002/2507/nutrition_fr.92.200.jpg	7
154	Milka au noisette	Milka		e	https://world.openfoodfacts.org/product/7622210588456/milka-au-noisette	https://images.openfoodfacts.org/images/products/762/221/058/8456/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/762/221/058/8456/nutrition_fr.24.200.jpg	7
155	Lindt	Lindt		e	https://world.openfoodfacts.org/product/3046920010788/lindt	https://images.openfoodfacts.org/images/products/304/692/001/0788/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/304/692/001/0788/nutrition_fr.7.200.jpg	7
156	Dark Chocolate Large Bar	Toblerone		e	https://world.openfoodfacts.org/product/7622210496607/dark-chocolate-large-bar-toblerone	https://images.openfoodfacts.org/images/products/762/221/049/6607/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/762/221/049/6607/nutrition_fr.38.200.jpg	7
157	C┼ôur de noisettes praline	Isaura		e	https://world.openfoodfacts.org/product/26049427/coeur-de-noisettes-praline-isaura	https://images.openfoodfacts.org/images/products/26049427/front_en.36.400.jpg	https://images.openfoodfacts.org/images/products/26049427/nutrition_en.40.200.jpg	7
158	Excellence - Chocolat noir orange intense aux amandes effil├®es	LindtLindt Excellence	Magasins U,Auchan,Carrefour,Cora,Franprix,E.leclerc, carrefour.fr	e	https://world.openfoodfacts.org/product/3046920022705/excellence-chocolat-noir-orange-intense-aux-amandes-effilees-lindtlindt-excellence	https://images.openfoodfacts.org/images/products/304/692/002/2705/front_fr.90.400.jpg	https://images.openfoodfacts.org/images/products/304/692/002/2705/nutrition_fr.93.200.jpg	7
159	Dolca chocolate con leche	Nestl├®	nestle	e	https://world.openfoodfacts.org/product/7613036723701/dolca-chocolate-con-leche-nestle	https://images.openfoodfacts.org/images/products/761/303/672/3701/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/761/303/672/3701/nutrition_fr.11.200.jpg	7
161	L'ATELIER Chocolat noir raisin nois.amandes	Nestl├®Les Recettes de l'Atelier	carrefour.fr	d	https://world.openfoodfacts.org/product/7613037986938/l-atelier-chocolat-noir-raisin-nois-amandes-nestleles-recettes-de-l-atelier	https://images.openfoodfacts.org/images/products/761/303/798/6938/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/761/303/798/6938/nutrition_fr.18.200.jpg	7
162	Milka oreo	Oreo		e	https://world.openfoodfacts.org/product/7622210656490/milka-oreo	https://images.openfoodfacts.org/images/products/762/221/065/6490/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/762/221/065/6490/nutrition_fr.8.200.jpg	7
163	Chocolat blanc riz souffl├®	Ambiente		e	https://world.openfoodfacts.org/product/27089279/chocolat-blanc-riz-souffle-ambiente	https://images.openfoodfacts.org/images/products/27089279/front_fr.4.400.jpg	\N	7
164	Les recettes de l'atelier - Noir orange confite	Nestl├®,Les Recettes de l'atelier,Nestl├® dessert	Leclerc,Magasins U,Delhaize,Carrefour market	e	https://world.openfoodfacts.org/product/7613036209052/les-recettes-de-l-atelier-noir-orange-confite-nestle	https://images.openfoodfacts.org/images/products/761/303/620/9052/front_fr.46.400.jpg	https://images.openfoodfacts.org/images/products/761/303/620/9052/nutrition_fr.48.200.jpg	7
165	Chocolat Noir - Amande	L'eclair de Genie		d	https://world.openfoodfacts.org/product/3760098358342/chocolat-noir-amande-l-eclair-de-genie	https://images.openfoodfacts.org/images/products/376/009/835/8342/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/376/009/835/8342/nutrition_fr.11.200.jpg	7
166	Chocolat noir quinoa souffl├®	Carrefour BioCarrefour	Carrefour, carrefour.fr	e	https://world.openfoodfacts.org/product/3560071276591/chocolat-noir-quinoa-souffle-carrefour-biocarrefour	https://images.openfoodfacts.org/images/products/356/007/127/6591/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/356/007/127/6591/nutrition_fr.31.200.jpg	7
167	Chocolate con leche y almendras	Milka		e	https://world.openfoodfacts.org/product/8410172652600/chocolate-con-leche-y-almendras-milka	https://images.openfoodfacts.org/images/products/841/017/265/2600/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/841/017/265/2600/nutrition_fr.23.200.jpg	7
168	Chocolat blanc	Everyday	Colruyt	e	https://world.openfoodfacts.org/product/5400141051896/chocolat-blanc-everyday	https://images.openfoodfacts.org/images/products/540/014/105/1896/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/540/014/105/1896/nutrition_fr.26.200.jpg	7
169	Chocolat dessert Noir	Belle france		e	https://world.openfoodfacts.org/product/3258561060453/chocolat-dessert-noir-belle-france	https://images.openfoodfacts.org/images/products/325/856/106/0453/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/325/856/106/0453/nutrition_fr.18.200.jpg	7
170	Chocolat	Lindt		e	https://world.openfoodfacts.org/product/8003340044187/chocolat-lindt	https://images.openfoodfacts.org/images/products/800/334/004/4187/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/800/334/004/4187/nutrition_fr.17.200.jpg	7
172	Chocolat noir Equateur 85%	J.D. GrossLidl	Lidl	e	https://world.openfoodfacts.org/product/20716653/chocolat-noir-equateur-85-j-d-grosslidl	https://images.openfoodfacts.org/images/products/20716653/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/20716653/nutrition_fr.5.200.jpg	7
173	Milka	Milka		e	https://world.openfoodfacts.org/product/7622210656599/milka	https://images.openfoodfacts.org/images/products/762/221/065/6599/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/762/221/065/6599/nutrition_fr.6.200.jpg	7
174	Chocolat de m├®nage lait c├®r├®ales croustillantes	Top budget	Intermarch├®	e	https://world.openfoodfacts.org/product/3410280023281/chocolat-de-menage-lait-cereales-croustillantes-top-budget	https://images.openfoodfacts.org/images/products/341/028/002/3281/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/341/028/002/3281/nutrition_fr.11.200.jpg	7
175	Choco Lolly	Favorina	Lidl	e	https://world.openfoodfacts.org/product/20224868/choco-lolly-favorina	https://images.openfoodfacts.org/images/products/20224868/front_fr.24.400.jpg	\N	7
176	La chocolaterie V├®g├®tal	Poulain		e	https://world.openfoodfacts.org/product/3664346318129/la-chocolaterie-vegetal-poulain	https://images.openfoodfacts.org/images/products/366/434/631/8129/front_fr.42.400.jpg	https://images.openfoodfacts.org/images/products/366/434/631/8129/nutrition_fr.44.200.jpg	7
177	Blanc dessert	Fin Carr├®		e	https://world.openfoodfacts.org/product/4056489027171/blanc-dessert-fin-carre	https://images.openfoodfacts.org/images/products/405/648/902/7171/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/405/648/902/7171/nutrition_fr.15.200.jpg	7
178	Chocolat noir 85%	Villars		d	https://world.openfoodfacts.org/product/7610036010503/chocolat-noir-85-villars	https://images.openfoodfacts.org/images/products/761/003/601/0503/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/761/003/601/0503/nutrition_fr.26.200.jpg	7
181	Chocolat au Lait Noisettes Enti├¿res	Auchan	Auchan	e	https://world.openfoodfacts.org/product/3245678046975/chocolat-au-lait-noisettes-entieres-auchan	https://images.openfoodfacts.org/images/products/324/567/804/6975/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/324/567/804/6975/nutrition_fr.27.200.jpg	7
182	Chocolat noir 70%	Excelsior		e	https://world.openfoodfacts.org/product/20245382/chocolat-noir-70-excelsior	https://images.openfoodfacts.org/images/products/20245382/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/20245382/nutrition_fr.5.200.jpg	7
185	Oreo Sandwich	Milka		e	https://world.openfoodfacts.org/product/7622210824721/oreo-sandwich-milka	https://images.openfoodfacts.org/images/products/762/221/082/4721/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/762/221/082/4721/nutrition_fr.22.200.jpg	7
187	Chocolat noir fondant 51% de cacao	Perugina		e	https://world.openfoodfacts.org/product/8000300380415/chocolat-noir-fondant-51-de-cacao-perugina	https://images.openfoodfacts.org/images/products/800/030/038/0415/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/800/030/038/0415/nutrition_fr.16.200.jpg	7
188	NESTLE DESSERT chocolat noir	Nestl├®Nestl├® dessert		e	https://world.openfoodfacts.org/product/7613036245210/nestle-dessert-chocolat-noir-nestlenestle-dessert	https://images.openfoodfacts.org/images/products/761/303/624/5210/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/761/303/624/5210/nutrition_fr.7.200.jpg	7
189	Chocolat	Favorinalidl		e	https://world.openfoodfacts.org/product/4056489182788/chocolat-favorinalidl	https://images.openfoodfacts.org/images/products/405/648/918/2788/front_en.9.400.jpg	https://images.openfoodfacts.org/images/products/405/648/918/2788/nutrition_fr.15.200.jpg	7
190	Zero break duo			d	https://world.openfoodfacts.org/product/5600499544372/zero-break-duo	https://images.openfoodfacts.org/images/products/560/049/954/4372/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/560/049/954/4372/nutrition_fr.20.200.jpg	7
192	Nestle extrafino con cremoso relleno La Lechera	Nestl├®		e	https://world.openfoodfacts.org/product/7613035310513/nestle-extrafino-con-cremoso-relleno-la-lechera	https://images.openfoodfacts.org/images/products/761/303/531/0513/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/761/303/531/0513/nutrition_fr.9.200.jpg	7
194	confiture fraises­ƒìô & fraises­ƒìô des bois	Bonne Maman	Intermach├®,Magasins U,carrefour.fr,E.leclerc,Auchan,Cora,Carrefour Market,Carrefour City	d	https://world.openfoodfacts.org/product/3045320082074/confiture-fraises%F0%9F%8D%93-fraises%F0%9F%8D%93-des-bois-bonne-maman	https://images.openfoodfacts.org/images/products/304/532/008/2074/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/304/532/008/2074/nutrition_fr.35.200.jpg	8
195	Confiture Fraise du Sud-Ouest	L├®once Blanc	E.Leclerc,Auchan,Carefour,Carefour Market,Carefour City, carrefour.fr	c	https://world.openfoodfacts.org/product/3174061051268/confiture-fraise-du-sud-ouest-leonce-blanc	https://images.openfoodfacts.org/images/products/317/406/105/1268/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/317/406/105/1268/nutrition_fr.27.200.jpg	8
196	Confiture De Fraises, 450 Grammes, Marque Materne	Materne	Delhaize	d	https://world.openfoodfacts.org/product/5410046000011/confiture-de-fraises-450-grammes-marque-materne	https://images.openfoodfacts.org/images/products/541/004/600/0011/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/541/004/600/0011/nutrition_fr.25.200.jpg	8
197	Confiture de fraises	Boni		d	https://world.openfoodfacts.org/product/5400141322484/confiture-de-fraises-boni	https://images.openfoodfacts.org/images/products/540/014/132/2484/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/540/014/132/2484/nutrition_fr.5.200.jpg	8
198	El Baraka Confiture De Fraises 430 G	El Baraka		d	https://world.openfoodfacts.org/product/6111184001074/el-baraka-confiture-de-fraises-430-g	https://images.openfoodfacts.org/images/products/611/118/400/1074/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/611/118/400/1074/nutrition_fr.21.200.jpg	8
199	Twix minis barres x19 - 403g	Twix	Carrefour,Magasins U,E.Leclerc,Carefour Market,Auchan, carrefour.fr	b	https://world.openfoodfacts.org/product/5000159442572/twix-minis-barres-x19-403g	https://images.openfoodfacts.org/images/products/500/015/944/2572/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/500/015/944/2572/nutrition_fr.32.200.jpg	9
200	Calendrier de l'Avent	Kinder,Ferrero	Carrefour,Match	e	https://world.openfoodfacts.org/product/8000500242131/calendrier-de-l-avent-kinder	https://images.openfoodfacts.org/images/products/800/050/024/2131/front_fr.63.400.jpg	https://images.openfoodfacts.org/images/products/800/050/024/2131/nutrition_fr.55.200.jpg	9
201	SMARTIES	Nestl├®	leclerc,G20	e	https://world.openfoodfacts.org/product/40345192/smarties-nestle	https://images.openfoodfacts.org/images/products/40345192/front.14.400.jpg	https://images.openfoodfacts.org/images/products/40345192/nutrition.16.200.jpg	9
202	M&M's Peanut	M&M's		e	https://world.openfoodfacts.org/product/4011100001305/m-m-s-peanut	https://images.openfoodfacts.org/images/products/401/110/000/1305/front.3.400.jpg	\N	9
203	Smarties Mini	Nestle		e	https://world.openfoodfacts.org/product/7613035312111/smarties-mini-nestle	https://images.openfoodfacts.org/images/products/761/303/531/2111/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/303/531/2111/nutrition_fr.13.200.jpg	9
204	M&m's crispy	M&M's	Delhaize	e	https://world.openfoodfacts.org/product/5000159472081/m-m-s-crispy	https://images.openfoodfacts.org/images/products/500/015/947/2081/front_fr.43.400.jpg	https://images.openfoodfacts.org/images/products/500/015/947/2081/nutrition_fr.51.200.jpg	9
205	Belgische pralinen	Excelsior		e	https://world.openfoodfacts.org/product/20247195/belgische-pralinen-excelsior	https://images.openfoodfacts.org/images/products/20247195/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/20247195/nutrition_fr.5.200.jpg	9
206	M&M's Peanut 100g	M&M's		c	https://world.openfoodfacts.org/product/4011100046283/m-m-s-peanut-100g	https://images.openfoodfacts.org/images/products/401/110/004/6283/front_en.64.400.jpg	https://images.openfoodfacts.org/images/products/401/110/004/6283/nutrition_fr.51.200.jpg	9
207	merci Finest Selection	Storck		e	https://world.openfoodfacts.org/product/4014400900217/merci-finest-selection-storck	https://images.openfoodfacts.org/images/products/401/440/090/0217/front_en.64.400.jpg	\N	9
208	rocher	Ferrero		e	https://world.openfoodfacts.org/product/06202945/rocher-ferrero	https://images.openfoodfacts.org/images/products/06202945/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/06202945/nutrition_fr.8.200.jpg	9
209	Cacahu├¿te Dark chocolat	Leclec,Netto		e	https://world.openfoodfacts.org/product/8437000889489/cacahuete-dark-chocolat-leclec	https://images.openfoodfacts.org/images/products/843/700/088/9489/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/843/700/088/9489/nutrition_fr.14.200.jpg	9
210	Peanut & Caramel	Milka		e	https://world.openfoodfacts.org/product/7622210786135/peanut-caramel-milka	https://images.openfoodfacts.org/images/products/762/221/078/6135/front_fr.4.400.jpg	\N	9
211	Corny Big Schoko-Banane	Corny		e	https://world.openfoodfacts.org/product/4011800524012/corny-big-schoko-banane	https://images.openfoodfacts.org/images/products/401/180/052/4012/front_de.7.400.jpg	https://images.openfoodfacts.org/images/products/401/180/052/4012/nutrition_de.9.200.jpg	9
212	Snickers crisp	Mars, Snickers		e	https://world.openfoodfacts.org/product/4607065738242/snickers-crisp-mars	https://images.openfoodfacts.org/images/products/460/706/573/8242/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/460/706/573/8242/nutrition_fr.5.200.jpg	9
213	Milka Choco­ƒì½ Brownie	MilkaMondelez International	Intermarch├®,E.Leclerc,Auchan	e	https://world.openfoodfacts.org/product/7622210788573/milka-choco%F0%9F%8D%AB-brownie-milkamondelez-international	https://images.openfoodfacts.org/images/products/762/221/078/8573/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/762/221/078/8573/nutrition_fr.13.200.jpg	9
214	Mars minis	Mars	Magasins U,carrefour.fr	e	https://world.openfoodfacts.org/product/4011100001220/mars-minis	https://images.openfoodfacts.org/images/products/401/110/000/1220/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/401/110/000/1220/nutrition_fr.21.200.jpg	9
215	Lindt connaisseurs	Lindt	Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/3046920074018/lindt-connaisseurs	https://images.openfoodfacts.org/images/products/304/692/007/4018/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/304/692/007/4018/nutrition_fr.28.200.jpg	9
216	Barres chocolat noir intense	Gerlin├®a	E.Leclerc,Auchan,Carefour Market,Carefour,Monoprix,Franprix	c	https://world.openfoodfacts.org/product/3175681125896/barres-chocolat-noir-intense-gerlinea	https://images.openfoodfacts.org/images/products/317/568/112/5896/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/317/568/112/5896/nutrition_fr.16.200.jpg	9
218	Champs-├ëlys├®es noir	Lindt	Casino,Carefour Market,E.Leclerc,Auchan,Carefour	e	https://world.openfoodfacts.org/product/3046920002622/champs-elysees-noir-lindt	https://images.openfoodfacts.org/images/products/304/692/000/2622/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/304/692/000/2622/nutrition_fr.7.200.jpg	9
219	Mars x10	Mars	Magasins U,Dollar Store	e	https://world.openfoodfacts.org/product/5000159382694/mars-x10	https://images.openfoodfacts.org/images/products/500/015/938/2694/front_sv.35.400.jpg	https://images.openfoodfacts.org/images/products/500/015/938/2694/nutrition_sv.25.200.jpg	9
221	Celebrations Bouteille 312g	Celebrations		e	https://world.openfoodfacts.org/product/5000159500753/celebrations-bouteille-312g	https://images.openfoodfacts.org/images/products/500/015/950/0753/front_de.94.400.jpg	https://images.openfoodfacts.org/images/products/500/015/950/0753/nutrition_de.96.200.jpg	9
222	Choco & milk cereal 4x25g	Loacker	E.leclerc	e	https://world.openfoodfacts.org/product/8000380004072/choco-milk-cereal-4x25g-loacker	https://images.openfoodfacts.org/images/products/800/038/000/4072/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/800/038/000/4072/nutrition_fr.14.200.jpg	9
224	Chocolat au lait avec raisins secs	Choco Moment		e	https://world.openfoodfacts.org/product/8711299020090/chocolat-au-lait-avec-raisins-secs-choco-moment	https://images.openfoodfacts.org/images/products/871/129/902/0090/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/871/129/902/0090/nutrition_fr.11.200.jpg	9
225	Escargots Pralin├®s	Jacquot	carrefour	e	https://world.openfoodfacts.org/product/3015497034701/escargots-pralines-jacquot	https://images.openfoodfacts.org/images/products/301/549/703/4701/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/301/549/703/4701/nutrition_fr.13.200.jpg	9
226	Celebrations	Mars	Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/5000159502672/celebrations-mars	https://images.openfoodfacts.org/images/products/500/015/950/2672/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/500/015/950/2672/nutrition_fr.20.200.jpg	9
227	Quality Street chocolates & toffees	Nestl├®	iD Stock	e	https://world.openfoodfacts.org/product/50251100/quality-street-chocolates-toffees-nestle	https://images.openfoodfacts.org/images/products/50251100/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/50251100/nutrition_fr.21.200.jpg	9
228	Reese's round	Reese's		e	https://world.openfoodfacts.org/product/5060250343765/reese-s-round	https://images.openfoodfacts.org/images/products/506/025/034/3765/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/506/025/034/3765/nutrition_fr.33.200.jpg	9
230	M&M's peanut	Mars	Super U,Aldi,Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/5000159492737/m-m-s-peanut-mars	https://images.openfoodfacts.org/images/products/500/015/949/2737/front_en.89.400.jpg	https://images.openfoodfacts.org/images/products/500/015/949/2737/nutrition_fr.83.200.jpg	9
231	KITKAT barre chocolat├®e 41,5g	Nestl├®		e	https://world.openfoodfacts.org/product/40052397/kit-kat-nestle	https://images.openfoodfacts.org/images/products/40052397/front_en.43.400.jpg	https://images.openfoodfacts.org/images/products/40052397/nutrition_fr.73.200.jpg	9
232	Kiddies Big Box	Haribo		d	https://world.openfoodfacts.org/product/4001686706114/kiddies-big-box-haribo	https://images.openfoodfacts.org/images/products/400/168/670/6114/front_fr.4.400.jpg	\N	9
233	Fini Little Mix Packet	Fini		d	https://world.openfoodfacts.org/product/8410525160554/fini-little-mix-packet	https://images.openfoodfacts.org/images/products/841/052/516/0554/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/841/052/516/0554/nutrition_fr.38.200.jpg	9
234	Choco & caramel	Lidl Mister Choc	Lidl	e	https://world.openfoodfacts.org/product/20394851/choco-caramel-lidl-mister-choc	https://images.openfoodfacts.org/images/products/20394851/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/20394851/nutrition_fr.22.200.jpg	9
235	Milka moments	Milka	carrefour.fr	e	https://world.openfoodfacts.org/product/7622210653642/milka-moments	https://images.openfoodfacts.org/images/products/762/221/065/3642/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/762/221/065/3642/nutrition_fr.20.200.jpg	9
238	Chocolat assortment		Aldi	e	https://world.openfoodfacts.org/product/29040537/chocolat-assortment	https://images.openfoodfacts.org/images/products/29040537/front_fr.11.400.jpg	\N	9
239	MERCI Petits	Merci		e	https://world.openfoodfacts.org/product/4014400927436/merci-petits	https://images.openfoodfacts.org/images/products/401/440/092/7436/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/401/440/092/7436/nutrition_fr.5.200.jpg	9
241	Rochers au pralin├®	Valdelice		e	https://world.openfoodfacts.org/product/3588400251965/rochers-au-praline-valdelice	https://images.openfoodfacts.org/images/products/358/840/025/1965/front_en.4.400.jpg	https://images.openfoodfacts.org/images/products/358/840/025/1965/nutrition_fr.12.200.jpg	9
244	Flaked Truffles 100 g	belvas	Bio-Planet	e	https://world.openfoodfacts.org/product/5425007880397/flaked-truffles-100-g-belvas	https://images.openfoodfacts.org/images/products/542/500/788/0397/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/542/500/788/0397/nutrition_en.7.200.jpg	9
246	Mars Mini 227G	Mars		e	https://world.openfoodfacts.org/product/5000159474573/mars-mini-227g	https://images.openfoodfacts.org/images/products/500/015/947/4573/front_fr.8.400.jpg	\N	9
247	Pralines fourr├®es aux cerises ├á l'alcool	Boni		e	https://world.openfoodfacts.org/product/5400141276954/pralines-fourrees-aux-cerises-a-l-alcool-boni	https://images.openfoodfacts.org/images/products/540/014/127/6954/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/540/014/127/6954/nutrition_fr.11.200.jpg	9
248	Bounty x6	Mars chocolat france		e	https://world.openfoodfacts.org/product/5000159461696/bounty-x6-mars-chocolat-france	https://images.openfoodfacts.org/images/products/500/015/946/1696/front_fr.31.400.jpg	\N	9
249	Peanut butter cups	Reese's		e	https://world.openfoodfacts.org/product/0034000441099/peanut-butter-cups-reese-s	https://images.openfoodfacts.org/images/products/003/400/044/1099/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/003/400/044/1099/nutrition_fr.35.200.jpg	9
250	Smarties	Nestl├®		e	https://world.openfoodfacts.org/product/40345123/smarties-nestle	https://images.openfoodfacts.org/images/products/40345123/front_fr.3.400.jpg	\N	9
251	Kit Kat	Nestl├®		e	https://world.openfoodfacts.org/product/40052410/kit-kat-nestle	https://images.openfoodfacts.org/images/products/40052410/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/40052410/nutrition_fr.25.200.jpg	9
253	Snickers Chocolate 1.86 Oz Each ( 48 In a Pack )	Snickers		d	https://world.openfoodfacts.org/product/0040000514251/satisfies-snickers	https://images.openfoodfacts.org/images/products/004/000/051/4251/front_fr.8.400.jpg	\N	9
254	7 Pack Mars	Mars	Delhaize	e	https://world.openfoodfacts.org/product/5000159366144/7-pack-mars	https://images.openfoodfacts.org/images/products/500/015/936/6144/front_fr.15.400.jpg	\N	9
255	Pingui	kinder	HIT	e	https://world.openfoodfacts.org/product/4008400291727/pingui-kinder	https://images.openfoodfacts.org/images/products/400/840/029/1727/front_de.13.400.jpg	https://images.openfoodfacts.org/images/products/400/840/029/1727/nutrition_de.15.200.jpg	9
258	Chamallows Barbecue	Haribo		d	https://world.openfoodfacts.org/product/5410358459187/chamallows-barbecue-haribo	https://images.openfoodfacts.org/images/products/541/035/845/9187/front_fr.67.400.jpg	https://images.openfoodfacts.org/images/products/541/035/845/9187/nutrition_fr.69.200.jpg	9
259	Haribo chamallows	Haribo		d	https://world.openfoodfacts.org/product/5410358452027/haribo-chamallows	https://images.openfoodfacts.org/images/products/541/035/845/2027/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/541/035/845/2027/nutrition_fr.17.200.jpg	9
260	Pralin├®s Noir	Lindt		e	https://world.openfoodfacts.org/product/4000539103148/pralines-noir-lindt	https://images.openfoodfacts.org/images/products/400/053/910/3148/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/400/053/910/3148/nutrition_fr.9.200.jpg	9
261	Schocko snack	Milka	Kaufland	e	https://world.openfoodfacts.org/product/9120025839636/schocko-snack-milka	https://images.openfoodfacts.org/images/products/912/002/583/9636/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/912/002/583/9636/nutrition_fr.13.200.jpg	9
262	Bo├«te de chocolats Champs-Elys├®es Diamant	Lindt		e	https://world.openfoodfacts.org/product/3046920011136/boite-de-chocolats-champs-elysees-diamant-lindt	https://images.openfoodfacts.org/images/products/304/692/001/1136/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/304/692/001/1136/nutrition_fr.5.200.jpg	9
263	Milka pralines coeur tendre noisette	Milka		e	https://world.openfoodfacts.org/product/7622201444983/milka-pralines-coeur-tendre-noisette	https://images.openfoodfacts.org/images/products/762/220/144/4983/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/762/220/144/4983/nutrition_fr.5.200.jpg	9
264	Twix Chocolate 2 Finger 50G X	Twix		e	https://world.openfoodfacts.org/product/5000159462594/twix-chocolate-2-finger-50g-x	https://images.openfoodfacts.org/images/products/500/015/946/2594/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/500/015/946/2594/nutrition_fr.25.200.jpg	9
265	Snickers White	Snickers		e	https://world.openfoodfacts.org/product/5000159509756/snickers-white	https://images.openfoodfacts.org/images/products/500/015/950/9756/front_fr.4.400.jpg	\N	9
266	Pastilles De Chocolat (arachides)	M&M's		e	https://world.openfoodfacts.org/product/0058496812324/pastilles-de-chocolat-arachides-m-m-s	https://images.openfoodfacts.org/images/products/005/849/681/2324/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/005/849/681/2324/nutrition_fr.12.200.jpg	9
267	Chocolat assortis	Chevaliers d'Argouges		e	https://world.openfoodfacts.org/product/3421371523627/chocolat-assortis-chevaliers-d-argouges	https://images.openfoodfacts.org/images/products/342/137/152/3627/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/342/137/152/3627/nutrition_fr.11.200.jpg	9
268	Lindt	LindorLindt & Spr├╝ngli		e	https://world.openfoodfacts.org/product/7610400068529/lindt-lindorlindt-sprungli	https://images.openfoodfacts.org/images/products/761/040/006/8529/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/040/006/8529/nutrition_fr.5.200.jpg	9
269	Rochers pralin├®s lait noir	LidlFavorina		e	https://world.openfoodfacts.org/product/4056489138860/rochers-pralines-lait-noir-lidlfavorina	https://images.openfoodfacts.org/images/products/405/648/913/8860/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/405/648/913/8860/nutrition_fr.5.200.jpg	9
271	M&M's mix	M&M's		e	https://world.openfoodfacts.org/product/5900951259869/m-m-s-mix	https://images.openfoodfacts.org/images/products/590/095/125/9869/front_fr.4.400.jpg	\N	9
274	Melbon pralines			e	https://world.openfoodfacts.org/product/8719979201166/melbon-pralines	https://images.openfoodfacts.org/images/products/871/997/920/1166/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/871/997/920/1166/nutrition_fr.5.200.jpg	9
276	Smarties mini	Nestl├®		e	https://world.openfoodfacts.org/product/7613032195953/smarties-mini-nestle	https://images.openfoodfacts.org/images/products/761/303/219/5953/front_fr.8.400.jpg	\N	9
277	Chocolats fins	Valrhona		e	https://world.openfoodfacts.org/product/3395328234662/chocolats-fins-valrhona	https://images.openfoodfacts.org/images/products/339/532/823/4662/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/339/532/823/4662/nutrition_fr.5.200.jpg	9
278	Debic Profi schlagsahne	Debic		d	https://world.openfoodfacts.org/product/5410488025184/debic-profi-schlagsahne	https://images.openfoodfacts.org/images/products/541/048/802/5184/front_fr.7.400.jpg	\N	10
279	Cr├¿me fra├«che l├®g├¿re ├®paisse	Rochambeau	Metro	d	https://world.openfoodfacts.org/product/3439496002323/creme-fraiche-legere-epaisse-rochambeau	https://images.openfoodfacts.org/images/products/343/949/600/2323/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/343/949/600/2323/nutrition_fr.10.200.jpg	10
280	Creme fraiche 30%mg		carrefour.fr	d	https://world.openfoodfacts.org/product/3265776108153/creme-fraiche-30-mg	https://images.openfoodfacts.org/images/products/326/577/610/8153/front_fr.43.400.jpg	https://images.openfoodfacts.org/images/products/326/577/610/8153/nutrition_fr.36.200.jpg	10
281		Nos R├®gions ont du Talent	Leclerc	d	https://world.openfoodfacts.org/product/3564709000008/creme-fraiche-d-isigny-nos-regions-ont-du-talent	https://images.openfoodfacts.org/images/products/356/470/900/0008/front.9.400.jpg	\N	10
282	Cr├¿me fra├«che ├®paisse enti├¿re	Paturages		d	https://world.openfoodfacts.org/product/3250392849412/creme-fraiche-epaisse-entiere-paturages	https://images.openfoodfacts.org/images/products/325/039/284/9412/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/325/039/284/9412/nutrition_fr.17.200.jpg	10
283	Cr├¿me fra├«che ├®paisse	Leader Price	Leader Price	d	https://world.openfoodfacts.org/product/3263859750428/creme-fraiche-epaisse-leader-price	https://images.openfoodfacts.org/images/products/326/385/975/0428/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/385/975/0428/nutrition_en.18.200.jpg	10
284	Cr├¿me l├®g├¿re semi ├®paisse	Bridelice	Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/3155251205388/creme-legere-semi-epaisse-bridelice	https://images.openfoodfacts.org/images/products/315/525/120/5388/front_fr.333.400.jpg	https://images.openfoodfacts.org/images/products/315/525/120/5388/nutrition_fr.338.200.jpg	10
285	Cr├¿me fra├«che ├®paisse	PomonaPassionFroid		d	https://world.openfoodfacts.org/product/3061432116391/creme-fraiche-epaisse-pomonapassionfroid	https://images.openfoodfacts.org/images/products/306/143/211/6391/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/306/143/211/6391/nutrition_fr.5.200.jpg	10
287	Cr├¿me fluide enti├¿re Fleurette	Leader Price	Leader Price	d	https://world.openfoodfacts.org/product/3228310005387/creme-fluide-entiere-fleurette-leader-price	https://images.openfoodfacts.org/images/products/322/831/000/5387/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/322/831/000/5387/nutrition_fr.17.200.jpg	10
517	Ketchup 12X570G (500ML) Pet	Baktat		d	https://world.openfoodfacts.org/product/8690804348419/ketchup-12x570g-500ml-pet-baktat	https://images.openfoodfacts.org/images/products/869/080/434/8419/front_fr.4.400.jpg	\N	14
288	Cr├¿me sucr├®e enti├¿re vanillee	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710335503/creme-sucree-entiere-vanillee-auchan	https://images.openfoodfacts.org/images/products/359/671/033/5503/front_fr.42.400.jpg	https://images.openfoodfacts.org/images/products/359/671/033/5503/nutrition_fr.44.200.jpg	10
289	Glace Rhum-Raisins	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3254563259994/glace-rhum-raisins-auchan	https://images.openfoodfacts.org/images/products/325/456/325/9994/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/325/456/325/9994/nutrition_fr.25.200.jpg	11
290	Les in├®dits - 6 c├┤nes citron­ƒìï	Picard	Picard	d	https://world.openfoodfacts.org/product/3270160731206/les-inedits-6-cones-citron%F0%9F%8D%8B-picard	https://images.openfoodfacts.org/images/products/327/016/073/1206/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/327/016/073/1206/nutrition_fr.10.200.jpg	11
291	Cr├¿me glac├®e H├ñagen-dazs ├á la p├¬che et framboise	General MillsH├ñagen-Dazs	Auchan	d	https://world.openfoodfacts.org/product/3415587141713/creme-glacee-haagen-dazs-a-la-peche-et-framboise-general-millshaagen-dazs	https://images.openfoodfacts.org/images/products/341/558/714/1713/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/341/558/714/1713/nutrition_fr.11.200.jpg	11
292	Cr├¿me glac├®e Vanille Macadamia	D├®lice d'un instant	Picard	d	https://world.openfoodfacts.org/product/3270160760763/creme-glacee-vanille-macadamia-delice-d-un-instant	https://images.openfoodfacts.org/images/products/327/016/076/0763/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/327/016/076/0763/nutrition_fr.10.200.jpg	11
293	Salted caramel	H├ñagen-Dazs	colruyt, carrefour.fr	e	https://world.openfoodfacts.org/product/3415581114713/salted-caramel-haagen-dazs	https://images.openfoodfacts.org/images/products/341/558/111/4713/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/341/558/111/4713/nutrition_fr.35.200.jpg	11
296	Batx3 Vanille Choc-blc Bf,	Belle France		e	https://world.openfoodfacts.org/product/3258561410173/batx3-vanille-choc-blc-bf-belle-france	https://images.openfoodfacts.org/images/products/325/856/141/0173/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/856/141/0173/nutrition_fr.16.200.jpg	11
298	Cr├¬pes, ar├┤me vanille	saveurs de nos r├®gions	Lidl	c	https://world.openfoodfacts.org/product/20281274/crepes-arome-vanille-saveurs-de-nos-regions	https://images.openfoodfacts.org/images/products/20281274/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/20281274/nutrition_fr.36.200.jpg	12
302	Sidi Ali	Eaux Min├®rales d'Oulmes		a	https://world.openfoodfacts.org/product/6111035000027/sidi-ali-eaux-minerales-d-oulmes	https://images.openfoodfacts.org/images/products/611/103/500/0027/front.3.400.jpg	https://images.openfoodfacts.org/images/products/611/103/500/0027/nutrition_fr.21.200.jpg	13
303	Mineral water	Saskia		a	https://world.openfoodfacts.org/product/20022969/mineral-water-saskia	https://images.openfoodfacts.org/images/products/20022969/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/20022969/nutrition_fr.32.200.jpg	13
306	Volviert Leichtperlig	Volvic		b	https://world.openfoodfacts.org/product/3057640222108/volviert-leichtperlig-volvic	https://images.openfoodfacts.org/images/products/305/764/022/2108/front_de.20.400.jpg	\N	13
307	volvic	VolvicDanone, volvic	Auchan	b	https://world.openfoodfacts.org/product/3057640117008/volvic-volvicdanone	https://images.openfoodfacts.org/images/products/305/764/011/7008/front_fr.75.400.jpg	https://images.openfoodfacts.org/images/products/305/764/011/7008/nutrition_fr.9.200.jpg	13
309	Ondine eau de source	Ondine		b	https://world.openfoodfacts.org/product/3250390145769/ondine-eau-de-source	https://images.openfoodfacts.org/images/products/325/039/014/5769/front_fr.118.400.jpg	https://images.openfoodfacts.org/images/products/325/039/014/5769/nutrition_fr.124.200.jpg	13
310	sidi ali	Sidi Ali		a	https://world.openfoodfacts.org/product/6111035000430/sidi-ali	https://images.openfoodfacts.org/images/products/611/103/500/0430/front_en.74.400.jpg	\N	13
311	Spa	spa		b	https://world.openfoodfacts.org/product/5410013100003/spa	https://images.openfoodfacts.org/images/products/541/001/310/0003/front_en.12.400.jpg	https://images.openfoodfacts.org/images/products/541/001/310/0003/nutrition_en.28.200.jpg	13
318	Naturale			b	https://world.openfoodfacts.org/product/8009245001010/naturale	https://images.openfoodfacts.org/images/products/800/924/500/1010/front_fr.5.400.jpg	\N	13
319	Saguaro	Saguaro		b	https://world.openfoodfacts.org/product/40882482/saguaro	https://images.openfoodfacts.org/images/products/40882482/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/40882482/nutrition_fr.17.200.jpg	13
320	Sidi Ali			b	https://world.openfoodfacts.org/product/6111035002175/sidi-ali	https://images.openfoodfacts.org/images/products/611/103/500/2175/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/611/103/500/2175/nutrition_fr.23.200.jpg	13
321	La Serreta	novaqua		b	https://world.openfoodfacts.org/product/8420722990014/la-serreta-novaqua	https://images.openfoodfacts.org/images/products/842/072/299/0014/front_fr.3.400.jpg	\N	13
323	Agua mineral natural	Font Agudes		b	https://world.openfoodfacts.org/product/8413334015015/agua-mineral-natural-font-agudes	https://images.openfoodfacts.org/images/products/841/333/401/5015/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/841/333/401/5015/nutrition_fr.10.200.jpg	13
324	Agua Mineral Fuente Primavera 1.5 L. Eco	Fuente Primavera		b	https://world.openfoodfacts.org/product/8429359712327/agua-mineral-fuente-primavera-1-5-l-eco	https://images.openfoodfacts.org/images/products/842/935/971/2327/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/842/935/971/2327/nutrition_fr.22.200.jpg	13
327	Melange 5 baies	Kania	Lidl	e	https://world.openfoodfacts.org/product/20046934/melange-5-baies-kania	https://images.openfoodfacts.org/images/products/20046934/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/20046934/nutrition_fr.21.200.jpg	14
331	Tomate ketchup	LidlKania	Lidl	c	https://world.openfoodfacts.org/product/4056489514787/tomate-ketchup-lidlkania	https://images.openfoodfacts.org/images/products/405/648/951/4787/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/405/648/951/4787/nutrition_fr.14.200.jpg	14
332	Mayonnaise	Bouton d'Or		d	https://world.openfoodfacts.org/product/3250391463749/mayonnaise-bouton-d-or	https://images.openfoodfacts.org/images/products/325/039/146/3749/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/325/039/146/3749/nutrition_fr.6.200.jpg	14
333	Amora Moutarde Douce Verre TV	Amora	E.Leclerc, carrefour.fr	d	https://world.openfoodfacts.org/product/8722700431237/amora-moutarde-douce-verre-tv	https://images.openfoodfacts.org/images/products/872/270/043/1237/front_fr.42.400.jpg	https://images.openfoodfacts.org/images/products/872/270/043/1237/nutrition_fr.56.200.jpg	14
336	MAGGI Bouillon KUB B┼ôuf	MaggiNestl├®,Kub	Carrefour market,Magasins U,leclerc, carrefour.fr	c	https://world.openfoodfacts.org/product/7613033687983/maggi-bouillon-kub-boeuf-magginestle	https://images.openfoodfacts.org/images/products/761/303/368/7983/front_en.184.400.jpg	\N	14
338	moutarde de dijon forte bio	Franprix	Franprix	c	https://world.openfoodfacts.org/product/3263850598012/moutarde-de-dijon-forte-bio-franprix	https://images.openfoodfacts.org/images/products/326/385/059/8012/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/326/385/059/8012/nutrition_fr.32.200.jpg	14
339	Source Americaine	La William	Delhaize	e	https://world.openfoodfacts.org/product/5410426109150/source-americaine-la-william	https://images.openfoodfacts.org/images/products/541/042/610/9150/front_fr.38.400.jpg	https://images.openfoodfacts.org/images/products/541/042/610/9150/nutrition_fr.63.200.jpg	14
340	La mayonnaise	Franprix		e	https://world.openfoodfacts.org/product/3263850565618/la-mayonnaise-franprix	https://images.openfoodfacts.org/images/products/326/385/056/5618/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/385/056/5618/nutrition_fr.5.200.jpg	14
341	Sauce Samoura├»	Casino	Casino	e	https://world.openfoodfacts.org/product/3222477663848/sauce-samourai-casino	https://images.openfoodfacts.org/images/products/322/247/766/3848/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/322/247/766/3848/nutrition_fr.5.200.jpg	14
342		prima		e	https://world.openfoodfacts.org/product/8410118027202/prima	https://images.openfoodfacts.org/images/products/841/011/802/7202/front_es.15.400.jpg	\N	14
343	Bouillon de l├®gumes	Rapunzel		c	https://world.openfoodfacts.org/product/4006040271031/bouillon-de-legumes-rapunzel	https://images.openfoodfacts.org/images/products/400/604/027/1031/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/400/604/027/1031/nutrition_fr.39.200.jpg	14
344	Bouillon Ar├┤me Boeuf Halal			c	https://world.openfoodfacts.org/product/6111180000835/bouillon-arome-boeuf-halal	https://images.openfoodfacts.org/images/products/611/118/000/0835/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/611/118/000/0835/nutrition_fr.12.200.jpg	14
345	Tomato Ketchup Spicy Curry	BullÔÇÖs-Eye		d	https://world.openfoodfacts.org/product/8715700208718/tomato-ketchup-spicy-curry-bull-s-eye	https://images.openfoodfacts.org/images/products/871/570/020/8718/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/871/570/020/8718/nutrition_fr.18.200.jpg	14
349	Tartare Sauce	devos Lemmens	Delhaize	d	https://world.openfoodfacts.org/product/5410056181090/tartare-sauce-devos-lemmens	https://images.openfoodfacts.org/images/products/541/005/618/1090/front_fr.23.400.jpg	\N	14
350	Sauce soja	Boni	Colruyt	c	https://world.openfoodfacts.org/product/5400141046410/sauce-soja-boni	https://images.openfoodfacts.org/images/products/540/014/104/6410/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/540/014/104/6410/nutrition_fr.8.200.jpg	14
351	Oignons lyophilis├®s	Kania	Lidl	d	https://world.openfoodfacts.org/product/20892319/oignons-lyophilises-kania	https://images.openfoodfacts.org/images/products/20892319/front_fr.54.400.jpg	https://images.openfoodfacts.org/images/products/20892319/nutrition_fr.48.200.jpg	14
352	Curry Gew├╝rz Ketchup scharf	Hela		d	https://world.openfoodfacts.org/product/4027400070309/curry-gewurz-ketchup-scharf-hela	https://images.openfoodfacts.org/images/products/402/740/007/0309/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/402/740/007/0309/nutrition_fr.27.200.jpg	14
353	Doritos Salsa ├®pic├®e	Doritos	carrefour.fr	c	https://world.openfoodfacts.org/product/3168930166047/doritos-salsa-epicee	https://images.openfoodfacts.org/images/products/316/893/016/6047/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/316/893/016/6047/nutrition_fr.5.200.jpg	14
354	Bourbon-Vanille So├ƒe	Dr. Oetker		c	https://world.openfoodfacts.org/product/4000521586805/bourbon-vanille-sosse-dr-oetker	https://images.openfoodfacts.org/images/products/400/052/158/6805/front_de.50.400.jpg	https://images.openfoodfacts.org/images/products/400/052/158/6805/nutrition_de.54.200.jpg	14
356	Sauce Samoura├«	Nawhal's		c	https://world.openfoodfacts.org/product/5425021580020/sauce-samourai-nawhal-s	https://images.openfoodfacts.org/images/products/542/502/158/0020/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/542/502/158/0020/nutrition_fr.18.200.jpg	14
357	Sauce tomate cuisin├®e	Delicato		c	https://world.openfoodfacts.org/product/26020440/sauce-tomate-cuisinee-delicato	https://images.openfoodfacts.org/images/products/26020440/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/26020440/nutrition_fr.23.200.jpg	14
358	Mayonaise	Lidl	Lidl	e	https://world.openfoodfacts.org/product/20096441/mayonaise-lidl	https://images.openfoodfacts.org/images/products/20096441/front_fr.14.400.jpg	\N	14
359	Sauce poivre vert	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710341757/sauce-poivre-vert-auchan	https://images.openfoodfacts.org/images/products/359/671/034/1757/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/359/671/034/1757/nutrition_fr.17.200.jpg	14
360	Vinaigrette ├á La Ciboulette Et Au Persil Lesieur,	Lesieur	casino	d	https://world.openfoodfacts.org/product/3011360026538/vinaigrette-a-la-ciboulette-et-au-persil-lesieur	https://images.openfoodfacts.org/images/products/301/136/002/6538/front_fr.5.400.jpg	\N	14
361	Tomato Ketchup 	Franprix	franprix	d	https://world.openfoodfacts.org/product/3263850565212/tomato-ketchup-franprix	https://images.openfoodfacts.org/images/products/326/385/056/5212/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/326/385/056/5212/nutrition_fr.14.200.jpg	14
362	Mayonnaise Pot	Devos lemmens	Delhaize	e	https://world.openfoodfacts.org/product/5414972109459/mayonnaise-pot-devos-lemmens	https://images.openfoodfacts.org/images/products/541/497/210/9459/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/541/497/210/9459/nutrition_fr.20.200.jpg	14
363	Salsa Forte - Itin├®raire des Saveurs	Itin├®raire des saveurs,Intermarch├®	Intermarch├®	b	https://world.openfoodfacts.org/product/3250391425129/salsa-forte-itineraire-des-saveurs	https://images.openfoodfacts.org/images/products/325/039/142/5129/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/325/039/142/5129/nutrition_fr.22.200.jpg	14
364	Moutarde de Dijon leader price	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3263850372216/moutarde-de-dijon-leader-price	https://images.openfoodfacts.org/images/products/326/385/037/2216/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/326/385/037/2216/nutrition_fr.36.200.jpg	14
518	Moutarde	Boni	Colruyt	c	https://world.openfoodfacts.org/product/5400141156089/moutarde-boni	https://images.openfoodfacts.org/images/products/540/014/115/6089/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/540/014/115/6089/nutrition_fr.41.200.jpg	14
365	Sauce Alg├®rienne	Colona	Auchan, carrefour.fr	e	https://world.openfoodfacts.org/product/5410803520097/sauce-algerienne-colona	https://images.openfoodfacts.org/images/products/541/080/352/0097/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/541/080/352/0097/nutrition_fr.36.200.jpg	14
366	Sauce Crudit├®s Nature	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710195558/sauce-crudites-nature-auchan	https://images.openfoodfacts.org/images/products/359/671/019/5558/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/359/671/019/5558/nutrition_fr.12.200.jpg	14
368	Mon gateau au riz			c	https://world.openfoodfacts.org/product/17601283/mon-gateau-au-riz	https://images.openfoodfacts.org/images/products/17601283/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/17601283/nutrition_fr.22.200.jpg	14
369	Sauce Biggy Burger	Nawhal's		d	https://world.openfoodfacts.org/product/5425021580204/sauce-biggy-burger-nawhal-s	https://images.openfoodfacts.org/images/products/542/502/158/0204/front_fr.28.400.jpg	\N	14
370	Moutarde De Dijon Forte	Dijona		d	https://world.openfoodfacts.org/product/3563490010029/moutarde-de-dijon-forte-dijona	https://images.openfoodfacts.org/images/products/356/349/001/0029/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/356/349/001/0029/nutrition_fr.13.200.jpg	14
371	Tomato ketchup	Cora	Cora	d	https://world.openfoodfacts.org/product/3257984853376/tomato-ketchup-cora	https://images.openfoodfacts.org/images/products/325/798/485/3376/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/325/798/485/3376/nutrition_fr.24.200.jpg	14
373	Natural Madagascan Vanilla Extract	Dr. Oetker	Asda	d	https://world.openfoodfacts.org/product/5000254020323/madagascan-vanilla-extract-dr-oetker	https://images.openfoodfacts.org/images/products/500/025/402/0323/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/500/025/402/0323/nutrition_en.10.200.jpg	14
374	Sauce crudit├®s caesar Dilecta	Bourg		d	https://world.openfoodfacts.org/product/26046723/sauce-crudites-caesar-dilecta-bourg	https://images.openfoodfacts.org/images/products/26046723/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/26046723/nutrition_fr.15.200.jpg	14
376	Sauce andalouse	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710432608/sauce-andalouse-auchan	https://images.openfoodfacts.org/images/products/359/671/043/2608/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/359/671/043/2608/nutrition_fr.28.200.jpg	14
377	Sauce Samoura├» Spicy	D&L	Auchan, carrefour.fr	e	https://world.openfoodfacts.org/product/5414972107325/sauce-samourai-spicy-d-l	https://images.openfoodfacts.org/images/products/541/497/210/7325/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/541/497/210/7325/nutrition_fr.32.200.jpg	14
379	Heinz ketchup	Heinz		d	https://world.openfoodfacts.org/product/0057000002992/heinz-ketchup	https://images.openfoodfacts.org/images/products/005/700/000/2992/front.5.400.jpg	https://images.openfoodfacts.org/images/products/005/700/000/2992/nutrition.7.200.jpg	14
380	Pr├®paration pour Fond de Veau	Belle France		e	https://world.openfoodfacts.org/product/3258561130095/preparation-pour-fond-de-veau-belle-france	https://images.openfoodfacts.org/images/products/325/856/113/0095/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/325/856/113/0095/nutrition_fr.12.200.jpg	14
382	Pur├®e de tomates	Auchan, Groupe Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710488322/puree-de-tomates-auchan	https://images.openfoodfacts.org/images/products/359/671/048/8322/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/359/671/048/8322/nutrition_fr.19.200.jpg	14
384		ALFA		c	https://world.openfoodfacts.org/product/6291003191091/alfa	https://images.openfoodfacts.org/images/products/629/100/319/1091/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/629/100/319/1091/nutrition_fr.15.200.jpg	14
385	Sauce Arrabiata - Belle France	Belle France		c	https://world.openfoodfacts.org/product/3258561140612/sauce-arrabiata-belle-france	https://images.openfoodfacts.org/images/products/325/856/114/0612/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/325/856/114/0612/nutrition_fr.29.200.jpg	14
386	Sauce Burger	Kania	LIDL	e	https://world.openfoodfacts.org/product/20563110/sauce-burger-kania	https://images.openfoodfacts.org/images/products/20563110/front.5.400.jpg	https://images.openfoodfacts.org/images/products/20563110/nutrition.7.200.jpg	14
387	Sauce barbecue	RusticaMarque Rep├¿re	Leclerc	d	https://world.openfoodfacts.org/product/3564706604612/sauce-barbecue-rusticamarque-repere	https://images.openfoodfacts.org/images/products/356/470/660/4612/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/356/470/660/4612/nutrition_fr.5.200.jpg	14
390	Mayonnaise avec oeuf traditionnelle	Kania	Lidl	d	https://world.openfoodfacts.org/product/20474584/mayonnaise-avec-oeuf-traditionnelle-kania	https://images.openfoodfacts.org/images/products/20474584/front_en.7.400.jpg	https://images.openfoodfacts.org/images/products/20474584/nutrition_fr.29.200.jpg	14
391	Lait de coco	Tables du monde	Leclerc	c	https://world.openfoodfacts.org/product/356470046108205/lait-de-coco-tables-du-monde	https://images.openfoodfacts.org/images/products/356/470/046/108205/front_fr.6.400.jpg	\N	14
392	Panzani - spf - sauce bolognaise pur boeuf	Panzani	E.leclerc,Carrefour,Carrefour Market	b	https://world.openfoodfacts.org/product/3038359007613/panzani-spf-sauce-bolognaise-pur-boeuf	https://images.openfoodfacts.org/images/products/303/835/900/7613/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/303/835/900/7613/nutrition_fr.43.200.jpg	14
393	Moutarde de Dijon	Aro		d	https://world.openfoodfacts.org/product/3439495106275/moutarde-de-dijon-aro	https://images.openfoodfacts.org/images/products/343/949/510/6275/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/343/949/510/6275/nutrition_fr.31.200.jpg	14
394	Tomato Ketchup	KaniaLidl		d	https://world.openfoodfacts.org/product/4056489306078/tomato-ketchup-kanialidl	https://images.openfoodfacts.org/images/products/405/648/930/6078/front_en.66.400.jpg	\N	14
397	Sauce piment sriracha	Ayam		d	https://world.openfoodfacts.org/product/9556041131063/sauce-piment-sriracha-ayam	https://images.openfoodfacts.org/images/products/955/604/113/1063/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/955/604/113/1063/nutrition_fr.25.200.jpg	14
398	Sauce champignon	Knorr Unilever		e	https://world.openfoodfacts.org/product/8711200502004/sauce-champignon-knorr-unilever	https://images.openfoodfacts.org/images/products/871/120/050/2004/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/871/120/050/2004/nutrition_fr.23.200.jpg	14
616	Sardines A L'huile De Tournesol	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710396122/sardines-a-l-huile-de-tournesol-auchan	https://images.openfoodfacts.org/images/products/359/671/039/6122/front_fr.16.400.jpg	\N	25
399	Sauce Piment Sriracha	Ayam		d	https://world.openfoodfacts.org/product/9556041609142/sauce-piment-sriracha-ayam	https://images.openfoodfacts.org/images/products/955/604/160/9142/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/955/604/160/9142/nutrition_fr.21.200.jpg	14
400	Pesto alla genovese	Selex		e	https://world.openfoodfacts.org/product/8003100807519/pesto-alla-genovese-selex	https://images.openfoodfacts.org/images/products/800/310/080/7519/front_fr.4.400.jpg	\N	14
401	Vegan	hellmann-s	Albert Heijn,AD Delhaize,Delhaize	d	https://world.openfoodfacts.org/product/8711200428779/vegan-hellmann-s	https://images.openfoodfacts.org/images/products/871/120/042/8779/front_fr.57.400.jpg	https://images.openfoodfacts.org/images/products/871/120/042/8779/nutrition_fr.59.200.jpg	14
402	Sauce Andalouse	Heinz	Carrefour,Magasins U, carrefour.fr	e	https://world.openfoodfacts.org/product/8410066122592/sauce-andalouse-heinz	https://images.openfoodfacts.org/images/products/841/006/612/2592/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/841/006/612/2592/nutrition_fr.39.200.jpg	14
403	Vandemoortele mayonnaise	Vandemoortele		e	https://world.openfoodfacts.org/product/5410093168078/vandemoortele-mayonnaise	https://images.openfoodfacts.org/images/products/541/009/316/8078/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/541/009/316/8078/nutrition_fr.9.200.jpg	14
404	Chilli sauce sriracha	Flying Goose Brand	Delhaize	b	https://world.openfoodfacts.org/product/8853662056005/chilli-sauce-sriracha-flying-goose-brand	https://images.openfoodfacts.org/images/products/885/366/205/6005/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/885/366/205/6005/nutrition_fr.32.200.jpg	14
406	Allioli	Chovi		d	https://world.openfoodfacts.org/product/14104228/allioli-chovi	https://images.openfoodfacts.org/images/products/14104228/front_fr.4.400.jpg	\N	14
408	Cheezy Salsa	Carrefour	Carrefour, carrefour.fr	d	https://world.openfoodfacts.org/product/3560071253141/cheezy-salsa-carrefour	https://images.openfoodfacts.org/images/products/356/007/125/3141/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/356/007/125/3141/nutrition_fr.15.200.jpg	14
409	Mayonnaise a la moutarde de dijon	Ecoprix		d	https://world.openfoodfacts.org/product/3258565140243/mayonnaise-a-la-moutarde-de-dijon-ecoprix	https://images.openfoodfacts.org/images/products/325/856/514/0243/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/856/514/0243/nutrition_fr.5.200.jpg	14
410	Sauce Soja 150 ML Champignon ├®paisse	Pearl river bridge		d	https://world.openfoodfacts.org/product/6921180820032/sauce-soja-150-ml-champignon-epaisse-pearl-river-bridge	https://images.openfoodfacts.org/images/products/692/118/082/0032/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/692/118/082/0032/nutrition_fr.11.200.jpg	14
411	Ketchup	Orlando		d	https://world.openfoodfacts.org/product/8410066125081/ketchup-orlando	https://images.openfoodfacts.org/images/products/841/006/612/5081/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/841/006/612/5081/nutrition_fr.21.200.jpg	14
413	Mayonesa ajonesa	Chovi		e	https://world.openfoodfacts.org/product/8410422002117/mayonesa-ajonesa-chovi	https://images.openfoodfacts.org/images/products/841/042/200/2117/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/841/042/200/2117/nutrition_fr.10.200.jpg	14
415	prima	prima		e	https://world.openfoodfacts.org/product/8410118041130/prima	https://images.openfoodfacts.org/images/products/841/011/804/1130/front_es.16.400.jpg	\N	14
416	Ketchup original sin gluten	Prima		d	https://world.openfoodfacts.org/product/8410118041123/ketchup-original-sin-gluten-prima	https://images.openfoodfacts.org/images/products/841/011/804/1123/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/841/011/804/1123/nutrition_fr.9.200.jpg	14
427	Mini-piments Rouges	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710480487/mini-piments-rouges-auchan	https://images.openfoodfacts.org/images/products/359/671/048/0487/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/359/671/048/0487/nutrition_fr.5.200.jpg	14
429	Mayo Original	M-CLASSIC	Migros	e	https://world.openfoodfacts.org/product/7616600380102/mayonnaise-classic-m-classic	https://images.openfoodfacts.org/images/products/761/660/038/0102/front_fr.47.400.jpg	https://images.openfoodfacts.org/images/products/761/660/038/0102/nutrition_fr.43.200.jpg	14
434	Vinaigrette moutarde	Regalo	Aldi	d	https://world.openfoodfacts.org/product/27079430/vinaigrette-moutarde-regalo	https://images.openfoodfacts.org/images/products/27079430/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/27079430/nutrition_fr.36.200.jpg	14
436	Ketchup	Calv├®		d	https://world.openfoodfacts.org/product/8714100906019/ketchup-calve	https://images.openfoodfacts.org/images/products/871/410/090/6019/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/871/410/090/6019/nutrition_en.22.200.jpg	14
438	Herbs light	thomy,Nestl├®		c	https://world.openfoodfacts.org/product/7613036386500/herbs-light-thomy	https://images.openfoodfacts.org/images/products/761/303/638/6500/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/761/303/638/6500/nutrition_fr.28.200.jpg	14
439	Maionese classica	Calv├®		e	https://world.openfoodfacts.org/product/8712423004399/maionese-classica-calve	https://images.openfoodfacts.org/images/products/871/242/300/4399/front_it.26.400.jpg	https://images.openfoodfacts.org/images/products/871/242/300/4399/nutrition_it.28.200.jpg	14
441	Ideal Cube De Bouillon - Boeuf (beef) - 8 Cubes			e	https://world.openfoodfacts.org/product/6111180000934/ideal-cube-de-bouillon-boeuf-beef-8-cubes	https://images.openfoodfacts.org/images/products/611/118/000/0934/front_fr.4.400.jpg	\N	14
443	Mayonesa &quot;Chovi&quot;	Chovi		e	https://world.openfoodfacts.org/product/8410422002124/mayonesa-chovi	https://images.openfoodfacts.org/images/products/841/042/200/2124/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/841/042/200/2124/nutrition_fr.38.200.jpg	14
446	Oignons	onion jaunes		a	https://world.openfoodfacts.org/product/3662093000106/oignons-onion-jaunes	https://images.openfoodfacts.org/images/products/366/209/300/0106/front_fr.15.400.jpg	\N	14
449	Mayonnaise l├®g├¿re	B├®n├®dicta,Heinz		d	https://world.openfoodfacts.org/product/3660603082031/mayonnaise-legere-benedicta	https://images.openfoodfacts.org/images/products/366/060/308/2031/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/366/060/308/2031/nutrition_fr.5.200.jpg	14
450	Salsa Patates Deluxe Bocabajo	Hellmann's		d	https://world.openfoodfacts.org/product/8712100563393/salsa-patates-deluxe-bocabajo-hellmann-s	https://images.openfoodfacts.org/images/products/871/210/056/3393/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/871/210/056/3393/nutrition_fr.4.200.jpg	14
455	Dressing caesar	Develey		d	https://world.openfoodfacts.org/product/4006824993227/dressing-caesar-develey	https://images.openfoodfacts.org/images/products/400/682/499/3227/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/400/682/499/3227/nutrition_fr.22.200.jpg	14
462	Bouillon	Knorr	Delhaize	c	https://world.openfoodfacts.org/product/8711100033073/bouillon-knorr	https://images.openfoodfacts.org/images/products/871/110/003/3073/front_fr.14.400.jpg	\N	14
468	Sauce ketchup harissa	Samia		d	https://world.openfoodfacts.org/product/3276650102273/sauce-ketchup-harissa-samia	https://images.openfoodfacts.org/images/products/327/665/010/2273/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/327/665/010/2273/nutrition_fr.7.200.jpg	14
469	Mayo light	Boni Selection Colruyt	Colruyt	d	https://world.openfoodfacts.org/product/5400141288537/mayo-light-boni-selection-colruyt	https://images.openfoodfacts.org/images/products/540/014/128/8537/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/540/014/128/8537/nutrition_fr.24.200.jpg	14
472	Sauce Salade Slasaus	Amora		c	https://world.openfoodfacts.org/product/3250541015118/sauce-salade-slasaus-amora	https://images.openfoodfacts.org/images/products/325/054/101/5118/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/325/054/101/5118/nutrition_fr.23.200.jpg	14
473	Caesar C├®sar Dressing	Delhaize	Delhaize	d	https://world.openfoodfacts.org/product/5400119540131/caesar-cesar-dressing-delhaize	https://images.openfoodfacts.org/images/products/540/011/954/0131/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/540/011/954/0131/nutrition_fr.24.200.jpg	14
475	Dijon Mustard	null	Woolworths	d	https://world.openfoodfacts.org/product/9300633216757/dijon-mustard-null	https://images.openfoodfacts.org/images/products/930/063/321/6757/front_fr.4.400.jpg	\N	14
477	Mayonnaise	TOP BUDGET		d	https://world.openfoodfacts.org/product/3410280010441/mayonnaise-top-budget	https://images.openfoodfacts.org/images/products/341/028/001/0441/front_fr.5.400.jpg	\N	14
480	Vinaigrette moutarde ├á l'ancienne	Kania	Lidl	d	https://world.openfoodfacts.org/product/20712969/vinaigrette-moutarde-a-l-ancienne-kania	https://images.openfoodfacts.org/images/products/20712969/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/20712969/nutrition_fr.7.200.jpg	14
485	Crema all' aceto balsamico di Modena IGP	Fiorfiore CoopCoop		d	https://world.openfoodfacts.org/product/8001120821386/crema-all-aceto-balsamico-di-modena-igp-fiorfiore-coopcoop	https://images.openfoodfacts.org/images/products/800/112/082/1386/front_fr.6.400.jpg	\N	14
489	Mayonaise			d	https://world.openfoodfacts.org/product/6111073565694/mayonaise	https://images.openfoodfacts.org/images/products/611/107/356/5694/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/611/107/356/5694/nutrition_fr.7.200.jpg	14
491	Ketchup tomates origine France	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710462865/ketchup-tomates-origine-france-auchan	https://images.openfoodfacts.org/images/products/359/671/046/2865/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/359/671/046/2865/nutrition_fr.10.200.jpg	14
493	Sauce Piquante	Star		a	https://world.openfoodfacts.org/product/6111184000923/sauce-piquante-star	https://images.openfoodfacts.org/images/products/611/118/400/0923/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/611/118/400/0923/nutrition_fr.14.200.jpg	14
495	Mayonesa Chovi			e	https://world.openfoodfacts.org/product/8410422001974/mayonesa-chovi	https://images.openfoodfacts.org/images/products/841/042/200/1974/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/841/042/200/1974/nutrition_fr.12.200.jpg	14
497	crema vegetale da cucina uht	Coopunigr├í,coop		c	https://world.openfoodfacts.org/product/8001120791948/crema-vegetale-da-cucina-uht-coopunigra	https://images.openfoodfacts.org/images/products/800/112/079/1948/front_it.21.400.jpg	https://images.openfoodfacts.org/images/products/800/112/079/1948/nutrition_it.31.200.jpg	14
498	Tat kechup			d	https://world.openfoodfacts.org/product/8690635151424/tat-kechup	https://images.openfoodfacts.org/images/products/869/063/515/1424/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/869/063/515/1424/nutrition_fr.5.200.jpg	14
499	Alfredo ├á l'ail r├┤ti	Le choix du pr├®sident	Maxi	d	https://world.openfoodfacts.org/product/0060383986919/alfredo-a-l-ail-roti-le-choix-du-president	https://images.openfoodfacts.org/images/products/006/038/398/6919/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/006/038/398/6919/nutrition_fr.6.200.jpg	14
502	Snack Dressing Hot Dog Sauce	IKEA	Ikea	d	https://world.openfoodfacts.org/product/4012200378502/snack-dressing-hot-dog-sauce-ikea	https://images.openfoodfacts.org/images/products/401/220/037/8502/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/401/220/037/8502/nutrition_fr.19.200.jpg	14
503	Vinaigrette fines herbes	sweet chef		e	https://world.openfoodfacts.org/product/3683080555539/vinaigrette-fines-herbes-sweet-chef	https://images.openfoodfacts.org/images/products/368/308/055/5539/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/368/308/055/5539/nutrition_fr.5.200.jpg	14
507	Mayonnaise	B├®n├®dicta		e	https://world.openfoodfacts.org/product/3660603005252/mayonnaise-benedicta	https://images.openfoodfacts.org/images/products/366/060/300/5252/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/366/060/300/5252/nutrition_fr.5.200.jpg	14
508	950ML Moutarde Dijon California Lesieur	Lesieur		d	https://world.openfoodfacts.org/product/3011360037077/950ml-moutarde-dijon-california-lesieur	https://images.openfoodfacts.org/images/products/301/136/003/7077/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/301/136/003/7077/nutrition_fr.9.200.jpg	14
509	Sauce Tartare	Belle France	auchan	d	https://world.openfoodfacts.org/product/3258561140469/sauce-tartare-belle-france	https://images.openfoodfacts.org/images/products/325/856/114/0469/front_fr.8.400.jpg	\N	14
510	Mayonnaise ├á l'huile de S├®same	La Tourangelle		e	https://world.openfoodfacts.org/product/3245270002539/mayonnaise-a-l-huile-de-sesame-la-tourangelle	https://images.openfoodfacts.org/images/products/324/527/000/2539/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/324/527/000/2539/nutrition_fr.5.200.jpg	14
513	A├»oli	Leader Price	Leader Price	d	https://world.openfoodfacts.org/product/3263850377013/aioli-leader-price	https://images.openfoodfacts.org/images/products/326/385/037/7013/front_fr.6.400.jpg	\N	14
516	Mayonnaise Oignons caram├®lis├®s	Heinz		e	https://world.openfoodfacts.org/product/3660603080860/mayonnaise-oignons-caramelises-heinz	https://images.openfoodfacts.org/images/products/366/060/308/0860/front_fr.4.400.jpg	\N	14
519	Escalope de dinde	Le gaulois	E.Leclerc,Auchan,Carefour Market,Carefour,Intermarch├®,Grands Frais	a	https://world.openfoodfacts.org/product/3266980467098/escalope-de-dinde-le-gaulois	https://images.openfoodfacts.org/images/products/326/698/046/7098/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/698/046/7098/nutrition_fr.18.200.jpg	15
520	Jambon de Bayonne grandes tranches	Delpeyrat		e	https://world.openfoodfacts.org/product/3067163646596/jambon-de-bayonne-grandes-tranches-delpeyrat	https://images.openfoodfacts.org/images/products/306/716/364/6596/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/306/716/364/6596/nutrition_fr.18.200.jpg	16
522	Jus d'orange	Treetop		a	https://world.openfoodfacts.org/product/3556740097017/jus-d-orange-treetop	https://images.openfoodfacts.org/images/products/355/674/009/7017/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/355/674/009/7017/nutrition_fr.13.200.jpg	17
523		Carrefour,Groupe Carrefour	Carrefour market,Carrefour	a	https://world.openfoodfacts.org/product/3560070117345/carrefour	https://images.openfoodfacts.org/images/products/356/007/011/7345/front_en.80.400.jpg	https://images.openfoodfacts.org/images/products/356/007/011/7345/nutrition.20.200.jpg	17
524	Jus de fruit	Alete		b	https://world.openfoodfacts.org/product/4251099614845/jus-de-fruit-alete	https://images.openfoodfacts.org/images/products/425/109/961/4845/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/425/109/961/4845/nutrition_fr.16.200.jpg	17
525	Multim├®dia vitamin	Hohes C		b	https://world.openfoodfacts.org/product/4048517631573/multimedia-vitamin-hohes-c	https://images.openfoodfacts.org/images/products/404/851/763/1573/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/404/851/763/1573/nutrition_fr.24.200.jpg	17
526	Jus de pomme ├á base de jus concentr├®	Joker		b	https://world.openfoodfacts.org/product/3123340008271/jus-de-pomme-a-base-de-jus-concentre-joker	https://images.openfoodfacts.org/images/products/312/334/000/8271/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/312/334/000/8271/nutrition_fr.29.200.jpg	17
527	Jus de Pomme ├á base de concentr├®	Fruima	Aldi E.Leclerc Auchan Carefour	a	https://world.openfoodfacts.org/product/26001012/jus-de-pomme-a-base-de-concentre-fruima	https://images.openfoodfacts.org/images/products/26001012/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/26001012/nutrition_fr.33.200.jpg	17
528	Boisson aux fruits ACE Rouge	Pago	Leclerc, carrefour.fr	b	https://world.openfoodfacts.org/product/9002515600981/boisson-aux-fruits-ace-rouge-pago	https://images.openfoodfacts.org/images/products/900/251/560/0981/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/900/251/560/0981/nutrition_fr.35.200.jpg	17
529	Jus de pomme	Rochambeau	Metro	c	https://world.openfoodfacts.org/product/3439495400786/jus-de-pomme-rochambeau	https://images.openfoodfacts.org/images/products/343/949/540/0786/front_fr.20.400.jpg	\N	17
530	Jus d'orange ├á base de concentr├®	Solevita		a	https://world.openfoodfacts.org/product/4056489013334/jus-d-orange-a-base-de-concentre-solevita	https://images.openfoodfacts.org/images/products/405/648/901/3334/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/405/648/901/3334/nutrition_fr.31.200.jpg	17
531	Lait demi ├®cr├®m├® bio	Nature bio	Match	b	https://world.openfoodfacts.org/product/3257981677265/lait-demi-ecreme-bio-nature-bio	https://images.openfoodfacts.org/images/products/325/798/167/7265/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/325/798/167/7265/nutrition_fr.21.200.jpg	18
532	Lait U.H.T demi-├®cr├®m├®	Le petit vend├®en	carrefour.fr	b	https://world.openfoodfacts.org/product/3175310002741/lait-u-h-t-demi-ecreme-le-petit-vendeen	https://images.openfoodfacts.org/images/products/317/531/000/2741/front_fr.42.400.jpg	https://images.openfoodfacts.org/images/products/317/531/000/2741/nutrition_fr.44.200.jpg	18
533	Lait demi-├®cr├®m├®, st├®rilis├® UHT, 10 vitamines	Candia	Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/3176571991003/lait-demi-ecreme-sterilise-uht-10-vitamines-candia	https://images.openfoodfacts.org/images/products/317/657/199/1003/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/317/657/199/1003/nutrition_fr.26.200.jpg	18
535	GrandLait Demi-├®cr├®m├®	Candia Candia GrandLait	Casino,carrefour,Auchan,E.Leclerc,Lidl	a	https://world.openfoodfacts.org/product/3176571625007/grandlait-demi-ecreme-candia-candia-grandlait	https://images.openfoodfacts.org/images/products/317/657/162/5007/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/317/657/162/5007/nutrition_fr.23.200.jpg	18
536	Lait Bio Demi-├ëcr├®m├®	Lactel	Bi1, carrefour.fr	b	https://world.openfoodfacts.org/product/3428272950057/lait-bio-demi-ecreme-lactel	https://images.openfoodfacts.org/images/products/342/827/295/0057/front_fr.52.400.jpg	https://images.openfoodfacts.org/images/products/342/827/295/0057/nutrition_fr.57.200.jpg	18
537	Latte parzialmente scremato uht	Pascoli Italiani		a	https://world.openfoodfacts.org/product/8017596064011/latte-parzialmente-scremato-uht-pascoli-italiani	https://images.openfoodfacts.org/images/products/801/759/606/4011/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/801/759/606/4011/nutrition_fr.20.200.jpg	18
538	Lait choco	everyday	Colruyt	b	https://world.openfoodfacts.org/product/5400141105001/lait-choco-everyday	https://images.openfoodfacts.org/images/products/540/014/110/5001/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/540/014/110/5001/nutrition_fr.19.200.jpg	18
539	Lait fermier de Normandie demi-├®cr├®m├®			b	https://world.openfoodfacts.org/product/3760115154605/lait-fermier-de-normandie-demi-ecreme	https://images.openfoodfacts.org/images/products/376/011/515/4605/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/376/011/515/4605/nutrition_fr.16.200.jpg	18
541	Oignons	onion jaunes		a	https://world.openfoodfacts.org/product/3662093000106/oignons-onion-jaunes	https://images.openfoodfacts.org/images/products/366/209/300/0106/front_fr.15.400.jpg	\N	19
546	Saikebon noodles pollo			c	https://world.openfoodfacts.org/product/8000050019429/saikebon-noodles-pollo	https://images.openfoodfacts.org/images/products/800/005/001/9429/front_it.20.400.jpg	https://images.openfoodfacts.org/images/products/800/005/001/9429/nutrition_it.17.200.jpg	20
548	Nouilles Chinoises	Mont Asie		c	https://world.openfoodfacts.org/product/3661945310059/nouilles-chinoises-mont-asie	https://images.openfoodfacts.org/images/products/366/194/531/0059/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/366/194/531/0059/nutrition_fr.23.200.jpg	20
549		Koka	Carrefour	c	https://world.openfoodfacts.org/product/8888056603862/preparation-alimentaire-a-base-de-ble-tendre-gout-poulet-koka	https://images.openfoodfacts.org/images/products/888/805/660/3862/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/888/805/660/3862/nutrition_fr.12.200.jpg	20
550	Nouilles indonesien au poulet	Indomie		e	https://world.openfoodfacts.org/product/8606108584163/nouilles-indonesien-au-poulet-indomie	https://images.openfoodfacts.org/images/products/860/610/858/4163/front_en.21.400.jpg	https://images.openfoodfacts.org/images/products/860/610/858/4163/nutrition_fr.30.200.jpg	20
551	Ramen Noodle Soup	Samyang	Cora,Paris Store	d	https://world.openfoodfacts.org/product/0074603005212/ramen-noodle-soup-samyang	https://images.openfoodfacts.org/images/products/007/460/300/5212/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/007/460/300/5212/nutrition_fr.23.200.jpg	20
552	Nouilles aux ┼ôufs	Suzi Wan	AUCHAN, carrefour.fr	a	https://world.openfoodfacts.org/product/4002359013119/nouilles-aux-oeufs-suzi-wan	https://images.openfoodfacts.org/images/products/400/235/901/3119/front_fr.46.400.jpg	https://images.openfoodfacts.org/images/products/400/235/901/3119/nutrition_fr.43.200.jpg	20
554	Fried noodles	Indomie		d	https://world.openfoodfacts.org/product/0089686180633/fried-noodles-indomie	https://images.openfoodfacts.org/images/products/008/968/618/0633/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/008/968/618/0633/nutrition_fr.7.200.jpg	20
561	Nouilles instantan├®es gout boeuf	Mr noodle		b	https://world.openfoodfacts.org/product/0059491000358/nouilles-instantanees-gout-boeuf-mr-noodle	https://images.openfoodfacts.org/images/products/005/949/100/0358/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/005/949/100/0358/nutrition_fr.17.200.jpg	20
562	Noodles	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3263850450266/noodles-leader-price	https://images.openfoodfacts.org/images/products/326/385/045/0266/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/385/045/0266/nutrition_fr.9.200.jpg	20
563	Pain d'Epices au Miel ­ƒì»	Brossard	Magasins U,Carrefour,Auchan,Monoprix,E.Leclerc, carrefour.fr	b	https://world.openfoodfacts.org/product/3498425800058/le-pain-d-epices-au-miel-%F0%9F%8D%AF-brossard	https://images.openfoodfacts.org/images/products/349/842/580/0058/front_en.33.400.jpg	https://images.openfoodfacts.org/images/products/349/842/580/0058/nutrition_fr.78.200.jpg	21
564	Mini Pain  d'├ëpices Figues	Jacquet	carrefour Market, carrefour.fr	d	https://world.openfoodfacts.org/product/3029330066019/mini-pain-d-epices-figues-jacquet	https://images.openfoodfacts.org/images/products/302/933/006/6019/front_en.5.400.jpg	https://images.openfoodfacts.org/images/products/302/933/006/6019/nutrition_fr.17.200.jpg	21
565	Mini pain d'epices abricot noisettes 140g	Jacquet		d	https://world.openfoodfacts.org/product/3029330071556/mini-pain-d-epices-abricot-noisettes-140g-jacquet	https://images.openfoodfacts.org/images/products/302/933/007/1556/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/302/933/007/1556/nutrition_fr.11.200.jpg	21
566	vondelmolen peperkoek	Vondelmolen	Restaurants du C┼ôur,iD Stock	d	https://world.openfoodfacts.org/product/5410383020079/ginger-bread-vondelmolen	https://images.openfoodfacts.org/images/products/541/038/302/0079/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/541/038/302/0079/nutrition_fr.38.200.jpg	21
569	Pains D'├®pices enrob├®s de chocolat	Brink		d	https://world.openfoodfacts.org/product/8710445011777/pains-d-epices-enrobes-de-chocolat-brink	https://images.openfoodfacts.org/images/products/871/044/501/1777/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/871/044/501/1777/nutrition_fr.22.200.jpg	21
572	Beurre de cacahu├¿te	mister choc		b	https://world.openfoodfacts.org/product/20977863/beurre-de-cacahuete-mister-choc	https://images.openfoodfacts.org/images/products/20977863/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/20977863/nutrition_fr.25.200.jpg	22
573	Milka Haselnuscreme	MilkaMondelez Deutschland GmbH	Edeka,Real,Lidl	e	https://world.openfoodfacts.org/product/7622201127206/milka-haselnuscreme-milkamondelez-deutschland-gmbh	https://images.openfoodfacts.org/images/products/762/220/112/7206/front_en.74.400.jpg	\N	22
574	Nutella	Ferrero, Nutella	Kaufland,HIT,Lidl	e	https://world.openfoodfacts.org/product/4008400404127/nutella-ferrero	https://images.openfoodfacts.org/images/products/400/840/040/4127/front_en.103.400.jpg	https://images.openfoodfacts.org/images/products/400/840/040/4127/nutrition_en.184.200.jpg	22
577	Nuss-Nougat-Creme	Nussetti		e	https://world.openfoodfacts.org/product/4316268577328/nuss-nougat-creme-nussetti	https://images.openfoodfacts.org/images/products/431/626/857/7328/front_pl.31.400.jpg	https://images.openfoodfacts.org/images/products/431/626/857/7328/nutrition_pl.33.200.jpg	22
579	Wit Chocoladepasta, Wei├ƒe Schokolade	Albert Heijn	Albert Heijn	e	https://world.openfoodfacts.org/product/8710400130468/wit-chocoladepasta-weisse-schokolade-albert-heijn	https://images.openfoodfacts.org/images/products/871/040/013/0468/front_fr.10.400.jpg	\N	22
580	Choco nussa	lidl	Lidl	e	https://world.openfoodfacts.org/product/20160326/choco-nussa-lidl	https://images.openfoodfacts.org/images/products/20160326/front_de.16.400.jpg	https://images.openfoodfacts.org/images/products/20160326/nutrition_de.18.200.jpg	22
581	P├óte ├á tartiner	Caotina Wander		e	https://world.openfoodfacts.org/product/7612100805183/pate-a-tartiner-caotina-wander	https://images.openfoodfacts.org/images/products/761/210/080/5183/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/761/210/080/5183/nutrition_fr.25.200.jpg	22
582	Nuss-Nougat-Creme	Choco Nussa	Lidl	e	https://world.openfoodfacts.org/product/20003548/nuss-nougat-creme-choco-nussa	https://images.openfoodfacts.org/images/products/20003548/front.11.400.jpg	https://images.openfoodfacts.org/images/products/20003548/nutrition.14.200.jpg	22
583	Nutella	Ferrero		e	https://world.openfoodfacts.org/product/40084053/nutella-ferrero	https://images.openfoodfacts.org/images/products/40084053/front_en.14.400.jpg	https://images.openfoodfacts.org/images/products/40084053/nutrition_de.9.200.jpg	22
584	P├óte ├á Tartiner	Cora	Cora	d	https://world.openfoodfacts.org/product/3257984362861/pate-a-tartiner-cora	https://images.openfoodfacts.org/images/products/325/798/436/2861/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/325/798/436/2861/nutrition_fr.10.200.jpg	22
585	P├óte ├á tartine M&M's	Marsbounty	Magasins U,Hyper u	e	https://world.openfoodfacts.org/product/5060402906053/pate-a-tartine-m-m-s-marsbounty	https://images.openfoodfacts.org/images/products/506/040/290/6053/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/506/040/290/6053/nutrition_fr.11.200.jpg	22
586	Choco nussa	Choco Nussa	LIDL	d	https://world.openfoodfacts.org/product/20554729/choco-nussa	https://images.openfoodfacts.org/images/products/20554729/front.3.400.jpg	https://images.openfoodfacts.org/images/products/20554729/nutrition.8.200.jpg	22
822	Gyoza poulet ciboulette	Ajinomoto		b	https://world.openfoodfacts.org/product/5060284552256/gyoza-poulet-ciboulette-ajinomoto	https://images.openfoodfacts.org/images/products/506/028/455/2256/front_fr.4.400.jpg	\N	27
587	Crema alle nocciole	Jolies	iN's	e	https://world.openfoodfacts.org/product/5410291002518/crema-alle-nocciole-jolies	https://images.openfoodfacts.org/images/products/541/029/100/2518/front_en.21.400.jpg	https://images.openfoodfacts.org/images/products/541/029/100/2518/nutrition_en.23.200.jpg	22
588	Duo Chocolate Spread	Lidl	Lidl	e	https://world.openfoodfacts.org/product/4056489143895/duo-chocolate-spread-lidl	https://images.openfoodfacts.org/images/products/405/648/914/3895/front_en.21.400.jpg	https://images.openfoodfacts.org/images/products/405/648/914/3895/nutrition_en.7.200.jpg	22
591	P├óte ├á tartiner caramel	Deluxe	Lidl	e	https://world.openfoodfacts.org/product/20438982/pate-a-tartiner-caramel-deluxe	https://images.openfoodfacts.org/images/products/20438982/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/20438982/nutrition_fr.39.200.jpg	22
593	P├óte ├á tartiner choco	Boni		e	https://world.openfoodfacts.org/product/5400141322040/pate-a-tartiner-choco-boni	https://images.openfoodfacts.org/images/products/540/014/132/2040/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/540/014/132/2040/nutrition_fr.16.200.jpg	22
594	Mister Choc Choco Creme	Mister Choc	Lidl	e	https://world.openfoodfacts.org/product/20016388/mister-choc-choco-creme	https://images.openfoodfacts.org/images/products/20016388/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/20016388/nutrition_fr.19.200.jpg	22
595	Choco Marino 1KG	P'tit D├®li		e	https://world.openfoodfacts.org/product/5411146536721/choco-marino-1kg-p-tit-deli	https://images.openfoodfacts.org/images/products/541/114/653/6721/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/541/114/653/6721/nutrition_fr.35.200.jpg	22
596	Crema al cacao 1 sabor	Hacendado	Mercadona	e	https://world.openfoodfacts.org/product/8480000674166/crema-al-cacao-1-sabor-hacendado	https://images.openfoodfacts.org/images/products/848/000/067/4166/front_es.22.400.jpg	\N	22
597	p├óte ├á tartines			e	https://world.openfoodfacts.org/product/3410280109039/pate-a-tartines	https://images.openfoodfacts.org/images/products/341/028/010/9039/front_xx.33.400.jpg	\N	22
598	Nutella	FerreroNutella		e	https://world.openfoodfacts.org/product/80177425/nutella-ferreronutella	https://images.openfoodfacts.org/images/products/80177425/front_fr.35.400.jpg	https://images.openfoodfacts.org/images/products/80177425/nutrition_fr.11.200.jpg	22
599	Tahin Helva	Koska		e	https://world.openfoodfacts.org/product/8690710001804/tahin-helva-koska	https://images.openfoodfacts.org/images/products/869/071/000/1804/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/869/071/000/1804/nutrition_fr.6.200.jpg	22
600	Noisettes	Kraft,Heinz		d	https://world.openfoodfacts.org/product/0068100902785/noisettes-kraft	https://images.openfoodfacts.org/images/products/006/810/090/2785/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/006/810/090/2785/nutrition_fr.18.200.jpg	22
601	Chocolat ├á tartiner ile de r├®	Ile de R├® Chocolats		e	https://world.openfoodfacts.org/product/3760008562494/chocolat-a-tartiner-ile-de-re-ile-de-re-chocolats	https://images.openfoodfacts.org/images/products/376/000/856/2494/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/376/000/856/2494/nutrition_fr.10.200.jpg	22
602	P├óte ├á tartiner	Valrhona		d	https://world.openfoodfacts.org/product/3395328326312/pate-a-tartiner-valrhona	https://images.openfoodfacts.org/images/products/339/532/832/6312/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/339/532/832/6312/nutrition_en.12.200.jpg	22
603	P├óte ├á tartiner aux noisettes (boni)	Boni		e	https://world.openfoodfacts.org/product/5400141340747/pate-a-tartiner-aux-noisettes-boni	https://images.openfoodfacts.org/images/products/540/014/134/0747/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/540/014/134/0747/nutrition_fr.24.200.jpg	22
604	P├óte ├á tartiner aux noisettes	Produit eco		e	https://world.openfoodfacts.org/product/6111254875000/pate-a-tartiner-aux-noisettes-produit-eco	https://images.openfoodfacts.org/images/products/611/125/487/5000/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/611/125/487/5000/nutrition_fr.15.200.jpg	22
605	Crema spalmabile	Penny		e	https://world.openfoodfacts.org/product/8024370053253/crema-spalmabile-penny	https://images.openfoodfacts.org/images/products/802/437/005/3253/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/802/437/005/3253/nutrition_fr.15.200.jpg	22
606	Tchicolata			d	https://world.openfoodfacts.org/product/6111242380295/tchicolata	https://images.openfoodfacts.org/images/products/611/124/238/0295/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/611/124/238/0295/nutrition_fr.11.200.jpg	22
607	P├óte ├á ├®toiler			e	https://world.openfoodfacts.org/product/3701308800169/pate-a-etoiler	https://images.openfoodfacts.org/images/products/370/130/880/0169/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/370/130/880/0169/nutrition_fr.5.200.jpg	22
609	Torsades demi-compl├¿tes	Naturalia		a	https://world.openfoodfacts.org/product/3700036906013/torsades-demi-completes-naturalia	https://images.openfoodfacts.org/images/products/370/003/690/6013/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/003/690/6013/nutrition_fr.13.200.jpg	23
610	Macaroni aux ┼Æufs Frais	Lustucru	carrefour Magasin U E.leclec Auchan	a	https://world.openfoodfacts.org/product/3660861900092/macaroni-aux-oeufs-frais-lustucru	https://images.openfoodfacts.org/images/products/366/086/190/0092/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/366/086/190/0092/nutrition_fr.10.200.jpg	23
611	Linguine	Lidl,Combino	Lidl	a	https://world.openfoodfacts.org/product/20104092/linguine-lidl	https://images.openfoodfacts.org/images/products/20104092/front_de.28.400.jpg	\N	23
612	Semola de trigo	Nurture	Mercadona	a	https://world.openfoodfacts.org/product/8480000290113/semola-de-trigo-nurture	https://images.openfoodfacts.org/images/products/848/000/029/0113/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/848/000/029/0113/nutrition_fr.28.200.jpg	23
613	Stelline	Barilla		a	https://world.openfoodfacts.org/product/8076800315271/stelline-barilla	https://images.openfoodfacts.org/images/products/807/680/031/5271/front_fr.39.400.jpg	https://images.openfoodfacts.org/images/products/807/680/031/5271/nutrition_fr.41.200.jpg	23
614	Auchan terrine v├®g├®tale 125g	Envie de Veggie Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710460038/auchan-terrine-vegetale-125g-envie-de-veggie-auchan	https://images.openfoodfacts.org/images/products/359/671/046/0038/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/359/671/046/0038/nutrition_fr.13.200.jpg	24
615	Thon ├á la Catalane	Nixe		b	https://world.openfoodfacts.org/product/20183141/thon-a-la-catalane-nixe	https://images.openfoodfacts.org/images/products/20183141/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/20183141/nutrition_fr.42.200.jpg	25
617	Atun claro en aceite de oliva	Albo		d	https://world.openfoodfacts.org/product/8410032003344/atun-claro-en-aceite-de-oliva-albo	https://images.openfoodfacts.org/images/products/841/003/200/3344/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/841/003/200/3344/nutrition_fr.38.200.jpg	25
618	Auras de Morue	Carrefour Market,Carrefour,E.leclerc,Auchan,Lidl	Carrefour Market,Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3523680434226/auras-de-morue-carrefour-market	https://images.openfoodfacts.org/images/products/352/368/043/4226/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/352/368/043/4226/nutrition_fr.5.200.jpg	25
619	Filet de  poisdon pan├® au fromage et persil	Ocean Sea		b	https://world.openfoodfacts.org/product/20770198/filet-de-poisdon-pane-au-fromage-et-persil-ocean-sea	https://images.openfoodfacts.org/images/products/20770198/front_fr.3.400.jpg	\N	25
620	Saumon d ecosse fume label rouge	Delpeyrat		d	https://world.openfoodfacts.org/product/3067163649665/saumon-d-ecosse-fume-label-rouge-delpeyrat	https://images.openfoodfacts.org/images/products/306/716/364/9665/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/306/716/364/9665/nutrition_fr.23.200.jpg	25
621	Surimi	Coraya	Carrefour,Carrefour Market,Carrefour City, carrefour.fr	b	https://world.openfoodfacts.org/product/3276170012809/surimi-coraya	https://images.openfoodfacts.org/images/products/327/617/001/2809/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/327/617/001/2809/nutrition_fr.5.200.jpg	25
622	Rillettes de Maquereaux	La Cancalaise	Carrefour,E.leclerc,Auchan,Lidl,Carrefour Market,Magasin U	d	https://world.openfoodfacts.org/product/3760023263987/rillettes-de-maquereaux-la-cancalaise	https://images.openfoodfacts.org/images/products/376/002/326/3987/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/376/002/326/3987/nutrition_fr.9.200.jpg	25
623	B├ótonnets saveur crabe	Sans marqueCompagnie des P├¬ches Saint-Malo	Netto,Auchan,Magasins U	c	https://world.openfoodfacts.org/product/3521042040092/batonnets-saveur-crabe-sans-marquecompagnie-des-peches-saint-malo	https://images.openfoodfacts.org/images/products/352/104/204/0092/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/352/104/204/0092/nutrition_fr.24.200.jpg	25
624	Rillettes de Saumon rose du Pacifique Ronde des Mers	Ronde des Mers Marque Rep├¿re		b	https://world.openfoodfacts.org/product/3564706587243/rillettes-de-saumon-rose-du-pacifique-ronde-des-mers-ronde-des-mers-marque-repere	https://images.openfoodfacts.org/images/products/356/470/658/7243/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/356/470/658/7243/nutrition_fr.13.200.jpg	25
625	B├ótonnets de surimi	Colruyt	Colruyt	c	https://world.openfoodfacts.org/product/5400141113655/batonnets-de-surimi-colruyt	https://images.openfoodfacts.org/images/products/540/014/111/3655/front_fr.9.400.jpg	\N	25
626	Croques saumon	Briau		b	https://world.openfoodfacts.org/product/3571495140047/croques-saumon-briau	https://images.openfoodfacts.org/images/products/357/149/514/0047/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/357/149/514/0047/nutrition_fr.28.200.jpg	25
627	Sardines ├á l'huile d'olive	Zapi	Aldi	b	https://world.openfoodfacts.org/product/27052549/sardines-a-l-huile-d-olive-zapi	https://images.openfoodfacts.org/images/products/27052549/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/27052549/nutrition_fr.26.200.jpg	25
628	Filets d anchois	La Mon├®gasque		d	https://world.openfoodfacts.org/product/3175690065114/filets-d-anchois-la-monegasque	https://images.openfoodfacts.org/images/products/317/569/006/5114/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/317/569/006/5114/nutrition_fr.12.200.jpg	25
629	Argeta, Thunfisch	Argeta		d	https://world.openfoodfacts.org/product/3838975566569/argeta-thunfisch	https://images.openfoodfacts.org/images/products/383/897/556/6569/front_fr.4.400.jpg	\N	25
630	Sardines huil.olive extra v.St Gil.	Saveurs de nos R├®gions		b	https://world.openfoodfacts.org/product/20290221/sardines-huil-olive-extra-v-st-gil-saveurs-de-nos-regions	https://images.openfoodfacts.org/images/products/20290221/front_fr.52.400.jpg	https://images.openfoodfacts.org/images/products/20290221/nutrition_fr.54.200.jpg	25
632	Filet de maquereaux	Petit Navire	carrefour.fr	c	https://world.openfoodfacts.org/product/3019081241193/filet-de-maquereaux-petit-navire	https://images.openfoodfacts.org/images/products/301/908/124/1193/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/301/908/124/1193/nutrition_fr.19.200.jpg	25
633	Surimi	Compagnie des peches saint maloCompagnie des P├¬ches Saint-Malo	E.Leclerc,Auchan,Monoprix,Magasin U,Lidl,Carrefour,Cora,Franprix, carrefour.fr	c	https://world.openfoodfacts.org/product/3521042206511/surimi-compagnie-des-peches-saint-malocompagnie-des-peches-saint-malo	https://images.openfoodfacts.org/images/products/352/104/220/6511/front_fr.74.400.jpg	https://images.openfoodfacts.org/images/products/352/104/220/6511/nutrition_fr.68.200.jpg	25
634	Filet de maquereaux grill├®s nature	Petit Navire	carrefour.fr	c	https://world.openfoodfacts.org/product/3019081241582/filet-de-maquereaux-grilles-nature-petit-navire	https://images.openfoodfacts.org/images/products/301/908/124/1582/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/301/908/124/1582/nutrition_fr.32.200.jpg	25
635	Miettes de thon - tomates et herbes de provence	Petit Navire	carrefour.fr	b	https://world.openfoodfacts.org/product/3019081241551/miettes-de-thon-tomates-et-herbes-de-provence-petit-navire	https://images.openfoodfacts.org/images/products/301/908/124/1551/front_fr.49.400.jpg	https://images.openfoodfacts.org/images/products/301/908/124/1551/nutrition_fr.55.200.jpg	25
636	Nuggets de merluza	Pescanova		b	https://world.openfoodfacts.org/product/8410063066325/nuggets-de-merluza-pescanova	https://images.openfoodfacts.org/images/products/841/006/306/6325/front_fr.4.400.jpg	\N	25
637	Thon au naturel	Saupiquet	Delhaize	a	https://world.openfoodfacts.org/product/3165950114010/thon-au-naturel-saupiquet	https://images.openfoodfacts.org/images/products/316/595/011/4010/front_fr.18.400.jpg	\N	25
638	Rillettes de thon piment	Saupiquet	Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/3165950218510/rillettes-de-thon-piment-saupiquet	https://images.openfoodfacts.org/images/products/316/595/021/8510/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/316/595/021/8510/nutrition_fr.34.200.jpg	25
639	Thon entier au naturel-Petit Navire	Petit Navire	carrefour.fr	b	https://world.openfoodfacts.org/product/3019081240806/thon-entier-au-naturel-petit-navire	https://images.openfoodfacts.org/images/products/301/908/124/0806/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/301/908/124/0806/nutrition_fr.25.200.jpg	25
1491	Gyoza a la crevette			b	https://world.openfoodfacts.org/product/3760192940726/gyoza-a-la-crevette	https://images.openfoodfacts.org/images/products/376/019/294/0726/front_fr.4.400.jpg	\N	27
640	Petits Coraya	Coraya		b	https://world.openfoodfacts.org/product/3276170020019/petits-coraya	https://images.openfoodfacts.org/images/products/327/617/002/0019/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/327/617/002/0019/nutrition_fr.17.200.jpg	25
641	Fish sticks	Everyday	Colruyt	b	https://world.openfoodfacts.org/product/5400141213645/fish-sticks-everyday	https://images.openfoodfacts.org/images/products/540/014/121/3645/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/540/014/121/3645/nutrition_fr.12.200.jpg	25
642	Roul├® De Surimi			c	https://world.openfoodfacts.org/product/3760048440448/roule-de-surimi	https://images.openfoodfacts.org/images/products/376/004/844/0448/front_fr.4.400.jpg	\N	25
644	SoFish Fillets Salmon style	sofine	Delhaize	b	https://world.openfoodfacts.org/product/8718885891393/sofish-fillets-salmon-style-sofine	https://images.openfoodfacts.org/images/products/871/888/589/1393/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/871/888/589/1393/nutrition_fr.10.200.jpg	25
645	Thon au naturel	Boni SelectionBoni		b	https://world.openfoodfacts.org/product/5400141334081/thon-au-naturel-boni-selectionboni	https://images.openfoodfacts.org/images/products/540/014/133/4081/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/540/014/133/4081/nutrition_fr.30.200.jpg	25
648	Miettes De Thon	Leader Price	Leader Price	b	https://world.openfoodfacts.org/product/3263851280428/miettes-de-thon-leader-price	https://images.openfoodfacts.org/images/products/326/385/128/0428/front_fr.4.400.jpg	\N	25
650	Fish sticks	iglo	Delhaize	b	https://world.openfoodfacts.org/product/5414807004027/fish-sticks-iglo	https://images.openfoodfacts.org/images/products/541/480/700/4027/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/541/480/700/4027/nutrition_fr.26.200.jpg	25
654	Thon rose	Migros	Migros	b	https://world.openfoodfacts.org/product/7613312223017/thon-rose-migros	https://images.openfoodfacts.org/images/products/761/331/222/3017/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/761/331/222/3017/nutrition_fr.39.200.jpg	25
656	Thon ├á la tomate	Pescamar		b	https://world.openfoodfacts.org/product/8410599024073/thon-a-la-tomate-pescamar	https://images.openfoodfacts.org/images/products/841/059/902/4073/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/841/059/902/4073/nutrition_fr.25.200.jpg	25
657	Anchois  ├á l'huile dÔÇÖolive roules aux c├ópres	Imperial	Delhaize	d	https://world.openfoodfacts.org/product/5410363010144/anchois-a-l-huile-d-olive-roules-aux-capres-imperial	https://images.openfoodfacts.org/images/products/541/036/301/0144/front_fr.11.400.jpg	\N	25
661	Thon Entier ├á l'huile de Tournesol	Leader Price	Leader Price	b	https://world.openfoodfacts.org/product/3263851280626/thon-entier-a-l-huile-de-tournesol-leader-price	https://images.openfoodfacts.org/images/products/326/385/128/0626/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/326/385/128/0626/nutrition_fr.20.200.jpg	25
663	Thon P├óle Entier (dans lÔÇÖhuile dÔÇÖolive pure)			b	https://world.openfoodfacts.org/product/0061362433301/thon-pale-entier-dans-l-huile-d-olive-pure	https://images.openfoodfacts.org/images/products/006/136/243/3301/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/006/136/243/3301/nutrition_fr.22.200.jpg	25
665	Sardines ├á l'huile de tournesol			c	https://world.openfoodfacts.org/product/8410149061060/sardines-a-l-huile-de-tournesol	https://images.openfoodfacts.org/images/products/841/014/906/1060/front_fr.4.400.jpg	\N	25
666	sardine a la tomate	Cap Rousset		c	https://world.openfoodfacts.org/product/3251870002800/sardine-tomate-cap-rousset	https://images.openfoodfacts.org/images/products/325/187/000/2800/front_fr.11.400.jpg	\N	25
667	Rillettes de Maquereaux	La Cancalaise	Carrefour,E.leclerc,Auchan,Lidl,Carrefour Market,Magasin U	d	https://world.openfoodfacts.org/product/3760023263987/rillettes-de-maquereaux-la-cancalaise	https://images.openfoodfacts.org/images/products/376/002/326/3987/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/376/002/326/3987/nutrition_fr.9.200.jpg	26
668	Rillettes de Saumon rose du Pacifique Ronde des Mers	Ronde des Mers Marque Rep├¿re		b	https://world.openfoodfacts.org/product/3564706587243/rillettes-de-saumon-rose-du-pacifique-ronde-des-mers-ronde-des-mers-marque-repere	https://images.openfoodfacts.org/images/products/356/470/658/7243/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/356/470/658/7243/nutrition_fr.13.200.jpg	26
669	Rillettes de thon piment	Saupiquet	Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/3165950218510/rillettes-de-thon-piment-saupiquet	https://images.openfoodfacts.org/images/products/316/595/021/8510/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/316/595/021/8510/nutrition_fr.34.200.jpg	26
670	Girasoli Tomate Mozzarella Basilic	Lustucru,Lustucru s├®lection	Auchan,carrefour.fr	c	https://world.openfoodfacts.org/product/3240931545257/girasoli-tomate-mozzarella-basilic-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/5257/front_fr.94.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5257/nutrition_fr.75.200.jpg	27
671	8 GYOSA aux crevettes	Thiriet	Thiriet	b	https://world.openfoodfacts.org/product/3292590883959/8-gyosa-aux-crevettes-thiriet	https://images.openfoodfacts.org/images/products/329/259/088/3959/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/329/259/088/3959/nutrition_fr.16.200.jpg	27
672	Girasoli potiron & petits oignons grill├®s	Rana Giovanni Rana	Carrefour,E.leclerc,Auchan,Carrefour Market	a	https://world.openfoodfacts.org/product/8001665712873/girasoli-potiron-petits-oignons-grilles-rana-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/571/2873/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/800/166/571/2873/nutrition_fr.5.200.jpg	27
675	Ravioli aux l├®gumes	Carrefour	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3560070748877/ravioli-aux-legumes-carrefour	https://images.openfoodfacts.org/images/products/356/007/074/8877/front_fr.43.400.jpg	https://images.openfoodfacts.org/images/products/356/007/074/8877/nutrition_fr.41.200.jpg	27
676	Ravioli pur boeuf	U	Magasins U	b	https://world.openfoodfacts.org/product/3256225428861/ravioli-pur-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/542/8861/front_fr.72.400.jpg	https://images.openfoodfacts.org/images/products/325/622/542/8861/nutrition_fr.60.200.jpg	27
678	Ravioli de b┼ôuf	Preziosi Sapori,Grandi Pastai Italiani	Auchan	d	https://world.openfoodfacts.org/product/8008375018912/ravioli-de-boeuf-preziosi-sapori	https://images.openfoodfacts.org/images/products/800/837/501/8912/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/800/837/501/8912/nutrition_fr.39.200.jpg	27
679	Ravioli frais au foie gras	Roberto SA Meyrin, Roberto	Migros	b	https://world.openfoodfacts.org/product/7610695002673/ravioli-frais-au-foie-gras-roberto-sa-meyrin	https://images.openfoodfacts.org/images/products/761/069/500/2673/front_fr.3.400.jpg	\N	27
680	Ravioli frais ├®pinard & ricotta	Roberto SA Meyrin	Migros	a	https://world.openfoodfacts.org/product/7617027981514/ravioli-frais-epinard-ricotta-roberto-sa-meyrin	https://images.openfoodfacts.org/images/products/761/702/798/1514/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/702/798/1514/nutrition_fr.6.200.jpg	27
682	Ravioli with 4 Cheeses	Rana		d	https://world.openfoodfacts.org/product/8001665713153/ravioli-with-4-cheeses-rana	https://images.openfoodfacts.org/images/products/800/166/571/3153/front_en.4.400.jpg	\N	27
683	Ravioli with Mushrooms	Rana		d	https://world.openfoodfacts.org/product/8001665713160/ravioli-with-mushrooms-rana	https://images.openfoodfacts.org/images/products/800/166/571/3160/front_en.4.400.jpg	\N	27
684	Ravioli Ricotta & Epinards	Danival	Botanic	c	https://world.openfoodfacts.org/product/3431590001912/ravioli-ricotta-epinards-danival	https://images.openfoodfacts.org/images/products/343/159/000/1912/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/1912/nutrition_fr.29.200.jpg	27
685	ravioli pur boeuf	C├┤t├® Table,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700994771/ravioli-pur-boeuf-cote-table	https://images.openfoodfacts.org/images/products/356/470/099/4771/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/356/470/099/4771/nutrition_fr.12.200.jpg	27
686	Ravioli Saumon	William Saurin	Restaurants du Coeur	c	https://world.openfoodfacts.org/product/3261055945624/ravioli-saumon-william-saurin	https://images.openfoodfacts.org/images/products/326/105/594/5624/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/5624/nutrition_fr.13.200.jpg	27
688	Ravioli de tomate y mozzarella	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/8431876261578/ravioli-de-tomate-y-mozzarella-carrefour	https://images.openfoodfacts.org/images/products/843/187/626/1578/front_es.18.400.jpg	https://images.openfoodfacts.org/images/products/843/187/626/1578/nutrition_es.11.200.jpg	27
690	Ravioli bio carrefour emmental basilic	Carrefour Bio,Carrefour	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3245413942876/ravioli-bio-carrefour-emmental-basilic-carrefour-bio	https://images.openfoodfacts.org/images/products/324/541/394/2876/front_fr.38.400.jpg	https://images.openfoodfacts.org/images/products/324/541/394/2876/nutrition_fr.40.200.jpg	27
691	Ravioli	Boni, Colruyt	colruyt	b	https://world.openfoodfacts.org/product/5400141271072/ravioli-boni	https://images.openfoodfacts.org/images/products/540/014/127/1072/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/540/014/127/1072/nutrition_fr.19.200.jpg	27
693	Ravioli tomates tofu & basilic	Cereal bio	Market, carrefour.fr	a	https://world.openfoodfacts.org/product/3175681170841/ravioli-tomates-tofu-basilic-cereal-bio	https://images.openfoodfacts.org/images/products/317/568/117/0841/front_fr.79.400.jpg	https://images.openfoodfacts.org/images/products/317/568/117/0841/nutrition_fr.81.200.jpg	27
695	Raviolis au B┼ôuf Sauce Italienne	Valbio	Biocoop Caluire	a	https://world.openfoodfacts.org/product/3260938500813/raviolis-au-boeuf-sauce-italienne-valbio	https://images.openfoodfacts.org/images/products/326/093/850/0813/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/326/093/850/0813/nutrition_fr.22.200.jpg	27
698	Zapetti Bio Ravioli pur b┼ôuf	Zapetti	Leclerc,Carrefour,carrefour.fr	b	https://world.openfoodfacts.org/product/3021690029147/zapetti-bio-ravioli-pur-boeuf	https://images.openfoodfacts.org/images/products/302/169/002/9147/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9147/nutrition_fr.40.200.jpg	27
699	Raviolis crevette			b	https://world.openfoodfacts.org/product/3856470101382/raviolis-crevette	https://images.openfoodfacts.org/images/products/385/647/010/1382/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/385/647/010/1382/nutrition_fr.15.200.jpg	27
700	Beef ravioli	Kroger	Kroger	a	https://world.openfoodfacts.org/product/0011110853707/beef-ravioli-kroger	https://images.openfoodfacts.org/images/products/001/111/085/3707/front_en.7.400.jpg	\N	27
701	ravioli pur boeuf fran├ºais	Zapetti	carrefour.fr	b	https://world.openfoodfacts.org/product/3021690029086/ravioli-pur-boeuf-francais-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/9086/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9086/nutrition_fr.22.200.jpg	27
702	Ravioli integrali con ripieno di ceci	Antica Julia		a	https://world.openfoodfacts.org/product/8052740613561/ravioli-integrali-con-ripieno-di-ceci-antica-julia	https://images.openfoodfacts.org/images/products/805/274/061/3561/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/805/274/061/3561/nutrition_it.8.200.jpg	27
705	gyoza			b	https://world.openfoodfacts.org/product/3760197637386/gyoza	https://images.openfoodfacts.org/images/products/376/019/763/7386/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/376/019/763/7386/nutrition_fr.23.200.jpg	27
707	Ravioli Caprese	Migros	Migros	d	https://world.openfoodfacts.org/product/7613404621349/ravioli-caprese-migros	https://images.openfoodfacts.org/images/products/761/340/462/1349/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/340/462/1349/nutrition_fr.5.200.jpg	27
708	Bio Ravioli	NatureActive	Aldi	d	https://world.openfoodfacts.org/product/4099200425870/bio-ravioli-natureactive	https://images.openfoodfacts.org/images/products/409/920/042/5870/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/409/920/042/5870/nutrition_fr.5.200.jpg	27
709	Bio Ravioli	Nature Active Bio	Aldi	c	https://world.openfoodfacts.org/product/4099200425863/bio-ravioli-nature-active-bio	https://images.openfoodfacts.org/images/products/409/920/042/5863/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/409/920/042/5863/nutrition_fr.5.200.jpg	27
711	Ravioli champignons ├á la cr├¿me	L├®a Nature Jardin Bio	Market,Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3456300012934/ravioli-champignons-a-la-creme-lea-nature-jardin-bio	https://images.openfoodfacts.org/images/products/345/630/001/2934/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/345/630/001/2934/nutrition_fr.34.200.jpg	27
712		Ajinomoto	carrefour.fr	c	https://world.openfoodfacts.org/product/3760197637768/gyoza-boeuf-ajinomoto	https://images.openfoodfacts.org/images/products/376/019/763/7768/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/376/019/763/7768/nutrition_en.5.200.jpg	27
1492	Gyoza crevettes	Delhaize	Delhaize	b	https://world.openfoodfacts.org/product/5400112494110/gyoza-crevettes-delhaize	https://images.openfoodfacts.org/images/products/540/011/249/4110/front_fr.4.400.jpg	\N	27
713	Ravioli fromage de bethmale			d	https://world.openfoodfacts.org/product/3770012466022/ravioli-fromage-de-bethmale	https://images.openfoodfacts.org/images/products/377/001/246/6022/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/377/001/246/6022/nutrition_fr.5.200.jpg	27
714	Fiori Spinaci e Ricotta	Migros Bio,Migros	Migros	b	https://world.openfoodfacts.org/product/3176132693463810002452/fiori-spinaci-e-ricotta-migros-bio	https://images.openfoodfacts.org/images/products/317/613/269/3463810002452/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/317/613/269/3463810002452/nutrition_fr.9.200.jpg	27
715	Ravioli ch├¿vre ciboulette	L├ëA NATURE	Cora,Leclerc, carrefour.fr	b	https://world.openfoodfacts.org/product/3456300007992/ravioli-chevre-ciboulette-lea-nature	https://images.openfoodfacts.org/images/products/345/630/000/7992/front_fr.70.400.jpg	https://images.openfoodfacts.org/images/products/345/630/000/7992/nutrition_fr.72.200.jpg	27
716	Ravioli boeuf	Lustucru,Lustucru selection	Franprix,Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/3240930116120/ravioli-boeuf-lustucru	https://images.openfoodfacts.org/images/products/324/093/011/6120/front_fr.107.400.jpg	https://images.openfoodfacts.org/images/products/324/093/011/6120/nutrition_fr.55.200.jpg	27
717	Lustucru ravioli jambon fromage	Lustucru, Lustucru selection	Magasins U, carrefour.fr	c	https://world.openfoodfacts.org/product/3240932425206/lustucru-ravioli-jambon-fromage	https://images.openfoodfacts.org/images/products/324/093/242/5206/front_fr.60.400.jpg	https://images.openfoodfacts.org/images/products/324/093/242/5206/nutrition_fr.56.200.jpg	27
718	Ravioles ├á po├¬ler aux fromages	Lustucru,Lustucru selection	Magasins U, carrefour.fr	c	https://world.openfoodfacts.org/product/3240931538204/ravioles-a-poeler-aux-fromages-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/8204/front_fr.55.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/8204/nutrition_fr.14.200.jpg	27
719	Lustucru ravioli boeuf bolognaise	Lustucru,Lustucru selection	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3240931533841/lustucru-ravioli-boeuf-bolognaise	https://images.openfoodfacts.org/images/products/324/093/153/3841/front_fr.69.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/3841/nutrition_fr.52.200.jpg	27
720	Lustucru ravioli jambon fromage format maxi500g	Lustucru, Lustucru selection		c	https://world.openfoodfacts.org/product/3240931539577/lustucru-ravioli-jambon-fromage-format-maxi500g	https://images.openfoodfacts.org/images/products/324/093/153/9577/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/9577/nutrition_fr.7.200.jpg	27
721	Ch├¿vre tomates confites	Lustucru,Lustucru selection	carrefour.fr	d	https://world.openfoodfacts.org/product/3240931545288/chevre-tomates-confites-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/5288/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5288/nutrition_fr.33.200.jpg	27
722	Lustucru grande raviole bleu d'auvergne	Lustucru,Lustucru selection	carrefour.fr	d	https://world.openfoodfacts.org/product/3240931546445/lustucru-grande-raviole-bleu-d-auvergne	https://images.openfoodfacts.org/images/products/324/093/154/6445/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/6445/nutrition_fr.5.200.jpg	27
723	Lustucru ravioli jambon cru	Lustucru, Lustucru selection		c	https://world.openfoodfacts.org/product/3240931546483/lustucru-ravioli-jambon-cru	https://images.openfoodfacts.org/images/products/324/093/154/6483/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/6483/nutrition_fr.5.200.jpg	27
724	Lustucru grande raviole comte	Lustucru,Lustucru selection	carrefour.fr	d	https://world.openfoodfacts.org/product/3240931546490/lustucru-grande-raviole-comte	https://images.openfoodfacts.org/images/products/324/093/154/6490/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/6490/nutrition_fr.5.200.jpg	27
725	Ravioli 4 fromage	Lustucru, Lustucru selection		b	https://world.openfoodfacts.org/product/3240931546636/ravioli-4-fromage-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/6636/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/6636/nutrition_fr.27.200.jpg	27
726	Girasoli c├¿pes parmesan	Lustucru, Lustucru selection	carrefour.fr	c	https://world.openfoodfacts.org/product/3240931545332/girasoli-cepes-parmesan-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/5332/front_fr.53.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5332/nutrition_fr.49.200.jpg	27
727	Lustucru selection ravioli 4 fromages	Lustucru, Lustucru selection	Magasins U,Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3240931543390/lustucru-selection-ravioli-4-fromages	https://images.openfoodfacts.org/images/products/324/093/154/3390/front_fr.80.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/3390/nutrition_fr.47.200.jpg	27
728	Lustucru ravioli b┼ôuf bolognaise 500g format maxi	Lustucru,Lustucru selection		b	https://world.openfoodfacts.org/product/3240931539560/lustucru-ravioli-boeuf-bolognaise-500g-format-maxi	https://images.openfoodfacts.org/images/products/324/093/153/9560/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/9560/nutrition_fr.12.200.jpg	27
729		Giovanni Rana	Alcampo	c	https://world.openfoodfacts.org/product/8001665126090/giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/6090/front_es.9.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/6090/nutrition_es.34.200.jpg	27
730	Raviolis aux porcs et crevettes	EA SARL		b	https://world.openfoodfacts.org/product/3339230009956/raviolis-aux-porcs-et-crevettes-ea-sarl	https://images.openfoodfacts.org/images/products/333/923/000/9956/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/333/923/000/9956/nutrition_fr.12.200.jpg	27
732	Gyoza Gem├╝se	Steinhaus		c	https://world.openfoodfacts.org/product/4009337905442/gyoza-gemuse-steinhaus	https://images.openfoodfacts.org/images/products/400/933/790/5442/front_de.16.400.jpg	https://images.openfoodfacts.org/images/products/400/933/790/5442/nutrition_de.18.200.jpg	27
733	Ravioli Ricotta Epinards	Bio Village,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564707101981/ravioli-ricotta-epinards-bio-village	https://images.openfoodfacts.org/images/products/356/470/710/1981/front_fr.56.400.jpg	https://images.openfoodfacts.org/images/products/356/470/710/1981/nutrition_fr.58.200.jpg	27
734	Beef ravioli	SE Grocers		c	https://world.openfoodfacts.org/product/0038259109793/beef-ravioli-se-grocers	https://images.openfoodfacts.org/images/products/003/825/910/9793/front_en.9.400.jpg	https://images.openfoodfacts.org/images/products/003/825/910/9793/nutrition_en.11.200.jpg	27
1627	Fiori spinaci e ricotta	Free Form	Coop	c	https://world.openfoodfacts.org/product/7613356220690/fiori-spinaci-e-ricotta-free-form	https://images.openfoodfacts.org/images/products/761/335/622/0690/front_fr.4.400.jpg	\N	27
736	Ravioli aux l├®gumes du soleil	Comme j'aime		a	https://world.openfoodfacts.org/product/3700977733112/ravioli-aux-legumes-du-soleil-comme-j-aime	https://images.openfoodfacts.org/images/products/370/097/773/3112/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/370/097/773/3112/nutrition_fr.19.200.jpg	27
741	ravioli. burrata pomodori arrostiti	Herkku food market	Prisma	c	https://world.openfoodfacts.org/product/6415712715717/ravioli-burrata-pomodori-arrostiti-herkku-food-market	https://images.openfoodfacts.org/images/products/641/571/271/5717/front_fi.4.400.jpg	\N	27
742	Ravioli pur boeuf	Mon bon Bio	Market, carrefour.fr	b	https://world.openfoodfacts.org/product/3245360002289/ravioli-pur-boeuf-mon-bon-bio	https://images.openfoodfacts.org/images/products/324/536/000/2289/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/324/536/000/2289/nutrition_fr.28.200.jpg	27
745	Ravioli champignons ail des ours	Comptoir du Pastier	Biocoop	b	https://world.openfoodfacts.org/product/3266140061234/ravioli-champignons-ail-des-ours-comptoir-du-pastier	https://images.openfoodfacts.org/images/products/326/614/006/1234/front_fr.41.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/1234/nutrition_fr.44.200.jpg	27
746	Ravioli sauce bolognaise  riche en boeuf	Zapetti	carrefour.fr,Carrefour	b	https://world.openfoodfacts.org/product/3021690029116/ravioli-sauce-bolognaise-riche-en-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/9116/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9116/nutrition_fr.23.200.jpg	27
747	Ravioli Pur B┼ôuf	Carrefour	Carrefour,carrefour.fr	b	https://world.openfoodfacts.org/product/3245413852816/ravioli-pur-boeuf-carrefour	https://images.openfoodfacts.org/images/products/324/541/385/2816/front_fr.27.400.jpg	\N	27
748	Gyoza Huhn	Steinhaus	HIT	c	https://world.openfoodfacts.org/product/4009337905459/gyoza-huhn-steinhaus	https://images.openfoodfacts.org/images/products/400/933/790/5459/front_de.6.400.jpg	https://images.openfoodfacts.org/images/products/400/933/790/5459/nutrition_de.8.200.jpg	27
749	Gyoza Edamame	Steinhaus	Galeria,REWE	d	https://world.openfoodfacts.org/product/4009337905466/gyoza-edamame-steinhaus	https://images.openfoodfacts.org/images/products/400/933/790/5466/front_de.20.400.jpg	https://images.openfoodfacts.org/images/products/400/933/790/5466/nutrition_de.19.200.jpg	27
750	Gem├╝se dal Ravioli Bio Vegan	followfood		b	https://world.openfoodfacts.org/product/4250073456228/gemuse-dal-ravioli-bio-vegan-followfood	https://images.openfoodfacts.org/images/products/425/007/345/6228/front_de.19.400.jpg	https://images.openfoodfacts.org/images/products/425/007/345/6228/nutrition_de.21.200.jpg	27
752	'Nduja & Mascarpone Ravioli	Herkku	S-market	d	https://world.openfoodfacts.org/product/6415712715755/nduja-mascarpone-ravioli-herkku	https://images.openfoodfacts.org/images/products/641/571/271/5755/front_fi.8.400.jpg	https://images.openfoodfacts.org/images/products/641/571/271/5755/nutrition_fi.15.200.jpg	27
753	Ravioli ricotta ed erbette	Pam & Panorama,i Tesori		c	https://world.openfoodfacts.org/product/8004263672938/ravioli-ricotta-ed-erbette-pam-panorama	https://images.openfoodfacts.org/images/products/800/426/367/2938/front_it.7.400.jpg	https://images.openfoodfacts.org/images/products/800/426/367/2938/nutrition_it.9.200.jpg	27
754	Ravioli frais aux asp├¿rges	Roberto SA Meyrin,Roberto	Coop	b	https://world.openfoodfacts.org/product/7610695002734/ravioli-frais-aux-asperges-roberto-sa-meyrin	https://images.openfoodfacts.org/images/products/761/069/500/2734/front_fr.4.400.jpg	\N	27
755	Ravioli frais au chevreuil	Roberto SA Meyrin,Roberto	Coop	a	https://world.openfoodfacts.org/product/7610695002697/ravioli-frais-au-chevreuil-roberto-sa-meyrin	https://images.openfoodfacts.org/images/products/761/069/500/2697/front_fr.7.400.jpg	\N	27
756	Mezzelune alla carne black angus	Migros Selection	Migros	c	https://world.openfoodfacts.org/product/7613404028452/mezzelune-alla-carne-black-angus-migros-selection	https://images.openfoodfacts.org/images/products/761/340/402/8452/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/340/402/8452/nutrition_fr.5.200.jpg	27
757	Girasoli Bolognese	Garofalo	Migros	c	https://world.openfoodfacts.org/product/8000139930997/girasoli-bolognese-garofalo	https://images.openfoodfacts.org/images/products/800/013/993/0997/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/800/013/993/0997/nutrition_fr.12.200.jpg	27
758	Klassisk RAVIOLI	Fontana	K-citymarket	c	https://world.openfoodfacts.org/product/7316150971811/klassisk-ravioli-fontana	https://images.openfoodfacts.org/images/products/731/615/097/1811/front_fi.4.400.jpg	https://images.openfoodfacts.org/images/products/731/615/097/1811/nutrition_fi.10.200.jpg	27
759	RAVIOLI AL BRASATO	Coop,Betty Bossi	Coop	b	https://world.openfoodfacts.org/product/7613413760237/ravioli-al-brasato-coop	https://images.openfoodfacts.org/images/products/761/341/376/0237/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/341/376/0237/nutrition_fr.5.200.jpg	27
760	Ravioli demi-lune tofu basilic GRTA	Roberto SA Meyrin	Migros	a	https://world.openfoodfacts.org/product/7610695005063/ravioli-demi-lune-tofu-basilic-grta-roberto-sa-meyrin	https://images.openfoodfacts.org/images/products/761/069/500/5063/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/069/500/5063/nutrition_fr.5.200.jpg	27
761	Vegetarian ravioli	By Sainsbury's	Sainsbury's	b	https://world.openfoodfacts.org/product/00683852/vegetarian-ravioli-by-sainsbury-s	https://images.openfoodfacts.org/images/products/00683852/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/00683852/nutrition_en.5.200.jpg	27
762	Ravioli	Qualit├® & Prix		d	https://world.openfoodfacts.org/product/7610800016649/ravioli-qualite-prix	https://images.openfoodfacts.org/images/products/761/080/001/6649/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/761/080/001/6649/nutrition_fr.9.200.jpg	27
763	Fiori al salmone	Betty Bossi,Coop	Coop	b	https://world.openfoodfacts.org/product/7613356046719/fiori-al-salmone-betty-bossi	https://images.openfoodfacts.org/images/products/761/335/604/6719/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/761/335/604/6719/nutrition_fr.22.200.jpg	27
765	Tortelloni Pomodoro e Mozzarella	Mclassic	Migros	b	https://world.openfoodfacts.org/product/7613404034330/tortelloni-pomodoro-e-mozzarella-mclassic	https://images.openfoodfacts.org/images/products/761/340/403/4330/front_fr.8.400.jpg	\N	27
766	Ravioli Artischoken ai Carciofi	Garofalo	Migros	b	https://world.openfoodfacts.org/product/8000139929212/ravioli-artischoken-ai-carciofi-garofalo	https://images.openfoodfacts.org/images/products/800/013/992/9212/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/800/013/992/9212/nutrition_fr.12.200.jpg	27
767	Big Eat Ravioli bolognese	Heinz	Woolworths	b	https://world.openfoodfacts.org/product/9300657033965/big-eat-ravioli-bolognese-heinz	https://images.openfoodfacts.org/images/products/930/065/703/3965/front_en.4.400.jpg	https://images.openfoodfacts.org/images/products/930/065/703/3965/nutrition_en.10.200.jpg	27
768	Latina Beef Ravioli	Latina,General Mills Australia	Piedemonte's IGA, Woolworths	a	https://world.openfoodfacts.org/product/93231251/latina-beef-ravioli	https://images.openfoodfacts.org/images/products/93231251/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/93231251/nutrition_en.7.200.jpg	27
769	Fiori courge et sauge	Migros Bio	Migros	b	https://world.openfoodfacts.org/product/7613269901549/fiori-courge-et-sauge-migros-bio	https://images.openfoodfacts.org/images/products/761/326/990/1549/front_fr.4.400.jpg	\N	27
770	Felix Ravioli i k├Âttf├ñrss├Ñs	Felix,Orkla Foods	ICA Supermarket	c	https://world.openfoodfacts.org/product/7310240064322/felix-ravioli-i-kottfarssas	https://images.openfoodfacts.org/images/products/731/024/006/4322/front_sv.4.400.jpg	https://images.openfoodfacts.org/images/products/731/024/006/4322/nutrition_sv.10.200.jpg	27
771	Latina Fresh Roast Chicken & Garlic Ravioli	Latina Fresh		a	https://world.openfoodfacts.org/product/9312353004590/latina-fresh-roast-chicken-garlic-ravioli	https://images.openfoodfacts.org/images/products/931/235/300/4590/front_en.5.400.jpg	https://images.openfoodfacts.org/images/products/931/235/300/4590/nutrition_en.11.200.jpg	27
773	Gourmet Girasoli Ricotta Mit Mascarpone & Zartem Blattspinat	Rana,Giovanni Rana	Migros	d	https://world.openfoodfacts.org/product/8001665128247/gourmet-girasoli-ricotta-mit-mascarpone-zartem-blattspinat-rana	https://images.openfoodfacts.org/images/products/800/166/512/8247/front_de.38.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8247/nutrition_de.40.200.jpg	27
775	Ravioli Napoli farcis ├á la viande de boeuf	Bischofszell		b	https://world.openfoodfacts.org/product/7616800836744/ravioli-napoli-farcis-a-la-viande-de-boeuf-bischofszell	https://images.openfoodfacts.org/images/products/761/680/083/6744/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/761/680/083/6744/nutrition_fr.9.200.jpg	27
777	Ravioli aux oeufs	M-Budget,Migros	Migros	b	https://world.openfoodfacts.org/product/7616800811291/ravioli-aux-oeufs-m-budget	https://images.openfoodfacts.org/images/products/761/680/081/1291/front_fr.16.400.jpg	\N	27
778	Ravioli alla Bolognese	M Classic	Migros	c	https://world.openfoodfacts.org/product/7616800705200/ravioli-alla-bolognese-stuffed-with-beef-m-classic	https://images.openfoodfacts.org/images/products/761/680/070/5200/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/761/680/070/5200/nutrition_fr.27.200.jpg	27
779	Ravioli alla Napoletana M-Classic	Migros,M-Classic,Bischofszell	Migros	b	https://world.openfoodfacts.org/product/7616800705057/ravioli-alla-napoletana-m-classic-migros	https://images.openfoodfacts.org/images/products/761/680/070/5057/front_fr.4.400.jpg	\N	27
780	Ravioli alla Napoletana M-Classic	M-Classic	Migros	b	https://world.openfoodfacts.org/product/7616800705101/ravioli-alla-napoletana-m-classic	https://images.openfoodfacts.org/images/products/761/680/070/5101/front_fr.4.400.jpg	\N	27
781	Ravioli	Hero		c	https://world.openfoodfacts.org/product/7614200011570/ravioli-hero	https://images.openfoodfacts.org/images/products/761/420/001/1570/front_en.3.400.jpg	\N	27
782	Triangoli	Hero		c	https://world.openfoodfacts.org/product/7614200011747/triangoli-hero	https://images.openfoodfacts.org/images/products/761/420/001/1747/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/761/420/001/1747/nutrition_fr.7.200.jpg	27
784	Best of Dim Sum	Anna's Best,Migros	Migros	b	https://world.openfoodfacts.org/product/7613269508052/best-of-dim-sum-with-shrimps-vegetables-anna-s-best	https://images.openfoodfacts.org/images/products/761/326/950/8052/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/761/326/950/8052/nutrition_fr.29.200.jpg	27
785	Fiori Spinaci e Ricotta	Migros	Migros	b	https://world.openfoodfacts.org/product/7613269346388/fiori-spinaci-e-ricotta-migros	https://images.openfoodfacts.org/images/products/761/326/934/6388/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/761/326/934/6388/nutrition_fr.23.200.jpg	27
786	P├ótes fra├«ches aux oeufs farcies au fromage et au citron	Anna's Best,Migros	Migros	c	https://world.openfoodfacts.org/product/7613269267003/pates-fraiches-aux-oeufs-farcies-au-fromage-et-au-citron-anna-s-best	https://images.openfoodfacts.org/images/products/761/326/926/7003/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/761/326/926/7003/nutrition_en.14.200.jpg	27
787	Monte Castello Vegetarisk ravioli i tomats├Ñs	Monte Castello,EMD,Axfood	Willys	b	https://world.openfoodfacts.org/product/7611612142137/monte-castello-vegetarisk-ravioli-i-tomatsas	https://images.openfoodfacts.org/images/products/761/161/214/2137/front_sv.18.400.jpg	https://images.openfoodfacts.org/images/products/761/161/214/2137/nutrition_sv.24.200.jpg	27
788	Shrimp Dim Sum	Betty Bossi	Coop	b	https://world.openfoodfacts.org/product/7610849658909/shrimp-dim-sum-betty-bossi	https://images.openfoodfacts.org/images/products/761/084/965/8909/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/761/084/965/8909/nutrition_fr.4.200.jpg	27
789	Ravioli alla bolognese	Coop,Qualit├® & Prix	Coop	c	https://world.openfoodfacts.org/product/7610800017851/quality-price-bolognese-ravioli-coop	https://images.openfoodfacts.org/images/products/761/080/001/7851/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/761/080/001/7851/nutrition_fr.12.200.jpg	27
790	Ravioli frais ├®pinards et ricotta	Roberto SA Meyrin	Coop	a	https://world.openfoodfacts.org/product/7610695002642/ravioli-frais-epinards-et-ricotta-roberto-sa-meyrin	https://images.openfoodfacts.org/images/products/761/069/500/2642/front_fr.25.400.jpg	\N	27
791	Fontana Vegetarisk Ravioli i tomats├Ñs	Fontana,Fontana Food		c	https://world.openfoodfacts.org/product/7316150470574/fontana-vegetarisk-ravioli-i-tomatsas	https://images.openfoodfacts.org/images/products/731/615/047/0574/front_sv.6.400.jpg	https://images.openfoodfacts.org/images/products/731/615/047/0574/nutrition_sv.8.200.jpg	27
792	Beef Ravioli	Heinz	Tesco	b	https://world.openfoodfacts.org/product/5000157068750/beef-ravioli-heinz	https://images.openfoodfacts.org/images/products/500/015/706/8750/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/500/015/706/8750/nutrition_en.10.200.jpg	27
793	Ravioli mit pikanter Fleischsause	real Quality	Real	b	https://world.openfoodfacts.org/product/4334011108551/ravioli-mit-pikanter-fleischsause-real-quality	https://images.openfoodfacts.org/images/products/433/401/110/8551/front_de.13.400.jpg	https://images.openfoodfacts.org/images/products/433/401/110/8551/nutrition_de.15.200.jpg	27
794	Taschki	Taschki,Dovgan	Marktkauf	b	https://world.openfoodfacts.org/product/4032549008472/taschki	https://images.openfoodfacts.org/images/products/403/254/900/8472/front_de.20.400.jpg	https://images.openfoodfacts.org/images/products/403/254/900/8472/nutrition_de.22.200.jpg	27
795	Ricotta-Ravioli	Zimmermann Bio,Zimmermann		b	https://world.openfoodfacts.org/product/4006153704402/ricotta-ravioli-zimmermann-bio	https://images.openfoodfacts.org/images/products/400/615/370/4402/front_de.5.400.jpg	https://images.openfoodfacts.org/images/products/400/615/370/4402/nutrition_de.7.200.jpg	27
796	Frische Ravioli mit Rucola und Ricotta	bio-verde,Isana,Brema		c	https://world.openfoodfacts.org/product/4000915105049/frische-ravioli-mit-rucola-und-ricotta-bio-verde	https://images.openfoodfacts.org/images/products/400/091/510/5049/front_de.13.400.jpg	https://images.openfoodfacts.org/images/products/400/091/510/5049/nutrition_de.15.200.jpg	27
797	Ravioli aux 4 fromages	Ecochard		c	https://world.openfoodfacts.org/product/3153575516616/ravioli-aux-4-fromages-ecochard	https://images.openfoodfacts.org/images/products/315/357/551/6616/front_fr.21.400.jpg	\N	27
798	Ravioli in Sauce-Bolognese	Combino	LIDL	c	https://world.openfoodfacts.org/product/20418137/ravioli-in-sauce-bolognese-combino	https://images.openfoodfacts.org/images/products/20418137/front_de.15.400.jpg	https://images.openfoodfacts.org/images/products/20418137/nutrition_de.17.200.jpg	27
801	Ravioli Bolognese	K Classic	Kaufland	c	https://world.openfoodfacts.org/product/4337185664427/ravioli-bolognese-k-classic	https://images.openfoodfacts.org/images/products/433/718/566/4427/front_de.4.400.jpg	https://images.openfoodfacts.org/images/products/433/718/566/4427/nutrition_de.10.200.jpg	27
802	Ravioli aux oeufs	Hero		c	https://world.openfoodfacts.org/product/7614200011631/ravioli-aux-oeufs-hero	https://images.openfoodfacts.org/images/products/761/420/001/1631/front_de.27.400.jpg	\N	27
803	Ravioli in Sauce Bolognese	Combino	Lidl	c	https://world.openfoodfacts.org/product/20725495/ravioli-in-sauce-bolognese-combino	https://images.openfoodfacts.org/images/products/20725495/front_de.8.400.jpg	https://images.openfoodfacts.org/images/products/20725495/nutrition_de.10.200.jpg	27
805	Ravioli vegetarisch	Penny,Greenyard Prepared Belgium NV	Penny	c	https://world.openfoodfacts.org/product/27027677/ravioli-vegetarisch-penny	https://images.openfoodfacts.org/images/products/27027677/front_de.37.400.jpg	\N	27
806	Ravioli in Tomatensauce	Gut & G├╝nstig	Edeka	c	https://world.openfoodfacts.org/product/4311596413171/ravioli-in-tomatensauce-gut-gunstig	https://images.openfoodfacts.org/images/products/431/159/641/3171/front_de.17.400.jpg	https://images.openfoodfacts.org/images/products/431/159/641/3171/nutrition_de.19.200.jpg	27
807	Ravioli, Bolognese	Gut & G├╝nstig	Spar,Edeka	b	https://world.openfoodfacts.org/product/4311596413195/ravioli-bolognese-gut-gunstig	https://images.openfoodfacts.org/images/products/431/159/641/3195/front_de.39.400.jpg	https://images.openfoodfacts.org/images/products/431/159/641/3195/nutrition_de.44.200.jpg	27
808	Gyoza - Huhn	Steinhaus	HIT,REWE	c	https://world.openfoodfacts.org/product/4009337904131/gyoza-huhn-steinhaus	https://images.openfoodfacts.org/images/products/400/933/790/4131/front_de.20.400.jpg	https://images.openfoodfacts.org/images/products/400/933/790/4131/nutrition_de.21.200.jpg	27
809	Ravioli ├®pinards et ricotta	Pasta & company group SRL	March├®	c	https://world.openfoodfacts.org/product/8029342032014/ravioli-epinards-et-ricotta-pasta-company-group-srl	https://images.openfoodfacts.org/images/products/802/934/203/2014/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/802/934/203/2014/nutrition_fr.11.200.jpg	27
810	Ravioli bolognaise	Fleury Michon	Super U,Intermarch├®,Cora,Leclerc	a	https://world.openfoodfacts.org/product/3302740057472/ravioli-bolognaise-fleury-michon	https://images.openfoodfacts.org/images/products/330/274/005/7472/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/330/274/005/7472/nutrition_fr.5.200.jpg	27
811	Wonton Raviolis aux Crevettes	Vientiane	Paris Store	b	https://world.openfoodfacts.org/product/3700003903175/wonton-raviolis-aux-crevettes-vientiane	https://images.openfoodfacts.org/images/products/370/000/390/3175/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/000/390/3175/nutrition_fr.6.200.jpg	27
812	Ravioli frit royal	Vientiane	Paris Store	b	https://world.openfoodfacts.org/product/3700003900440/ravioli-frit-royal-vientiane	https://images.openfoodfacts.org/images/products/370/000/390/0440/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/370/000/390/0440/nutrition_fr.5.200.jpg	27
813	Ravioli Bolognese	Mondo Italiano	Netto	b	https://world.openfoodfacts.org/product/4316268457224/ravioli-bolognese-mondo-italiano	https://images.openfoodfacts.org/images/products/431/626/845/7224/front_en.35.400.jpg	https://images.openfoodfacts.org/images/products/431/626/845/7224/nutrition_de.40.200.jpg	27
814	Ravioli alla pizzaiola	Pasta Nuova	Vollcorner-Biomarkt,Erdi	a	https://world.openfoodfacts.org/product/4011849500503/ravioli-alla-pizzaiola-pasta-nuova	https://images.openfoodfacts.org/images/products/401/184/950/0503/front_de.17.400.jpg	https://images.openfoodfacts.org/images/products/401/184/950/0503/nutrition_de.19.200.jpg	27
815	Girasoli	DÔÇÖantelli		d	https://world.openfoodfacts.org/product/2006050024742/girasoli-d-antelli	https://images.openfoodfacts.org/images/products/200/605/002/4742/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/200/605/002/4742/nutrition_fr.39.200.jpg	27
816	Ravioli mit Tomate und Mozzarella	REWE Bio,Zimmermann	Rewe	b	https://world.openfoodfacts.org/product/4388844037762/ravioli-mit-tomate-und-mozzarella-rewe-bio	https://images.openfoodfacts.org/images/products/438/884/403/7762/front_de.5.400.jpg	https://images.openfoodfacts.org/images/products/438/884/403/7762/nutrition_de.7.200.jpg	27
817	Ravioli Gem├╝se	K-Classic	Kaufland	b	https://world.openfoodfacts.org/product/4337185691119/ravioli-gemuse-k-classic	https://images.openfoodfacts.org/images/products/433/718/569/1119/front_en.15.400.jpg	https://images.openfoodfacts.org/images/products/433/718/569/1119/nutrition_en.17.200.jpg	27
819	Gyozas aux crevettes	Ajinomoto		b	https://world.openfoodfacts.org/product/2000000125777/gyozas-aux-crevettes-ajinomoto	https://images.openfoodfacts.org/images/products/200/000/012/5777/front_fr.4.400.jpg	\N	27
820	Ravioli aux crevettes	Food Licheng		c	https://world.openfoodfacts.org/product/2000000125778/ravioli-aux-crevettes-food-licheng	https://images.openfoodfacts.org/images/products/200/000/012/5778/front_fr.4.400.jpg	\N	27
821	Gyozas porc	Ajinomoto		c	https://world.openfoodfacts.org/product/2000000125779/gyozas-porc-ajinomoto	https://images.openfoodfacts.org/images/products/200/000/012/5779/front_fr.8.400.jpg	\N	27
823	Vegetable dumplings			c	https://world.openfoodfacts.org/product/6921665714696/vegetable-dumplings	https://images.openfoodfacts.org/images/products/692/166/571/4696/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/692/166/571/4696/nutrition_fr.11.200.jpg	27
824	Gyoza Dumplings Beef Bulgogi	Bibigo		b	https://world.openfoodfacts.org/product/2000000125700/gyoza-dumplings-beef-bulgogi-bibigo	https://images.openfoodfacts.org/images/products/200/000/012/5700/front_fr.4.400.jpg	\N	27
825	Gyozas aux l├®gumes	Ajinomoto		b	https://world.openfoodfacts.org/product/2000000125678/gyozas-aux-legumes-ajinomoto	https://images.openfoodfacts.org/images/products/200/000/012/5678/front_fr.7.400.jpg	\N	27
826	Ravioli  carbonara	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710490271/ravioli-carbonara-auchan	https://images.openfoodfacts.org/images/products/359/671/049/0271/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/359/671/049/0271/nutrition_fr.5.200.jpg	27
827	Bio organic frische Ravioli	chef select		b	https://world.openfoodfacts.org/product/20200046/bio-organic-frische-ravioli-chef-select	https://images.openfoodfacts.org/images/products/20200046/front_de.4.400.jpg	https://images.openfoodfacts.org/images/products/20200046/nutrition_de.10.200.jpg	27
828	Ravioli aux 3 fromages cr├¿me au gorgonzola	Marie	Leclerc,Carrefour	c	https://world.openfoodfacts.org/product/3248830000990/ravioli-aux-3-fromages-creme-au-gorgonzola-marie	https://images.openfoodfacts.org/images/products/324/883/000/0990/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/324/883/000/0990/nutrition_fr.25.200.jpg	27
829	Ravioles ├á po├¬ler BIO ├á la tomate mozarelle	SAINT JEAN	carrefour.fr	c	https://world.openfoodfacts.org/product/3266140062637/ravioles-a-poeler-bio-a-la-tomate-mozarelle-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/2637/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/2637/nutrition_fr.18.200.jpg	27
830	Ravioli Mit Sauce Bolognese	Primana	Aldi S├╝d	c	https://world.openfoodfacts.org/product/23112469/ravioli-mit-sauce-bolognese-primana	https://images.openfoodfacts.org/images/products/23112469/front_de.40.400.jpg	https://images.openfoodfacts.org/images/products/23112469/nutrition_de.6.200.jpg	27
832	Gnocchi	Il Gusto Dell' Italia		b	https://world.openfoodfacts.org/product/29005369/gnocchi-il-gusto-dell-italia	https://images.openfoodfacts.org/images/products/29005369/front_de.11.400.jpg	https://images.openfoodfacts.org/images/products/29005369/nutrition_de.7.200.jpg	27
833	Ravioli al Tartufo	natur Gourmet	tegut...	d	https://world.openfoodfacts.org/product/4000915629200/ravioli-al-tartufo-natur-gourmet	https://images.openfoodfacts.org/images/products/400/091/562/9200/front_de.18.400.jpg	https://images.openfoodfacts.org/images/products/400/091/562/9200/nutrition_de.19.200.jpg	27
835	Ravioli 3 fromages	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710484287/ravioli-3-fromages-auchan	https://images.openfoodfacts.org/images/products/359/671/048/4287/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/359/671/048/4287/nutrition_fr.17.200.jpg	27
836	Ravioli ricotta truffe 230g mpg	Monoprix gourmet	Monoprix	c	https://world.openfoodfacts.org/product/3350033792067/ravioli-ricotta-truffe-230g-mpg-monoprix-gourmet	https://images.openfoodfacts.org/images/products/335/003/379/2067/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/335/003/379/2067/nutrition_fr.5.200.jpg	27
837	Ravioli Bolognese	REWE	REWE	c	https://world.openfoodfacts.org/product/4388840216949/ravioli-bolognese-rewe	https://images.openfoodfacts.org/images/products/438/884/021/6949/front_de.16.400.jpg	https://images.openfoodfacts.org/images/products/438/884/021/6949/nutrition_de.18.200.jpg	27
838	Ravioli L├®gumes du Soleil	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710484270/ravioli-legumes-du-soleil-auchan	https://images.openfoodfacts.org/images/products/359/671/048/4270/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/359/671/048/4270/nutrition_fr.5.200.jpg	27
839	Ratatouille Raviolini	followfood		b	https://world.openfoodfacts.org/product/4250073456242/ratatouille-raviolini-followfood	https://images.openfoodfacts.org/images/products/425/007/345/6242/front_de.29.400.jpg	https://images.openfoodfacts.org/images/products/425/007/345/6242/nutrition_de.31.200.jpg	27
840	Ravioli Diavoli	Maggi		c	https://world.openfoodfacts.org/product/4005500333074/ravioli-diavoli-maggi	https://images.openfoodfacts.org/images/products/400/550/033/3074/front_de.29.400.jpg	https://images.openfoodfacts.org/images/products/400/550/033/3074/nutrition_de.31.200.jpg	27
842	Medaglioni agli spinaci broccoli e olive	Vemondo		c	https://world.openfoodfacts.org/product/20969233/medaglioni-agli-spinaci-broccoli-e-olive-vemondo	https://images.openfoodfacts.org/images/products/20969233/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/20969233/nutrition_fr.9.200.jpg	27
843	Wrapper Gyoza	Imperial Dragon		b	https://world.openfoodfacts.org/product/0011152697291/wrapper-gyoza-imperial-dragon	https://images.openfoodfacts.org/images/products/001/115/269/7291/front_en.3.400.jpg	\N	27
844	Pilz Variation Mezzelune	REWE,REWE Feine Welt	REWE	d	https://world.openfoodfacts.org/product/4388860202564/pilz-variation-mezzelune-rewe	https://images.openfoodfacts.org/images/products/438/886/020/2564/front_de.15.400.jpg	https://images.openfoodfacts.org/images/products/438/886/020/2564/nutrition_de.19.200.jpg	27
846	Tortellini Ricotta ├ëpinards Bio	Lustucru	Franprix	c	https://world.openfoodfacts.org/product/3240931543949/tortellini-ricotta-epinards-bio-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/3949/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/3949/nutrition_fr.16.200.jpg	27
847	Ravioli In Bolognese Sauce	Cook!	Norma	c	https://world.openfoodfacts.org/product/20245733/ravioli-in-bolognese-sauce-cook	https://images.openfoodfacts.org/images/products/20245733/front_de.10.400.jpg	https://images.openfoodfacts.org/images/products/20245733/nutrition_de.7.200.jpg	27
848	Ravioli Piccanti, In Bolognasesauce	Mondo Italiano		c	https://world.openfoodfacts.org/product/4316268457248/ravioli-piccanti-in-bolognasesauce-mondo-italiano	https://images.openfoodfacts.org/images/products/431/626/845/7248/front_de.25.400.jpg	https://images.openfoodfacts.org/images/products/431/626/845/7248/nutrition_de.27.200.jpg	27
850	Ravioli au Jambon	Fiorini	Intermarch├®	c	https://world.openfoodfacts.org/product/3250391631483/ravioli-au-jambon-fiorini	https://images.openfoodfacts.org/images/products/325/039/163/1483/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/325/039/163/1483/nutrition_fr.9.200.jpg	27
959	Raviolis ├á la Vapeur aux Crevettes	Cau Tre Foods		c	https://world.openfoodfacts.org/product/8934717272356/raviolis-a-la-vapeur-aux-crevettes-cau-tre-foods	https://images.openfoodfacts.org/images/products/893/471/727/2356/front_fr.4.400.jpg	\N	27
851	Ravioli volaille Halal 	Samia,Haudecoeur	Dia	c	https://world.openfoodfacts.org/product/3276650100811/ravioli-volaille-halal-samia	https://images.openfoodfacts.org/images/products/327/665/010/0811/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/327/665/010/0811/nutrition_fr.13.200.jpg	27
852	Ravioli ├á la sauce tomate	Winny	Cora	c	https://world.openfoodfacts.org/product/5400247009968/ravioli-a-la-sauce-tomate-winny	https://images.openfoodfacts.org/images/products/540/024/700/9968/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/540/024/700/9968/nutrition_fr.10.200.jpg	27
853	Mozzarella & Pomodoro Ravioli	Anna's Best,Migros, Anna's best - Migros	Migros	b	https://world.openfoodfacts.org/product/7613269266983/mozzarella-pomodoro-ravioli-anna-s-best	https://images.openfoodfacts.org/images/products/761/326/926/6983/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/761/326/926/6983/nutrition_fr.23.200.jpg	27
854	Ravioli Pur B┼ôuf (Sauce Tomate Cuisin├®e) Format familial	Zapetti	Leclerc	b	https://world.openfoodfacts.org/product/3021690011166/ravioli-pur-boeuf-sauce-tomate-cuisinee-format-familial-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1166/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1166/nutrition_fr.8.200.jpg	27
856	Ravioli Pur B┼ôuf (Sauce Tomate Cuisin├®e)	Zapetti	Banque alimentaire	b	https://world.openfoodfacts.org/product/3021690011135/ravioli-pur-boeuf-sauce-tomate-cuisinee-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1135/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1135/nutrition_fr.7.200.jpg	27
860	Ravioli Bolognaise 	CMI (Carrefour Marchandises Internationales),Groupe Carrefour	Carrefour,Banque alimentaire	c	https://world.openfoodfacts.org/product/3261055930309/ravioli-bolognaise-cmi-carrefour-marchandises-internationales	https://images.openfoodfacts.org/images/products/326/105/593/0309/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/326/105/593/0309/nutrition_fr.13.200.jpg	27
861	Ravioli (Pur B┼ôuf)	Milliat Fr├¿res		b	https://world.openfoodfacts.org/product/3261058155266/ravioli-pur-boeuf-milliat-freres	https://images.openfoodfacts.org/images/products/326/105/815/5266/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/326/105/815/5266/nutrition_fr.10.200.jpg	27
865	Ravioli		Aldi S├╝d	c	https://world.openfoodfacts.org/product/4061458020701/ravioli	https://images.openfoodfacts.org/images/products/406/145/802/0701/front_de.22.400.jpg	https://images.openfoodfacts.org/images/products/406/145/802/0701/nutrition_de.24.200.jpg	27
866	Ravioli Tartiflette recette fromag├¿re	Lustucru	Carrefour	d	https://world.openfoodfacts.org/product/3240931540184/ravioli-tartiflette-recette-fromagere-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/0184/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/0184/nutrition_fr.8.200.jpg	27
867	Ravioli sauce Tomate	Milliat fr├¿res		c	https://world.openfoodfacts.org/product/3261055940094/ravioli-sauce-tomate-milliat-freres	https://images.openfoodfacts.org/images/products/326/105/594/0094/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/0094/nutrition_fr.8.200.jpg	27
869	Ravioli mit Sauce Bolognese	Speise Zeit, Aldi	Aldi	c	https://world.openfoodfacts.org/product/4061458010061/ravioli-mit-sauce-bolognese-speise-zeit	https://images.openfoodfacts.org/images/products/406/145/801/0061/front_de.27.400.jpg	https://images.openfoodfacts.org/images/products/406/145/801/0061/nutrition_de.29.200.jpg	27
870	Bio Ravioli	DM, Carrefour Bio	Carrefour	c	https://world.openfoodfacts.org/product/4058172324123/gemuse-ravioli-bio-dm	https://images.openfoodfacts.org/images/products/405/817/232/4123/front_en.4.400.jpg	https://images.openfoodfacts.org/images/products/405/817/232/4123/nutrition_de.27.200.jpg	27
871	Ravioli ai funghi porcini	Pasta Julia		d	https://world.openfoodfacts.org/product/8021733250892/ravioli-ai-funghi-porcini-pasta-julia	https://images.openfoodfacts.org/images/products/802/173/325/0892/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/802/173/325/0892/nutrition_fr.7.200.jpg	27
872	Ravioli in pikanter Sauce	Maggi,Nestle		c	https://world.openfoodfacts.org/product/4005500339205/ravioli-in-pikanter-sauce-maggi	https://images.openfoodfacts.org/images/products/400/550/033/9205/front_de.98.400.jpg	https://images.openfoodfacts.org/images/products/400/550/033/9205/nutrition_de.11.200.jpg	27
874	Ravioli in Tomatensauce	Aldi	Aldi	c	https://world.openfoodfacts.org/product/29021536/ravioli-bolognese-aldi	https://images.openfoodfacts.org/images/products/29021536/front_de.16.400.jpg	https://images.openfoodfacts.org/images/products/29021536/nutrition_de.21.200.jpg	27
875	Leerdammer - Ravioli au fromage	Lustucru	Cora, Franprix	d	https://world.openfoodfacts.org/product/3240931541136/leerdammer-ravioli-au-fromage-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/1136/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/1136/nutrition_fr.5.200.jpg	27
876	Ravioli Tofu Basilic	Les Artisans du Bio	Franprix	a	https://world.openfoodfacts.org/product/3760098459087/ravioli-tofu-basilic-les-artisans-du-bio	https://images.openfoodfacts.org/images/products/376/009/845/9087/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/9087/nutrition_fr.10.200.jpg	27
877	Ravioli Potimarron Emmenthal	Les Artisans du Bio	Franprix	b	https://world.openfoodfacts.org/product/3760098459094/ravioli-potimarron-emmenthal-les-artisans-du-bio	https://images.openfoodfacts.org/images/products/376/009/845/9094/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/9094/nutrition_fr.10.200.jpg	27
878	Ravioli Saumon Fum├®	Les Artisans du Bio	Franprix	d	https://world.openfoodfacts.org/product/3760098452774/ravioli-saumon-fume-les-artisans-du-bio	https://images.openfoodfacts.org/images/products/376/009/845/2774/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/2774/nutrition_fr.10.200.jpg	27
879	Ravioli Boeuf (+25 % gratuit)	Fiorini	Intermarch├®	c	https://world.openfoodfacts.org/product/3250391740895/ravioli-boeuf-25-gratuit-fiorini	https://images.openfoodfacts.org/images/products/325/039/174/0895/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/039/174/0895/nutrition_fr.6.200.jpg	27
880	Ravioli 4 Fromages (+25 % gratuit)	Fiorini	Intermarch├®	d	https://world.openfoodfacts.org/product/3250392356279/ravioli-4-fromages-25-gratuit-fiorini	https://images.openfoodfacts.org/images/products/325/039/235/6279/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/039/235/6279/nutrition_fr.6.200.jpg	27
882	Ravioles du dauphin├®	Saint Jean		d	https://world.openfoodfacts.org/product/3266140052324/ravioles-du-dauphine-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/2324/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/2324/nutrition_fr.10.200.jpg	27
883	Ravioli pur boeuf sauce italienne	Panzani,Souli├® Restauration	Carrefour	c	https://world.openfoodfacts.org/product/3038352880701/ravioli-pur-boeuf-sauce-italienne-panzani	https://images.openfoodfacts.org/images/products/303/835/288/0701/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/303/835/288/0701/nutrition_fr.7.200.jpg	27
884	Ravioles du Dauphin├®	Netto	Netto	d	https://world.openfoodfacts.org/product/3250391549313/ravioles-du-dauphine-netto	https://images.openfoodfacts.org/images/products/325/039/154/9313/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/325/039/154/9313/nutrition_fr.8.200.jpg	27
885	Assortiment Asiatique	Thiriet	Thiriet	c	https://world.openfoodfacts.org/product/3292590883911/assortiment-asiatique-thiriet	https://images.openfoodfacts.org/images/products/329/259/088/3911/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/329/259/088/3911/nutrition_fr.7.200.jpg	27
887	Demi-Lunes Tomate Basilic	L'oiseau,Auchan,Auchan Production,Groupe Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710291960/demi-lunes-tomate-basilic-l-oiseau	https://images.openfoodfacts.org/images/products/359/671/029/1960/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/359/671/029/1960/nutrition_fr.13.200.jpg	27
888	Ravioli Fromages et Basilic	Bonneterre		d	https://world.openfoodfacts.org/product/3396410037451/ravioli-fromages-et-basilic-bonneterre	https://images.openfoodfacts.org/images/products/339/641/003/7451/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/339/641/003/7451/nutrition_fr.11.200.jpg	27
889	Lunes 3 Fromages d'Auvergne	Georges Ecochard	Carrefour Market	d	https://world.openfoodfacts.org/product/3153575610611/lunes-3-fromages-d-auvergne-georges-ecochard	https://images.openfoodfacts.org/images/products/315/357/561/0611/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/315/357/561/0611/nutrition_fr.7.200.jpg	27
890	Ravioli ├á la sauce tomate	Eco +,Scamark (Filiale E. Leclerc)	Leclerc	b	https://world.openfoodfacts.org/product/3450970006576/ravioli-a-la-sauce-tomate-eco	https://images.openfoodfacts.org/images/products/345/097/000/6576/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/345/097/000/6576/nutrition_fr.8.200.jpg	27
891	Raviolis 4 fromages	Dia	Dia	c	https://world.openfoodfacts.org/product/8480017085368/raviolis-4-fromages-dia	https://images.openfoodfacts.org/images/products/848/001/708/5368/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/848/001/708/5368/nutrition_fr.12.200.jpg	27
892	Ravioli 4 Fromages	Saint Jean	Super U	d	https://world.openfoodfacts.org/product/3266140060152/ravioli-4-fromages-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0152/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0152/nutrition_fr.10.200.jpg	27
893	Ravioli Pur B┼ôuf Leader Price	Leader Price	Leader Price	b	https://world.openfoodfacts.org/product/3263851611710/ravioli-pur-boeuf-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/1710/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/1710/nutrition_fr.8.200.jpg	27
894	Ravioli d'├®pinards au Tofu sauce tomate pesto Bio	C├®r├®al Bio	Carrefour	a	https://world.openfoodfacts.org/product/3175681104440/ravioli-d-epinards-au-tofu-sauce-tomate-pesto-bio-cereal-bio	https://images.openfoodfacts.org/images/products/317/568/110/4440/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/317/568/110/4440/nutrition_fr.11.200.jpg	27
895	Ravioli ├á la Sauce Tomate	Bien Vu !	Super U	b	https://world.openfoodfacts.org/product/3660992006052/ravioli-a-la-sauce-tomate-bien-vu	https://images.openfoodfacts.org/images/products/366/099/200/6052/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/366/099/200/6052/nutrition_fr.12.200.jpg	27
896	Ravioli Bolognaise ├á l'Emmental	Buona Cocina		c	https://world.openfoodfacts.org/product/3261055944825/ravioli-bolognaise-a-l-emmental-buona-cocina	https://images.openfoodfacts.org/images/products/326/105/594/4825/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/4825/nutrition_fr.8.200.jpg	27
898	Ravioli pur b┼ôuf sauce italienne	Les D├®lices de Yemma		c	https://world.openfoodfacts.org/product/3770008632011/ravioli-pur-boeuf-sauce-italienne-les-delices-de-yemma	https://images.openfoodfacts.org/images/products/377/000/863/2011/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/377/000/863/2011/nutrition_fr.9.200.jpg	27
899	Ravioli 4 fromages (50% gratuit)	Saint Jean		d	https://world.openfoodfacts.org/product/3266140059729/ravioli-4-fromages-50-gratuit-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/9729/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/9729/nutrition_fr.7.200.jpg	27
900	Ravioli pur b┼ôuf, sauce tomate cuisin├®e	Zapetti		b	https://world.openfoodfacts.org/product/3021690011173/ravioli-pur-boeuf-sauce-tomate-cuisinee-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1173/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1173/nutrition_fr.11.200.jpg	27
901	Ravioli 4 fromages	Lustucru		c	https://world.openfoodfacts.org/product/3240930913859/ravioli-4-fromages-lustucru	https://images.openfoodfacts.org/images/products/324/093/091/3859/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/324/093/091/3859/nutrition_fr.5.200.jpg	27
902	Gyosa vegetable	Ajinomoto		b	https://world.openfoodfacts.org/product/3700417301659/gyosa-vegetable-ajinomoto	https://images.openfoodfacts.org/images/products/370/041/730/1659/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/370/041/730/1659/nutrition_fr.7.200.jpg	27
903	Ravioli au roquefort	Karine & Jeff,Le bonheur est dans le pot		b	https://world.openfoodfacts.org/product/3760052230875/ravioli-au-roquefort-karine-jeff	https://images.openfoodfacts.org/images/products/376/005/223/0875/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/376/005/223/0875/nutrition_fr.19.200.jpg	27
904	Ravioli aux aubergines, tomates et basilic	Karine & Jeff,Le bonheur est dans le pot		b	https://world.openfoodfacts.org/product/3760052230264/ravioli-aux-aubergines-tomates-et-basilic-karine-jeff	https://images.openfoodfacts.org/images/products/376/005/223/0264/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/376/005/223/0264/nutrition_fr.23.200.jpg	27
905	Ravioli au tofu et l├®gumes	Karine & Jeff,Le bonheur est dans le pot		b	https://world.openfoodfacts.org/product/3760052230868/ravioli-au-tofu-et-legumes-karine-jeff	https://images.openfoodfacts.org/images/products/376/005/223/0868/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/376/005/223/0868/nutrition_fr.10.200.jpg	27
906	Raviolis l├®gumes sauce Toscane	ProSain	Biocoop,Bio14	c	https://world.openfoodfacts.org/product/3335880006581/raviolis-legumes-sauce-toscane-prosain	https://images.openfoodfacts.org/images/products/333/588/000/6581/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/333/588/000/6581/nutrition_fr.9.200.jpg	27
907	Raviolis l├®gumes sauce Toscane	Prosain		c	https://world.openfoodfacts.org/product/3335880006413/raviolis-legumes-sauce-toscane-prosain	https://images.openfoodfacts.org/images/products/333/588/000/6413/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/333/588/000/6413/nutrition_fr.13.200.jpg	27
908	Raviolis au b┼ôuf sauce Napolitaine bio	ProSain		b	https://world.openfoodfacts.org/product/3335880006543/raviolis-au-boeuf-sauce-napolitaine-bio-prosain	https://images.openfoodfacts.org/images/products/333/588/000/6543/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/333/588/000/6543/nutrition_fr.10.200.jpg	27
910	Le Ravioli Pur Volaille (lot Familial) Panzani 2 X 800 G	Panzani		b	https://world.openfoodfacts.org/product/3261055941930/le-ravioli-pur-volaille-lot-familial-panzani-2-x-800-g	https://images.openfoodfacts.org/images/products/326/105/594/1930/front_fr.10.400.jpg	\N	27
911	Croissants Farcis	SFPA		c	https://world.openfoodfacts.org/product/3548870320158/croissants-farcis-sfpa	https://images.openfoodfacts.org/images/products/354/887/032/0158/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/354/887/032/0158/nutrition_fr.9.200.jpg	27
912	Ravioli au Boeuf Bio	Danival	Naturalia,Bio14	b	https://world.openfoodfacts.org/product/3431590006504/ravioli-au-boeuf-bio-danival	https://images.openfoodfacts.org/images/products/343/159/000/6504/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/6504/nutrition_fr.13.200.jpg	27
913	Ravioli Pur Boeuf - L'Assiette XXL - 350 g - Panzani	panzani		b	https://world.openfoodfacts.org/product/3261055861009/ravioli-pur-boeuf-l-assiette-xxl-350-g-panzani	https://images.openfoodfacts.org/images/products/326/105/586/1009/front_fr.16.400.jpg	\N	27
915	Ravioli aux 4 fromages	Fiorini	Intermarch├®	c	https://world.openfoodfacts.org/product/3250390541943/ravioli-aux-4-fromages-fiorini	https://images.openfoodfacts.org/images/products/325/039/054/1943/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/325/039/054/1943/nutrition_fr.23.200.jpg	27
916	Ravioles du Dauphin├® IGP label Rouge	Saint Jean	Carrefour market	d	https://world.openfoodfacts.org/product/3292830292824/ravioles-du-dauphine-igp-label-rouge-saint-jean	https://images.openfoodfacts.org/images/products/329/283/029/2824/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/329/283/029/2824/nutrition_fr.9.200.jpg	27
917	Raviolini aux ┼Æufs Frais Jambon	Saint Jean		d	https://world.openfoodfacts.org/product/3266140051198/raviolini-aux-oeufs-frais-jambon-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/1198/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/1198/nutrition_fr.10.200.jpg	27
918	Raviolis aux Crevettes			d	https://world.openfoodfacts.org/product/3700294604980/raviolis-aux-crevettes	https://images.openfoodfacts.org/images/products/370/029/460/4980/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/029/460/4980/nutrition_fr.10.200.jpg	27
919	Ravioli Bolognaise	Cora	Cora	b	https://world.openfoodfacts.org/product/3257980551979/ravioli-bolognaise-cora	https://images.openfoodfacts.org/images/products/325/798/055/1979/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/325/798/055/1979/nutrition_fr.7.200.jpg	27
920	Ravioles du Dauphin├®	Saint Jean	U, carrefour.fr	d	https://world.openfoodfacts.org/product/3266140053581/ravioles-du-dauphine-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/3581/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/3581/nutrition_fr.7.200.jpg	27
921	Ravioli Fromages Italiens	Rana,Giovanni Rana	Super U,Franprix	d	https://world.openfoodfacts.org/product/8001665127981/ravioli-fromages-italiens-rana	https://images.openfoodfacts.org/images/products/800/166/512/7981/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/7981/nutrition_fr.8.200.jpg	27
922	Grands Ravioli C├¿pes	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/3560070602735/grands-ravioli-cepes-carrefour	https://images.openfoodfacts.org/images/products/356/007/060/2735/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/356/007/060/2735/nutrition_fr.10.200.jpg	27
923	Tortelloni allo Speck	Sans marque,Casino	Casino	c	https://world.openfoodfacts.org/product/8001665703949/tortelloni-allo-speck-sans-marque	https://images.openfoodfacts.org/images/products/800/166/570/3949/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/3949/nutrition_fr.6.200.jpg	27
924	Mini Raviolis aux Crevettes	Cau Tre		c	https://world.openfoodfacts.org/product/8934717272332/mini-raviolis-aux-crevettes-cau-tre	https://images.openfoodfacts.org/images/products/893/471/727/2332/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/893/471/727/2332/nutrition_fr.12.200.jpg	27
925	Xiu Mai aux Crevettes + Sauces Aigre Douce et Soja	Simply Market		c	https://world.openfoodfacts.org/product/3366760035216/xiu-mai-aux-crevettes-sauces-aigre-douce-et-soja-simply-market	https://images.openfoodfacts.org/images/products/336/676/003/5216/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/336/676/003/5216/nutrition_fr.7.200.jpg	27
926	Assortiment vapeurs	U	Super U,Magasins U	a	https://world.openfoodfacts.org/product/3256226070137/assortiment-vapeurs-u	https://images.openfoodfacts.org/images/products/325/622/607/0137/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/325/622/607/0137/nutrition_fr.14.200.jpg	27
927	16 Raviolis aux Crevettes	Hoa-Nam	Tang Fr├¿res	a	https://world.openfoodfacts.org/product/3474930401287/16-raviolis-aux-crevettes-hoa-nam	https://images.openfoodfacts.org/images/products/347/493/040/1287/front_fr.6.400.jpg	\N	27
928	8 Zheng Jirou Jiao au Poulet	Picard	Picard	b	https://world.openfoodfacts.org/product/3270160864263/8-zheng-jirou-jiao-au-poulet-picard	https://images.openfoodfacts.org/images/products/327/016/086/4263/front_fr.9.400.jpg	\N	27
929	Gyoza Mandu aux Piment Rouge et L├®gumes	Maison de Cor├®e		b	https://world.openfoodfacts.org/product/8805957017215/gyoza-mandu-aux-piment-rouge-et-legumes-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/7215/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/880/595/701/7215/nutrition_fr.13.200.jpg	27
931	Ravioli V├®g├®tariens	Versace		a	https://world.openfoodfacts.org/product/3478220003519/ravioli-vegetariens-versace	https://images.openfoodfacts.org/images/products/347/822/000/3519/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/347/822/000/3519/nutrition_fr.10.200.jpg	27
932	Gyoza Poulet	Aki Yaki		b	https://world.openfoodfacts.org/product/3760258110049/gyoza-poulet-aki-yaki	https://images.openfoodfacts.org/images/products/376/025/811/0049/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/376/025/811/0049/nutrition_fr.11.200.jpg	27
934	Ravioli ├á la Ni├ºoise	La Ra├»ola		b	https://world.openfoodfacts.org/product/2614969051034/ravioli-a-la-nicoise-la-raiola	https://images.openfoodfacts.org/images/products/261/496/905/1034/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/261/496/905/1034/nutrition_fr.10.200.jpg	27
935	Ravioli ├á Cuisiner	Zapetti	Leclerc	b	https://world.openfoodfacts.org/product/3021690024098/ravioli-a-cuisiner-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/4098/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/4098/nutrition_fr.11.200.jpg	27
937	Assortiment Bouch├®es Vapeur	Agis		c	https://world.openfoodfacts.org/product/3366760035223/assortiment-bouchees-vapeur-agis	https://images.openfoodfacts.org/images/products/336/676/003/5223/front_fr.9.400.jpg	\N	27
938	Sottili Ripieni	Picard	Picard	c	https://world.openfoodfacts.org/product/3270160860654/sottili-ripieni-picard	https://images.openfoodfacts.org/images/products/327/016/086/0654/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/327/016/086/0654/nutrition_fr.13.200.jpg	27
939	XIU MAI Bouchons au porc	Sing'ly		b	https://world.openfoodfacts.org/product/3507981022061/xiu-mai-bouchons-au-porc-sing-ly	https://images.openfoodfacts.org/images/products/350/798/102/2061/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/350/798/102/2061/nutrition_fr.8.200.jpg	27
940	Mandu  - Boulettes cor├®en surgel├®e	CJ,Bibigo		c	https://world.openfoodfacts.org/product/4016337912400/mandu-boulettes-coreen-surgelee-cj	https://images.openfoodfacts.org/images/products/401/633/791/2400/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/401/633/791/2400/nutrition_fr.15.200.jpg	27
941	Raviolis aux Crevettes	SFPA		d	https://world.openfoodfacts.org/product/3548870420155/raviolis-aux-crevettes-sfpa	https://images.openfoodfacts.org/images/products/354/887/042/0155/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/354/887/042/0155/nutrition_fr.11.200.jpg	27
942	Raviolis de la mer au coulis de langoustines	Conserverie Courtin		c	https://world.openfoodfacts.org/product/3268260000643/raviolis-de-la-mer-au-coulis-de-langoustines-conserverie-courtin	https://images.openfoodfacts.org/images/products/326/826/000/0643/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/326/826/000/0643/nutrition_fr.14.200.jpg	27
943	8 jirou pao au poulet	Picard	Picard	b	https://world.openfoodfacts.org/product/3270160869176/8-jirou-pao-au-poulet-picard	https://images.openfoodfacts.org/images/products/327/016/086/9176/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/327/016/086/9176/nutrition_fr.24.200.jpg	27
944	HA KAO / Raviolis crevettes vapeur	Asia Food,Asia Food Kft.		c	https://world.openfoodfacts.org/product/5999885543410/ha-kao-raviolis-crevettes-vapeur-asia-food	https://images.openfoodfacts.org/images/products/599/988/554/3410/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/599/988/554/3410/nutrition_fr.21.200.jpg	27
945	Assortiment Bouch├®es vapeur	Thiriet	Thiriet	c	https://world.openfoodfacts.org/product/3292590874025/assortiment-bouchees-vapeur-thiriet	https://images.openfoodfacts.org/images/products/329/259/087/4025/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/329/259/087/4025/nutrition_fr.7.200.jpg	27
946	Ravioli aux Crevettes Fan Guo	Cock Brand		b	https://world.openfoodfacts.org/product/3364699130880/ravioli-aux-crevettes-fan-guo-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/0880/front_fr.4.400.jpg	\N	27
947	30 Gyozas Poulet Et Legumes	Ajinomoto		b	https://world.openfoodfacts.org/product/8858639000012/30-gyozas-poulet-et-legumes-ajinomoto	https://images.openfoodfacts.org/images/products/885/863/900/0012/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/885/863/900/0012/nutrition_fr.18.200.jpg	27
948	Raviolis Vapeur Ha Cao Crevette	Sushi Daily		b	https://world.openfoodfacts.org/product/3760199051210/raviolis-vapeur-ha-cao-crevette-sushi-daily	https://images.openfoodfacts.org/images/products/376/019/905/1210/front_fr.8.400.jpg	\N	27
950	Mini Gyoza au Poulet	Vici		b	https://world.openfoodfacts.org/product/4770190079372/mini-gyoza-au-poulet-vici	https://images.openfoodfacts.org/images/products/477/019/007/9372/front_fr.4.400.jpg	\N	27
951	Mini Bouch├®es aux Crevettes	Cau Tre,Cau Tre Foods,T&T Foods		c	https://world.openfoodfacts.org/product/8934717351389/mini-bouchees-aux-crevettes-cau-tre	https://images.openfoodfacts.org/images/products/893/471/735/1389/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/893/471/735/1389/nutrition_fr.11.200.jpg	27
952	Gyoza Mandu aux Champignons et L├®gumes	Maison de Cor├®e		a	https://world.openfoodfacts.org/product/8805957017192/gyoza-mandu-aux-champignons-et-legumes-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/7192/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/880/595/701/7192/nutrition_fr.16.200.jpg	27
953	Gyoza Mandu au Kimchi	Maison de Cor├®e		a	https://world.openfoodfacts.org/product/8805957017208/gyoza-mandu-au-kimchi-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/7208/front_fr.10.400.jpg	\N	27
954	9 Bouch├®es Vapeur, Crevette & Petits l├®gumes	Miti	Cora	c	https://world.openfoodfacts.org/product/3760070012989/9-bouchees-vapeur-crevette-petits-legumes-miti	https://images.openfoodfacts.org/images/products/376/007/001/2989/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/376/007/001/2989/nutrition_fr.8.200.jpg	27
955	Assortiment de 10 Bouch├®es Vapeur	Tr├¿fle		b	https://world.openfoodfacts.org/product/3275760000622/assortiment-de-10-bouchees-vapeur-trefle	https://images.openfoodfacts.org/images/products/327/576/000/0622/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/327/576/000/0622/nutrition_fr.19.200.jpg	27
956	20 Raviolis Imp├®riaux aux Crevettes	Hoa-Nam		b	https://world.openfoodfacts.org/product/3474930416205/20-raviolis-imperiaux-aux-crevettes-hoa-nam	https://images.openfoodfacts.org/images/products/347/493/041/6205/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/347/493/041/6205/nutrition_fr.14.200.jpg	27
957	Raviolis Vapeur Ha Cao Crevette	Cock Brand		b	https://world.openfoodfacts.org/product/3364699131122/raviolis-vapeur-ha-cao-crevette-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/1122/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/1122/nutrition_fr.7.200.jpg	27
958	Assortiment de Bouch├®es Vapeur, Sauce Aigre Douce et Sauce Soja	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710403981/assortiment-de-bouchees-vapeur-sauce-aigre-douce-et-sauce-soja-auchan	https://images.openfoodfacts.org/images/products/359/671/040/3981/front_fr.13.400.jpg	\N	27
2381	Jambon De Dinde Halal	Fleury Michon		c	https://world.openfoodfacts.org/product/3095759628015/jambon-de-dinde-halal-fleury-michon	https://images.openfoodfacts.org/images/products/309/575/962/8015/front_en.17.400.jpg	\N	32
961	Raviolis vapeur crevettes	DeliÔÇÖs World		d	https://world.openfoodfacts.org/product/3760184010819/raviolis-vapeur-crevettes-deli-s-world	https://images.openfoodfacts.org/images/products/376/018/401/0819/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/376/018/401/0819/nutrition_fr.7.200.jpg	27
962	Raviolis aux Crevettes	Hoa Nam		b	https://world.openfoodfacts.org/product/3474930401508/raviolis-aux-crevettes-hoa-nam	https://images.openfoodfacts.org/images/products/347/493/040/1508/front_fr.4.400.jpg	\N	27
963	Raviolis crevettes	HOA-NAM		b	https://world.openfoodfacts.org/product/3474930406275/raviolis-crevettes-hoa-nam	https://images.openfoodfacts.org/images/products/347/493/040/6275/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/347/493/040/6275/nutrition_fr.14.200.jpg	27
964	Raviolis aux Crevettes	Asia Food		c	https://world.openfoodfacts.org/product/5999885543403/raviolis-aux-crevettes-asia-food	https://images.openfoodfacts.org/images/products/599/988/554/3403/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/599/988/554/3403/nutrition_fr.7.200.jpg	27
966	Raviolis &quot;Max de Boeuf&quot;	Zapetti	Magasins U	b	https://world.openfoodfacts.org/product/3021690021912/raviolis-max-de-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/1912/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/1912/nutrition_fr.11.200.jpg	27
967	Ravioli Sauce Barbecue	Zapetti	E. Leclerc,Magasins U	b	https://world.openfoodfacts.org/product/3021690027532/ravioli-sauce-barbecue-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/7532/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/7532/nutrition_fr.14.200.jpg	27
968	Ravioli volaille	Mosa├»que	Intermarch├®, Magasins U	c	https://world.openfoodfacts.org/product/3700483800933/ravioli-volaille-mosaique	https://images.openfoodfacts.org/images/products/370/048/380/0933/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/370/048/380/0933/nutrition_fr.8.200.jpg	27
969	Ravioli Tofu et Basilic	Prosain	super G bio	c	https://world.openfoodfacts.org/product/3335880006529/ravioli-tofu-et-basilic-prosain	https://images.openfoodfacts.org/images/products/333/588/000/6529/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/333/588/000/6529/nutrition_fr.16.200.jpg	27
970	Gyoza Mandu au Kimchi	Maison de Cor├®e		b	https://world.openfoodfacts.org/product/8805957019189/gyoza-mandu-au-kimchi-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/9189/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/880/595/701/9189/nutrition_fr.24.200.jpg	27
971	Ravioli ├á la sauce tomate	Dounia Halal	Auchan	a	https://world.openfoodfacts.org/product/3563230000082/ravioli-a-la-sauce-tomate-dounia-halal	https://images.openfoodfacts.org/images/products/356/323/000/0082/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/356/323/000/0082/nutrition_fr.23.200.jpg	27
972	Ravioli jambon (50% gratuit)	Saint Jean		c	https://world.openfoodfacts.org/product/3266140060404/ravioli-jambon-50-gratuit-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0404/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0404/nutrition_fr.5.200.jpg	27
973	Ravioli	Buona Cucina		c	https://world.openfoodfacts.org/product/3261055932549/ravioli-buona-cucina	https://images.openfoodfacts.org/images/products/326/105/593/2549/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/326/105/593/2549/nutrition_fr.8.200.jpg	27
974	Raviolis Aux Crevettes Congeles	Coq		b	https://world.openfoodfacts.org/product/3364699130613/raviolis-aux-crevettes-congeles-coq	https://images.openfoodfacts.org/images/products/336/469/913/0613/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/0613/nutrition_fr.14.200.jpg	27
975	Ravioli pur b┼ôuf sauce italienne	Dounia Halal	Casino	c	https://world.openfoodfacts.org/product/3021690019698/ravioli-pur-boeuf-sauce-italienne-dounia-halal	https://images.openfoodfacts.org/images/products/302/169/001/9698/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/9698/nutrition_fr.15.200.jpg	27
978	Ravioli au Fromage de Ch├¿vre et Miel	Robert Esposito		c	https://world.openfoodfacts.org/product/3308090003497/ravioli-au-fromage-de-chevre-et-miel-robert-esposito	https://images.openfoodfacts.org/images/products/330/809/000/3497/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/330/809/000/3497/nutrition_fr.13.200.jpg	27
979	Ravioli Chinois au Porc	Vitasia,Lidl	Lidl	d	https://world.openfoodfacts.org/product/20842222/ravioli-chinois-au-porc-vitasia	https://images.openfoodfacts.org/images/products/20842222/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/20842222/nutrition_fr.13.200.jpg	27
980	Fiori all' Arrabbiata	Naturaplan,Coop	Coop	b	https://world.openfoodfacts.org/product/7613356572744/fiori-all-arrabbiata-naturaplan	https://images.openfoodfacts.org/images/products/761/335/657/2744/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/761/335/657/2744/nutrition_fr.11.200.jpg	27
981	5 Gyoza L├®gume Vert & Ciboulette	L'Atelier Blini		c	https://world.openfoodfacts.org/product/3292070008162/5-gyoza-legume-vert-ciboulette-l-atelier-blini	https://images.openfoodfacts.org/images/products/329/207/000/8162/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/329/207/000/8162/nutrition_fr.8.200.jpg	27
982	Le Ravioli Carbonara (Sauce cr├¿me & lardons)	Panzani	Auchan, Franprix	c	https://world.openfoodfacts.org/product/3261052884407/le-ravioli-carbonara-sauce-creme-lardons-panzani	https://images.openfoodfacts.org/images/products/326/105/288/4407/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/326/105/288/4407/nutrition_fr.8.200.jpg	27
983	Siu Loong Bun (Premier Pork) - Soup Dumplings	kung fu food	paris store	c	https://world.openfoodfacts.org/product/5060284559903/siu-loong-bun-premier-pork-soup-dumplings-kung-fu-food	https://images.openfoodfacts.org/images/products/506/028/455/9903/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/506/028/455/9903/nutrition_fr.22.200.jpg	27
984	HAKAO Raviolis Crevettes	Vientiane		b	https://world.openfoodfacts.org/product/3700003900068/hakao-raviolis-crevettes-vientiane	https://images.openfoodfacts.org/images/products/370/000/390/0068/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/000/390/0068/nutrition_fr.10.200.jpg	27
985	Ravioli 3 Fromages aux ┼Æufs Frais	Monoprix,Monoprix Exploitation,Groupe Casino	Monoprix	b	https://world.openfoodfacts.org/product/3350030202064/ravioli-3-fromages-aux-oeufs-frais-monoprix	https://images.openfoodfacts.org/images/products/335/003/020/2064/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/335/003/020/2064/nutrition_fr.7.200.jpg	27
2382	Salami	Destani		e	https://world.openfoodfacts.org/product/4260193515095/salami-destani	https://images.openfoodfacts.org/images/products/426/019/351/5095/front_en.17.400.jpg	\N	32
986	Ravioli aux fromages	Auchan,L'oiseau,Auchan Production,Groupe Auchan	Banque alimentaire, Auchan	c	https://world.openfoodfacts.org/product/3596710421862/ravioli-aux-fromages-auchan	https://images.openfoodfacts.org/images/products/359/671/042/1862/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/359/671/042/1862/nutrition_fr.8.200.jpg	27
987	Ravioli Poulet Parmesan	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710421275/ravioli-poulet-parmesan-auchan	https://images.openfoodfacts.org/images/products/359/671/042/1275/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/359/671/042/1275/nutrition_fr.9.200.jpg	27
988	Ravioles du Dauphin├®	Leader Price,S├®lection de nos R├®gions	Franprix, Leader Price	d	https://world.openfoodfacts.org/product/3263859472412/ravioles-du-dauphine-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/2412/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/2412/nutrition_fr.11.200.jpg	27
989	Ravioli aux c├¿pes	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3263856731413/ravioli-aux-cepes-leader-price	https://images.openfoodfacts.org/images/products/326/385/673/1413/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/326/385/673/1413/nutrition_fr.6.200.jpg	27
990	Ravioli V├®g├®tariens Bio	Leader Price	Franprix, Leader Price	c	https://world.openfoodfacts.org/product/3263851444592/ravioli-vegetariens-bio-leader-price	https://images.openfoodfacts.org/images/products/326/385/144/4592/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/326/385/144/4592/nutrition_fr.13.200.jpg	27
991	Ravioli au fromage	Leader Price	Franprix, Leader Price	c	https://world.openfoodfacts.org/product/3263851495013/ravioli-au-fromage-leader-price	https://images.openfoodfacts.org/images/products/326/385/149/5013/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/326/385/149/5013/nutrition_fr.11.200.jpg	27
992	Ravioli asperges ricotta	Turini,Marque Rep├¿re	Leclerc	d	https://world.openfoodfacts.org/product/3564700998922/ravioli-asperges-ricotta-turini	https://images.openfoodfacts.org/images/products/356/470/099/8922/front_fr.16.400.jpg	\N	27
993	Ravioli Bolognaise	Cora	Cora	b	https://world.openfoodfacts.org/product/3257984614618/ravioli-bolognaise-cora	https://images.openfoodfacts.org/images/products/325/798/461/4618/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/325/798/461/4618/nutrition_fr.17.200.jpg	27
994	Pates fra├«ches ravioli pesto-mozarella	Saint Jean		d	https://world.openfoodfacts.org/product/3266140060206/pates-fraiches-ravioli-pesto-mozarella-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0206/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0206/nutrition_fr.8.200.jpg	27
995	8 Dim Sum aux l├®gumes - Bouch├®es vapeur aux l├®gumes, sauce soja	Picard	Picard	c	https://world.openfoodfacts.org/product/3270160728640/8-dim-sum-aux-legumes-bouchees-vapeur-aux-legumes-sauce-soja-picard	https://images.openfoodfacts.org/images/products/327/016/072/8640/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/327/016/072/8640/nutrition_fr.11.200.jpg	27
996	ravioli halal boeuf	Zakia	carrefour.fr	b	https://world.openfoodfacts.org/product/3223921800017/ravioli-halal-boeuf-zakia	https://images.openfoodfacts.org/images/products/322/392/180/0017/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/322/392/180/0017/nutrition_fr.19.200.jpg	27
997	Ravioli aux c├¿pes	Grazie		d	https://world.openfoodfacts.org/product/3338310220106/ravioli-aux-cepes-grazie	https://images.openfoodfacts.org/images/products/333/831/022/0106/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/333/831/022/0106/nutrition_fr.9.200.jpg	27
998	Fiori rucola mascarpone	Migros,Anna's Best	Migros	b	https://world.openfoodfacts.org/product/7613269315612/fiori-rucola-mascarpone-migros	https://images.openfoodfacts.org/images/products/761/326/931/5612/front_fr.18.400.jpg	\N	27
999	Ravioli bolognaise	Netto	Netto	b	https://world.openfoodfacts.org/product/3250391341641/ravioli-bolognaise-netto	https://images.openfoodfacts.org/images/products/325/039/134/1641/front_fr.15.400.jpg	\N	27
1000	Ravioli pur boeuf	Grand Jury	Proxi, 8 ├á Huit	c	https://world.openfoodfacts.org/product/3245390133984/ravioli-pur-boeuf-grand-jury	https://images.openfoodfacts.org/images/products/324/539/013/3984/front_fr.6.400.jpg	\N	27
1001	Ravioli Formaggio e Pesto	M-CLASSIC	Migros	b	https://world.openfoodfacts.org/product/7610200105424/ravioli-formaggio-e-pesto-m-classic	https://images.openfoodfacts.org/images/products/761/020/010/5424/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/761/020/010/5424/nutrition_fr.11.200.jpg	27
1002	8 raviolis vapeur, Ha Cao crevette avec sauce aigre-douce et sauce soja	Traditions d'Asie	G├®ant casino,Franprix	b	https://world.openfoodfacts.org/product/3366760015249/8-raviolis-vapeur-ha-cao-crevette-avec-sauce-aigre-douce-et-sauce-soja-traditions-d-asie	https://images.openfoodfacts.org/images/products/336/676/001/5249/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/336/676/001/5249/nutrition_fr.11.200.jpg	27
1003	Ravioli ├á La Viande	Royans		c	https://world.openfoodfacts.org/product/3266140010171/ravioli-a-la-viande-royans	https://images.openfoodfacts.org/images/products/326/614/001/0171/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/326/614/001/0171/nutrition_fr.9.200.jpg	27
1004	Ravioli Tofu-Basilic-Biologique Sauce V├®g├®tarienne	Valbio	M├®tro	c	https://world.openfoodfacts.org/product/3260930200766/ravioli-tofu-basilic-biologique-sauce-vegetarienne-valbio	https://images.openfoodfacts.org/images/products/326/093/020/0766/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/326/093/020/0766/nutrition_fr.18.200.jpg	27
1005	Ravioli 3 fromages Bio	Leader Price BIO,DLP (Distribution Leader Price),Groupe Casino	Leader Price	b	https://world.openfoodfacts.org/product/3263859474614/ravioli-3-fromages-bio-leader-price-bio	https://images.openfoodfacts.org/images/products/326/385/947/4614/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/4614/nutrition_fr.14.200.jpg	27
1006	Ravioli Emmental & Chorizo	Saint Jean		d	https://world.openfoodfacts.org/product/3266140060190/ravioli-emmental-chorizo-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0190/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0190/nutrition_fr.8.200.jpg	27
1007	Ravioli Tomate & Ricotta	Prim├®al,Ekibio		c	https://world.openfoodfacts.org/product/3380380077098/ravioli-tomate-ricotta-primeal	https://images.openfoodfacts.org/images/products/338/038/007/7098/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/338/038/007/7098/nutrition_fr.18.200.jpg	27
1008	Ravioli L├®gumes  du Soleil	Saint jean		c	https://world.openfoodfacts.org/product/3266140055103/ravioli-legumes-du-soleil-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/5103/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/5103/nutrition_fr.14.200.jpg	27
1009	Ravioli Bolognaise (Sauce Riche en B┼ôuf) Format Familial	Zapetti	Leclerc,Magasins U	b	https://world.openfoodfacts.org/product/3021690011111/ravioli-bolognaise-sauce-riche-en-boeuf-format-familial-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1111/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1111/nutrition_fr.8.200.jpg	27
1010	Girasoli pesto basilic - Parmesan et Pignons de Pin	Lustucru		d	https://world.openfoodfacts.org/product/3240931543376/girasoli-pesto-basilic-parmesan-et-pignons-de-pin-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/3376/front_fr.4.400.jpg	\N	27
1011	Le ravioli l├®gumes	Mamie Bio		b	https://world.openfoodfacts.org/product/3456300008074/le-ravioli-legumes-mamie-bio	https://images.openfoodfacts.org/images/products/345/630/000/8074/front_fr.4.400.jpg	\N	27
1012	Raviolis chinois au porc	Sa-Th├┤	Leclerc	d	https://world.openfoodfacts.org/product/3492590911540/raviolis-chinois-au-porc-sa-tho	https://images.openfoodfacts.org/images/products/349/259/091/1540/front_fr.4.400.jpg	\N	27
1013	Ravioles, Recette ├á L'alsacienne, La Barquette De 300g	Schneider		d	https://world.openfoodfacts.org/product/3052420300168/ravioles-recette-a-l-alsacienne-la-barquette-de-300g-schneider	https://images.openfoodfacts.org/images/products/305/242/030/0168/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/305/242/030/0168/nutrition_fr.14.200.jpg	27
1014	ravioli halal volaille	Zakia	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3223921800024/ravioli-halal-volaille-zakia	https://images.openfoodfacts.org/images/products/322/392/180/0024/front_fr.10.400.jpg	\N	27
1015	RAVIOLI de POISSON au Coulis de Langoustine	La Compagnie Bretonne	Conserverie	d	https://world.openfoodfacts.org/product/3760020066604/ravioli-de-poisson-au-coulis-de-langoustine-la-compagnie-bretonne	https://images.openfoodfacts.org/images/products/376/002/006/6604/front_fr.9.400.jpg	\N	27
1016	Le grand Ravioli aux L├®gumes	Danival		a	https://world.openfoodfacts.org/product/3431590010044/le-grand-ravioli-aux-legumes-danival	https://images.openfoodfacts.org/images/products/343/159/001/0044/front_en.4.400.jpg	https://images.openfoodfacts.org/images/products/343/159/001/0044/nutrition_fr.13.200.jpg	27
1017	Ravioli aux Fromages	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710446841/ravioli-aux-fromages-auchan	https://images.openfoodfacts.org/images/products/359/671/044/6841/front_fr.18.400.jpg	\N	27
1018	Ravioli bolognaise	Cora	Cora,Match	b	https://world.openfoodfacts.org/product/3257984614663/ravioli-bolognaise-cora	https://images.openfoodfacts.org/images/products/325/798/461/4663/front_fr.4.400.jpg	\N	27
1019	Ravioli Pur B┼ôuf (Sauce Italienne)	Delicato	Aldi,Banque alimentaire	b	https://world.openfoodfacts.org/product/26069357/ravioli-pur-boeuf-sauce-italienne-delicato	https://images.openfoodfacts.org/images/products/26069357/front_fr.38.400.jpg	https://images.openfoodfacts.org/images/products/26069357/nutrition_fr.10.200.jpg	27
1020	Raviolis L├®gumes 675G - Surgeles	Samlip		b	https://world.openfoodfacts.org/product/8801068450316/raviolis-legumes-675g-surgeles-samlip	https://images.openfoodfacts.org/images/products/880/106/845/0316/front_fr.5.400.jpg	\N	27
1021	Ravioli max de Boeuf	Zapetti	Magasins U	b	https://world.openfoodfacts.org/product/3021690022636/ravioli-max-de-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/2636/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/2636/nutrition_fr.21.200.jpg	27
1022	Ravioli (Pur B┼ôuf, Sauce ├á l'italienne)	Turini,Marque Rep├¿re,Scamark (Filiale E. Leclerc)	Leclerc,Banque alimentaire	b	https://world.openfoodfacts.org/product/3564700005934/ravioli-pur-boeuf-sauce-a-l-italienne-turini	https://images.openfoodfacts.org/images/products/356/470/000/5934/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/356/470/000/5934/nutrition_fr.8.200.jpg	27
1023	Ravioli pur boeuf	Zapetti	Auchan,Magasins U	b	https://world.openfoodfacts.org/product/3021690023886/ravioli-pur-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/3886/front_fr.57.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/3886/nutrition_fr.59.200.jpg	27
1024	Ravioli pur boeuf	Leader Price	Franprix,Leader Price	c	https://world.openfoodfacts.org/product/3263851611314/ravioli-pur-boeuf-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/1314/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/1314/nutrition_fr.12.200.jpg	27
1025	Ravioli Pur B┼ôuf sauce tomate cuisin├®e	Zapetti	Super U,Magasins U	b	https://world.openfoodfacts.org/product/3021690023893/ravioli-pur-boeuf-sauce-tomate-cuisinee-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/3893/front_fr.41.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/3893/nutrition_fr.34.200.jpg	27
1026	Raviolis Pur B┬£oeuf	Cora	Cora	b	https://world.openfoodfacts.org/product/3257980024275/raviolis-pur-b%C2%9Coeuf-cora	https://images.openfoodfacts.org/images/products/325/798/002/4275/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/325/798/002/4275/nutrition_fr.8.200.jpg	27
1027	Bouchon Vapeur aux Crevettes	Asia General Food		b	https://world.openfoodfacts.org/product/3460879633407/bouchon-vapeur-aux-crevettes-asia-general-food	https://images.openfoodfacts.org/images/products/346/087/963/3407/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/346/087/963/3407/nutrition_fr.9.200.jpg	27
1028	Demi-Lune, Aubergine Mozzarella aux ┼ôufs frais	Lustucru,Lustucru S├®lection	Franprix	c	https://world.openfoodfacts.org/product/3240931534879/demi-lune-aubergine-mozzarella-aux-oeufs-frais-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/4879/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/4879/nutrition_fr.33.200.jpg	27
1029	Ravioli aux Truffes de Toscane	Issimo	Franprix	b	https://world.openfoodfacts.org/product/3760244760036/ravioli-aux-truffes-de-toscane-issimo	https://images.openfoodfacts.org/images/products/376/024/476/0036/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/376/024/476/0036/nutrition_fr.19.200.jpg	27
1030	Ravioli pur boeuf	Cora	Cora	b	https://world.openfoodfacts.org/product/3257980084156/ravioli-pur-boeuf-cora	https://images.openfoodfacts.org/images/products/325/798/008/4156/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/325/798/008/4156/nutrition_fr.17.200.jpg	27
1031	Ravioli (Pur B┼ôuf, Sauce ├á l'italienne)	Turini,Marque Rep├¿re,Scamark (Filiale E. Leclerc)	Leclerc	b	https://world.openfoodfacts.org/product/3564700005941/ravioli-pur-boeuf-sauce-a-l-italienne-turini	https://images.openfoodfacts.org/images/products/356/470/000/5941/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/356/470/000/5941/nutrition_fr.8.200.jpg	27
1032	Raviolis jambon cru et fromage	Rivoire & Carret		d	https://world.openfoodfacts.org/product/3526882768090/raviolis-jambon-cru-et-fromage-rivoire-carret	https://images.openfoodfacts.org/images/products/352/688/276/8090/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/352/688/276/8090/nutrition_fr.7.200.jpg	27
1033	Ravioli Boeuf	U	Magasins U	c	https://world.openfoodfacts.org/product/3256224192367/ravioli-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/419/2367/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/622/419/2367/nutrition_fr.8.200.jpg	27
1034	Ravioli, aux oeufs frais,  5 fromages	U	Super U, Magasins U	b	https://world.openfoodfacts.org/product/3256224192336/ravioli-aux-oeufs-frais-5-fromages-u	https://images.openfoodfacts.org/images/products/325/622/419/2336/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/325/622/419/2336/nutrition_fr.9.200.jpg	27
1035	Ravioli Pur Boeuf	U	Magasins U	b	https://world.openfoodfacts.org/product/3256220126168/ravioli-pur-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/012/6168/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/325/622/012/6168/nutrition_fr.11.200.jpg	27
1036	Raviolis Pur b┼ôuf	Cora	Cora	b	https://world.openfoodfacts.org/product/3257980084163/raviolis-pur-boeuf-cora	https://images.openfoodfacts.org/images/products/325/798/008/4163/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/325/798/008/4163/nutrition_fr.4.200.jpg	27
1037	Issimo ravioli girolles et truffes de toscane	Issimo		b	https://world.openfoodfacts.org/product/3760244760203/issimo-ravioli-girolles-et-truffes-de-toscane	https://images.openfoodfacts.org/images/products/376/024/476/0203/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/376/024/476/0203/nutrition_fr.11.200.jpg	27
1038	Ravioli Bolognaise (Riche en viande)	Turini,Marque Rep├¿re,Scamark (Filiale E. Leclerc)	Leclerc	b	https://world.openfoodfacts.org/product/3564700005965/ravioli-bolognaise-riche-en-viande-turini	https://images.openfoodfacts.org/images/products/356/470/000/5965/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/356/470/000/5965/nutrition_fr.14.200.jpg	27
1039	Ravioli Pur B┼ôuf, Sauce Italienne	Les L├®gendaires,Aldi	Aldi	b	https://world.openfoodfacts.org/product/26021324/ravioli-pur-boeuf-sauce-italienne-les-legendaires	https://images.openfoodfacts.org/images/products/26021324/front_fr.52.400.jpg	https://images.openfoodfacts.org/images/products/26021324/nutrition_fr.40.200.jpg	27
1040	Prawn Gyoza	KBs	Woolworths	b	https://world.openfoodfacts.org/product/9315822001489/prawn-gyoza-kbs	https://images.openfoodfacts.org/images/products/931/582/200/1489/front_en.8.400.jpg	https://images.openfoodfacts.org/images/products/931/582/200/1489/nutrition_en.27.200.jpg	27
1041	Caramella Tomate & Mozzarella	Franprix	Franprix	c	https://world.openfoodfacts.org/product/3263859479121/caramella-tomate-mozzarella-franprix	https://images.openfoodfacts.org/images/products/326/385/947/9121/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/9121/nutrition_fr.11.200.jpg	27
1042	Ravioli au boeuf	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710446902/ravioli-au-boeuf-auchan	https://images.openfoodfacts.org/images/products/359/671/044/6902/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/359/671/044/6902/nutrition_fr.10.200.jpg	27
1043	Ravioli au tofu et l├®gumes	karine & jeff		c	https://world.openfoodfacts.org/product/0769959230868/ravioli-au-tofu-et-legumes-karine-jeff	https://images.openfoodfacts.org/images/products/076/995/923/0868/front_fr.4.400.jpg	\N	27
1044	Ravioli aux C├¿pes	Leader Price	Franprix, Leader Price	c	https://world.openfoodfacts.org/product/3263859472214/ravioli-aux-cepes-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/2214/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/2214/nutrition_fr.12.200.jpg	27
1045	Ravioli Bolognaise au B┼ôuf	Monoprix	Monoprix	b	https://world.openfoodfacts.org/product/3350031625152/ravioli-bolognaise-au-boeuf-monoprix	https://images.openfoodfacts.org/images/products/335/003/162/5152/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/335/003/162/5152/nutrition_fr.12.200.jpg	27
1046	Ravioli sauce Bolognaise	Leader Price,DLP (Distribution Leader Price),Groupe Casino	Franprix, Leader Price	b	https://world.openfoodfacts.org/product/3263851611635/ravioli-sauce-bolognaise-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/1635/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/1635/nutrition_fr.25.200.jpg	27
1047	Ravioli ch├¿vre ciboulette	L├®a Nature,Jardin bio	E.Leclerc	c	https://world.openfoodfacts.org/product/3456300012255/ravioli-chevre-ciboulette-lea-nature	https://images.openfoodfacts.org/images/products/345/630/001/2255/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/345/630/001/2255/nutrition_fr.10.200.jpg	27
1048	Ravioli au saumon	William Saurin	Restaurants du C┼ôur	c	https://world.openfoodfacts.org/product/3261055944627/ravioli-au-saumon-william-saurin	https://images.openfoodfacts.org/images/products/326/105/594/4627/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/4627/nutrition_fr.7.200.jpg	27
1049	Raviolis Aux Crevettes Surgel├®s	Cock Brand		b	https://world.openfoodfacts.org/product/3364699131115/raviolis-aux-crevettes-surgeles-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/1115/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/1115/nutrition_fr.10.200.jpg	27
1050	Raviolotti au gorgonzola AOP	Lustucru		d	https://world.openfoodfacts.org/product/3240931544939/raviolotti-au-gorgonzola-aop-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/4939/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/4939/nutrition_fr.11.200.jpg	27
1051	Ravioli ├á la crevette saveur d'Asie	Tr├¿fle	Simply Market,Intermarch├®	a	https://world.openfoodfacts.org/product/3760192940283/ravioli-a-la-crevette-saveur-d-asie-trefle	https://images.openfoodfacts.org/images/products/376/019/294/0283/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/376/019/294/0283/nutrition_fr.19.200.jpg	27
1052	Ravioli	Lidl	Lidl	b	https://world.openfoodfacts.org/product/20446161/ravioli-lidl	https://images.openfoodfacts.org/images/products/20446161/front_cs.11.400.jpg	https://images.openfoodfacts.org/images/products/20446161/nutrition_cs.13.200.jpg	27
1053	Ravioli ch├¿vre basilic	LIORAVI		d	https://world.openfoodfacts.org/product/3760240580904/ravioli-chevre-basilic-lioravi	https://images.openfoodfacts.org/images/products/376/024/058/0904/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/376/024/058/0904/nutrition_fr.10.200.jpg	27
1054	A comt├® du soleil - Ravioles  & L├®gumes	Saint Jean	G├®ant Casino	c	https://world.openfoodfacts.org/product/3266140058913/a-comte-du-soleil-ravioles-legumes-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/8913/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/8913/nutrition_fr.11.200.jpg	27
1055	Ravioli pur boeuf	Leader Price	Franprix, Leader Price	b	https://world.openfoodfacts.org/product/3263851611215/ravioli-pur-boeuf-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/1215/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/1215/nutrition_fr.11.200.jpg	27
1056	Ravioli V├®g├®tariens	Maison Rivi├¿re		c	https://world.openfoodfacts.org/product/3375644008369/ravioli-vegetariens-maison-riviere	https://images.openfoodfacts.org/images/products/337/564/400/8369/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/337/564/400/8369/nutrition_fr.12.200.jpg	27
1057	Ravioli 3 fromages	Casino Bio, Casino	Casino	d	https://world.openfoodfacts.org/product/3222472280866/ravioli-3-fromages-casino-bio	https://images.openfoodfacts.org/images/products/322/247/228/0866/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/322/247/228/0866/nutrition_fr.10.200.jpg	27
1058	Le Ravioli aux Fromages	Panzani	Noz	c	https://world.openfoodfacts.org/product/3261052882007/le-ravioli-aux-fromages-panzani	https://images.openfoodfacts.org/images/products/326/105/288/2007/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/326/105/288/2007/nutrition_fr.9.200.jpg	27
1059	Ravioli Bolognaise Sauce ├á la viande	Casino	Casino,Banque alimentaire	b	https://world.openfoodfacts.org/product/3222473613380/ravioli-bolognaise-sauce-a-la-viande-casino	https://images.openfoodfacts.org/images/products/322/247/361/3380/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/322/247/361/3380/nutrition_fr.35.200.jpg	27
1060	Ravioli aux L├®gumes - Sauce Tomate - Olive	Casino	Casino	b	https://world.openfoodfacts.org/product/3222472518815/ravioli-aux-legumes-sauce-tomate-olive-casino	https://images.openfoodfacts.org/images/products/322/247/251/8815/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/322/247/251/8815/nutrition_fr.7.200.jpg	27
1061	Ravioli pur b┼ôuf sauce ├á l'italienne	Casino	Casino	b	https://world.openfoodfacts.org/product/3222473613328/ravioli-pur-boeuf-sauce-a-l-italienne-casino	https://images.openfoodfacts.org/images/products/322/247/361/3328/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/322/247/361/3328/nutrition_fr.9.200.jpg	27
1062	Ravioli boeuf recette aux oeufs frais	Casino	Casino	b	https://world.openfoodfacts.org/product/3222472577874/ravioli-boeuf-recette-aux-oeufs-frais-casino	https://images.openfoodfacts.org/images/products/322/247/257/7874/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/322/247/257/7874/nutrition_fr.10.200.jpg	27
1063	Ravioli aux 4 l├®gumes	Fiorini	Intermarch├®	a	https://world.openfoodfacts.org/product/3250392066192/ravioli-aux-4-legumes-fiorini	https://images.openfoodfacts.org/images/products/325/039/206/6192/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/325/039/206/6192/nutrition_fr.34.200.jpg	27
1064	Ravioli pur b┼ôuf	Cora	Cora	a	https://world.openfoodfacts.org/product/3257982122801/ravioli-pur-boeuf-cora	https://images.openfoodfacts.org/images/products/325/798/212/2801/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/325/798/212/2801/nutrition_fr.13.200.jpg	27
1065	Ravioli Bolognaise (Sauce Riche en B┼ôuf)	Zapetti	Super U,Magasins U	b	https://world.openfoodfacts.org/product/3021690011104/ravioli-bolognaise-sauce-riche-en-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1104/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1104/nutrition_fr.8.200.jpg	27
1066	Ravioli au tofu & basilic	Maison Rivi├¿re		b	https://world.openfoodfacts.org/product/3375644008376/ravioli-au-tofu-basilic-maison-riviere	https://images.openfoodfacts.org/images/products/337/564/400/8376/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/337/564/400/8376/nutrition_fr.11.200.jpg	27
1067	Ravioli au Jambon	Ecochard		b	https://world.openfoodfacts.org/product/3153575516814/ravioli-au-jambon-ecochard	https://images.openfoodfacts.org/images/products/315/357/551/6814/front_fr.17.400.jpg	\N	27
1068	Ravioli 4 Fromages	Lustucru	Leclerc,Franprix	c	https://world.openfoodfacts.org/product/3240930000801/ravioli-4-fromages-lustucru	https://images.openfoodfacts.org/images/products/324/093/000/0801/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/324/093/000/0801/nutrition_fr.24.200.jpg	27
1069	Ravioli 3 Fromages (Sauce Tomate)	Zapetti	Leclerc	b	https://world.openfoodfacts.org/product/3021690011036/ravioli-3-fromages-sauce-tomate-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1036/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1036/nutrition_fr.10.200.jpg	27
1070	Cannelloni pur b┼ôuf	Belle France		c	https://world.openfoodfacts.org/product/3258561240756/cannelloni-pur-boeuf-belle-france	https://images.openfoodfacts.org/images/products/325/856/124/0756/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/856/124/0756/nutrition_fr.7.200.jpg	27
1071	Ravioli Max de Boeuf	Zapetti		b	https://world.openfoodfacts.org/product/3021690023022/ravioli-max-de-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/3022/front_fr.4.400.jpg	\N	27
1072	Raviolis Crevette ├á la Vapeur	Asia General Food		c	https://world.openfoodfacts.org/product/3460872132556/raviolis-crevette-a-la-vapeur-asia-general-food	https://images.openfoodfacts.org/images/products/346/087/213/2556/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/346/087/213/2556/nutrition_fr.10.200.jpg	27
1073	Caffe crema	Toque Du Chef,Combino,Lidl Stiftung & Co. KG	Lidl	b	https://world.openfoodfacts.org/product/20023911/caffe-crema-toque-du-chef	https://images.openfoodfacts.org/images/products/20023911/front_fr.49.400.jpg	https://images.openfoodfacts.org/images/products/20023911/nutrition_fr.51.200.jpg	27
1074	Gyoza Mandu Festival des L├®gumes	Maison de Cor├®e	carrefour.fr	b	https://world.openfoodfacts.org/product/8805957018786/gyoza-mandu-festival-des-legumes-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/8786/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/880/595/701/8786/nutrition_fr.15.200.jpg	27
1075	Tortellini Pasta biologica ripiena di verdure	Alnatura	tegut,EDEKA	a	https://world.openfoodfacts.org/product/4104420014701/tortellini-organic-pasta-stuffed-with-vegetables-alnatura	https://images.openfoodfacts.org/images/products/410/442/001/4701/front.3.400.jpg	\N	27
1076	Raviolis japonais au poulet	Sushi gourmet	Auchan	b	https://world.openfoodfacts.org/product/3760228710576/raviolis-japonais-au-poulet-sushi-gourmet	https://images.openfoodfacts.org/images/products/376/022/871/0576/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/376/022/871/0576/nutrition_fr.17.200.jpg	27
1077	Le Tortellini au Jambon (Sauce Tomate & Champignons)	Panzani		b	https://world.openfoodfacts.org/product/3261053910358/le-tortellini-au-jambon-sauce-tomate-champignons-panzani	https://images.openfoodfacts.org/images/products/326/105/391/0358/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/326/105/391/0358/nutrition_fr.16.200.jpg	27
1078	Ravioli Bolognaise	Carrefour,CMI (Carrefour Marchandises Internationales),Groupe Carrefour	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3270190176985/ravioli-bolognaise-carrefour	https://images.openfoodfacts.org/images/products/327/019/017/6985/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/327/019/017/6985/nutrition_fr.8.200.jpg	27
1079	Ravioli aux crevettes et ├á la ciboulette congel├®s	Marque Coq,Cock Brand		b	https://world.openfoodfacts.org/product/3364699131078/ravioli-aux-crevettes-et-a-la-ciboulette-congeles-marque-coq	https://images.openfoodfacts.org/images/products/336/469/913/1078/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/1078/nutrition_fr.12.200.jpg	27
1080	Raviolis bolognaise Auchan	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710331000/raviolis-bolognaise-auchan	https://images.openfoodfacts.org/images/products/359/671/033/1000/front.7.400.jpg	https://images.openfoodfacts.org/images/products/359/671/033/1000/nutrition.12.200.jpg	27
1081	Ravioli Bolognaise	Zapetti	Intermarch├®,Leclerc,Auchan, Magasins U	b	https://world.openfoodfacts.org/product/3021690011128/ravioli-bolognaise-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1128/front_fr.39.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1128/nutrition_fr.41.200.jpg	27
1082	Ravioli L├®gumes sauce Toscane	ProSain	Bio14	c	https://world.openfoodfacts.org/product/3335880006512/ravioli-legumes-sauce-toscane-prosain	https://images.openfoodfacts.org/images/products/333/588/000/6512/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/333/588/000/6512/nutrition_fr.10.200.jpg	27
1083	Ravioli au b┼ôuf	MONOPRIX BIO !	Monoprix	b	https://world.openfoodfacts.org/product/3350031954054/ravioli-au-boeuf-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/195/4054/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/335/003/195/4054/nutrition_fr.9.200.jpg	27
1084	Fagottini Parmigiano-Reggiano	Dia	Dia	c	https://world.openfoodfacts.org/product/8480017033369/fagottini-parmigiano-reggiano-dia	https://images.openfoodfacts.org/images/products/848/001/703/3369/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/848/001/703/3369/nutrition_fr.9.200.jpg	27
1085	Ravioli	Carrefour	Carrefour	b	https://world.openfoodfacts.org/product/3245413965547/ravioli-carrefour	https://images.openfoodfacts.org/images/products/324/541/396/5547/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/324/541/396/5547/nutrition_fr.11.200.jpg	27
1086	Medaglioni Speck e Brie	Lo Scoiattolo,Scoiattolo	Auchan	d	https://world.openfoodfacts.org/product/8006669008113/medaglioni-speck-e-brie-lo-scoiattolo	https://images.openfoodfacts.org/images/products/800/666/900/8113/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/800/666/900/8113/nutrition_fr.7.200.jpg	27
1087	Fazzoletto Jambon cru	Franprix	Franprix	c	https://world.openfoodfacts.org/product/3263859471910/fazzoletto-jambon-cru-franprix	https://images.openfoodfacts.org/images/products/326/385/947/1910/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/1910/nutrition_fr.10.200.jpg	27
1088	Ravioli b┼ôuf	Grand Jury, Carrefour	Carrefour, Proxi, 8 ├á Huit	b	https://world.openfoodfacts.org/product/3245390174864/ravioli-boeuf-grand-jury	https://images.openfoodfacts.org/images/products/324/539/017/4864/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/324/539/017/4864/nutrition_fr.9.200.jpg	27
1089	Ravioli l├®gumes du soleil bio	FIORINI		c	https://world.openfoodfacts.org/product/3250392727475/ravioli-legumes-du-soleil-bio-fiorini	https://images.openfoodfacts.org/images/products/325/039/272/7475/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/325/039/272/7475/nutrition_fr.24.200.jpg	27
1090	Ravioli 6 L├®gumes sauce Tomate au Basilic	Zapetti		c	https://world.openfoodfacts.org/product/3021690023848/ravioli-6-legumes-sauce-tomate-au-basilic-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/3848/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/3848/nutrition_fr.10.200.jpg	27
1091	Raviolis aux c├¬pes	Dia	Dia	b	https://world.openfoodfacts.org/product/8480017051004/raviolis-aux-cepes-dia	https://images.openfoodfacts.org/images/products/848/001/705/1004/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/848/001/705/1004/nutrition_fr.8.200.jpg	27
1092	ravioli tofu, tomates,basilic	c├®r├®al bio		b	https://world.openfoodfacts.org/product/3175681037946/ravioli-tofu-tomates-basilic-cereal-bio	https://images.openfoodfacts.org/images/products/317/568/103/7946/front_fr.5.400.jpg	\N	27
1094	Ravioli Pur B┼ôuf	Toque du Chef	Lidl,Banque alimentaire	b	https://world.openfoodfacts.org/product/20263812/ravioli-pur-boeuf-toque-du-chef	https://images.openfoodfacts.org/images/products/20263812/front_fr.44.400.jpg	https://images.openfoodfacts.org/images/products/20263812/nutrition_fr.36.200.jpg	27
1095	Ravioli pur b┼ôuf	Fiorini,S├®lection Intermarch├®,Les Mousquetaires	Intermarch├®	b	https://world.openfoodfacts.org/product/3250390056775/ravioli-pur-boeuf-fiorini	https://images.openfoodfacts.org/images/products/325/039/005/6775/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/325/039/005/6775/nutrition_fr.32.200.jpg	27
1096	Ravioli v├®g├®tariens	MONOPRIX BIO !	Monoprix	c	https://world.openfoodfacts.org/product/3350033311145/ravioli-vegetariens-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/331/1145/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/335/003/331/1145/nutrition_fr.36.200.jpg	27
1097	Ravioli pur boeuf	Fiorini	Intermarch├®	b	https://world.openfoodfacts.org/product/3250390001072/ravioli-pur-boeuf-fiorini	https://images.openfoodfacts.org/images/products/325/039/000/1072/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/325/039/000/1072/nutrition_fr.8.200.jpg	27
1098	Ravioles du Dauphin├® IGP Label Rouge	Reflets de France,Carrefour	Carrefour,Carrefour Market	d	https://world.openfoodfacts.org/product/3245390025739/ravioles-du-dauphine-igp-label-rouge-reflets-de-france	https://images.openfoodfacts.org/images/products/324/539/002/5739/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/324/539/002/5739/nutrition_fr.34.200.jpg	27
1099	Ravioli 6 L├®gumes	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710326280/ravioli-6-legumes-auchan	https://images.openfoodfacts.org/images/products/359/671/032/6280/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/359/671/032/6280/nutrition_fr.9.200.jpg	27
1100	Ravioli Bolognaise	Auchan,L'oiseau,Auchan Production,Groupe Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710331017/ravioli-bolognaise-auchan	https://images.openfoodfacts.org/images/products/359/671/033/1017/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/359/671/033/1017/nutrition_fr.27.200.jpg	27
1101	Ravioli Bolognaise Sauce ├á la viande	Casino	Casino	b	https://world.openfoodfacts.org/product/3222473613342/ravioli-bolognaise-sauce-a-la-viande-casino	https://images.openfoodfacts.org/images/products/322/247/361/3342/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/322/247/361/3342/nutrition_fr.16.200.jpg	27
1102	GRAND RAVIOLI FROMAGE DE CHEVRE	Giovanni rana	Auchan, carrefour.fr	d	https://world.openfoodfacts.org/product/8001665703574/grand-ravioli-fromage-de-chevre-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/3574/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/3574/nutrition_fr.32.200.jpg	27
1103	Ravioles du Dauphin├® AOP label Rouge - surgel├®es	Saint Jean	Spar, carrefour.fr	d	https://world.openfoodfacts.org/product/3266140051655/ravioles-du-dauphine-aop-label-rouge-surgelees-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/1655/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/1655/nutrition_fr.20.200.jpg	27
1112	Ravioli pur boeuf	Panzani		b	https://world.openfoodfacts.org/product/3261055941848/ravioli-pur-boeuf-panzani	https://images.openfoodfacts.org/images/products/326/105/594/1848/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/1848/nutrition_fr.7.200.jpg	27
1115	Le Ravioli bolognaise au poulet	Panzani	Franprix,Magasins U	b	https://world.openfoodfacts.org/product/3261055939142/le-ravioli-bolognaise-au-poulet-panzani	https://images.openfoodfacts.org/images/products/326/105/593/9142/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/326/105/593/9142/nutrition_fr.6.200.jpg	27
1116	Fiori Melanzane	Coop,Coop Betty Bossi,Betty Bossi	Coop	c	https://world.openfoodfacts.org/product/7613356046726/fiori-melanzane-coop	https://images.openfoodfacts.org/images/products/761/335/604/6726/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/761/335/604/6726/nutrition_fr.15.200.jpg	27
1117	Les p├ótes farcies vegan - patate douce & pois chiche	Tartex,Bonneterre et Compagnie, Bonneterre	Botanic	a	https://world.openfoodfacts.org/product/3396410241100/les-pates-farcies-vegan-patate-douce-pois-chiche-tartex	https://images.openfoodfacts.org/images/products/339/641/024/1100/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/339/641/024/1100/nutrition_fr.12.200.jpg	27
1118	Raviolis ├á la tomate	Comme j'aime	Comme j'aime	b	https://world.openfoodfacts.org/product/304008/raviolis-a-la-tomate-comme-j-aime	https://images.openfoodfacts.org/images/products/304008/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/304008/nutrition_fr.13.200.jpg	27
1119	Ravioli ├á la sauce tomate	Sans marque,R&R	Cora,Magasins U,Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3021690024395/ravioli-a-la-sauce-tomate-sans-marque	https://images.openfoodfacts.org/images/products/302/169/002/4395/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/4395/nutrition_fr.8.200.jpg	27
1120	Ravioli Bolognaise	Fiorini		d	https://world.openfoodfacts.org/product/3250390418719/ravioli-bolognaise-fiorini	https://images.openfoodfacts.org/images/products/325/039/041/8719/front_fr.6.400.jpg	\N	27
1121	Assortiment de Bouch├®es Vapeur	Auchan,L'oiseau,Auchan Production,Groupe Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710303953/assortiment-de-bouchees-vapeur-auchan	https://images.openfoodfacts.org/images/products/359/671/030/3953/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/359/671/030/3953/nutrition_fr.21.200.jpg	27
1123	Ravioli Fromages Italiens	Giovanni rana		d	https://world.openfoodfacts.org/product/8001665128537/ravioli-fromages-italiens-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8537/front_fr.3.400.jpg	\N	27
1125	Girasoli ch├¿vre & tomates confites avec une pointe de Figue	LUSTUCRU		c	https://world.openfoodfacts.org/product/3240931544373/girasoli-chevre-tomates-confites-avec-une-pointe-de-figue-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/4373/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/4373/nutrition_fr.16.200.jpg	27
1126	Ravioli pur B┼ôuf sauce tomate cuisin├®e	Zapetti	Magasins U	b	https://world.openfoodfacts.org/product/3021690023909/ravioli-pur-boeuf-sauce-tomate-cuisinee-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/3909/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/3909/nutrition_fr.11.200.jpg	27
1127	P├ótes fra├«ches au bleu du Vercors-Sassenage	Saint Jean	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3266140061609/pates-fraiches-au-bleu-du-vercors-sassenage-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/1609/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/1609/nutrition_fr.21.200.jpg	27
1128	Ravioli	Combino	Lidl	c	https://world.openfoodfacts.org/product/4056489201922/ravioli-combino	https://images.openfoodfacts.org/images/products/405/648/920/1922/front_de.3.400.jpg	https://images.openfoodfacts.org/images/products/405/648/920/1922/nutrition_de.10.200.jpg	27
1130	Ravioli 4 Fromages	Netto	Netto	d	https://world.openfoodfacts.org/product/3210791540150/ravioli-4-fromages-netto	https://images.openfoodfacts.org/images/products/321/079/154/0150/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/321/079/154/0150/nutrition_fr.7.200.jpg	27
1131	Ravioli 4 fromages	Saint Jean		d	https://world.openfoodfacts.org/product/3266140051792/ravioli-4-fromages-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/1792/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/1792/nutrition_fr.10.200.jpg	27
1132	Ravioli au jambon aux ┼ôufs frais	Leader Price,DLP (Distribution Leader Price),Groupe Casino	Leader Price	b	https://world.openfoodfacts.org/product/3263859479916/ravioli-au-jambon-aux-oeufs-frais-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/9916/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/9916/nutrition_fr.11.200.jpg	27
1134	Ravioli 2 fromages-basilic	Casino	Casino	b	https://world.openfoodfacts.org/product/3222472577898/ravioli-2-fromages-basilic-casino	https://images.openfoodfacts.org/images/products/322/247/257/7898/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/322/247/257/7898/nutrition_fr.8.200.jpg	27
1135	Ravioles du Dauphin├® aux ┼ôufs frais	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710214716/ravioles-du-dauphine-aux-oeufs-frais-auchan	https://images.openfoodfacts.org/images/products/359/671/021/4716/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/359/671/021/4716/nutrition_fr.36.200.jpg	27
1136	Ravioli pesto et mozzarella	Royans		c	https://world.openfoodfacts.org/product/3266140060664/ravioli-pesto-et-mozzarella-royans	https://images.openfoodfacts.org/images/products/326/614/006/0664/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0664/nutrition_fr.16.200.jpg	27
1137	Raviolis au boeuf BIO	Casino Bio,Casino	Casino	c	https://world.openfoodfacts.org/product/3222476101457/raviolis-au-boeuf-bio-casino-bio	https://images.openfoodfacts.org/images/products/322/247/610/1457/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/322/247/610/1457/nutrition_fr.18.200.jpg	27
1138	Ravioli Pur B┼ôuf	Grand Jury	Proxi, 8 ├á Huit	c	https://world.openfoodfacts.org/product/3245390134011/ravioli-pur-boeuf-grand-jury	https://images.openfoodfacts.org/images/products/324/539/013/4011/front_fr.10.400.jpg	\N	27
1140	Raviolis aux 4 Fromages	Rochambeau,MCCF (M├®tro Cash & Carry France)	Banque alimentaire, Metro	b	https://world.openfoodfacts.org/product/3439496601427/raviolis-aux-4-fromages-rochambeau	https://images.openfoodfacts.org/images/products/343/949/660/1427/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/343/949/660/1427/nutrition_fr.8.200.jpg	27
1141	Ravioli Bolognaise	Fiorini		b	https://world.openfoodfacts.org/product/3250390418726/ravioli-bolognaise-fiorini	https://images.openfoodfacts.org/images/products/325/039/041/8726/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/039/041/8726/nutrition_fr.14.200.jpg	27
1142	Les Ravioli ';Picante';	Panzani	Auchan	c	https://world.openfoodfacts.org/product/3261052882106/les-ravioli-picante-panzani	https://images.openfoodfacts.org/images/products/326/105/288/2106/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/326/105/288/2106/nutrition_fr.7.200.jpg	27
1143	Ravioli au Jambon	Casino	Casino	a	https://world.openfoodfacts.org/product/3222472577881/ravioli-au-jambon-casino	https://images.openfoodfacts.org/images/products/322/247/257/7881/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/322/247/257/7881/nutrition_fr.6.200.jpg	27
1144	L├®a Nature - Ravioli veggie tofu basilic	Jardin Bio		b	https://world.openfoodfacts.org/product/3456300006483/lea-nature-ravioli-veggie-tofu-basilic-jardin-bio	https://images.openfoodfacts.org/images/products/345/630/000/6483/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/345/630/000/6483/nutrition_fr.14.200.jpg	27
1145	Ravioli viande Ecochard	Ecochard		b	https://world.openfoodfacts.org/product/3153575512014/ravioli-viande-ecochard	https://images.openfoodfacts.org/images/products/315/357/551/2014/front_fr.28.400.jpg	\N	27
1146	Ravioli Raclette Recette Fromag├¿re	Lustucru		d	https://world.openfoodfacts.org/product/3240931539140/ravioli-raclette-recette-fromagere-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/9140/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/9140/nutrition_fr.9.200.jpg	27
1147	Ravioli Viande Ecochard	Ecochard	carrefour.fr	b	https://world.openfoodfacts.org/product/3153575516319/ravioli-viande-ecochard	https://images.openfoodfacts.org/images/products/315/357/551/6319/front_fr.26.400.jpg	\N	27
1148	Ravioles au Saint-Marcelin et Noix du Dauphin├®	Saint Jean	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3266140061586/ravioles-au-saint-marcelin-et-noix-du-dauphine-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/1586/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/1586/nutrition_fr.20.200.jpg	27
1149	Ravioli Poulet ├á la paysanne Mozarella & Bacon	Giovanni Rana	Franprix	d	https://world.openfoodfacts.org/product/8001665700702/ravioli-poulet-a-la-paysanne-mozarella-bacon-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/0702/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/0702/nutrition_fr.21.200.jpg	27
1150	Ravioli pur boeuf	Carrefour	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3560070749058/ravioli-pur-boeuf-carrefour	https://images.openfoodfacts.org/images/products/356/007/074/9058/front_fr.50.400.jpg	https://images.openfoodfacts.org/images/products/356/007/074/9058/nutrition_fr.45.200.jpg	27
1151	Ravioli ├á la volaille	La Vie Claire	La Vie Claire	b	https://world.openfoodfacts.org/product/3266191105383/ravioli-a-la-volaille-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5383/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/619/110/5383/nutrition_fr.7.200.jpg	27
1152	Ravioli 4 fromage	Lustucru		b	https://world.openfoodfacts.org/product/3240931543109/ravioli-4-fromage-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/3109/front_fr.72.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/3109/nutrition_fr.69.200.jpg	27
1153	Ravioli pur boeuf	Turini,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700005972/ravioli-pur-boeuf-turini	https://images.openfoodfacts.org/images/products/356/470/000/5972/front_fr.12.400.jpg	\N	27
1154	Raviolotti au comt├® affin├®	Lustucru,Lustucru s├®lection	carrefour	d	https://world.openfoodfacts.org/product/3240931544953/raviolotti-au-comte-affine-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/4953/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/4953/nutrition_fr.14.200.jpg	27
1155	Ravioli aux fromages	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710173471/ravioli-aux-fromages-auchan	https://images.openfoodfacts.org/images/products/359/671/017/3471/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/359/671/017/3471/nutrition_fr.9.200.jpg	27
1156	Ravioli B┼ôuf Bio	Jardin BIO,LEA Nature	Carrefour,Intermarch├®, carrefour.fr	c	https://world.openfoodfacts.org/product/3478820031486/ravioli-boeuf-bio-jardin-bio	https://images.openfoodfacts.org/images/products/347/882/003/1486/front_fr.83.400.jpg	https://images.openfoodfacts.org/images/products/347/882/003/1486/nutrition_fr.85.200.jpg	27
1157	Ravioli b┼ôuf	Fiorini	Intermarch├®	b	https://world.openfoodfacts.org/product/3250390520337/ravioli-boeuf-fiorini	https://images.openfoodfacts.org/images/products/325/039/052/0337/front_fr.42.400.jpg	https://images.openfoodfacts.org/images/products/325/039/052/0337/nutrition_fr.44.200.jpg	27
1158	Lustucru grandes ravioles 3 fromages italiens	Lustucru S├®lection, Lustucru		d	https://world.openfoodfacts.org/product/3240931545950/lustucru-grandes-ravioles-3-fromages-italiens-lustucru-selection	https://images.openfoodfacts.org/images/products/324/093/154/5950/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5950/nutrition_fr.5.200.jpg	27
1159	Raviolis sauce bolognaise riche en b┼ôuf	zapetti	carrefour.fr	b	https://world.openfoodfacts.org/product/3021690029123/raviolis-sauce-bolognaise-riche-en-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/9123/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9123/nutrition_fr.29.200.jpg	27
1160	Gyoza de pollo y verduras	Ajinomoto		b	https://world.openfoodfacts.org/product/3700417301598/gyoza-de-pollo-y-verduras-ajinomoto	https://images.openfoodfacts.org/images/products/370/041/730/1598/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/041/730/1598/nutrition_fr.16.200.jpg	27
1161	Le ravioli bolognaise	Panzani	Banque alimentaire, carrefour.fr	b	https://world.openfoodfacts.org/product/3261052885107/le-ravioli-bolognaise-panzani	https://images.openfoodfacts.org/images/products/326/105/288/5107/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/326/105/288/5107/nutrition_fr.30.200.jpg	27
1162	Ravioli frais ├á la roquette et aux ├®pinard	Bio verde		c	https://world.openfoodfacts.org/product/4000915102918/ravioli-frais-a-la-roquette-et-aux-epinard-bio-verde	https://images.openfoodfacts.org/images/products/400/091/510/2918/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/400/091/510/2918/nutrition_fr.21.200.jpg	27
1163	Ravioli champignons sauce cepes	Danival	Biocoop	a	https://world.openfoodfacts.org/product/3431590002780/ravioli-champignons-sauce-cepes-danival	https://images.openfoodfacts.org/images/products/343/159/000/2780/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/2780/nutrition_fr.30.200.jpg	27
1164	Ravioles du Dauphin├® IGP Label Rouge	Casino Ca Vient D'Ici,Casino	Casino	d	https://world.openfoodfacts.org/product/3222476310132/ravioles-du-dauphine-igp-label-rouge-casino-ca-vient-d-ici	https://images.openfoodfacts.org/images/products/322/247/631/0132/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/322/247/631/0132/nutrition_fr.10.200.jpg	27
1165	Ravioles ├á po├¬ler 3 fromages	saint-jean	Auchan	d	https://world.openfoodfacts.org/product/3266140057247/ravioles-a-poeler-3-fromages-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/7247/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/7247/nutrition_fr.16.200.jpg	27
1166	Ravioli, Alla Napoletana	Coop,Qualit├® & Prix	Coop	c	https://world.openfoodfacts.org/product/7610800016625/ravioli-alla-napoletana-coop	https://images.openfoodfacts.org/images/products/761/080/001/6625/front_de.3.400.jpg	\N	27
1168	Bio raviolis au poulet	Auchan bio	Auchan	c	https://world.openfoodfacts.org/product/3596710370702/bio-raviolis-au-poulet-auchan-bio	https://images.openfoodfacts.org/images/products/359/671/037/0702/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/359/671/037/0702/nutrition_fr.21.200.jpg	27
1169	Ravioli (pur B┼ôuf)	Fiorini,S├®lection des Mousquetaires,Les Mousquetaires	Intermarch├®,Banque alimentaire	b	https://world.openfoodfacts.org/product/3250390001065/ravioli-pur-boeuf-fiorini	https://images.openfoodfacts.org/images/products/325/039/000/1065/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/325/039/000/1065/nutrition_fr.10.200.jpg	27
1170	Raviolis aux crevettes	Asia Food,Asia Food Kft.		c	https://world.openfoodfacts.org/product/5999885543397/raviolis-aux-crevettes-asia-food	https://images.openfoodfacts.org/images/products/599/988/554/3397/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/599/988/554/3397/nutrition_fr.10.200.jpg	27
1171	Ravioli Bacon, Ricotta & Mozzarella	Giovanni rana		d	https://world.openfoodfacts.org/product/8001665703550/ravioli-bacon-ricotta-mozzarella-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/3550/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/3550/nutrition_fr.12.200.jpg	27
1172	Ravioles ├á Po├¬ler aux 3 Fromages	PRODUIT DE TERROIR	Grand Frais	d	https://world.openfoodfacts.org/product/3266140059811/ravioles-a-poeler-aux-3-fromages-produit-de-terroir	https://images.openfoodfacts.org/images/products/326/614/005/9811/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/9811/nutrition_fr.35.200.jpg	27
1173	Ravioli aux l├®gumes	La Vie Claire	La Vie Claire	c	https://world.openfoodfacts.org/product/3266191105376/ravioli-aux-legumes-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5376/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/619/110/5376/nutrition_fr.14.200.jpg	27
1174	Raviolis au Comt├® AOP	Saint Jean	Auchan, carrefour.fr	d	https://world.openfoodfacts.org/product/3266140061548/raviolis-au-comte-aop-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/1548/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/1548/nutrition_fr.27.200.jpg	27
1175	Girasoli Potimarron Champignons	Lustucru s├®lection		c	https://world.openfoodfacts.org/product/3240931545295/girasoli-potimarron-champignons-lustucru-selection	https://images.openfoodfacts.org/images/products/324/093/154/5295/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5295/nutrition_fr.5.200.jpg	27
1176	Ravioli B┼ôuf	Carrefour	Carrefour Market, Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3245412476105/ravioli-boeuf-carrefour	https://images.openfoodfacts.org/images/products/324/541/247/6105/front_fr.54.400.jpg	https://images.openfoodfacts.org/images/products/324/541/247/6105/nutrition_fr.17.200.jpg	27
1177	Ravioli v├®g├®tariens Bio	Casino Bio,Casino	geant casino,Casino	b	https://world.openfoodfacts.org/product/3222476101440/ravioli-vegetariens-bio-casino-bio	https://images.openfoodfacts.org/images/products/322/247/610/1440/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/322/247/610/1440/nutrition_fr.15.200.jpg	27
1178	Mandu kimchi & pork	Bibigo		c	https://world.openfoodfacts.org/product/4016337912394/mandu-kimchi-pork-bibigo	https://images.openfoodfacts.org/images/products/401/633/791/2394/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/401/633/791/2394/nutrition_fr.21.200.jpg	27
1180	Ravioli aux aubergines	Coquelicot Provence	Biocoop	a	https://world.openfoodfacts.org/product/3760098451050/ravioli-aux-aubergines-coquelicot-provence	https://images.openfoodfacts.org/images/products/376/009/845/1050/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/1050/nutrition_fr.7.200.jpg	27
1181	Raviolis aux l├®gumes	Naturalia	Naturalia	b	https://world.openfoodfacts.org/product/3700036900318/raviolis-aux-legumes-naturalia	https://images.openfoodfacts.org/images/products/370/003/690/0318/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/370/003/690/0318/nutrition_fr.18.200.jpg	27
1182	Gyosa  mandu aux fruits de mer ├®pic├®s	Maison de Cor├®e	carrefour.fr	b	https://world.openfoodfacts.org/product/8805957018793/gyosa-mandu-aux-fruits-de-mer-epices-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/8793/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/880/595/701/8793/nutrition_fr.13.200.jpg	27
1183	Ravioli, Pur B┼ôuf	U		b	https://world.openfoodfacts.org/product/3256222414195/ravioli-pur-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/241/4195/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/325/622/241/4195/nutrition_fr.11.200.jpg	27
1184	Bouchees vapeur	Delis World		d	https://world.openfoodfacts.org/product/3760184010802/bouchees-vapeur-delis-world	https://images.openfoodfacts.org/images/products/376/018/401/0802/front_fr.8.400.jpg	\N	27
1185	Ravioli 3 fromages	Auchan BIO,L'oiseau,Auchan,Auchan Production,Groupe Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710326594/ravioli-3-fromages-auchan-bio	https://images.openfoodfacts.org/images/products/359/671/032/6594/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/359/671/032/6594/nutrition_fr.31.200.jpg	27
1186	Ravioli aux C├¿pes, sauce au Parmigiano Reggiano	Picard	Picard	c	https://world.openfoodfacts.org/product/3270160812196/ravioli-aux-cepes-sauce-au-parmigiano-reggiano-picard	https://images.openfoodfacts.org/images/products/327/016/081/2196/front_fr.55.400.jpg	https://images.openfoodfacts.org/images/products/327/016/081/2196/nutrition_fr.48.200.jpg	27
1187	Ravioli au b┼ôuf sauce tomate	Qilibri		b	https://world.openfoodfacts.org/product/0660989030612/ravioli-au-boeuf-sauce-tomate-qilibri	https://images.openfoodfacts.org/images/products/066/098/903/0612/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/066/098/903/0612/nutrition_fr.14.200.jpg	27
1188	Ravioli de l├®gumes	Jardin Bio,L├®a Nature,Jardin Bio ├®tic	Carrefour Market Morangis,Auchan V├®lizy, carrefour.fr	b	https://world.openfoodfacts.org/product/3760020509491/ravioli-de-legumes-jardin-bio	https://images.openfoodfacts.org/images/products/376/002/050/9491/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/376/002/050/9491/nutrition_fr.45.200.jpg	27
1189	Ravioli	la finesse		c	https://world.openfoodfacts.org/product/4061458010054/ravioli-la-finesse	https://images.openfoodfacts.org/images/products/406/145/801/0054/front_de.15.400.jpg	https://images.openfoodfacts.org/images/products/406/145/801/0054/nutrition_de.17.200.jpg	27
1190	Ravioles du Dauphin├® 4 plaques	Saint Jean	Auchan, carrefour.fr	d	https://world.openfoodfacts.org/product/3266140062132/ravioles-du-dauphine-4-plaques-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/2132/front_fr.46.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/2132/nutrition_fr.50.200.jpg	27
1191	Demi lune - Ricotta ├ëpinard	Lustucru		b	https://world.openfoodfacts.org/product/3240931534862/demi-lune-ricotta-epinard-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/4862/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/4862/nutrition_fr.47.200.jpg	27
1192	Ravioli veau aux petits l├®gumes RANA	Giovanni rana	Leclerc	d	https://world.openfoodfacts.org/product/8001665700535/ravioli-veau-aux-petits-legumes-rana-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/0535/front_fr.6.400.jpg	\N	27
1193	Ravioli pr├¬t ├á cuisiner	Panzani,Souli├® Restauration		b	https://world.openfoodfacts.org/product/3261055946850/ravioli-pret-a-cuisiner-panzani	https://images.openfoodfacts.org/images/products/326/105/594/6850/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/6850/nutrition_fr.16.200.jpg	27
1194	Ziegenfrischk├ñse-Raviolo	Steinhaus	Konsum,Lidl	c	https://world.openfoodfacts.org/product/4009337901161/ziegenfrischkase-raviolo-steinhaus	https://images.openfoodfacts.org/images/products/400/933/790/1161/front_en.22.400.jpg	https://images.openfoodfacts.org/images/products/400/933/790/1161/nutrition_en.24.200.jpg	27
1195	Raviolis Porc Ciboulette	Kung Fu Food		c	https://world.openfoodfacts.org/product/5060284550115/raviolis-porc-ciboulette-kung-fu-food	https://images.openfoodfacts.org/images/products/506/028/455/0115/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/506/028/455/0115/nutrition_fr.13.200.jpg	27
1196	Ravioli au coulis de langoustines	La Pointe De PenmarcÔÇÖh	La Maison de la Sardine	c	https://world.openfoodfacts.org/product/3660902500403/ravioli-au-coulis-de-langoustines-la-pointe-de-penmarc-h	https://images.openfoodfacts.org/images/products/366/090/250/0403/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/366/090/250/0403/nutrition_fr.24.200.jpg	27
1197	Ravioli Tofu Tomates et Basilic	Soy		a	https://world.openfoodfacts.org/product/3259011203901/ravioli-tofu-tomates-et-basilic-soy	https://images.openfoodfacts.org/images/products/325/901/120/3901/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/901/120/3901/nutrition_fr.18.200.jpg	27
1198	Girasoli legumes du soleil 250g lustucru	Lustucru,Lustucru s├®lection	Auchan	c	https://world.openfoodfacts.org/product/3240931545370/girasoli-legumes-du-soleil-250g-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/5370/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5370/nutrition_fr.5.200.jpg	27
1199	Ravioli Pur Boeuf	Danival		b	https://world.openfoodfacts.org/product/3431590010075/ravioli-pur-boeuf-danival	https://images.openfoodfacts.org/images/products/343/159/001/0075/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/343/159/001/0075/nutrition_fr.22.200.jpg	27
1200	Ravioli ch├¿vre et miel	Karine & Jeff,Le bonheur est dans le pot		a	https://world.openfoodfacts.org/product/3760052230844/ravioli-chevre-et-miel-karine-jeff	https://images.openfoodfacts.org/images/products/376/005/223/0844/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/376/005/223/0844/nutrition_fr.24.200.jpg	27
1201	Tortelini a La Viande; 500g	Ôé¼co+,Eco+	Leclerc	c	https://world.openfoodfacts.org/product/3450970107204/tortelini-a-la-viande-500g-co	https://images.openfoodfacts.org/images/products/345/097/010/7204/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/345/097/010/7204/nutrition_fr.26.200.jpg	27
1202	Ravioli aux 4 fromages	Belle France		c	https://world.openfoodfacts.org/product/3258561468327/ravioli-aux-4-fromages-belle-france	https://images.openfoodfacts.org/images/products/325/856/146/8327/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/856/146/8327/nutrition_fr.20.200.jpg	27
1203	Ravioli fromages	Casino	Casino	c	https://world.openfoodfacts.org/product/3222477066472/ravioli-fromages-casino	https://images.openfoodfacts.org/images/products/322/247/706/6472/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/322/247/706/6472/nutrition_fr.23.200.jpg	27
1204	Raviolini Jambon Cru	Dorolina	lidl	c	https://world.openfoodfacts.org/product/3701002402485/raviolini-jambon-cru-dorolina	https://images.openfoodfacts.org/images/products/370/100/240/2485/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/370/100/240/2485/nutrition_fr.22.200.jpg	27
1205	Ravioli petits l├®gumes de M├®diterran├®e	Les artisans du Bio	Franprix	a	https://world.openfoodfacts.org/product/3760098459056/ravioli-petits-legumes-de-mediterranee-les-artisans-du-bio	https://images.openfoodfacts.org/images/products/376/009/845/9056/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/9056/nutrition_fr.27.200.jpg	27
1206	Margherite con ripieno ai carciofi	Esselunga	Esselunga	c	https://world.openfoodfacts.org/product/8002330126520/margherite-con-ripieno-ai-carciofi-esselunga	https://images.openfoodfacts.org/images/products/800/233/012/6520/front_it.4.400.jpg	https://images.openfoodfacts.org/images/products/800/233/012/6520/nutrition_it.11.200.jpg	27
1207	Ravioli frais au jambon et parmesan	Landreau		a	https://world.openfoodfacts.org/product/3386750000017/ravioli-frais-au-jambon-et-parmesan-landreau	https://images.openfoodfacts.org/images/products/338/675/000/0017/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/338/675/000/0017/nutrition_fr.13.200.jpg	27
1208	Lunette bresaola e formaggio	Pastai,Pastai in Brianza	Esselunga	c	https://world.openfoodfacts.org/product/8024257270100/lunette-bresaola-e-formaggio-pastai	https://images.openfoodfacts.org/images/products/802/425/727/0100/front_it.17.400.jpg	https://images.openfoodfacts.org/images/products/802/425/727/0100/nutrition_it.19.200.jpg	27
1209	Ravioli alla carne	Esselunga	Esselunga	c	https://world.openfoodfacts.org/product/8002330124878/ravioli-alla-carne-esselunga	https://images.openfoodfacts.org/images/products/800/233/012/4878/front_it.4.400.jpg	https://images.openfoodfacts.org/images/products/800/233/012/4878/nutrition_it.10.200.jpg	27
1210	Ravioli au boeuf	Belle France		c	https://world.openfoodfacts.org/product/3258561468280/ravioli-au-boeuf-belle-france	https://images.openfoodfacts.org/images/products/325/856/146/8280/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/325/856/146/8280/nutrition_fr.38.200.jpg	27
1211	Gourmet - Grand Ravioli - Canard ├®minc├® aux petits l├®gumes	Rana,Giovanni Rana		d	https://world.openfoodfacts.org/product/8001665128087/gourmet-grand-ravioli-canard-emince-aux-petits-legumes-rana	https://images.openfoodfacts.org/images/products/800/166/512/8087/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8087/nutrition_fr.11.200.jpg	27
1212	Gran Ravioli Ricotta e Spinaci	Antica Pasteria	Simply Market	b	https://world.openfoodfacts.org/product/8007303013579/gran-ravioli-ricotta-e-spinaci-antica-pasteria	https://images.openfoodfacts.org/images/products/800/730/301/3579/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/800/730/301/3579/nutrition_fr.20.200.jpg	27
1213	Ravioli ricotta tartufo e parmigiano reggiano	Soverini	Iper	b	https://world.openfoodfacts.org/product/8027547000449/ravioli-ricotta-tartufo-e-parmigiano-reggiano-soverini	https://images.openfoodfacts.org/images/products/802/754/700/0449/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/802/754/700/0449/nutrition_it.5.200.jpg	27
1214	Raviolis au jambon	Vall├®grain	Carrefour Market	c	https://world.openfoodfacts.org/product/3467980210008/raviolis-au-jambon-vallegrain	https://images.openfoodfacts.org/images/products/346/798/021/0008/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/346/798/021/0008/nutrition_fr.10.200.jpg	27
1215	P├óte fra├«ches aux ┼ôufs farcies aux carottes	Kitchen Garden, Bertagni		d	https://world.openfoodfacts.org/product/8006013996981/pate-fraiches-aux-oeufs-farcies-aux-carottes-kitchen-garden	https://images.openfoodfacts.org/images/products/800/601/399/6981/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/800/601/399/6981/nutrition_fr.12.200.jpg	27
1216	Girasole Ch├¿vre Miel	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710458363/girasole-chevre-miel-auchan	https://images.openfoodfacts.org/images/products/359/671/045/8363/front_fr.61.400.jpg	https://images.openfoodfacts.org/images/products/359/671/045/8363/nutrition_fr.48.200.jpg	27
1217	Lustucru grande raviole tomates sechees pignons de pin	Lustucru,Lustucru selection		a	https://world.openfoodfacts.org/product/3240931546131/lustucru-grande-raviole-tomates-sechees-pignons-de-pin	https://images.openfoodfacts.org/images/products/324/093/154/6131/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/6131/nutrition_fr.18.200.jpg	27
1218	Ravioli ricotta e pistacchio	NonnaMia		c	https://world.openfoodfacts.org/product/20469467/ravioli-ricotta-e-pistacchio-nonnamia	https://images.openfoodfacts.org/images/products/20469467/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/20469467/nutrition_it.5.200.jpg	27
1219	Ravioli gorgonzola et noci	BIOLIVE	Natura Si	b	https://world.openfoodfacts.org/product/8017856021266/ravioli-gorgonzola-et-noci-biolive	https://images.openfoodfacts.org/images/products/801/785/602/1266/front_it.19.400.jpg	https://images.openfoodfacts.org/images/products/801/785/602/1266/nutrition_it.21.200.jpg	27
1220	bio integrale ricotta e spinaci con burrata	Giovanni Rana		d	https://world.openfoodfacts.org/product/8001665705783/bio-integrale-ricotta-e-spinaci-con-burrata-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/5783/front_it.4.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/5783/nutrition_it.10.200.jpg	27
1221	Ravioli pur b┼ôuf sauce riche en l├®gumes	Zapetti	degustabox	b	https://world.openfoodfacts.org/product/3021690028430/ravioli-pur-boeuf-sauce-riche-en-legumes-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/8430/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/8430/nutrition_fr.15.200.jpg	27
1222	Tortellini al prosciutto crudo	Scoiattolo	coop	d	https://world.openfoodfacts.org/product/8006669007192/tortellini-al-prosciutto-crudo-scoiattolo	https://images.openfoodfacts.org/images/products/800/666/900/7192/front_it.15.400.jpg	https://images.openfoodfacts.org/images/products/800/666/900/7192/nutrition_it.13.200.jpg	27
1223	Ravioli Ricotta e Spinaci - Gli autentici	Fini	Iperal	c	https://world.openfoodfacts.org/product/8007490039659/ravioli-ricotta-e-spinaci-gli-autentici-fini	https://images.openfoodfacts.org/images/products/800/749/003/9659/front_it.31.400.jpg	https://images.openfoodfacts.org/images/products/800/749/003/9659/nutrition_it.33.200.jpg	27
1224	Pork & Vegetable Gyoza Dumpling	Bibigo,CJ		c	https://world.openfoodfacts.org/product/4016337912424/pork-vegetable-gyoza-dumpling-bibigo	https://images.openfoodfacts.org/images/products/401/633/791/2424/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/401/633/791/2424/nutrition_fr.12.200.jpg	27
1225	Ravioli aux 4 fromages	U	Magasins U	c	https://world.openfoodfacts.org/product/3256226401368/ravioli-aux-4-fromages-u	https://images.openfoodfacts.org/images/products/325/622/640/1368/front_fr.35.400.jpg	https://images.openfoodfacts.org/images/products/325/622/640/1368/nutrition_fr.42.200.jpg	27
1226	Raviolis au jambon cuit	U	Super U, Magasins U	c	https://world.openfoodfacts.org/product/3256226401351/raviolis-au-jambon-cuit-u	https://images.openfoodfacts.org/images/products/325/622/640/1351/front_fr.39.400.jpg	https://images.openfoodfacts.org/images/products/325/622/640/1351/nutrition_fr.41.200.jpg	27
1227	ravioli al brasato	Esselunga,Esselunga top	esselunga	c	https://world.openfoodfacts.org/product/8002330119119/ravioli-al-brasato-esselunga	https://images.openfoodfacts.org/images/products/800/233/011/9119/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/800/233/011/9119/nutrition_it.10.200.jpg	27
1228	Ravioli pur b┼ôuf	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3254560077225/ravioli-pur-boeuf-auchan	https://images.openfoodfacts.org/images/products/325/456/007/7225/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/325/456/007/7225/nutrition_fr.24.200.jpg	27
1230	Ravioli bio emmental basilic	Bio Village,Marque Rep├¿re,leclerc	Leclerc	b	https://world.openfoodfacts.org/product/3564707135481/ravioli-bio-emmental-basilic-bio-village	https://images.openfoodfacts.org/images/products/356/470/713/5481/front_fr.39.400.jpg	https://images.openfoodfacts.org/images/products/356/470/713/5481/nutrition_fr.33.200.jpg	27
1231	Ravioli bio aux 3 fromages	Bio Village,Marque Rep├¿re	Leclerc	c	https://world.openfoodfacts.org/product/3564707086646/ravioli-bio-aux-3-fromages-bio-village	https://images.openfoodfacts.org/images/products/356/470/708/6646/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/356/470/708/6646/nutrition_fr.30.200.jpg	27
1232	Ravioli aux l├®gumes bio	Bio Village,Marque Rep├¿re,Marque Rep├¿re	Leclerc	c	https://world.openfoodfacts.org/product/3564707086455/ravioli-aux-legumes-bio-bio-village	https://images.openfoodfacts.org/images/products/356/470/708/6455/front_fr.39.400.jpg	https://images.openfoodfacts.org/images/products/356/470/708/6455/nutrition_fr.41.200.jpg	27
1233	Ravioli pur boeuf	Marque Rep├¿re,C├┤t├® Table	E.Leclerc, Leclerc	b	https://world.openfoodfacts.org/product/3564706511958/ravioli-pur-boeuf-marque-repere	https://images.openfoodfacts.org/images/products/356/470/651/1958/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/356/470/651/1958/nutrition_fr.30.200.jpg	27
1234	Girasoli ch├¿vre miel	Turini,Marque Rep├¿re,Leclerc	Leclerc	c	https://world.openfoodfacts.org/product/3564700998762/girasoli-chevre-miel-turini	https://images.openfoodfacts.org/images/products/356/470/099/8762/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/356/470/099/8762/nutrition_fr.15.200.jpg	27
1235	Ravioli bolognaise	Cot├® table, Marque Rep├¿re	leclerc	b	https://world.openfoodfacts.org/product/3564700994696/ravioli-bolognaise-cote-table	https://images.openfoodfacts.org/images/products/356/470/099/4696/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/356/470/099/4696/nutrition_fr.33.200.jpg	27
1236	Ravioli alla borragine	Il viaggiator goloso	Il viaggiator goloso	c	https://world.openfoodfacts.org/product/8000633033583/ravioli-alla-borragine-il-viaggiator-goloso	https://images.openfoodfacts.org/images/products/800/063/303/3583/front_it.16.400.jpg	https://images.openfoodfacts.org/images/products/800/063/303/3583/nutrition_it.18.200.jpg	27
1237	Ravioli dolci con cioccolato	Giovanni Rana,Rana	Esselunga	b	https://world.openfoodfacts.org/product/8001665713443/ravioli-dolci-con-cioccolato-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/571/3443/front_it.12.400.jpg	https://images.openfoodfacts.org/images/products/800/166/571/3443/nutrition_it.5.200.jpg	27
1238	Ravioli zucca	Esselunga	Esselunga	b	https://world.openfoodfacts.org/product/8002330126681/ravioli-zucca-esselunga	https://images.openfoodfacts.org/images/products/800/233/012/6681/front_it.25.400.jpg	https://images.openfoodfacts.org/images/products/800/233/012/6681/nutrition_it.27.200.jpg	27
1239	Ravioli pesto	Turini,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700648537/ravioli-pesto-turini	https://images.openfoodfacts.org/images/products/356/470/064/8537/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/356/470/064/8537/nutrition_fr.11.200.jpg	27
1240	Ravioli aux 4 l├®gumes	Turini,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700550144/ravioli-aux-4-legumes-turini	https://images.openfoodfacts.org/images/products/356/470/055/0144/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/356/470/055/0144/nutrition_fr.8.200.jpg	27
1241	Ravioli au ch├¿vre et miel	Turini,Marque Rep├¿re	Leclerc	c	https://world.openfoodfacts.org/product/3564700424841/ravioli-au-chevre-et-miel-turini	https://images.openfoodfacts.org/images/products/356/470/042/4841/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/356/470/042/4841/nutrition_fr.8.200.jpg	27
1242	Ravioli gorgonsola noix	Turini,Marque Rep├¿re	Banque alimentaire, Leclerc	c	https://world.openfoodfacts.org/product/3564700424858/ravioli-gorgonsola-noix-turini	https://images.openfoodfacts.org/images/products/356/470/042/4858/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/356/470/042/4858/nutrition_fr.11.200.jpg	27
1243	Raviolis pur boeuf	Turini,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700318621/raviolis-pur-boeuf-turini	https://images.openfoodfacts.org/images/products/356/470/031/8621/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/356/470/031/8621/nutrition_fr.31.200.jpg	27
1244	Raviolis 4 fromages	Turini,Marque Rep├¿re	Leclerc	c	https://world.openfoodfacts.org/product/3564700243466/raviolis-4-fromages-turini	https://images.openfoodfacts.org/images/products/356/470/024/3466/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/356/470/024/3466/nutrition_fr.39.200.jpg	27
1245	Ravioli Jambon Fromage	Lustucru		c	https://world.openfoodfacts.org/product/12409323/ravioli-jambon-fromage-lustucru	https://images.openfoodfacts.org/images/products/12409323/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/12409323/nutrition_fr.13.200.jpg	27
1246	Ravioli Tomate Mozzarella	Toque Du Chef,Chef Select	Lidl	c	https://world.openfoodfacts.org/product/20729691/ravioli-tomate-mozzarella-toque-du-chef	https://images.openfoodfacts.org/images/products/20729691/front_de.16.400.jpg	https://images.openfoodfacts.org/images/products/20729691/nutrition_de.8.200.jpg	27
1248	Ravioli pur boeuf 7,5%	U	Super U,Magasins U	b	https://world.openfoodfacts.org/product/3256225428779/ravioli-pur-boeuf-7-5-u	https://images.openfoodfacts.org/images/products/325/622/542/8779/front_fr.48.400.jpg	https://images.openfoodfacts.org/images/products/325/622/542/8779/nutrition_fr.46.200.jpg	27
1249	Ravioli pur boeuf	U	Super U,Magasins U	b	https://world.openfoodfacts.org/product/3256225428878/ravioli-pur-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/542/8878/front_fr.56.400.jpg	https://images.openfoodfacts.org/images/products/325/622/542/8878/nutrition_fr.54.200.jpg	27
1250	Ravioli aux 4 fromages	U	Magasins U	c	https://world.openfoodfacts.org/product/3256227817397/ravioli-aux-4-fromages-u	https://images.openfoodfacts.org/images/products/325/622/781/7397/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/325/622/781/7397/nutrition_fr.5.200.jpg	27
1251	Ravioles du Dauphin├® Label Rouge Saveur	U Saveurs, U	U, Magasins U	d	https://world.openfoodfacts.org/product/3368954600231/ravioles-du-dauphine-label-rouge-saveur-u-saveurs	https://images.openfoodfacts.org/images/products/336/895/460/0231/front_fr.48.400.jpg	https://images.openfoodfacts.org/images/products/336/895/460/0231/nutrition_fr.46.200.jpg	27
1252	Ravioli ├á la bolognaise	U	Super U,Magasins U	b	https://world.openfoodfacts.org/product/3256222414270/ravioli-a-la-bolognaise-u	https://images.openfoodfacts.org/images/products/325/622/241/4270/front_fr.56.400.jpg	https://images.openfoodfacts.org/images/products/325/622/241/4270/nutrition_fr.53.200.jpg	27
1253	Raviolis aux l├®gumes	U,U Bio	Magasins U, Super U	c	https://world.openfoodfacts.org/product/3256227741500/raviolis-aux-legumes-u	https://images.openfoodfacts.org/images/products/325/622/774/1500/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/325/622/774/1500/nutrition_fr.35.200.jpg	27
1254	Ravioli bolognaise	U	Magasins U	b	https://world.openfoodfacts.org/product/3256220126151/ravioli-bolognaise-u	https://images.openfoodfacts.org/images/products/325/622/012/6151/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/325/622/012/6151/nutrition_fr.48.200.jpg	27
1255	Funghetti raviolis aux c├¿pes ├á la farine de sarrasin	L'Italie des P├ótes, Pastai, Pastai in Brianza	Carrefour	d	https://world.openfoodfacts.org/product/8024257270063/funghetti-raviolis-aux-cepes-a-la-farine-de-sarrasin-l-italie-des-pates	https://images.openfoodfacts.org/images/products/802/425/727/0063/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/802/425/727/0063/nutrition_fr.22.200.jpg	27
1256	Raviolis v├®g├®tariens	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710308958/raviolis-vegetariens-auchan	https://images.openfoodfacts.org/images/products/359/671/030/8958/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/359/671/030/8958/nutrition_fr.6.200.jpg	27
1257	Ravioli viande boeuf halal			c	https://world.openfoodfacts.org/product/3700141400154/ravioli-viande-boeuf-halal	https://images.openfoodfacts.org/images/products/370/014/140/0154/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/014/140/0154/nutrition_fr.12.200.jpg	27
1258	Le ravioli pur volaille	Panzani	Magasins U	b	https://world.openfoodfacts.org/product/3261055940681/le-ravioli-pur-volaille-panzani	https://images.openfoodfacts.org/images/products/326/105/594/0681/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/0681/nutrition_fr.28.200.jpg	27
1259	Mmm ! - Mezzelune, tomates marin├®es et mozzarella	Auchan,MMM!	Auchan	d	https://world.openfoodfacts.org/product/3596710456475/mmm-mezzelune-tomates-marinees-et-mozzarella-auchan	https://images.openfoodfacts.org/images/products/359/671/045/6475/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/359/671/045/6475/nutrition_fr.19.200.jpg	27
1260	HAKAO 300G	Les D├®lices d'Orient	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3386030001741/hakao-300g-les-delices-d-orient	https://images.openfoodfacts.org/images/products/338/603/000/1741/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/338/603/000/1741/nutrition_fr.25.200.jpg	27
1261	Grand Ravioli Tomates et Mozzarella aux Olives Concass├®es	Giovanni Rana,Rana,Giovanni Rana Gourmet	Franprix	d	https://world.openfoodfacts.org/product/8001665128049/grand-ravioli-tomates-et-mozzarella-aux-olives-concassees-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8049/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8049/nutrition_fr.14.200.jpg	27
1262	Ravioli Bolognaise	Toque du Chef,Combino,Lidl	Lidl	c	https://world.openfoodfacts.org/product/20023928/ravioli-bolognaise-toque-du-chef	https://images.openfoodfacts.org/images/products/20023928/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/20023928/nutrition_fr.35.200.jpg	27
1263	Ravioli ├á la viande de boeuf Glatt	M├®m├® H├®l├¿ne		b	https://world.openfoodfacts.org/product/3324321260804/ravioli-a-la-viande-de-boeuf-glatt-meme-helene	https://images.openfoodfacts.org/images/products/332/432/126/0804/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/332/432/126/0804/nutrition_fr.16.200.jpg	27
1264	Ravioli aux 4 Fromages	M├®m├® H├®l├¿ne		d	https://world.openfoodfacts.org/product/8015104006508/ravioli-aux-4-fromages-meme-helene	https://images.openfoodfacts.org/images/products/801/510/400/6508/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/801/510/400/6508/nutrition_fr.13.200.jpg	27
1265	Ravioles du Dauphin├®	Saint Jean	Carrefour,Leclerc	d	https://world.openfoodfacts.org/product/3266140059453/ravioles-du-dauphine-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/9453/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/9453/nutrition_fr.24.200.jpg	27
1266	Ravioli 3 Fromages	Saint Jean		d	https://world.openfoodfacts.org/product/3266140062248/ravioli-3-fromages-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/2248/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/2248/nutrition_fr.22.200.jpg	27
1267	Raviolis du Dauphin├®	Nos R├®gions ont du Talent	E.Leclerc	d	https://world.openfoodfacts.org/product/3564709015125/raviolis-du-dauphine-nos-regions-ont-du-talent	https://images.openfoodfacts.org/images/products/356/470/901/5125/front_fr.54.400.jpg	https://images.openfoodfacts.org/images/products/356/470/901/5125/nutrition_fr.56.200.jpg	27
1268	raviolis vapeur	vitasia	lidl	b	https://world.openfoodfacts.org/product/3366760043594/raviolis-vapeur-vitasia	https://images.openfoodfacts.org/images/products/336/676/004/3594/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/336/676/004/3594/nutrition_fr.31.200.jpg	27
1269	Le Ravioli - Pur B┼ôuf	Panzani	carrefour.fr	b	https://world.openfoodfacts.org/product/3038352880404/le-ravioli-pur-boeuf-panzani	https://images.openfoodfacts.org/images/products/303/835/288/0404/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/303/835/288/0404/nutrition_fr.10.200.jpg	27
1270	GRAND RAVIOLI GORGOZOLA ET NOIX	Giovanni Rana,Rana	Monoprix,Magasins U,auchan	d	https://world.openfoodfacts.org/product/8001665128056/grand-ravioli-gorgozola-et-noix-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8056/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8056/nutrition_fr.28.200.jpg	27
1271	Ravioli Jambon	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710457779/ravioli-jambon-auchan	https://images.openfoodfacts.org/images/products/359/671/045/7779/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/359/671/045/7779/nutrition_fr.20.200.jpg	27
1272	Ravioles ├á la viande	Schneider		d	https://world.openfoodfacts.org/product/3052420400660/ravioles-a-la-viande-schneider	https://images.openfoodfacts.org/images/products/305/242/040/0660/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/305/242/040/0660/nutrition_fr.10.200.jpg	27
1273	Ravioli Volaille	Jardin bio logique,Jardin BIO'logique,LEA Nature	Monoprix, Magasins U	c	https://world.openfoodfacts.org/product/3307130602553/ravioli-volaille-jardin-bio-logique	https://images.openfoodfacts.org/images/products/330/713/060/2553/front_fr.46.400.jpg	https://images.openfoodfacts.org/images/products/330/713/060/2553/nutrition_fr.48.200.jpg	27
1275	Ravioli Farci au Fromage	Toque Du Chef	Lidl	d	https://world.openfoodfacts.org/product/20611224/ravioli-farci-au-fromage-toque-du-chef	https://images.openfoodfacts.org/images/products/20611224/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/20611224/nutrition_fr.20.200.jpg	27
1276	Ravioli ├á la viande	Sans marque,Saint Jean		c	https://world.openfoodfacts.org/product/3266140053703/ravioli-a-la-viande-sans-marque	https://images.openfoodfacts.org/images/products/326/614/005/3703/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/3703/nutrition_fr.20.200.jpg	27
1277	Ravioli Artichauts	Giovanni Rana	carrefour.fr	d	https://world.openfoodfacts.org/product/8001665704946/ravioli-artichauts-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/4946/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4946/nutrition_fr.27.200.jpg	27
1278	P├ótes fra├«ches aux girolles po├¬l├®es	Saint Jean	Auchan, carrefour.fr	b	https://world.openfoodfacts.org/product/3266140060176/pates-fraiches-aux-girolles-poelees-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0176/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0176/nutrition_fr.32.200.jpg	27
1279	Ravioli pur boeuf Sauce tomate cuisin├®e	Netto	Netto	b	https://world.openfoodfacts.org/product/3250390426073/ravioli-pur-boeuf-sauce-tomate-cuisinee-netto	https://images.openfoodfacts.org/images/products/325/039/042/6073/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/325/039/042/6073/nutrition_fr.17.200.jpg	27
1280	Dim sum aux crevettes	Picard	Picard	d	https://world.openfoodfacts.org/product/3270160864270/dim-sum-aux-crevettes-picard	https://images.openfoodfacts.org/images/products/327/016/086/4270/front_fr.47.400.jpg	https://images.openfoodfacts.org/images/products/327/016/086/4270/nutrition_fr.73.200.jpg	27
1281	Ravioli 4 fromages	Carrefour	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3245411400712/ravioli-4-fromages-carrefour	https://images.openfoodfacts.org/images/products/324/541/140/0712/front_fr.48.400.jpg	https://images.openfoodfacts.org/images/products/324/541/140/0712/nutrition_fr.9.200.jpg	27
1282	Ravioli aux 4 fromages	P├ótes Fraiches De Provence		c	https://world.openfoodfacts.org/product/3416310301602/ravioli-aux-4-fromages-pates-fraiches-de-provence	https://images.openfoodfacts.org/images/products/341/631/030/1602/front_fr.4.400.jpg	\N	27
1283	Ravioli aux 3 fromages	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3036859471521/ravioli-aux-3-fromages-leader-price	https://images.openfoodfacts.org/images/products/303/685/947/1521/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/303/685/947/1521/nutrition_fr.5.200.jpg	27
1284	Raviolis v├®g├®tariens	Toque du Chef		c	https://world.openfoodfacts.org/product/20289249/raviolis-vegetariens-toque-du-chef	https://images.openfoodfacts.org/images/products/20289249/front_fr.45.400.jpg	https://images.openfoodfacts.org/images/products/20289249/nutrition_fr.44.200.jpg	27
1285	Ravioli bio au bl├® complet ├®pinards ricotta burrata	Giovanni Rana	Magasins U,G├®ant Casino, carrefour.fr	b	https://world.openfoodfacts.org/product/8001665705417/ravioli-bio-au-ble-complet-epinards-ricotta-burrata-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/5417/front_fr.55.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/5417/nutrition_fr.62.200.jpg	27
1286	Ravioli au b┼ôuf brais├®	L'italie Des P├ótes	carrefour.fr	d	https://world.openfoodfacts.org/product/8005658008233/ravioli-au-boeuf-braise-l-italie-des-pates	https://images.openfoodfacts.org/images/products/800/565/800/8233/front_fr.19.400.jpg	\N	27
1287	Ravioli pur boeuf	U	Magasins U	b	https://world.openfoodfacts.org/product/3256220658843/ravioli-pur-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/065/8843/front_fr.3.400.jpg	\N	27
1288	Ravioli Poulet Champignons Ricotta	RANA	Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/8001665703567/ravioli-poulet-champignons-ricotta-rana	https://images.openfoodfacts.org/images/products/800/166/570/3567/front_fr.46.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/3567/nutrition_fr.48.200.jpg	27
1289	Ravioles au Basilic	Saint Jean	Carrefour City	d	https://world.openfoodfacts.org/product/3266140050801/ravioles-au-basilic-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/0801/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/0801/nutrition_fr.9.200.jpg	27
1290	Ravioli au Saumon, Fondue d'├®pinards ├á la cr├¿me	Weight Watchers	Carrefour, carrefour.fr	a	https://world.openfoodfacts.org/product/3248832940690/ravioli-au-saumon-fondue-d-epinards-a-la-creme-weight-watchers	https://images.openfoodfacts.org/images/products/324/883/294/0690/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/324/883/294/0690/nutrition_fr.50.200.jpg	27
1291	Lustucru ravioli jambon 300g x8	Lustucru,Lustucru S├®lection	Franprix, Magasins U	c	https://world.openfoodfacts.org/product/3240932422359/lustucru-ravioli-jambon-300g-x8	https://images.openfoodfacts.org/images/products/324/093/242/2359/front_fr.38.400.jpg	https://images.openfoodfacts.org/images/products/324/093/242/2359/nutrition_fr.19.200.jpg	27
1292	Les ravioli au boeuf	Maison Rivi├¿re		b	https://world.openfoodfacts.org/product/3375644008352/les-ravioli-au-boeuf-maison-riviere	https://images.openfoodfacts.org/images/products/337/564/400/8352/front_fr.14.400.jpg	\N	27
1293	Ravioli pr├¬t ├á cuisiner	Panzani,Souli├® Restauration		a	https://world.openfoodfacts.org/product/3261055946843/ravioli-pret-a-cuisiner-panzani	https://images.openfoodfacts.org/images/products/326/105/594/6843/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/326/105/594/6843/nutrition_fr.17.200.jpg	27
1294	RAVIOLI LEGUMES DU SOLEIL	Giovanni Rana	Intermarch├®,Magasins U, carrefour.fr	c	https://world.openfoodfacts.org/product/8001665128094/ravioli-legumes-du-soleil-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8094/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8094/nutrition_fr.33.200.jpg	27
1295	Turini Ravioli Bolognaise	Turini,Marque Rep├¿re,Scamark (Filiale E. Leclerc)	Leclerc	b	https://world.openfoodfacts.org/product/3564700005958/turini-ravioli-bolognaise	https://images.openfoodfacts.org/images/products/356/470/000/5958/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/356/470/000/5958/nutrition_fr.24.200.jpg	27
1296	Ravioli brebis myrtille	Karine & Jeff,Le bonheur est dans le pot		b	https://world.openfoodfacts.org/product/3760052230240/ravioli-brebis-myrtille-karine-jeff	https://images.openfoodfacts.org/images/products/376/005/223/0240/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/376/005/223/0240/nutrition_fr.16.200.jpg	27
1297	Mini dim sum hakao / siao ma├» avec sauces	Sans marque		b	https://world.openfoodfacts.org/product/3386030001833/mini-dim-sum-hakao-siao-mai-avec-sauces-sans-marque	https://images.openfoodfacts.org/images/products/338/603/000/1833/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/338/603/000/1833/nutrition_fr.10.200.jpg	27
1298	Ravioli Boeuf	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710476077/ravioli-boeuf-auchan	https://images.openfoodfacts.org/images/products/359/671/047/6077/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/359/671/047/6077/nutrition_fr.27.200.jpg	27
1299	Ravioles ├á po├¬ler	Saint Jean	U,Auchan	c	https://world.openfoodfacts.org/product/3266140058395/ravioles-a-poeler-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/8395/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/8395/nutrition_fr.27.200.jpg	27
1300	Ravioli aux l├®gumes Bio	U	U Express,Magasins U	c	https://world.openfoodfacts.org/product/3256223660225/ravioli-aux-legumes-bio-u	https://images.openfoodfacts.org/images/products/325/622/366/0225/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/325/622/366/0225/nutrition_fr.40.200.jpg	27
1301	Ravioli pur boeuf Sauce tomate cuisin├®e	Netto		c	https://world.openfoodfacts.org/product/3250390738572/ravioli-pur-boeuf-sauce-tomate-cuisinee-netto	https://images.openfoodfacts.org/images/products/325/039/073/8572/front_fr.12.400.jpg	\N	27
1302	Ravioli frais ├á la truffe noire	Bio Verde		d	https://world.openfoodfacts.org/product/4000915102949/ravioli-frais-a-la-truffe-noire-bio-verde	https://images.openfoodfacts.org/images/products/400/091/510/2949/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/400/091/510/2949/nutrition_fr.11.200.jpg	27
1303	Vegetable Ravioli	Pampa		b	https://world.openfoodfacts.org/product/0810036560450/vegetable-ravioli-pampa	https://images.openfoodfacts.org/images/products/081/003/656/0450/front_en.6.400.jpg	https://images.openfoodfacts.org/images/products/081/003/656/0450/nutrition_en.8.200.jpg	27
1304	Ravioli in Tomato Sauce	Saro Taormina		c	https://world.openfoodfacts.org/product/0810028540507/ravioli-in-tomato-sauce-saro-taormina	https://images.openfoodfacts.org/images/products/081/002/854/0507/front_en.6.400.jpg	https://images.openfoodfacts.org/images/products/081/002/854/0507/nutrition_en.8.200.jpg	27
1305	Ravioli in Tomato Sauce	Saro Taormina		c	https://world.openfoodfacts.org/product/81002854507/ravioli-in-tomato-sauce-saro-taormina	https://images.openfoodfacts.org/images/products/810/028/545/07/front_en.6.400.jpg	https://images.openfoodfacts.org/images/products/810/028/545/07/nutrition_en.8.200.jpg	27
1306	Ravioli ricotta ├®pinard, sauce tomate	Picard	Picard	b	https://world.openfoodfacts.org/product/3270160867431/ravioli-ricotta-epinard-sauce-tomate-picard	https://images.openfoodfacts.org/images/products/327/016/086/7431/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/327/016/086/7431/nutrition_fr.57.200.jpg	27
1307	Ravioli ├®pinard ricotta Bio	Jardin Bio ├®tic,L├®a Nature	Auchan,Intermarch├®	c	https://world.openfoodfacts.org/product/3760020507800/ravioli-epinard-ricotta-bio-jardin-bio-etic	https://images.openfoodfacts.org/images/products/376/002/050/7800/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/376/002/050/7800/nutrition_fr.49.200.jpg	27
1308	Ravioli ricotta ├®pinards Bio	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710338443/ravioli-ricotta-epinards-bio-auchan	https://images.openfoodfacts.org/images/products/359/671/033/8443/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/359/671/033/8443/nutrition_fr.17.200.jpg	27
1309	Raviolis ricotta ├®pinards aux ┼ôufs Bio	Monoprix bio !	Monoprix	b	https://world.openfoodfacts.org/product/3350030202019/raviolis-ricotta-epinards-aux-oeufs-bio-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/020/2019/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/335/003/020/2019/nutrition_fr.27.200.jpg	27
1310	Ravioli Ricotta ├ëpinard	Turini,Marque Rep├¿re	Leclerc	d	https://world.openfoodfacts.org/product/3564700998847/ravioli-ricotta-epinard-turini	https://images.openfoodfacts.org/images/products/356/470/099/8847/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/356/470/099/8847/nutrition_fr.9.200.jpg	27
1311	Ravioli ├ëpinards Ricotta	Carrefour Bio,Carrefour	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3245413942814/ravioli-epinards-ricotta-carrefour-bio	https://images.openfoodfacts.org/images/products/324/541/394/2814/front_fr.49.400.jpg	https://images.openfoodfacts.org/images/products/324/541/394/2814/nutrition_fr.51.200.jpg	27
1312	Ravioli ├®pinards ricotta, sauce basilic et parmesan bio	MONOPRIX BIO !	Monoprix	c	https://world.openfoodfacts.org/product/3350033289284/ravioli-epinards-ricotta-sauce-basilic-et-parmesan-bio-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/328/9284/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/335/003/328/9284/nutrition_fr.18.200.jpg	27
1313	Raviolis Ricotta ├ëpinards Bio	Bjorg	Leclerc	c	https://world.openfoodfacts.org/product/3229820781396/raviolis-ricotta-epinards-bio-bjorg	https://images.openfoodfacts.org/images/products/322/982/078/1396/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/322/982/078/1396/nutrition_fr.7.200.jpg	27
1314	Ravioli Ricotta & Epinards	Danival		c	https://world.openfoodfacts.org/product/3431590012857/ravioli-ricotta-epinards-danival	https://images.openfoodfacts.org/images/products/343/159/001/2857/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/343/159/001/2857/nutrition_fr.20.200.jpg	27
1315	Ravioli ricotta ├®pinard BIO	Casino Bio, Casino	Casino	b	https://world.openfoodfacts.org/product/3222473658503/ravioli-ricotta-epinard-bio-casino-bio	https://images.openfoodfacts.org/images/products/322/247/365/8503/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/322/247/365/8503/nutrition_fr.9.200.jpg	27
1316	Tortelloni Ricotta e spinaci	la spiga bio		c	https://world.openfoodfacts.org/product/8022230010002/tortelloni-ricotta-e-spinaci-la-spiga-bio	https://images.openfoodfacts.org/images/products/802/223/001/0002/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/802/223/001/0002/nutrition_fr.24.200.jpg	27
1317	Ravioli ricotta ├®pinard sans gluten	Chaque Jour Sans Gluten,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700841396/ravioli-ricotta-epinard-sans-gluten-chaque-jour-sans-gluten	https://images.openfoodfacts.org/images/products/356/470/084/1396/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/356/470/084/1396/nutrition_fr.8.200.jpg	27
1318	Mezzaluna Ricotta e Spinaci	La Pasta di Angelo,Treo	Franprix	d	https://world.openfoodfacts.org/product/3760019700205/mezzaluna-ricotta-e-spinaci-la-pasta-di-angelo	https://images.openfoodfacts.org/images/products/376/001/970/0205/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/376/001/970/0205/nutrition_fr.14.200.jpg	27
1319	Raviolis ricotta ├®pinards Sans gluten	U Sans Gluten, U	Magasins U	b	https://world.openfoodfacts.org/product/3256226085865/raviolis-ricotta-epinards-sans-gluten-u-sans-gluten	https://images.openfoodfacts.org/images/products/325/622/608/5865/front_fr.47.400.jpg	https://images.openfoodfacts.org/images/products/325/622/608/5865/nutrition_fr.45.200.jpg	27
1320	Grznpanzerotti ricotta epinard et zestes de citron	FiorEmilia		b	https://world.openfoodfacts.org/product/3760269070387/grznpanzerotti-ricotta-epinard-et-zestes-de-citron-fioremilia	https://images.openfoodfacts.org/images/products/376/026/907/0387/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/376/026/907/0387/nutrition_fr.14.200.jpg	27
1321	Ravioli Ricotta ├ëpinards et Mascarpone	Giovanni Rana		c	https://world.openfoodfacts.org/product/8001665704175/ravioli-ricotta-epinards-et-mascarpone-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/4175/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4175/nutrition_fr.13.200.jpg	27
1322	Raviolis v├®g├®tariens bio	Leader price	Leader Price	b	https://world.openfoodfacts.org/product/3263851444516/raviolis-vegetariens-bio-leader-price	https://images.openfoodfacts.org/images/products/326/385/144/4516/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/326/385/144/4516/nutrition_fr.30.200.jpg	27
1323	Ravioles ├á po├¬ler Basilic	Saint Jean	Monoprix,Casino	c	https://world.openfoodfacts.org/product/3266140057954/ravioles-a-poeler-basilic-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/7954/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/7954/nutrition_fr.39.200.jpg	27
1324	Square Portobello Mushroom Ravioli 	Meijer	Meijer	a	https://world.openfoodfacts.org/product/0719283590596/square-portobello-mushroom-ravioli-meijer	https://images.openfoodfacts.org/images/products/071/928/359/0596/front_en.7.400.jpg	https://images.openfoodfacts.org/images/products/071/928/359/0596/nutrition_en.11.200.jpg	27
1325	Ravioli Pur Boeuf Auchan	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3254560032989/ravioli-pur-boeuf-auchan	https://images.openfoodfacts.org/images/products/325/456/003/2989/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/325/456/003/2989/nutrition_fr.13.200.jpg	27
1326	Ravioli 6 l├®gumes	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710187782/ravioli-6-legumes-auchan	https://images.openfoodfacts.org/images/products/359/671/018/7782/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/359/671/018/7782/nutrition_fr.13.200.jpg	27
1327	Ravioles du Dauphin├®s	Monoprix gourmet	Monoprix	d	https://world.openfoodfacts.org/product/3350030120450/ravioles-du-dauphines-monoprix-gourmet	https://images.openfoodfacts.org/images/products/335/003/012/0450/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/335/003/012/0450/nutrition_fr.10.200.jpg	27
1328	Ravioli pur boeuf aux oeufs frais	Monoprix	Monoprix	b	https://world.openfoodfacts.org/product/3350030202088/ravioli-pur-boeuf-aux-oeufs-frais-monoprix	https://images.openfoodfacts.org/images/products/335/003/020/2088/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/335/003/020/2088/nutrition_fr.9.200.jpg	27
1329	Raviolis aux 6 L├®gumes	C├┤t├® Table,marque rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564706512115/raviolis-aux-6-legumes-cote-table	https://images.openfoodfacts.org/images/products/356/470/651/2115/front_fr.27.400.jpg	https://images.openfoodfacts.org/images/products/356/470/651/2115/nutrition_fr.7.200.jpg	27
1330	Ravioli Funghi Porcini mit Steinpilzen	Rana	Marktkauf,Coop	b	https://world.openfoodfacts.org/product/8001665127585/ravioli-funghi-porcini-mit-steinpilzen-rana	https://images.openfoodfacts.org/images/products/800/166/512/7585/front_de.28.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/7585/nutrition_de.34.200.jpg	27
1331	Gyozas v├®getariens	Chizuru		b	https://world.openfoodfacts.org/product/3662317007072/gyozas-vegetariens-chizuru	https://images.openfoodfacts.org/images/products/366/231/700/7072/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/366/231/700/7072/nutrition_fr.21.200.jpg	27
1332	Gyoza l├®gumes	Ajinomoto	Carrefour	b	https://world.openfoodfacts.org/product/5905219848076/gyoza-legumes-ajinomoto	https://images.openfoodfacts.org/images/products/590/521/984/8076/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/590/521/984/8076/nutrition_fr.14.200.jpg	27
1333	8 Gyozas aux Crevettes	Picard	Picard	a	https://world.openfoodfacts.org/product/3270160869596/8-gyozas-aux-crevettes-picard	https://images.openfoodfacts.org/images/products/327/016/086/9596/front_fr.4.400.jpg	\N	27
1334	Ravioli au boeuf	Leader Price	Leader Price,Franprix	c	https://world.openfoodfacts.org/product/3263859471019/ravioli-au-boeuf-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/1019/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/1019/nutrition_fr.15.200.jpg	27
1335	Ravioli Boeuf +	Danival	chlorophylle	b	https://world.openfoodfacts.org/product/3431590007921/ravioli-boeuf-danival	https://images.openfoodfacts.org/images/products/343/159/000/7921/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/7921/nutrition_fr.30.200.jpg	27
1336	Ravioli au boeuf	U	Magasins U	b	https://world.openfoodfacts.org/product/3256226401320/ravioli-au-boeuf-u	https://images.openfoodfacts.org/images/products/325/622/640/1320/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/325/622/640/1320/nutrition_fr.49.200.jpg	27
1337	Ravioli pur boeuf	Rochambeau	Metro	b	https://world.openfoodfacts.org/product/3439497020074/ravioli-pur-boeuf-rochambeau	https://images.openfoodfacts.org/images/products/343/949/702/0074/front_fr.4.400.jpg	\N	27
1339	Le Cannelloni (100 % pur B┼ôuf)	Panzani	Casino, carrefour.fr	b	https://world.openfoodfacts.org/product/3038352910200/le-cannelloni-100-pur-boeuf-panzani	https://images.openfoodfacts.org/images/products/303/835/291/0200/front_fr.52.400.jpg	https://images.openfoodfacts.org/images/products/303/835/291/0200/nutrition_fr.54.200.jpg	27
1340	Cannelloni pur boeuf	Leader Price	Franprix, Leader Price	b	https://world.openfoodfacts.org/product/3263851612090/cannelloni-pur-boeuf-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/2090/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/2090/nutrition_fr.13.200.jpg	27
1342	Ravioli Jambon Emmental	Lustucru		c	https://world.openfoodfacts.org/product/3240931537993/ravioli-jambon-emmental-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/7993/front_fr.3.400.jpg	\N	27
1343	Ravioli aux c├¿pes bio	L'italie du Bio	carrefour.fr	d	https://world.openfoodfacts.org/product/8005658018843/ravioli-aux-cepes-bio-l-italie-du-bio	https://images.openfoodfacts.org/images/products/800/565/801/8843/front_en.26.400.jpg	https://images.openfoodfacts.org/images/products/800/565/801/8843/nutrition_fr.16.200.jpg	27
1344	Raviolis au jambon cuit	U	Magasins U	c	https://world.openfoodfacts.org/product/3256227817403/raviolis-au-jambon-cuit-u	https://images.openfoodfacts.org/images/products/325/622/781/7403/front_fr.30.400.jpg	https://images.openfoodfacts.org/images/products/325/622/781/7403/nutrition_fr.32.200.jpg	27
1345	Pates fraiches saint jean	Saint Jean	Carrefour	c	https://world.openfoodfacts.org/product/3266140061531/pates-fraiches-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/1531/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/1531/nutrition_fr.19.200.jpg	27
1346	Ravioli l├®gumes	Carrefour	Carrefour,Carrefour market	b	https://world.openfoodfacts.org/product/3560070976232/ravioli-legumes-carrefour	https://images.openfoodfacts.org/images/products/356/007/097/6232/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/356/007/097/6232/nutrition_fr.42.200.jpg	27
1347	Raviolis Aux Crevettes Xiu Mai	Cock Brand		a	https://world.openfoodfacts.org/product/3364699130620/raviolis-aux-crevettes-xiu-mai-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/0620/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/0620/nutrition_fr.4.200.jpg	27
1348	Raviolis vietnamiens aux l├®gumes	Picard	Picard	d	https://world.openfoodfacts.org/product/3270160729890/raviolis-vietnamiens-aux-legumes-picard	https://images.openfoodfacts.org/images/products/327/016/072/9890/front_fr.46.400.jpg	https://images.openfoodfacts.org/images/products/327/016/072/9890/nutrition_fr.55.200.jpg	27
1350	Ravioli Bio au Bl├® Complet Boeuf et Petits L├®gumes	Rana	carrefour, carrefour.fr	a	https://world.openfoodfacts.org/product/8001665709484/ravioli-bio-au-ble-complet-boeuf-et-petits-legumes-rana	https://images.openfoodfacts.org/images/products/800/166/570/9484/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/9484/nutrition_fr.31.200.jpg	27
1351	Ravioles	SAINT JEAN	Grand Frais	d	https://world.openfoodfacts.org/product/3266140059798/ravioles-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/9798/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/9798/nutrition_fr.22.200.jpg	27
1352	Gyoza Mandu	Maison de cor├®e	Auchan	a	https://world.openfoodfacts.org/product/8805957017222/gyoza-mandu-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/7222/front_fr.3.400.jpg	\N	27
1353	Raviolis aux crevettes (Sui Kao)	SFPA	supermarch├® chinois	c	https://world.openfoodfacts.org/product/3548870310210/raviolis-aux-crevettes-sui-kao-sfpa	https://images.openfoodfacts.org/images/products/354/887/031/0210/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/354/887/031/0210/nutrition_fr.13.200.jpg	27
1354	Siao Ma├» Bouchons de crevette vapeur avec sauces	D├®lices d'Orient	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3386030001765/siao-mai-bouchons-de-crevette-vapeur-avec-sauces-delices-d-orient	https://images.openfoodfacts.org/images/products/338/603/000/1765/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/338/603/000/1765/nutrition_fr.26.200.jpg	27
1355	Ravioli	Bertagni		c	https://world.openfoodfacts.org/product/8001020110139/ravioli-bertagni	https://images.openfoodfacts.org/images/products/800/102/011/0139/front_en.4.400.jpg	https://images.openfoodfacts.org/images/products/800/102/011/0139/nutrition_en.10.200.jpg	27
1356	Ravioli epinard ricotta	Carrefour bio	Carrefour	c	https://world.openfoodfacts.org/product/5400101059658/ravioli-epinard-ricotta-carrefour-bio	https://images.openfoodfacts.org/images/products/540/010/105/9658/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/540/010/105/9658/nutrition_fr.10.200.jpg	27
1357	Ravioli Pur B┼ôuf	Belle France		c	https://world.openfoodfacts.org/product/3258561240626/ravioli-pur-boeuf-belle-france	https://images.openfoodfacts.org/images/products/325/856/124/0626/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/856/124/0626/nutrition_fr.13.200.jpg	27
1358	Raviolis Aux Crevettes Ha Cao	Cock Brand		b	https://world.openfoodfacts.org/product/3364699130705/raviolis-aux-crevettes-ha-cao-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/0705/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/0705/nutrition_fr.21.200.jpg	27
1359	Ravioli Pur B┼ôuf Sauce Italienne	Casino	Casino	b	https://world.openfoodfacts.org/product/3222473613335/ravioli-pur-boeuf-sauce-italienne-casino	https://images.openfoodfacts.org/images/products/322/247/361/3335/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/322/247/361/3335/nutrition_fr.13.200.jpg	27
1360	Ravioli pur b┼ôuf, farce au b┼ôuf	Panzani	Franprix, carrefour.fr	b	https://world.openfoodfacts.org/product/3038352880206/ravioli-pur-boeuf-farce-au-boeuf-panzani	https://images.openfoodfacts.org/images/products/303/835/288/0206/front_fr.42.400.jpg	https://images.openfoodfacts.org/images/products/303/835/288/0206/nutrition_fr.65.200.jpg	27
1361	Ravioli Pollo Asado	Rana		d	https://world.openfoodfacts.org/product/8001665704106/ravioli-pollo-asado-rana	https://images.openfoodfacts.org/images/products/800/166/570/4106/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4106/nutrition_fr.36.200.jpg	27
1362	Ricota and Spinach Grandi Ravioli	Bertagni		d	https://world.openfoodfacts.org/product/8006013994871/ricota-and-spinach-grandi-ravioli-bertagni	https://images.openfoodfacts.org/images/products/800/601/399/4871/front_en.17.400.jpg	https://images.openfoodfacts.org/images/products/800/601/399/4871/nutrition_en.12.200.jpg	27
1363	Ravioli Pur B┼ôuf	Carrefour	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3270190172024/ravioli-pur-boeuf-carrefour	https://images.openfoodfacts.org/images/products/327/019/017/2024/front_fr.44.400.jpg	https://images.openfoodfacts.org/images/products/327/019/017/2024/nutrition_fr.42.200.jpg	27
1433	Raviolis bolo├▒esa	Abricome		c	https://world.openfoodfacts.org/product/8410867401292/ravioli-bolognaise-abricome	https://images.openfoodfacts.org/images/products/841/086/740/1292/front_es.10.400.jpg	https://images.openfoodfacts.org/images/products/841/086/740/1292/nutrition_es.12.200.jpg	27
1364	Ravioli Pur B┼ôuf	Carrefour,Groupe Carrefour	Carrefour market,Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3245412366185/ravioli-pur-boeuf-carrefour	https://images.openfoodfacts.org/images/products/324/541/236/6185/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/324/541/236/6185/nutrition_fr.9.200.jpg	27
1365	Pork Gyoza Poststickers	Trader JoeÔÇÖs	Trader Joe's	b	https://world.openfoodfacts.org/product/00101622/pork-gyoza-poststickers-trader-joe-s	https://images.openfoodfacts.org/images/products/00101622/front_en.16.400.jpg	https://images.openfoodfacts.org/images/products/00101622/nutrition_en.18.200.jpg	27
1366	Ravioli V├®g├®tariens	Carrefour Bio,Carrefour	Carrefour, carrefour.fr	a	https://world.openfoodfacts.org/product/3270190174349/ravioli-vegetariens-carrefour-bio	https://images.openfoodfacts.org/images/products/327/019/017/4349/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/327/019/017/4349/nutrition_fr.5.200.jpg	27
1367	label Rouge - Ravioles du Dauphin├® -comt├® AOP	Saint Jean		d	https://world.openfoodfacts.org/product/3266140059446/label-rouge-ravioles-du-dauphine-comte-aop-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/9446/front_fr.56.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/9446/nutrition_fr.58.200.jpg	27
1368	Cappelletti chorizo tomate	Saint Jean	Auchan	c	https://world.openfoodfacts.org/product/3266140060756/cappelletti-chorizo-tomate-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0756/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0756/nutrition_fr.26.200.jpg	27
1369	Gem├╝se Ravioli	Alnatura		b	https://world.openfoodfacts.org/product/4104420020481/gemuse-ravioli-alnatura	https://images.openfoodfacts.org/images/products/410/442/002/0481/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/410/442/002/0481/nutrition_fr.35.200.jpg	27
1370	Beef Bolognese Ravioli	Trader Giotto's		a	https://world.openfoodfacts.org/product/00953634/beef-bolognese-ravioli-trader-giotto-s	https://images.openfoodfacts.org/images/products/00953634/front_en.15.400.jpg	https://images.openfoodfacts.org/images/products/00953634/nutrition_en.17.200.jpg	27
1371	Ravioli	U	Magasins U	b	https://world.openfoodfacts.org/product/3256222414225/ravioli-u	https://images.openfoodfacts.org/images/products/325/622/241/4225/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/325/622/241/4225/nutrition_fr.13.200.jpg	27
1373	Ravioli Bolognaise	Belle France		c	https://world.openfoodfacts.org/product/3258561240664/ravioli-bolognaise-belle-france	https://images.openfoodfacts.org/images/products/325/856/124/0664/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/325/856/124/0664/nutrition_fr.16.200.jpg	27
1374	Ravioli	Belle France		c	https://world.openfoodfacts.org/product/3258561240671/ravioli-belle-france	https://images.openfoodfacts.org/images/products/325/856/124/0671/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/856/124/0671/nutrition_fr.14.200.jpg	27
1375	Ravioli bolognaise	C├┤t├® Table,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700994733/ravioli-bolognaise-cote-table	https://images.openfoodfacts.org/images/products/356/470/099/4733/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/356/470/099/4733/nutrition_fr.13.200.jpg	27
1376	Raviolis	main gourd		b	https://world.openfoodfacts.org/product/3112940726609/raviolis-main-gourd	https://images.openfoodfacts.org/images/products/311/294/072/6609/front_en.7.400.jpg	https://images.openfoodfacts.org/images/products/311/294/072/6609/nutrition_fr.13.200.jpg	27
1377	Ravioli Bolognaise	Carrefour	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3270190176978/ravioli-bolognaise-carrefour	https://images.openfoodfacts.org/images/products/327/019/017/6978/front_fr.49.400.jpg	https://images.openfoodfacts.org/images/products/327/019/017/6978/nutrition_fr.44.200.jpg	27
1378	Ravioli sauce tomate	Top Budget	Intermarch├®	b	https://world.openfoodfacts.org/product/3410280020648/ravioli-sauce-tomate-top-budget	https://images.openfoodfacts.org/images/products/341/028/002/0648/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/341/028/002/0648/nutrition_fr.13.200.jpg	27
1379	Bio Ravioli v├®g├®tariens	Les Mets De Provence		b	https://world.openfoodfacts.org/product/3337730903583/bio-ravioli-vegetariens-les-mets-de-provence	https://images.openfoodfacts.org/images/products/333/773/090/3583/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/333/773/090/3583/nutrition_fr.13.200.jpg	27
1380	Ravioli 6 l├®gumes	Zapetti	Leclerc,Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/3021690011050/ravioli-6-legumes-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1050/front_fr.47.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1050/nutrition_fr.49.200.jpg	27
1381	Ravioles du Dauphin├®	Royans		d	https://world.openfoodfacts.org/product/3266140020019/ravioles-du-dauphine-royans	https://images.openfoodfacts.org/images/products/326/614/002/0019/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/326/614/002/0019/nutrition_fr.22.200.jpg	27
1382	Ravioli ch├¿vre et ciboulette	Coquelicot Provence	La ruche d'Al├®sia	b	https://world.openfoodfacts.org/product/3760098451111/ravioli-chevre-et-ciboulette-coquelicot-provence	https://images.openfoodfacts.org/images/products/376/009/845/1111/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/1111/nutrition_fr.8.200.jpg	27
1383	Medaglioni funghi e tartufo	De Angelis		d	https://world.openfoodfacts.org/product/8021228310155/medaglioni-funghi-e-tartufo-de-angelis	https://images.openfoodfacts.org/images/products/802/122/831/0155/front_it.19.400.jpg	\N	27
1384	Ravioli au ch├¿vre basilic de Provence	U	Super U, Magasins U	b	https://world.openfoodfacts.org/product/3256221976618/ravioli-au-chevre-basilic-de-provence-u	https://images.openfoodfacts.org/images/products/325/622/197/6618/front_fr.44.400.jpg	https://images.openfoodfacts.org/images/products/325/622/197/6618/nutrition_fr.40.200.jpg	27
1385	Tortelloni ricotta ├®pinards	Leader Price	Leader Price,Franprix	c	https://world.openfoodfacts.org/product/3263859471712/tortelloni-ricotta-epinards-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/1712/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/1712/nutrition_fr.38.200.jpg	27
1386	Ravioli emmental & basilic	Saint jean		c	https://world.openfoodfacts.org/product/3266140055127/ravioli-emmental-basilic-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/5127/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/5127/nutrition_fr.20.200.jpg	27
1434	Ravioli alla carne	De Angelis		c	https://world.openfoodfacts.org/product/8021228410206/ravioli-alla-carne-de-angelis	https://images.openfoodfacts.org/images/products/802/122/841/0206/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/802/122/841/0206/nutrition_it.5.200.jpg	27
1387	Ravioli gorgonzola &  jambon cru  SAINT-JEAN	Saint Jean	Cora	d	https://world.openfoodfacts.org/product/3266140060183/ravioli-gorgonzola-jambon-cru-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0183/front_nl.4.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0183/nutrition_nl.10.200.jpg	27
1388	Ravioli bolognaise CASINO	Casino	Casino	b	https://world.openfoodfacts.org/product/3222473272907/ravioli-bolognaise-casino	https://images.openfoodfacts.org/images/products/322/247/327/2907/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/322/247/327/2907/nutrition_fr.4.200.jpg	27
1389	Cappelletti au jambon cru Vu en catalogue	L'Italie des P├ótes	Auchan, carrefour.fr	d	https://world.openfoodfacts.org/product/8005658008202/cappelletti-au-jambon-cru-vu-en-catalogue-l-italie-des-pates	https://images.openfoodfacts.org/images/products/800/565/800/8202/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/800/565/800/8202/nutrition_fr.18.200.jpg	27
1390	Ravioli pur b┼ôuf	Casa d'Oro		b	https://world.openfoodfacts.org/product/3021690023879/ravioli-pur-boeuf-casa-d-oro	https://images.openfoodfacts.org/images/products/302/169/002/3879/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/3879/nutrition_fr.34.200.jpg	27
1391	Ravioli bio epinard et parmigiano reggiano	Michelis		c	https://world.openfoodfacts.org/product/8011207071573/ravioli-bio-epinard-et-parmigiano-reggiano-michelis	https://images.openfoodfacts.org/images/products/801/120/707/1573/front_fr.4.400.jpg	\N	27
1392	Ravioli champignons et ail des ours	Saint Jean		c	https://world.openfoodfacts.org/product/3266140060725/ravioli-champignons-et-ail-des-ours-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0725/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0725/nutrition_fr.31.200.jpg	27
1393	Agnolotti speck et radicchio	L'Italie des p├ótes	Carrefour	c	https://world.openfoodfacts.org/product/8005658018041/agnolotti-speck-et-radicchio-l-italie-des-pates	https://images.openfoodfacts.org/images/products/800/565/801/8041/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/800/565/801/8041/nutrition_fr.15.200.jpg	27
1394	Les ravioles ├á po├¬ler	SAINT JEAN		c	https://world.openfoodfacts.org/product/3266140059842/les-ravioles-a-poeler-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/9842/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/9842/nutrition_fr.30.200.jpg	27
1395	670G Ravioli Au Seitan Sauce Tomate	Danival	Ekoplaza	b	https://world.openfoodfacts.org/product/3431590001738/670g-ravioli-au-seitan-sauce-tomate-danival	https://images.openfoodfacts.org/images/products/343/159/000/1738/front_fr.36.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/1738/nutrition_fr.43.200.jpg	27
1396	Ravioli pur boeuf	fiorini	Intermarch├®	c	https://world.openfoodfacts.org/product/3250392559212/ravioli-pur-boeuf-fiorini	https://images.openfoodfacts.org/images/products/325/039/255/9212/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/325/039/255/9212/nutrition_fr.17.200.jpg	27
1397	Ravioli Tofu Basilic Sauce v├®g├®tarienne	Valbio	Biocoop, Biocoop Caluire	a	https://world.openfoodfacts.org/product/3260938500769/ravioli-tofu-basilic-sauce-vegetarienne-valbio	https://images.openfoodfacts.org/images/products/326/093/850/0769/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/326/093/850/0769/nutrition_fr.7.200.jpg	27
1398	Ravioli 5 l├®gumes	Danival	NATURALIA, Biocoop Caluire	a	https://world.openfoodfacts.org/product/3431590006887/ravioli-5-legumes-danival	https://images.openfoodfacts.org/images/products/343/159/000/6887/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/6887/nutrition_fr.35.200.jpg	27
1399	Ravioli au B┼ôuf Bio - 340 g	La R├®serve de Champlat	Biocoop,Biocoop Caluire	b	https://world.openfoodfacts.org/product/3493833100387/ravioli-au-boeuf-bio-340-g-la-reserve-de-champlat	https://images.openfoodfacts.org/images/products/349/383/310/0387/front_fr.43.400.jpg	https://images.openfoodfacts.org/images/products/349/383/310/0387/nutrition_fr.40.200.jpg	27
1400	Ravioli frais fromage de ch├¿vre	BIO VERDE		d	https://world.openfoodfacts.org/product/4000915029215/ravioli-frais-fromage-de-chevre-bio-verde	https://images.openfoodfacts.org/images/products/400/091/502/9215/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/400/091/502/9215/nutrition_fr.12.200.jpg	27
1401	Ravioli Basilico e Pecorino	Garofalo	Migros	d	https://world.openfoodfacts.org/product/8000139929137/ravioli-basilico-e-pecorino-garofalo	https://images.openfoodfacts.org/images/products/800/013/992/9137/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/800/013/992/9137/nutrition_fr.23.200.jpg	27
1402	Raviolis	Zapetti	carrefour.fr	b	https://world.openfoodfacts.org/product/3021690029154/raviolis-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/9154/front_fr.38.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9154/nutrition_en.12.200.jpg	27
1403	Ravioli pur boeuf fran├ºais	Zapetti	carrefour.fr	b	https://world.openfoodfacts.org/product/3021690029093/ravioli-pur-boeuf-francais-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/9093/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9093/nutrition_fr.47.200.jpg	27
1404	Ravioli	Aldi	Aldi	c	https://world.openfoodfacts.org/product/4061458010078/ravioli-aldi	https://images.openfoodfacts.org/images/products/406/145/801/0078/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/406/145/801/0078/nutrition_fr.5.200.jpg	27
1405	Ravioles du Dauphin├® surgel├®es	Royans	Picard	d	https://world.openfoodfacts.org/product/3266140051600/ravioles-du-dauphine-surgelees-royans	https://images.openfoodfacts.org/images/products/326/614/005/1600/front_fr.31.400.jpg	https://images.openfoodfacts.org/images/products/326/614/005/1600/nutrition_fr.33.200.jpg	27
1406	Ravioli bolognaise	toque du chef,Lidl Stiftung & Co. KG	Lidl	c	https://world.openfoodfacts.org/product/20408817/ravioli-bolognaise-toque-du-chef	https://images.openfoodfacts.org/images/products/20408817/front_fr.45.400.jpg	https://images.openfoodfacts.org/images/products/20408817/nutrition_fr.52.200.jpg	27
1407	Ravioli jambon	Carrefour	Carrefour, carrefour.fr	b	https://world.openfoodfacts.org/product/3245412459139/ravioli-jambon-carrefour	https://images.openfoodfacts.org/images/products/324/541/245/9139/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/324/541/245/9139/nutrition_fr.11.200.jpg	27
1408	Gyoza A La Crevette Trefle	Tr├¿fle		b	https://world.openfoodfacts.org/product/3760192940306/gyoza-a-la-crevette-trefle	https://images.openfoodfacts.org/images/products/376/019/294/0306/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/376/019/294/0306/nutrition_fr.19.200.jpg	27
1409	P├ótes farcies aux l├®gumes ├á la sauce tomate bio	Jardin Bio	Carrefour,Magasins U, carrefour.fr	a	https://world.openfoodfacts.org/product/3478820023726/pates-farcies-aux-legumes-a-la-sauce-tomate-bio-jardin-bio	https://images.openfoodfacts.org/images/products/347/882/002/3726/front_fr.57.400.jpg	https://images.openfoodfacts.org/images/products/347/882/002/3726/nutrition_fr.59.200.jpg	27
1410	Grand ravioli c├¿pes	Giovanni Rana,Rana	Magasins U,Monoprix,Franprix,Carrefour Market	d	https://world.openfoodfacts.org/product/8001665128032/grand-ravioli-cepes-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8032/front_fr.85.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8032/nutrition_fr.30.200.jpg	27
1411	Ravioli aux 4 Fromages aux ┼Æufs Frais	Leader Price	Franprix, Leader Price	d	https://world.openfoodfacts.org/product/3263859471521/ravioli-aux-4-fromages-aux-oeufs-frais-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/1521/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/1521/nutrition_fr.36.200.jpg	27
1413	Raviolis au jambon	Turini,Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564700173060/raviolis-au-jambon-turini	https://images.openfoodfacts.org/images/products/356/470/017/3060/front_fr.37.400.jpg	https://images.openfoodfacts.org/images/products/356/470/017/3060/nutrition_fr.39.200.jpg	27
1414	Ravioli			b	https://world.openfoodfacts.org/product/3261055951090/ravioli	https://images.openfoodfacts.org/images/products/326/105/595/1090/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/105/595/1090/nutrition_fr.10.200.jpg	27
1415	EIER RAVIOLI	Hero	Coop	c	https://world.openfoodfacts.org/product/7614200011648/ravioli-with-eggs-hero	https://images.openfoodfacts.org/images/products/761/420/001/1648/front.3.400.jpg	\N	27
1416	RAVIOLI CEPES	Giovanni Rana	Auchan,Magasins U,Carrefour	b	https://world.openfoodfacts.org/product/8001665128322/ravioli-cepes-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8322/front_fr.45.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8322/nutrition_fr.47.200.jpg	27
1417	RAVIOLI RICOTTA EPINARDS MASCARPONE	Giovanni rana,rana	Auchan,Magasins U,Casino, carrefour.fr	d	https://world.openfoodfacts.org/product/8001665128063/ravioli-ricotta-epinards-mascarpone-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/8063/front_fr.70.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8063/nutrition_fr.88.200.jpg	27
1418	Ravioli pur boeuf	Episaveurs,Pomona		c	https://world.openfoodfacts.org/product/3061435003223/ravioli-pur-boeuf-episaveurs	https://images.openfoodfacts.org/images/products/306/143/500/3223/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/306/143/500/3223/nutrition_fr.12.200.jpg	27
1419	MINI RAVIOLI 2 FROMAGES	C├®r├®al Bio	Leclerc,Magasins U,Carrefour,Market,Cora, carrefour.fr	a	https://world.openfoodfacts.org/product/3175681177635/mini-ravioli-2-fromages-cereal-bio	https://images.openfoodfacts.org/images/products/317/568/117/7635/front_fr.67.400.jpg	https://images.openfoodfacts.org/images/products/317/568/117/7635/nutrition_fr.64.200.jpg	27
1420	Raviolis au b┼ôuf	Casa Morando,Aldi	Aldi	c	https://world.openfoodfacts.org/product/26045641/ravioli-4-fromages-casa-morando	https://images.openfoodfacts.org/images/products/26045641/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/26045641/nutrition_fr.57.200.jpg	27
1421	Dim Sum Gyoza : aux crevettes	Betty Bossi	Coop	b	https://world.openfoodfacts.org/product/7610848531012/dim-sum-gyoza-aux-crevettes-betty-bossi	https://images.openfoodfacts.org/images/products/761/084/853/1012/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/761/084/853/1012/nutrition_fr.10.200.jpg	27
1422	RAVIOLIS AU PARMESAN	La spiga bio,La Spiga		d	https://world.openfoodfacts.org/product/8022230010606/raviolis-au-parmesan-la-spiga-bio	https://images.openfoodfacts.org/images/products/802/223/001/0606/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/802/223/001/0606/nutrition_fr.6.200.jpg	27
1423	Bouchees Aux Crevettes Xiu Mai	Cock Brand		b	https://world.openfoodfacts.org/product/3364699130828/bouchees-aux-crevettes-xiu-mai-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/0828/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/0828/nutrition_fr.24.200.jpg	27
1424	Mini raviolis superieur aux crevettes	Cock Brand		b	https://world.openfoodfacts.org/product/3364699131108/mini-raviolis-superieur-aux-crevettes-cock-brand	https://images.openfoodfacts.org/images/products/336/469/913/1108/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/1108/nutrition_fr.14.200.jpg	27
1425	Raviolis aux porcs et crevettes	EA SARL		b	https://world.openfoodfacts.org/product/3339230006719/raviolis-aux-porcs-et-crevettes-ea-sarl	https://images.openfoodfacts.org/images/products/333/923/000/6719/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/333/923/000/6719/nutrition_fr.23.200.jpg	27
1426	Gyoza poulet et l├®gumes	Ajinomoto	Carrefour,Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/5905279248069/gyoza-poulet-et-legumes-ajinomoto	https://images.openfoodfacts.org/images/products/590/527/924/8069/front_fr.26.400.jpg	https://images.openfoodfacts.org/images/products/590/527/924/8069/nutrition_fr.28.200.jpg	27
1427	Gyoza Crevettes	Ajinomoto	carrefour.fr	b	https://world.openfoodfacts.org/product/3700417301840/gyoza-crevettes-ajinomoto	https://images.openfoodfacts.org/images/products/370/041/730/1840/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/370/041/730/1840/nutrition_fr.61.200.jpg	27
1428	Gyoza L├®gumes	Ajinomoto	Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/5905279248076/gyoza-legumes-ajinomoto	https://images.openfoodfacts.org/images/products/590/527/924/8076/front_fr.38.400.jpg	https://images.openfoodfacts.org/images/products/590/527/924/8076/nutrition_fr.45.200.jpg	27
1430	Ravioli ricotta et ├®pinards sauce basilic	Casino Bio, Casino	Casino	c	https://world.openfoodfacts.org/product/3222476859853/ravioli-ricotta-et-epinards-sauce-basilic-casino-bio	https://images.openfoodfacts.org/images/products/322/247/685/9853/front_fr.4.400.jpg	\N	27
1431	8 Gyoza aux l├®gumes	Picard	Picard	b	https://world.openfoodfacts.org/product/3270160727575/8-gyoza-aux-legumes-picard	https://images.openfoodfacts.org/images/products/327/016/072/7575/front_fr.47.400.jpg	https://images.openfoodfacts.org/images/products/327/016/072/7575/nutrition_fr.60.200.jpg	27
1432	Le Ravioli Bolognaise	Panzani	Franprix, carrefour.fr	b	https://world.openfoodfacts.org/product/3038352880909/le-ravioli-bolognaise-panzani	https://images.openfoodfacts.org/images/products/303/835/288/0909/front_fr.73.400.jpg	https://images.openfoodfacts.org/images/products/303/835/288/0909/nutrition_fr.75.200.jpg	27
1435	Raviolis de ricotta en salsa de tomate	GutBio	Aldi	c	https://world.openfoodfacts.org/product/24085557/raviolis-de-ricotta-en-salsa-de-tomate-gutbio	https://images.openfoodfacts.org/images/products/24085557/front_es.6.400.jpg	https://images.openfoodfacts.org/images/products/24085557/nutrition_es.8.200.jpg	27
1436	Ravioli ricotta y espinacas	bonnatura		c	https://world.openfoodfacts.org/product/8432022000119/ravioli-ricotta-y-espinacas-bonnatura	https://images.openfoodfacts.org/images/products/843/202/200/0119/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/843/202/200/0119/nutrition_es.5.200.jpg	27
1437	Ravioli con carne	Fripasta		c	https://world.openfoodfacts.org/product/8436581470109/ravioli-con-carne-fripasta	https://images.openfoodfacts.org/images/products/843/658/147/0109/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/843/658/147/0109/nutrition_es.5.200.jpg	27
1438	Gyozas de langostino	Omakase	Mercadona	b	https://world.openfoodfacts.org/product/8436594380068/gyozas-de-langostino-omakase	https://images.openfoodfacts.org/images/products/843/659/438/0068/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/843/659/438/0068/nutrition_es.11.200.jpg	27
1439	Ravioli Carne al Vino Rosso	Hilcona	REWE	c	https://world.openfoodfacts.org/product/7610227909050/ravioli-carne-al-vino-rosso-hilcona	https://images.openfoodfacts.org/images/products/761/022/790/9050/front_de.20.400.jpg	https://images.openfoodfacts.org/images/products/761/022/790/9050/nutrition_de.22.200.jpg	27
1440	Ravioli al huevo con carne	Hero		c	https://world.openfoodfacts.org/product/8410175042965/ravioli-al-huevo-con-carne-hero	https://images.openfoodfacts.org/images/products/841/017/504/2965/front_es.29.400.jpg	https://images.openfoodfacts.org/images/products/841/017/504/2965/nutrition_es.31.200.jpg	27
1441	Ravioli Calabaza & ricotta	Chef Select	Lidl	a	https://world.openfoodfacts.org/product/20284404/ravioli-calabaza-ricotta-chef-select	https://images.openfoodfacts.org/images/products/20284404/front_es.61.400.jpg	https://images.openfoodfacts.org/images/products/20284404/nutrition_es.58.200.jpg	27
1442	Setas con boletus	Bel Canto, Bertagni	Mercadona	d	https://world.openfoodfacts.org/product/8006013990545/setas-con-boletus-bel-canto	https://images.openfoodfacts.org/images/products/800/601/399/0545/front_es.35.400.jpg	https://images.openfoodfacts.org/images/products/800/601/399/0545/nutrition_es.37.200.jpg	27
1443	Tortelloni de carne	Hacendado	Mercadona	d	https://world.openfoodfacts.org/product/8480000061423/tortelloni-de-carne-hacendado	https://images.openfoodfacts.org/images/products/848/000/006/1423/front_es.30.400.jpg	https://images.openfoodfacts.org/images/products/848/000/006/1423/nutrition_es.32.200.jpg	27
1444	Ravioli de reques├│n y espinacas	Hacendado	Mercadona	d	https://world.openfoodfacts.org/product/8480000061430/ravioli-de-requeson-y-espinacas-hacendado	https://images.openfoodfacts.org/images/products/848/000/006/1430/front_es.33.400.jpg	https://images.openfoodfacts.org/images/products/848/000/006/1430/nutrition_es.35.200.jpg	27
1445	Ravioli de carne	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/8431876261547/ravioli-de-carne-carrefour	https://images.openfoodfacts.org/images/products/843/187/626/1547/front_es.20.400.jpg	https://images.openfoodfacts.org/images/products/843/187/626/1547/nutrition_es.12.200.jpg	27
1446	Gourmet queso de cabra y cebolla caramelizada	Giovanni Rana		c	https://world.openfoodfacts.org/product/8001665116275/gourmet-queso-de-cabra-y-cebolla-caramelizada-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/511/6275/front_es.18.400.jpg	\N	27
1447	Cappelletti Jambon Cru	Giovanni Rana	Magasins U	d	https://world.openfoodfacts.org/product/8001665704533/cappelletti-jambon-cru-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/4533/front_fr.89.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4533/nutrition_fr.40.200.jpg	27
1448	Vegan Ravioli	Smaakt		d	https://world.openfoodfacts.org/product/8719153031688/vegan-ravioli-smaakt	https://images.openfoodfacts.org/images/products/871/915/303/1688/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/871/915/303/1688/nutrition_fr.5.200.jpg	27
1449	Ravioli Bolognaise Sauce Mascarpone	Delhaize	Delhaize	c	https://world.openfoodfacts.org/product/5400112945100/ravioli-bolognaise-sauce-mascarpone-delhaize	https://images.openfoodfacts.org/images/products/540/011/294/5100/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/540/011/294/5100/nutrition_fr.9.200.jpg	27
1450	Ravioli	Casa Morando		c	https://world.openfoodfacts.org/product/27035726/ravioli-casa-morando	https://images.openfoodfacts.org/images/products/27035726/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/27035726/nutrition_fr.10.200.jpg	27
1451	Ravioli Pur Boeuf	Delhaize	Delhaize	b	https://world.openfoodfacts.org/product/5400113042242/ravioli-pur-boeuf-delhaize	https://images.openfoodfacts.org/images/products/540/011/304/2242/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/540/011/304/2242/nutrition_fr.10.200.jpg	27
1453	Cappelletti Jambon Cru	BIOVANNI RANA	Auchan,Franprix	d	https://world.openfoodfacts.org/product/8001665127950/cappelletti-jambon-cru-biovanni-rana	https://images.openfoodfacts.org/images/products/800/166/512/7950/front_fr.35.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/7950/nutrition_fr.26.200.jpg	27
1454	Ravioli au Tofu, Tomates & Olives	Danival		c	https://world.openfoodfacts.org/product/3431590001721/ravioli-au-tofu-tomates-olives-danival	https://images.openfoodfacts.org/images/products/343/159/000/1721/front_fr.4.400.jpg	\N	27
1455	Gyoza ├á la viande de b┼ôuf	Vici	La Vie Claire	c	https://world.openfoodfacts.org/product/4770190120074/gyoza-a-la-viande-de-boeuf-vici	https://images.openfoodfacts.org/images/products/477/019/012/0074/front_en.20.400.jpg	https://images.openfoodfacts.org/images/products/477/019/012/0074/nutrition_en.32.200.jpg	27
1456	Le Ravioli Bolognese - Farce au b┼ôuf	Panzani		b	https://world.openfoodfacts.org/product/3038354290508/le-ravioli-bolognese-farce-au-boeuf-panzani	https://images.openfoodfacts.org/images/products/303/835/429/0508/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/303/835/429/0508/nutrition_fr.26.200.jpg	27
1457	Ravioli	Boni	Colruyt	b	https://world.openfoodfacts.org/product/5400141381221/ravioli-boni	https://images.openfoodfacts.org/images/products/540/014/138/1221/front_fr.4.400.jpg	\N	27
1458	Ravioli Bolognese 800gr	Panzani	Carrefour	b	https://world.openfoodfacts.org/product/3038354290607/ravioli-bolognese-800gr-panzani	https://images.openfoodfacts.org/images/products/303/835/429/0607/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/303/835/429/0607/nutrition_fr.20.200.jpg	27
1490	Gyozas aux crevettes + sauce soja			d	https://world.openfoodfacts.org/product/3366760035230/gyozas-aux-crevettes-sauce-soja	https://images.openfoodfacts.org/images/products/336/676/003/5230/front_fr.4.400.jpg	\N	27
1459	Ravioli frais aux artichauts	Bio verde	Vibio,Biocoop	d	https://world.openfoodfacts.org/product/4000915105353/ravioli-frais-aux-artichauts-bio-verde	https://images.openfoodfacts.org/images/products/400/091/510/5353/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/400/091/510/5353/nutrition_fr.23.200.jpg	27
1460	Ravioli 3 fromages	zapetti		b	https://world.openfoodfacts.org/product/3021690011043/ravioli-3-fromages-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1043/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1043/nutrition_fr.14.200.jpg	27
1461	Tortelloni au basilic	Delhaize	Delhaize	d	https://world.openfoodfacts.org/product/5400112213421/tortelloni-au-basilic-delhaize	https://images.openfoodfacts.org/images/products/540/011/221/3421/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/540/011/221/3421/nutrition_fr.39.200.jpg	27
1462	Ravioli Bolognaise	Zapetti	Delhaize	b	https://world.openfoodfacts.org/product/3021690011098/ravioli-bolognaise-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1098/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1098/nutrition_fr.17.200.jpg	27
1463	Ravioli Pur Boeuf	Zapetti	Delhaize	b	https://world.openfoodfacts.org/product/3021690011197/ravioli-pur-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1197/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1197/nutrition_fr.14.200.jpg	27
1464	Ravioli Ricotta Epinards	Nature bio	Cora	b	https://world.openfoodfacts.org/product/3257982267397/ravioli-ricotta-epinards-nature-bio	https://images.openfoodfacts.org/images/products/325/798/226/7397/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/325/798/226/7397/nutrition_fr.23.200.jpg	27
1465	Prawn & Mangetout Gyoza with a Ponzu Dip	Marks & Spencer	Marks & Spencer	a	https://world.openfoodfacts.org/product/00885584/prawn-mangetout-gyoza-with-a-ponzu-dip-marks-spencer	https://images.openfoodfacts.org/images/products/00885584/front_en.14.400.jpg	\N	27
1466	Gyozas vegetables	Delhaize	delhaize	b	https://world.openfoodfacts.org/product/5400113586715/gyozas-vegetables-delhaize	https://images.openfoodfacts.org/images/products/540/011/358/6715/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/540/011/358/6715/nutrition_fr.13.200.jpg	27
1467	Ravioli pur boeuf	Zapetti	Delhaize	b	https://world.openfoodfacts.org/product/3021690011142/ravioli-pur-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1142/front_fr.8.400.jpg	\N	27
1468	Ravioli pur boeuf	Delhaize	Delhaize	b	https://world.openfoodfacts.org/product/5400113042280/ravioli-pur-boeuf-delhaize	https://images.openfoodfacts.org/images/products/540/011/304/2280/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/540/011/304/2280/nutrition_fr.16.200.jpg	27
1469	Ravioli	Boni	Colruyt	b	https://world.openfoodfacts.org/product/5400141381207/ravioli-boni	https://images.openfoodfacts.org/images/products/540/014/138/1207/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/540/014/138/1207/nutrition_fr.24.200.jpg	27
1470	Le Ravioli, Pur B┼ôuf	Panzani	Banque alimentaire,Franprix,Intermarch├®,Auchan, carrefour.fr	b	https://world.openfoodfacts.org/product/3038352880305/le-ravioli-pur-boeuf-panzani	https://images.openfoodfacts.org/images/products/303/835/288/0305/front_fr.70.400.jpg	https://images.openfoodfacts.org/images/products/303/835/288/0305/nutrition_fr.41.200.jpg	27
1471	Farcis ├á la viande de boeuf	RAVIOLI	Carrefour	b	https://world.openfoodfacts.org/product/5400101256552/farcis-a-la-viande-de-boeuf-ravioli	https://images.openfoodfacts.org/images/products/540/010/125/6552/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/540/010/125/6552/nutrition_fr.17.200.jpg	27
1473	PZ RAVIOLI BOLO 800GR	Panzani	Intermarch├®, Franprix, carrefour.fr	c	https://world.openfoodfacts.org/product/3038352881005/pz-ravioli-bolo-800gr-panzani	https://images.openfoodfacts.org/images/products/303/835/288/1005/front_fr.52.400.jpg	https://images.openfoodfacts.org/images/products/303/835/288/1005/nutrition_fr.54.200.jpg	27
1474	Ravioli 5 l├®gumes	Danival	Biocoop,Naturalia,Ekoplaza, Biocoop Caluire	c	https://world.openfoodfacts.org/product/3431590002117/ravioli-5-legumes-danival	https://images.openfoodfacts.org/images/products/343/159/000/2117/front_fr.51.400.jpg	https://images.openfoodfacts.org/images/products/343/159/000/2117/nutrition_fr.53.200.jpg	27
1475	Ravioli pur b┼ôuf sauce italienne	Delicato,Aldi	Aldi	b	https://world.openfoodfacts.org/product/27050538/ravioli-pur-boeuf-sauce-italienne-delicato	https://images.openfoodfacts.org/images/products/27050538/front_fr.3.400.jpg	\N	27
1479	Seadas	Calitai		d	https://world.openfoodfacts.org/product/8033993180048/seadas-calitai	https://images.openfoodfacts.org/images/products/803/399/318/0048/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/803/399/318/0048/nutrition_it.7.200.jpg	27
1482	Ravioli agli spinaci	La Castellana		b	https://world.openfoodfacts.org/product/8032764710071/ravioli-agli-spinaci-la-castellana	https://images.openfoodfacts.org/images/products/803/276/471/0071/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/803/276/471/0071/nutrition_it.5.200.jpg	27
1483	Ajinomoto Japanese Style Chicken & Vegetable Gyoza 30 Pieces	Aniomoto		b	https://world.openfoodfacts.org/product/5905279248007/ajinomoto-japanese-style-chicken-vegetable-gyoza-30-pieces-aniomoto	https://images.openfoodfacts.org/images/products/590/527/924/8007/front_fr.4.400.jpg	\N	27
1484	Ravioli a la sauce bolognaise	Panzani		b	https://world.openfoodfacts.org/product/3261052881451/ravioli-a-la-sauce-bolognaise-panzani	https://images.openfoodfacts.org/images/products/326/105/288/1451/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/326/105/288/1451/nutrition_fr.17.200.jpg	27
1485	Raviolis crevettes	Maison de Cor├®e	carrefour.fr	a	https://world.openfoodfacts.org/product/8805957019172/raviolis-crevettes-maison-de-coree	https://images.openfoodfacts.org/images/products/880/595/701/9172/front_fr.4.400.jpg	\N	27
1486	Gyoza de crevette	Sushi Story		c	https://world.openfoodfacts.org/product/3760185931830/gyoza-de-crevette-sushi-story	https://images.openfoodfacts.org/images/products/376/018/593/1830/front_fr.4.400.jpg	\N	27
1487	Gyozas aux crevettes	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/3560071154905/gyozas-aux-crevettes-carrefour	https://images.openfoodfacts.org/images/products/356/007/115/4905/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/356/007/115/4905/nutrition_fr.7.200.jpg	27
1488	Gyoza crevettes	Prawn		b	https://world.openfoodfacts.org/product/3472892012176/gyoza-crevettes-prawn	https://images.openfoodfacts.org/images/products/347/289/201/2176/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/347/289/201/2176/nutrition_fr.16.200.jpg	27
1500	Dim sum mix mini HaCao et Shaomai	cau tre foods	carrefour.fr	c	https://world.openfoodfacts.org/product/8934717351501/dim-sum-mix-mini-hacao-et-shaomai-cau-tre-foods	https://images.openfoodfacts.org/images/products/893/471/735/1501/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/893/471/735/1501/nutrition_fr.9.200.jpg	27
1501	Ravioli au basilic bio	L'italie Du Bio	carrefour.fr	d	https://world.openfoodfacts.org/product/8005658018836/ravioli-au-basilic-bio-l-italie-du-bio	https://images.openfoodfacts.org/images/products/800/565/801/8836/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/800/565/801/8836/nutrition_fr.20.200.jpg	27
1502	Grandi Girasoli Tomate Mozzarella & Olives	Rana, Giovanni Rana	carrefour.fr	b	https://world.openfoodfacts.org/product/8001665712781/grandi-girasoli-tomate-mozzarella-olives-rana	https://images.openfoodfacts.org/images/products/800/166/571/2781/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/800/166/571/2781/nutrition_fr.5.200.jpg	27
1503	Grandi Girasoli C├¿pes fromage et champignons ├®minc├®s	Rana, Giovanni Rana	carrefour.fr	a	https://world.openfoodfacts.org/product/8001665712774/grandi-girasoli-cepes-fromage-et-champignons-eminces-rana	https://images.openfoodfacts.org/images/products/800/166/571/2774/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/800/166/571/2774/nutrition_fr.18.200.jpg	27
1504	Mezzaluna quatre fromages	La pasta di angelo	Magasins U, carrefour.fr	c	https://world.openfoodfacts.org/product/3760019700229/mezzaluna-quatre-fromages-la-pasta-di-angelo	https://images.openfoodfacts.org/images/products/376/001/970/0229/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/376/001/970/0229/nutrition_fr.23.200.jpg	27
1507	Ravioli gorgonzola & noix	Carrefour	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3560071170370/ravioli-gorgonzola-noix-carrefour	https://images.openfoodfacts.org/images/products/356/007/117/0370/front_fr.11.400.jpg	\N	27
1508	Ravioli Boeuf	Carrefour	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3560070708000/ravioli-boeuf-carrefour	https://images.openfoodfacts.org/images/products/356/007/070/8000/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/356/007/070/8000/nutrition_fr.4.200.jpg	27
1509	Ravioli ├á la bolognaise	Paul & Louise	Franprix, carrefour.fr	b	https://world.openfoodfacts.org/product/3379670017043/ravioli-a-la-bolognaise-paul-louise	https://images.openfoodfacts.org/images/products/337/967/001/7043/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/337/967/001/7043/nutrition_fr.6.200.jpg	27
1510	Ravioli au boeuf	Saint Jean	carrefour.fr	c	https://world.openfoodfacts.org/product/3266140061906/ravioli-au-boeuf-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/1906/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/1906/nutrition_fr.5.200.jpg	27
1512	Ravioli quesos	Bonnatura		b	https://world.openfoodfacts.org/product/8432022000096/ravioli-quesos-bonnatura	https://images.openfoodfacts.org/images/products/843/202/200/0096/front_es.19.400.jpg	https://images.openfoodfacts.org/images/products/843/202/200/0096/nutrition_es.21.200.jpg	27
1513	Ravioli al brasato	Fini		d	https://world.openfoodfacts.org/product/8007490031233/ravioli-al-brasato-fini	https://images.openfoodfacts.org/images/products/800/749/003/1233/front_it.8.400.jpg	\N	27
1516	Beef ravioli	Chef Boyardee		b	https://world.openfoodfacts.org/product/0064144043170/beef-ravioli-chef-boyardee	https://images.openfoodfacts.org/images/products/006/414/404/3170/front_en.10.400.jpg	https://images.openfoodfacts.org/images/products/006/414/404/3170/nutrition_en.12.200.jpg	27
1518	Ravioli, Beef  in pasta sauce	Chef Boyardee		b	https://world.openfoodfacts.org/product/0064144043156/ravioli-beef-in-pasta-sauce-chef-boyardee	https://images.openfoodfacts.org/images/products/006/414/404/3156/front_en.35.400.jpg	https://images.openfoodfacts.org/images/products/006/414/404/3156/nutrition_en.48.200.jpg	27
1521	8 gyoza aux l├®gumes recette japonaise	Monoprix	Monoprix	c	https://world.openfoodfacts.org/product/3350033675988/8-gyoza-aux-legumes-recette-japonaise-monoprix	https://images.openfoodfacts.org/images/products/335/003/367/5988/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/335/003/367/5988/nutrition_fr.19.200.jpg	27
1522	Csirk├®s gyoza	Konspol		b	https://world.openfoodfacts.org/product/5900962081558/csirkes-gyoza-konspol	https://images.openfoodfacts.org/images/products/590/096/208/1558/front_hu.16.400.jpg	https://images.openfoodfacts.org/images/products/590/096/208/1558/nutrition_hu.17.200.jpg	27
1523	D├®s de jambon	Villa Gusto		c	https://world.openfoodfacts.org/product/20021184/des-de-jambon-villa-gusto	https://images.openfoodfacts.org/images/products/20021184/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/20021184/nutrition_fr.21.200.jpg	27
1524	Ravioli Tofu Basilic	Coquelicot Provence		a	https://world.openfoodfacts.org/product/3760098451081/ravioli-tofu-basilic-coquelicot-provence	https://images.openfoodfacts.org/images/products/376/009/845/1081/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/1081/nutrition_fr.7.200.jpg	27
1527	Ravioli alla ricotta e spinaci	esselunga	esselunga	c	https://world.openfoodfacts.org/product/2069160002963/ravioli-alla-ricotta-e-spinaci-esselunga	https://images.openfoodfacts.org/images/products/206/916/000/2963/front_it.16.400.jpg	https://images.openfoodfacts.org/images/products/206/916/000/2963/nutrition_it.18.200.jpg	27
1528	S├╝├ƒe Ravioli mit Schokolade	Rana	Lidl	c	https://world.openfoodfacts.org/product/8001665718677/susse-ravioli-mit-schokolade-rana	https://images.openfoodfacts.org/images/products/800/166/571/8677/front_de.6.400.jpg	https://images.openfoodfacts.org/images/products/800/166/571/8677/nutrition_de.8.200.jpg	27
1529	Ravioloni con Mortadella Bologna IGP, burrata e pesto			d	https://world.openfoodfacts.org/product/8021228902268/ravioloni-con-mortadella-bologna-igp-burrata-e-pesto	https://images.openfoodfacts.org/images/products/802/122/890/2268/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/802/122/890/2268/nutrition_it.5.200.jpg	27
1530	Girasol de boletus y setas	Carrefour	Carrefour	b	https://world.openfoodfacts.org/product/8431876261585/girasol-de-boletus-y-setas-carrefour	https://images.openfoodfacts.org/images/products/843/187/626/1585/front_es.24.400.jpg	https://images.openfoodfacts.org/images/products/843/187/626/1585/nutrition_es.20.200.jpg	27
1531	Ravioli de ricotta y espinacas	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/8431876261554/ravioli-de-ricotta-y-espinacas-carrefour	https://images.openfoodfacts.org/images/products/843/187/626/1554/front_es.28.400.jpg	https://images.openfoodfacts.org/images/products/843/187/626/1554/nutrition_es.19.200.jpg	27
1532	Ravioles a poeler			c	https://world.openfoodfacts.org/product/3266140062743/ravioles-a-poeler	https://images.openfoodfacts.org/images/products/326/614/006/2743/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/2743/nutrition_fr.5.200.jpg	27
1534	Raviolis con queso	Cerlacchia, Davena, Gruppo Alimentare Ambrosini		c	https://world.openfoodfacts.org/product/8033075800833/raviolis-con-queso-cerlacchia	https://images.openfoodfacts.org/images/products/803/307/580/0833/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/803/307/580/0833/nutrition_es.5.200.jpg	27
1536	Ricotta & Spinaci Ravioli	Migros, Anna's best (Migros)		c	https://world.openfoodfacts.org/product/7613269266969/ricotta-spinaci-ravioli-migros	https://images.openfoodfacts.org/images/products/761/326/926/6969/front_de.42.400.jpg	https://images.openfoodfacts.org/images/products/761/326/926/6969/nutrition_de.46.200.jpg	27
1538	Gyoza aux l├®gumes	Vici	LPG	a	https://world.openfoodfacts.org/product/4770190119986/gyoza-aux-legumes-vici	https://images.openfoodfacts.org/images/products/477/019/011/9986/front_en.29.400.jpg	https://images.openfoodfacts.org/images/products/477/019/011/9986/nutrition_en.31.200.jpg	27
1539	Vegetable Gyoza	Asda	Asda	c	https://world.openfoodfacts.org/product/5057172169924/vegetable-gyoza-asda	https://images.openfoodfacts.org/images/products/505/717/216/9924/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/505/717/216/9924/nutrition_en.5.200.jpg	27
1540	Ravioli	coop, Prix Garantie		b	https://world.openfoodfacts.org/product/7610818249985/pr-x-garantie-ravioli-stuffed-with-lamb-meat-in-a-tomato-sauce-coop	https://images.openfoodfacts.org/images/products/761/081/824/9985/front_fr.11.400.jpg	\N	27
1541	Ravioli	D'Angelo		c	https://world.openfoodfacts.org/product/4005496224240/ravioli-d-angelo	https://images.openfoodfacts.org/images/products/400/549/622/4240/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/400/549/622/4240/nutrition_fr.9.200.jpg	27
1543	Raviolis de queso de cabra y zanahoria	Onyar		b	https://world.openfoodfacts.org/product/8436553105015/raviolis-de-queso-de-cabra-y-zanahoria-onyar	https://images.openfoodfacts.org/images/products/843/655/310/5015/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/843/655/310/5015/nutrition_es.5.200.jpg	27
1544	Ravioli boeuf	Netto	Netto	c	https://world.openfoodfacts.org/product/3250392299163/ravioli-boeuf-netto	https://images.openfoodfacts.org/images/products/325/039/229/9163/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/325/039/229/9163/nutrition_fr.7.200.jpg	27
1545	Raviolis au boeuf bio	La Vie Claire	La Vie Claire	b	https://world.openfoodfacts.org/product/3266191105352/raviolis-au-boeuf-bio-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5352/front_fr.16.400.jpg	\N	27
1549	Raviolis ├á la foresti├¿re			b	https://world.openfoodfacts.org/product/0656272123932/raviolis-a-la-forestiere	https://images.openfoodfacts.org/images/products/065/627/212/3932/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/065/627/212/3932/nutrition_fr.5.200.jpg	27
1551	Ravioli V├®g├®tal	Zapetti		b	https://world.openfoodfacts.org/product/3021690029871/ravioli-vegetal-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/9871/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/9871/nutrition_fr.16.200.jpg	27
1552	Ravioli boeuf	Mosa├»que	Magasins U	c	https://world.openfoodfacts.org/product/3700483800926/ravioli-boeuf-mosaique	https://images.openfoodfacts.org/images/products/370/048/380/0926/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/370/048/380/0926/nutrition_fr.15.200.jpg	27
1555	Ravioli ai speck	Emma Giordani, Voltan		b	https://world.openfoodfacts.org/product/8003010100649/ravioli-ai-speck-emma-giordani	https://images.openfoodfacts.org/images/products/800/301/010/0649/front_it.18.400.jpg	https://images.openfoodfacts.org/images/products/800/301/010/0649/nutrition_it.20.200.jpg	27
1556	Ravioli pur b┼ôuf	Bio Village	Leclerc	b	https://world.openfoodfacts.org/product/3564707125130/ravioli-pur-boeuf-bio-village	https://images.openfoodfacts.org/images/products/356/470/712/5130/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/356/470/712/5130/nutrition_fr.18.200.jpg	27
1557	Ravioli	La Spiga Bio		b	https://world.openfoodfacts.org/product/8022230000409/ravioli-la-spiga-bio	https://images.openfoodfacts.org/images/products/802/223/000/0409/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/802/223/000/0409/nutrition_fr.18.200.jpg	27
1559	Ravioli 4 fromages	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/3560070872435/ravioli-4-fromages-carrefour	https://images.openfoodfacts.org/images/products/356/007/087/2435/front_fr.18.400.jpg	\N	27
1565	Tortellini relleno de at├║n y tomate	Rana		d	https://world.openfoodfacts.org/product/8001665127288/tortellini-relleno-de-atun-y-tomate-rana	https://images.openfoodfacts.org/images/products/800/166/512/7288/front_es.19.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/7288/nutrition_es.21.200.jpg	27
1567	Espinacas Brocolis y aceitunas	Hacendado	Mercadona	a	https://world.openfoodfacts.org/product/8480000227966/espinacas-brocolis-y-aceitunas-hacendado	https://images.openfoodfacts.org/images/products/848/000/022/7966/front_es.8.400.jpg	https://images.openfoodfacts.org/images/products/848/000/022/7966/nutrition_es.14.200.jpg	27
1569	Ravioli			b	https://world.openfoodfacts.org/product/3261055951656/ravioli	https://images.openfoodfacts.org/images/products/326/105/595/1656/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/105/595/1656/nutrition_fr.5.200.jpg	27
1570	Ravioli aux fromages	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710476084/ravioli-aux-fromages-auchan	https://images.openfoodfacts.org/images/products/359/671/047/6084/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/359/671/047/6084/nutrition_fr.24.200.jpg	27
1573	Raviolini vitello	Scoiattolo	Coop	a	https://world.openfoodfacts.org/product/8006669001510/raviolini-vitello-scoiattolo	https://images.openfoodfacts.org/images/products/800/666/900/1510/front_it.5.400.jpg	https://images.openfoodfacts.org/images/products/800/666/900/1510/nutrition_it.7.200.jpg	27
1574	Ravioli di ricotta e spinaci			c	https://world.openfoodfacts.org/product/8004506000351/ravioli-di-ricotta-e-spinaci	https://images.openfoodfacts.org/images/products/800/450/600/0351/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/800/450/600/0351/nutrition_it.8.200.jpg	27
1576	Spinach & ricotta ravioli	Marks & Spencer	Marks & Spencer	e	https://world.openfoodfacts.org/product/00256544/spinach-ricotta-ravioli-marks-spencer	https://images.openfoodfacts.org/images/products/00256544/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/00256544/nutrition_en.5.200.jpg	27
1577		Auchan		c	https://world.openfoodfacts.org/product/3254569250049/auchan	https://images.openfoodfacts.org/images/products/325/456/925/0049/front_en.19.400.jpg	\N	27
1578	Bio integral ravioli integral relleno de crema	Rana		d	https://world.openfoodfacts.org/product/8001665705950/bio-integral-ravioli-integral-relleno-de-crema-rana	https://images.openfoodfacts.org/images/products/800/166/570/5950/front_es.13.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/5950/nutrition_es.15.200.jpg	27
1580	Le Ravioli bolognaise emmental 800 g	Panzani	Magasins U	c	https://world.openfoodfacts.org/product/3261055939128/le-ravioli-bolognaise-emmental-800-g-panzani	https://images.openfoodfacts.org/images/products/326/105/593/9128/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/105/593/9128/nutrition_fr.16.200.jpg	27
1582	Ravioli Pur B┼ôuf	Casa D'Oro		b	https://world.openfoodfacts.org/product/3021690028508/ravioli-pur-boeuf-casa-d-oro	https://images.openfoodfacts.org/images/products/302/169/002/8508/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/8508/nutrition_fr.14.200.jpg	27
1584	Maingourd ravioli pur b┼ôuf	Maingourd		c	https://world.openfoodfacts.org/product/3112940798569/maingourd-ravioli-pur-boeuf	https://images.openfoodfacts.org/images/products/311/294/079/8569/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/311/294/079/8569/nutrition_fr.7.200.jpg	27
1585	Raviolis pur b┼ôuf	Netto	Netto	b	https://world.openfoodfacts.org/product/3250391376469/raviolis-pur-boeuf-netto	https://images.openfoodfacts.org/images/products/325/039/137/6469/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/039/137/6469/nutrition_fr.7.200.jpg	27
1586	Ravioli pur boeuf	Fiorini		b	https://world.openfoodfacts.org/product/2250396446465/ravioli-pur-boeuf-fiorini	https://images.openfoodfacts.org/images/products/225/039/644/6465/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/225/039/644/6465/nutrition_fr.7.200.jpg	27
1588	Ravioli pur boeuf	Zapetti		b	https://world.openfoodfacts.org/product/3021690027785/ravioli-pur-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/002/7785/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/7785/nutrition_fr.7.200.jpg	27
1589	Le Ravioli Bolognaise	Panzani		b	https://world.openfoodfacts.org/product/3261052881352/le-ravioli-bolognaise-panzani	https://images.openfoodfacts.org/images/products/326/105/288/1352/front_fr.4.400.jpg	\N	27
1591	Ravioli ├á la sauce tomate	Tous les jours		b	https://world.openfoodfacts.org/product/3700311800289/ravioli-a-la-sauce-tomate-tous-les-jours	https://images.openfoodfacts.org/images/products/370/031/180/0289/front_fr.4.400.jpg	\N	27
1592	Ravioli au boeuf	Colomba		b	https://world.openfoodfacts.org/product/3336100001669/ravioli-au-boeuf-colomba	https://images.openfoodfacts.org/images/products/333/610/000/1669/front_fr.4.400.jpg	\N	27
1593	Ravioli au boeuf	Zakia Halal		b	https://world.openfoodfacts.org/product/2454669628453/ravioli-au-boeuf-zakia-halal	https://images.openfoodfacts.org/images/products/245/466/962/8453/front_fr.4.400.jpg	\N	27
1594	Ravioli pur boeuf	Maingourd		c	https://world.openfoodfacts.org/product/3112940798552/ravioli-pur-boeuf-maingourd	https://images.openfoodfacts.org/images/products/311/294/079/8552/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/311/294/079/8552/nutrition_fr.7.200.jpg	27
1595	Ravioli au boeuf	P├ótes Fraiches De Provence		a	https://world.openfoodfacts.org/product/3416310001045/ravioli-au-boeuf-pates-fraiches-de-provence	https://images.openfoodfacts.org/images/products/341/631/000/1045/front_fr.4.400.jpg	\N	27
1596	Ravioli pur boeuf	Zapetti		b	https://world.openfoodfacts.org/product/3021690063554/ravioli-pur-boeuf-zapetti	https://images.openfoodfacts.org/images/products/302/169/006/3554/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/302/169/006/3554/nutrition_fr.14.200.jpg	27
1597	Ravioli aux boeufs	Pasta giancarlo		c	https://world.openfoodfacts.org/product/8024324003358/ravioli-aux-boeufs-pasta-giancarlo	https://images.openfoodfacts.org/images/products/802/432/400/3358/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/802/432/400/3358/nutrition_fr.20.200.jpg	27
1598	Ravioli Pur B┬£oeuf	Monoprix	Monoprix	b	https://world.openfoodfacts.org/product/3248650010766/ravioli-pur-b%C2%9Coeuf-monoprix	https://images.openfoodfacts.org/images/products/324/865/001/0766/front_fr.4.400.jpg	\N	27
1599	Ravioli b┼ôuf	Fiorini	Intermarch├®	c	https://world.openfoodfacts.org/product/3250390473015/ravioli-boeuf-fiorini	https://images.openfoodfacts.org/images/products/325/039/047/3015/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/325/039/047/3015/nutrition_fr.23.200.jpg	27
1600	250G Ravioli Frais Boeuf Et Petits Legumes	Coquelicot Provence		a	https://world.openfoodfacts.org/product/3760098451302/250g-ravioli-frais-boeuf-et-petits-legumes-coquelicot-provence	https://images.openfoodfacts.org/images/products/376/009/845/1302/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/376/009/845/1302/nutrition_fr.7.200.jpg	27
1603	Ravioli au boeuf	Leader Price	Leader Price	d	https://world.openfoodfacts.org/product/3263859471002/ravioli-au-boeuf-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/1002/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/1002/nutrition_fr.5.200.jpg	27
1605	Ravioli jambon	Robert Esposito		b	https://world.openfoodfacts.org/product/3308090000366/ravioli-jambon-robert-esposito	https://images.openfoodfacts.org/images/products/330/809/000/0366/front_fr.12.400.jpg	\N	27
1611	Demi-lune Ricotta Epinards	Lustucru		b	https://world.openfoodfacts.org/product/3240931535166/demi-lune-ricotta-epinards-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/5166/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/5166/nutrition_fr.13.200.jpg	27
1613	Ravioli A La Ricotta Et Aux Epinards	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/3560071076313/ravioli-a-la-ricotta-et-aux-epinards-carrefour	https://images.openfoodfacts.org/images/products/356/007/107/6313/front_fr.15.400.jpg	\N	27
1616	Ravioli Ricotta Epinards sans gluten	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710438402/ravioli-ricotta-epinards-sans-gluten-auchan	https://images.openfoodfacts.org/images/products/359/671/043/8402/front_fr.4.400.jpg	\N	27
1619	Ravioli ricotta epinards	Auchan	Auchan	c	https://world.openfoodfacts.org/product/5413848577859/ravioli-ricotta-epinards-auchan	https://images.openfoodfacts.org/images/products/541/384/857/7859/front_fr.4.400.jpg	\N	27
1622	Tortelloni bio ricotta ├®pinard	Biorigin		b	https://world.openfoodfacts.org/product/8007303004577/tortelloni-bio-ricotta-epinard-biorigin	https://images.openfoodfacts.org/images/products/800/730/300/4577/front_fr.28.400.jpg	https://images.openfoodfacts.org/images/products/800/730/300/4577/nutrition_fr.25.200.jpg	27
1630	Ravioli epinard ricotta	Carrefour	Carrefour	d	https://world.openfoodfacts.org/product/2245445942814/ravioli-epinard-ricotta-carrefour	https://images.openfoodfacts.org/images/products/224/544/594/2814/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/224/544/594/2814/nutrition_fr.5.200.jpg	27
1633	Ricotta Epinard	Lustucru		c	https://world.openfoodfacts.org/product/3240931537795/ricotta-epinard-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/7795/front_fr.4.400.jpg	\N	27
1637	Ravioli ├®pinards ricotta	Olivieri	Provigo	b	https://world.openfoodfacts.org/product/0058441500061/ravioli-epinards-ricotta-olivieri	https://images.openfoodfacts.org/images/products/005/844/150/0061/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/005/844/150/0061/nutrition_fr.17.200.jpg	27
1638	Ravioli ricotta epinard			b	https://world.openfoodfacts.org/product/3562420000659/ravioli-ricotta-epinard	https://images.openfoodfacts.org/images/products/356/242/000/0659/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/356/242/000/0659/nutrition_fr.10.200.jpg	27
1639	Ravioli ricotta, epinards et mascarpone	Rana		d	https://world.openfoodfacts.org/product/8001665121163/ravioli-ricotta-epinards-et-mascarpone-rana	https://images.openfoodfacts.org/images/products/800/166/512/1163/front_fr.4.400.jpg	\N	27
1652	Ravioli Ricotta ├®pinards	Monoprix bio,Monoprix	Monoprix	b	https://world.openfoodfacts.org/product/3350033750302/ravioli-ricotta-epinards-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/375/0302/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/335/003/375/0302/nutrition_fr.5.200.jpg	27
1653	Ravioli ricotta epinard	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710484294/ravioli-ricotta-epinard-auchan	https://images.openfoodfacts.org/images/products/359/671/048/4294/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/359/671/048/4294/nutrition_fr.5.200.jpg	27
1654	Kale, garlic & cheese ravioli	Valley Fine Foods Company	Whole Foods	c	https://world.openfoodfacts.org/product/0073872746147/kale-garlic-cheese-ravioli-valley-fine-foods-company	https://images.openfoodfacts.org/images/products/007/387/274/6147/front_en.10.400.jpg	\N	27
1655	Spinach & ricotta ravioli	Marks & Spencer	Marks & Spencer	b	https://world.openfoodfacts.org/product/00791014/spinach-ricotta-ravioli-marks-spencer	https://images.openfoodfacts.org/images/products/00791014/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/00791014/nutrition_fr.13.200.jpg	27
1656	Spinach et ricotta ravioli			b	https://world.openfoodfacts.org/product/00221443/spinach-et-ricotta-ravioli	https://images.openfoodfacts.org/images/products/00221443/front_fr.4.400.jpg	\N	27
1658	ravioli al brasato senza glutine	De Angelis		d	https://world.openfoodfacts.org/product/8021228901476/ravioli-al-brasato-senza-glutine-de-angelis	https://images.openfoodfacts.org/images/products/802/122/890/1476/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/802/122/890/1476/nutrition_it.13.200.jpg	27
1659	Bertagni Tortellini Four Italian Cheese	Bertagni		c	https://world.openfoodfacts.org/product/8001020110054/bertagni-tortellini-four-italian-cheese	https://images.openfoodfacts.org/images/products/800/102/011/0054/front_en.10.400.jpg	https://images.openfoodfacts.org/images/products/800/102/011/0054/nutrition_en.16.200.jpg	27
1660	Ravioli carne	Mamma Emiliana, De Angelis		d	https://world.openfoodfacts.org/product/8021228001688/ravioli-carne-mamma-emiliana	https://images.openfoodfacts.org/images/products/802/122/800/1688/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/802/122/800/1688/nutrition_es.5.200.jpg	27
1661	Raviolis japonais au poulet (gyoza)	SFPA		b	https://world.openfoodfacts.org/product/3548870320912/raviolis-japonais-au-poulet-gyoza-sfpa	https://images.openfoodfacts.org/images/products/354/887/032/0912/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/354/887/032/0912/nutrition_fr.26.200.jpg	27
1662	Ravioli allo speck			b	https://world.openfoodfacts.org/product/8012502000251/ravioli-allo-speck	https://images.openfoodfacts.org/images/products/801/250/200/0251/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/801/250/200/0251/nutrition_it.5.200.jpg	27
1663	Ravioli chevre ciboulette	La Vie Claire	La Vie Claire	b	https://world.openfoodfacts.org/product/3266191105338/ravioli-chevre-ciboulette-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5338/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/326/619/110/5338/nutrition_fr.9.200.jpg	27
1665	I Granfarciotti - Girasoli ricotta e spinaci	Emma Giordani,Voltan		d	https://world.openfoodfacts.org/product/8003010100595/i-granfarciotti-girasoli-ricotta-e-spinaci-emma-giordani	https://images.openfoodfacts.org/images/products/800/301/010/0595/front_it.40.400.jpg	https://images.openfoodfacts.org/images/products/800/301/010/0595/nutrition_it.41.200.jpg	27
1668	Raviolis Gorgonzola Noix	U Saveurs,U		d	https://world.openfoodfacts.org/product/3256228955173/raviolis-gorgonzola-noix-u-saveurs	https://images.openfoodfacts.org/images/products/325/622/895/5173/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/622/895/5173/nutrition_fr.5.200.jpg	27
1669	Ravioli aux c├¿pes	Monoprix Bio	Monoprix	c	https://world.openfoodfacts.org/product/3350033706392/ravioli-aux-cepes-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/370/6392/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/335/003/370/6392/nutrition_fr.5.200.jpg	27
1671	Ravioli a la farine de sarrasin et bresaola	Pastai, Pastai in Brianza		c	https://world.openfoodfacts.org/product/8024257271114/ravioli-a-la-farine-de-sarrasin-et-bresaola-pastai	https://images.openfoodfacts.org/images/products/802/425/727/1114/front_fr.4.400.jpg	\N	27
1672	Raviolis farcits de FORMATGES	bonpreu		d	https://world.openfoodfacts.org/product/8422410180172/raviolis-farcits-de-formatges-bonpreu	https://images.openfoodfacts.org/images/products/842/241/018/0172/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/842/241/018/0172/nutrition_es.5.200.jpg	27
1674	Ravioli Au Boeuf	La reserve de champlat		b	https://world.openfoodfacts.org/product/3493833100721/ravioli-au-boeuf-la-reserve-de-champlat	https://images.openfoodfacts.org/images/products/349/383/310/0721/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/349/383/310/0721/nutrition_fr.7.200.jpg	27
1675	Beef ravioli	By Sainsbury's	Sainsbury's	b	https://world.openfoodfacts.org/product/00121811/beef-ravioli-by-sainsbury-s	https://images.openfoodfacts.org/images/products/00121811/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/00121811/nutrition_en.5.200.jpg	27
1684	Ravioli ├á la volaille	Carrefour discount	Carrefour	c	https://world.openfoodfacts.org/product/3560070343812/ravioli-a-la-volaille-carrefour-discount	https://images.openfoodfacts.org/images/products/356/007/034/3812/front_fr.4.400.jpg	\N	27
1685	Ravioli aux aubergines	La Vie Claire	La Vie Claire	a	https://world.openfoodfacts.org/product/3266191105369/ravioli-aux-aubergines-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5369/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/326/619/110/5369/nutrition_fr.7.200.jpg	27
1686	Ravioli au bl├® complet	Lidl	Lidl	c	https://world.openfoodfacts.org/product/4056489161936/ravioli-au-ble-complet-lidl	https://images.openfoodfacts.org/images/products/405/648/916/1936/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/405/648/916/1936/nutrition_fr.5.200.jpg	27
1687	Bio ravioli	Lidl	Lidl	a	https://world.openfoodfacts.org/product/20850654/bio-ravioli-lidl	https://images.openfoodfacts.org/images/products/20850654/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/20850654/nutrition_fr.5.200.jpg	27
1690	Portobello mushroom ravioli	Waitrose	Waitrose	b	https://world.openfoodfacts.org/product/5000169132777/portobello-mushroom-ravioli-waitrose	https://images.openfoodfacts.org/images/products/500/016/913/2777/front_en.3.400.jpg	https://images.openfoodfacts.org/images/products/500/016/913/2777/nutrition_en.5.200.jpg	27
1692	I cappellacci al tartufo	Emma Giordani,Voltan		b	https://world.openfoodfacts.org/product/8003010001878/i-cappellacci-al-tartufo-emma-giordani	https://images.openfoodfacts.org/images/products/800/301/000/1878/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/800/301/000/1878/nutrition_it.5.200.jpg	27
1693	I granfarciotti - ravioloni ai funghi	Emma Giordani,Voltan		c	https://world.openfoodfacts.org/product/8003010002745/i-granfarciotti-ravioloni-ai-funghi-emma-giordani	https://images.openfoodfacts.org/images/products/800/301/000/2745/front_it.12.400.jpg	\N	27
1694	Ravioriselli	La Spiga Bio		c	https://world.openfoodfacts.org/product/8022230000812/ravioriselli-la-spiga-bio	https://images.openfoodfacts.org/images/products/802/223/000/0812/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/802/223/000/0812/nutrition_fr.14.200.jpg	27
1695	Ravioli ├á la sauce tomate	Pouce,Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710085965/ravioli-a-la-sauce-tomate-pouce	https://images.openfoodfacts.org/images/products/359/671/008/5965/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/359/671/008/5965/nutrition_fr.21.200.jpg	27
1696	Ravioli au tofu	La Vie Claire	La Vie Claire	b	https://world.openfoodfacts.org/product/3266191105390/ravioli-au-tofu-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5390/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/326/619/110/5390/nutrition_fr.21.200.jpg	27
1698	Ravioli pur boeuf	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3254560462489/ravioli-pur-boeuf-auchan	https://images.openfoodfacts.org/images/products/325/456/046/2489/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/456/046/2489/nutrition_fr.5.200.jpg	27
1699	Ravioli 4 fromages Ecochard	Ecochard		c	https://world.openfoodfacts.org/product/3153575519617/ravioli-4-fromages-ecochard	https://images.openfoodfacts.org/images/products/315/357/551/9617/front_fr.12.400.jpg	\N	27
1700	Tortellini	Kite hill	Whole Foods	b	https://world.openfoodfacts.org/product/0856624004661/tortellini-kite-hill	https://images.openfoodfacts.org/images/products/085/662/400/4661/front_en.23.400.jpg	https://images.openfoodfacts.org/images/products/085/662/400/4661/nutrition_en.25.200.jpg	27
1702	BIO raviolis v├®g├®tariennes	Leader Price	Leader Price	b	https://world.openfoodfacts.org/product/3036851444516/bio-raviolis-vegetariennes-leader-price	https://images.openfoodfacts.org/images/products/303/685/144/4516/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/303/685/144/4516/nutrition_fr.5.200.jpg	27
1703	COMBINO Ravioli In Tomatensauce	Combino		c	https://world.openfoodfacts.org/product/20725488/combino-ravioli-in-tomatensauce	https://images.openfoodfacts.org/images/products/20725488/front_de.15.400.jpg	https://images.openfoodfacts.org/images/products/20725488/nutrition_de.20.200.jpg	27
1704	Ravioli allo speck	Garofalo		c	https://world.openfoodfacts.org/product/8000139929014/ravioli-allo-speck-garofalo	https://images.openfoodfacts.org/images/products/800/013/992/9014/front_en.13.400.jpg	https://images.openfoodfacts.org/images/products/800/013/992/9014/nutrition_en.14.200.jpg	27
1705	Ravioli ai formaggi	Antica pasteria, Voltan		c	https://world.openfoodfacts.org/product/8006515025738/ravioli-ai-formaggi-antica-pasteria	https://images.openfoodfacts.org/images/products/800/651/502/5738/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/800/651/502/5738/nutrition_it.5.200.jpg	27
1706	i granfarciotti - girasoli spianata calabra e friarielli	voltan		b	https://world.openfoodfacts.org/product/8006515025684/i-granfarciotti-girasoli-spianata-calabra-e-friarielli-voltan	https://images.openfoodfacts.org/images/products/800/651/502/5684/front_it.7.400.jpg	https://images.openfoodfacts.org/images/products/800/651/502/5684/nutrition_it.23.200.jpg	27
1709	Raviolis japonais au porc (gyoza)			b	https://world.openfoodfacts.org/product/3548870350902/raviolis-japonais-au-porc-gyoza	https://images.openfoodfacts.org/images/products/354/887/035/0902/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/354/887/035/0902/nutrition_fr.12.200.jpg	27
1712	Ravioli di borragine	Terre du ma, Sublimis		b	https://world.openfoodfacts.org/product/8020083160707/ravioli-di-borragine-terre-du-ma	https://images.openfoodfacts.org/images/products/802/008/316/0707/front_it.4.400.jpg	https://images.openfoodfacts.org/images/products/802/008/316/0707/nutrition_it.7.200.jpg	27
1714	Ravioli alla norma	Antonio Amato		c	https://world.openfoodfacts.org/product/8008120751194/ravioli-alla-norma-antonio-amato	https://images.openfoodfacts.org/images/products/800/812/075/1194/front_it.8.400.jpg	\N	27
1715	Raviolis ni├ºois daube de boeuf cuisin├®e	A capella		c	https://world.openfoodfacts.org/product/3524840020051/raviolis-nicois-daube-de-boeuf-cuisinee-a-capella	https://images.openfoodfacts.org/images/products/352/484/002/0051/front_fr.15.400.jpg	\N	27
1719	Ravioloni ai formaggi	Emma Giordani, Voltan		c	https://world.openfoodfacts.org/product/8003010100632/ravioloni-ai-formaggi-emma-giordani	https://images.openfoodfacts.org/images/products/800/301/010/0632/front_it.9.400.jpg	https://images.openfoodfacts.org/images/products/800/301/010/0632/nutrition_it.11.200.jpg	27
1722	Sfogliavelo ricotta e spinaci	Rana		c	https://world.openfoodfacts.org/product/8001665114684/sfogliavelo-ricotta-e-spinaci-rana	https://images.openfoodfacts.org/images/products/800/166/511/4684/front_it.40.400.jpg	https://images.openfoodfacts.org/images/products/800/166/511/4684/nutrition_it.42.200.jpg	27
1809	Stelle al Salmone	Coop,Betty Bossi	Coop	d	https://world.openfoodfacts.org/product/7613331707062/stelle-al-salmone-coop	https://images.openfoodfacts.org/images/products/761/333/170/7062/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/333/170/7062/nutrition_fr.13.200.jpg	27
1723	P├ótes fra├«ches aux ┼ôufs farcies tomate et mozzarella	Auchan	Auchan	a	https://world.openfoodfacts.org/product/3254566502950/pates-fraiches-aux-oeufs-farcies-tomate-et-mozzarella-auchan	https://images.openfoodfacts.org/images/products/325/456/650/2950/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/325/456/650/2950/nutrition_fr.8.200.jpg	27
1724	Ravioli del plin alle erbette	Pastificio Monte		c	https://world.openfoodfacts.org/product/8001255369418/ravioli-del-plin-alle-erbette-pastificio-monte	https://images.openfoodfacts.org/images/products/800/125/536/9418/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/800/125/536/9418/nutrition_it.5.200.jpg	27
1726	Ravioli con tomate asado, mozzarella y albahaca	mama mancini		d	https://world.openfoodfacts.org/product/88006013991197/ravioli-con-tomate-asado-mozzarella-y-albahaca-mama-mancini	https://images.openfoodfacts.org/images/products/880/060/139/91197/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/880/060/139/91197/nutrition_es.5.200.jpg	27
1727	Girasoli Pollo e Rosmarino	Rana		c	https://world.openfoodfacts.org/product/8001665700061/girasoli-pollo-e-rosmarino-rana	https://images.openfoodfacts.org/images/products/800/166/570/0061/front_es.8.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/0061/nutrition_es.10.200.jpg	27
1730	Raviolis farcis aux fromages ├á la truffe			e	https://world.openfoodfacts.org/product/0639824100506/raviolis-farcis-aux-fromages-a-la-truffe	https://images.openfoodfacts.org/images/products/063/982/410/0506/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/063/982/410/0506/nutrition_fr.8.200.jpg	27
1731	Gyozas Verduras	hacendado		d	https://world.openfoodfacts.org/product/8480000630353/gyozas-verduras-hacendado	https://images.openfoodfacts.org/images/products/848/000/063/0353/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/848/000/063/0353/nutrition_es.5.200.jpg	27
1732	Ravioli au jambon	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3263859479947/ravioli-au-jambon-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/9947/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/9947/nutrition_fr.7.200.jpg	27
1734	Ravioli au jambon			a	https://world.openfoodfacts.org/product/3760301040064/ravioli-au-jambon	https://images.openfoodfacts.org/images/products/376/030/104/0064/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/376/030/104/0064/nutrition_fr.5.200.jpg	27
1735	Teriyaki chickÔÇÖn vegan gyoza	itsu	Ocado	a	https://world.openfoodfacts.org/product/5060262487624/teriyaki-chick-n-vegan-gyoza-itsu	https://images.openfoodfacts.org/images/products/506/026/248/7624/front_en.10.400.jpg	https://images.openfoodfacts.org/images/products/506/026/248/7624/nutrition_en.12.200.jpg	27
1736	Lasagnes ├á la bolognaise			a	https://world.openfoodfacts.org/product/3386750000031/lasagnes-a-la-bolognaise	https://images.openfoodfacts.org/images/products/338/675/000/0031/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/338/675/000/0031/nutrition_fr.17.200.jpg	27
1737	Raviolis K├╝rbus	Garofalo	Migros	b	https://world.openfoodfacts.org/product/8000139929175/raviolis-kurbus-garofalo	https://images.openfoodfacts.org/images/products/800/013/992/9175/front_fr.13.400.jpg	\N	27
1738	Premier Ravioli Ricotta & Spinat	Premieur	NETTO	d	https://world.openfoodfacts.org/product/5712872064916/premier-ravioli-ricotta-spinat-premieur	https://images.openfoodfacts.org/images/products/571/287/206/4916/front_de.14.400.jpg	https://images.openfoodfacts.org/images/products/571/287/206/4916/nutrition_de.16.200.jpg	27
1742	Ravioli aubergine et ciboulette			c	https://world.openfoodfacts.org/product/3760313530836/ravioli-aubergine-et-ciboulette	https://images.openfoodfacts.org/images/products/376/031/353/0836/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/376/031/353/0836/nutrition_fr.5.200.jpg	27
1747	Ravioli con ripieno alla carne	Unes		d	https://world.openfoodfacts.org/product/8000633028022/ravioli-con-ripieno-alla-carne-unes	https://images.openfoodfacts.org/images/products/800/063/302/8022/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/800/063/302/8022/nutrition_it.5.200.jpg	27
1751	Ravioli - Volaille	Nature Bio,Cora	Cora	b	https://world.openfoodfacts.org/product/3257980890610/ravioli-volaille-nature-bio	https://images.openfoodfacts.org/images/products/325/798/089/0610/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/325/798/089/0610/nutrition_fr.30.200.jpg	27
1752	Raviolis au tofu tomates basilic U BIO, 250g	U Bio, U	Super U, Magasins U	b	https://world.openfoodfacts.org/product/3256224584698/raviolis-au-tofu-tomates-basilic-u-bio-250g	https://images.openfoodfacts.org/images/products/325/622/458/4698/front_fr.4.400.jpg	\N	27
1753	Ravioli ├á la bolognaise	M-Classic	Migros	c	https://world.openfoodfacts.org/product/7616800811253/ravioli-a-la-bolognaise-m-classic	https://images.openfoodfacts.org/images/products/761/680/081/1253/front_de.20.400.jpg	https://images.openfoodfacts.org/images/products/761/680/081/1253/nutrition_de.29.200.jpg	27
1754	Ravioli de vaca	C├┤t├® Table, Marque Rep├¿re	Leclerc	b	https://world.openfoodfacts.org/product/3564705050656/ravioli-de-vaca-cote-table	https://images.openfoodfacts.org/images/products/356/470/505/0656/front_pt.3.400.jpg	https://images.openfoodfacts.org/images/products/356/470/505/0656/nutrition_pt.5.200.jpg	27
1755	Ravioli pur boeuf bio	Carrefour Bio	Carrefour	c	https://world.openfoodfacts.org/product/3560070749041/ravioli-pur-boeuf-bio-carrefour-bio	https://images.openfoodfacts.org/images/products/356/007/074/9041/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/356/007/074/9041/nutrition_fr.5.200.jpg	27
1757	Mini ravioli jambon fromage Bio	Coquelicot		c	https://world.openfoodfacts.org/product/3760098451197/mini-ravioli-jambon-fromage-bio-coquelicot	https://images.openfoodfacts.org/images/products/376/009/845/1197/front_fr.6.400.jpg	\N	27
1759	Ravioli Frais 4 Fromages	Bio Verde		d	https://world.openfoodfacts.org/product/4000915102628/ravioli-frais-4-fromages-bio-verde	https://images.openfoodfacts.org/images/products/400/091/510/2628/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/400/091/510/2628/nutrition_fr.14.200.jpg	27
1762	Fagottini, paradicsommal ├®s fokhagym├íval	Gourmet,Aldi	Aldi	b	https://world.openfoodfacts.org/product/4099200055015/fagottini-paradicsommal-es-fokhagymaval-gourmet	https://images.openfoodfacts.org/images/products/409/920/005/5015/front_hu.6.400.jpg	https://images.openfoodfacts.org/images/products/409/920/005/5015/nutrition_hu.12.200.jpg	27
1764	Raviolis a la nicoise			b	https://world.openfoodfacts.org/product/2614969053595/raviolis-a-la-nicoise	https://images.openfoodfacts.org/images/products/261/496/905/3595/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/261/496/905/3595/nutrition_fr.5.200.jpg	27
1767	Mushroom and ricotta ravioli	Lyrical Foods  Inc,Kite Hill	Whole Foods	a	https://world.openfoodfacts.org/product/0856624004173/mushroom-and-ricotta-ravioli-lyrical-foods-inc	https://images.openfoodfacts.org/images/products/085/662/400/4173/front_en.19.400.jpg	https://images.openfoodfacts.org/images/products/085/662/400/4173/nutrition_en.21.200.jpg	27
1769	Sfogliavelo feta e olive kalamata	Rana		d	https://world.openfoodfacts.org/product/8001665704021/sfogliavelo-feta-e-olive-kalamata-rana	https://images.openfoodfacts.org/images/products/800/166/570/4021/front_it.15.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4021/nutrition_it.10.200.jpg	27
1771	Raviolis Tomates Basilic Mozzarella			d	https://world.openfoodfacts.org/product/0656272122867/raviolis-tomates-basilic-mozzarella	https://images.openfoodfacts.org/images/products/065/627/212/2867/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/065/627/212/2867/nutrition_fr.15.200.jpg	27
1772	Assortiment de gyoza	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/3560071003449/assortiment-de-gyoza-carrefour	https://images.openfoodfacts.org/images/products/356/007/100/3449/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/356/007/100/3449/nutrition_fr.9.200.jpg	27
1776	Ravioli Bolognese	Hero		c	https://world.openfoodfacts.org/product/7614200113045/ravioli-bolognese-hero	https://images.openfoodfacts.org/images/products/761/420/011/3045/front_fr.35.400.jpg	https://images.openfoodfacts.org/images/products/761/420/011/3045/nutrition_fr.37.200.jpg	27
1777	mezzelune alle verdure grigliate	Antica Pasteria		a	https://world.openfoodfacts.org/product/8007303012008/mezzelune-alle-verdure-grigliate-antica-pasteria	https://images.openfoodfacts.org/images/products/800/730/301/2008/front_fr.18.400.jpg	https://images.openfoodfacts.org/images/products/800/730/301/2008/nutrition_fr.20.200.jpg	27
1778	Ravioli ai porcini	Ecor		c	https://world.openfoodfacts.org/product/8019010368088/ravioli-ai-porcini-ecor	https://images.openfoodfacts.org/images/products/801/901/036/8088/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/801/901/036/8088/nutrition_it.5.200.jpg	27
1779	Ravioli ai carciofi	Ecor		c	https://world.openfoodfacts.org/product/8019010368071/ravioli-ai-carciofi-ecor	https://images.openfoodfacts.org/images/products/801/901/036/8071/front_it.3.400.jpg	https://images.openfoodfacts.org/images/products/801/901/036/8071/nutrition_it.8.200.jpg	27
1781	10 raviolis crevette vapeur			b	https://world.openfoodfacts.org/product/3369580002291/10-raviolis-crevette-vapeur	https://images.openfoodfacts.org/images/products/336/958/000/2291/front_en.3.400.jpg	\N	27
1784	Raviolis Chinois au porc	Asia Green Garden		d	https://world.openfoodfacts.org/product/26071183/raviolis-chinois-au-porc-asia-green-garden	https://images.openfoodfacts.org/images/products/26071183/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/26071183/nutrition_fr.7.200.jpg	27
1785	Ravioli aux 3 fromages	Franprix	Franprix	c	https://world.openfoodfacts.org/product/3263858054213/ravioli-aux-3-fromages-franprix	https://images.openfoodfacts.org/images/products/326/385/805/4213/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/326/385/805/4213/nutrition_fr.24.200.jpg	27
1786	Nos v├®ritables P├ótes fra├«ches raviolis jambon	Saint Jean		c	https://world.openfoodfacts.org/product/3266140060138/nos-veritables-pates-fraiches-raviolis-jambon-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0138/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/614/006/0138/nutrition_fr.7.200.jpg	27
1787	Raviolis de porc ├á la japonaise	Ajinomoto		c	https://world.openfoodfacts.org/product/5905279248014/raviolis-de-porc-a-la-japonaise-ajinomoto	https://images.openfoodfacts.org/images/products/590/527/924/8014/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/590/527/924/8014/nutrition_fr.17.200.jpg	27
1788	Ravioli aux Legumes	La Vie Claire	La Vie Claire	c	https://world.openfoodfacts.org/product/3266191105420/ravioli-aux-legumes-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5420/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/619/110/5420/nutrition_fr.26.200.jpg	27
1789	Ravioli au boeuf	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710378913/ravioli-au-boeuf-auchan	https://images.openfoodfacts.org/images/products/359/671/037/8913/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/359/671/037/8913/nutrition_fr.20.200.jpg	27
1790	Ravioli aux l├®gumes	Naturalia	Naturalia	b	https://world.openfoodfacts.org/product/3700036902794/ravioli-aux-legumes-naturalia	https://images.openfoodfacts.org/images/products/370/003/690/2794/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/370/003/690/2794/nutrition_fr.7.200.jpg	27
1791	Ravioli aux Oeufs 3 Fromages	Nature Bio,Cora		d	https://world.openfoodfacts.org/product/3257980617286/ravioli-aux-oeufs-3-fromages-nature-bio	https://images.openfoodfacts.org/images/products/325/798/061/7286/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/325/798/061/7286/nutrition_fr.22.200.jpg	27
1792	Ravioli Pur Boeuf a la sauce italienne	Belle France		c	https://world.openfoodfacts.org/product/3258561240657/ravioli-pur-boeuf-a-la-sauce-italienne-belle-france	https://images.openfoodfacts.org/images/products/325/856/124/0657/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/325/856/124/0657/nutrition_fr.11.200.jpg	27
1795	Gnochi al gorgonzola			c	https://world.openfoodfacts.org/product/00530224/gnochi-al-gorgonzola	https://images.openfoodfacts.org/images/products/00530224/front_en.12.400.jpg	https://images.openfoodfacts.org/images/products/00530224/nutrition_en.14.200.jpg	27
1798	Ravioli sauce bolognaise	Leader Price	Leader Price	b	https://world.openfoodfacts.org/product/3263851613110/ravioli-sauce-bolognaise-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/3110/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/3110/nutrition_fr.7.200.jpg	27
1800	Ravioli frais aux oeufs emmental & basilic	S├®lection des comptoirs		c	https://world.openfoodfacts.org/product/3760239183161/ravioli-frais-aux-oeufs-emmental-basilic-selection-des-comptoirs	https://images.openfoodfacts.org/images/products/376/023/918/3161/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/376/023/918/3161/nutrition_fr.15.200.jpg	27
1804	Duetto salsiccia e patate	Giovanni rana		c	https://world.openfoodfacts.org/product/8001665703208/duetto-salsiccia-e-patate-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/3208/front_it.14.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/3208/nutrition_it.19.200.jpg	27
1807	Spinach & white bean mini girasoli	Dunnes Stores		d	https://world.openfoodfacts.org/product/5099874282471/spinach-white-bean-mini-girasoli-dunnes-stores	https://images.openfoodfacts.org/images/products/509/987/428/2471/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/509/987/428/2471/nutrition_es.5.200.jpg	27
1810	Stelle Funghi e Tartufo	Coop,Betty Bossi	Coop	c	https://world.openfoodfacts.org/product/7613331706584/stelle-funghi-e-tartufo-coop	https://images.openfoodfacts.org/images/products/761/333/170/6584/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/761/333/170/6584/nutrition_fr.12.200.jpg	27
1811	Piero┼╝ki Gyoza z warzywami	Asia Flavours	Biedronka	b	https://world.openfoodfacts.org/product/5900962042009/piero%C5%BCki-gyoza-z-warzywami-asia-flavours	https://images.openfoodfacts.org/images/products/590/096/204/2009/front_pl.5.400.jpg	https://images.openfoodfacts.org/images/products/590/096/204/2009/nutrition_pl.8.200.jpg	27
1812	Rana 250G Ravioli Herkkutatti Tuorepasta	Rana		c	https://world.openfoodfacts.org/product/8001665128698/rana-250g-ravioli-herkkutatti-tuorepasta	https://images.openfoodfacts.org/images/products/800/166/512/8698/front_fr.6.400.jpg	\N	27
1815	Gran ravioli verduras asadas	Eroski		d	https://world.openfoodfacts.org/product/8480010269185/gran-ravioli-verduras-asadas-eroski	https://images.openfoodfacts.org/images/products/848/001/026/9185/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/848/001/026/9185/nutrition_es.5.200.jpg	27
1816	Ravioli	Rana		d	https://world.openfoodfacts.org/product/8001665128261/ravioli-rana	https://images.openfoodfacts.org/images/products/800/166/512/8261/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/800/166/512/8261/nutrition_fr.30.200.jpg	27
1818	Ravioles du Dauphin├® comt├® AOP	Saint Jean		d	https://world.openfoodfacts.org/product/3266140059576/ravioles-du-dauphine-comte-aop-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/9576/front_fr.4.400.jpg	\N	27
1819	Ravioli boeuf fa├ºon daube	Perrin		b	https://world.openfoodfacts.org/product/3760018712438/ravioli-boeuf-facon-daube-perrin	https://images.openfoodfacts.org/images/products/376/001/871/2438/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/376/001/871/2438/nutrition_fr.17.200.jpg	27
1826	Ravioli bolognaise	Dounia Halal		c	https://world.openfoodfacts.org/product/3021690022018/ravioli-bolognaise-dounia-halal	https://images.openfoodfacts.org/images/products/302/169/002/2018/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/2018/nutrition_fr.9.200.jpg	27
1830	Ravioli au fromage	Leader Price	Leader Price	b	https://world.openfoodfacts.org/product/3263851612113/ravioli-au-fromage-leader-price	https://images.openfoodfacts.org/images/products/326/385/161/2113/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/326/385/161/2113/nutrition_fr.23.200.jpg	27
1831	Ravioli parmesan et ricotta	Giovanni Rana	Magasins U	d	https://world.openfoodfacts.org/product/8001665700696/ravioli-parmesan-et-ricotta-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/0696/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/0696/nutrition_fr.25.200.jpg	27
1833	Demi-lune tomate basilic mozzarella	Lustucru		c	https://world.openfoodfacts.org/product/3240931537740/demi-lune-tomate-basilic-mozzarella-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/7740/front_fr.4.400.jpg	\N	27
1834	Beef ravioli			b	https://world.openfoodfacts.org/product/5018374014924/beef-ravioli	https://images.openfoodfacts.org/images/products/501/837/401/4924/front_en.9.400.jpg	https://images.openfoodfacts.org/images/products/501/837/401/4924/nutrition_en.11.200.jpg	27
1835	Raviolis Al Huevo Rellenos De Carne	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/8431876242201/raviolis-al-huevo-rellenos-de-carne-carrefour	https://images.openfoodfacts.org/images/products/843/187/624/2201/front_es.14.400.jpg	\N	27
1836	Lustucru Ravioli Bolognaise 2x300g +1 Paquet Gratuit	Lustucru		d	https://world.openfoodfacts.org/product/3240931533902/lustucru-ravioli-bolognaise-2x300g-1-paquet-gratuit	https://images.openfoodfacts.org/images/products/324/093/153/3902/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/3902/nutrition_fr.4.200.jpg	27
1837	Delicioso Ravioli Pomodoro e Mozarella	dia		d	https://world.openfoodfacts.org/product/8480017208781/delicioso-ravioli-pomodoro-e-mozarella-dia	https://images.openfoodfacts.org/images/products/848/001/720/8781/front_es.18.400.jpg	https://images.openfoodfacts.org/images/products/848/001/720/8781/nutrition_es.14.200.jpg	27
1838	Ravioli relleno de setas	enbio		a	https://world.openfoodfacts.org/product/8437012886933/ravioli-relleno-de-setas-enbio	https://images.openfoodfacts.org/images/products/843/701/288/6933/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/843/701/288/6933/nutrition_es.5.200.jpg	27
1839	Ravioli integrales con espinacas y ricotta	Veritas		c	https://world.openfoodfacts.org/product/8435173011447/ravioli-integrales-con-espinacas-y-ricotta-veritas	https://images.openfoodfacts.org/images/products/843/517/301/1447/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/843/517/301/1447/nutrition_es.5.200.jpg	27
1840	Tortelloni ricotta y espinacas	Bonarea		b	https://world.openfoodfacts.org/product/8413585008644/tortelloni-ricotta-y-espinacas-bonarea	https://images.openfoodfacts.org/images/products/841/358/500/8644/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/841/358/500/8644/nutrition_es.5.200.jpg	27
1841	Ravioli gorgonzola y speck	Buitoni		d	https://world.openfoodfacts.org/product/8053041000272/ravioli-gorgonzola-y-speck-buitoni	https://images.openfoodfacts.org/images/products/805/304/100/0272/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/805/304/100/0272/nutrition_es.5.200.jpg	27
1842	Ravioli potiron et petits oignons grill├®s	Rana	Coop	c	https://world.openfoodfacts.org/product/8001665704991/ravioli-potiron-et-petits-oignons-grilles-rana	https://images.openfoodfacts.org/images/products/800/166/570/4991/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4991/nutrition_fr.18.200.jpg	27
1843	Girasoli L├®gumes grill├®s	Mmm!		c	https://world.openfoodfacts.org/product/3596710378548/girasoli-legumes-grilles-mmm	https://images.openfoodfacts.org/images/products/359/671/037/8548/front_fr.23.400.jpg	https://images.openfoodfacts.org/images/products/359/671/037/8548/nutrition_fr.25.200.jpg	27
1844	Raviolis de queso azul y cebolla caramelizada	Onyar		b	https://world.openfoodfacts.org/product/8436553105053/raviolis-de-queso-azul-y-cebolla-caramelizada-onyar	https://images.openfoodfacts.org/images/products/843/655/310/5053/front_es.10.400.jpg	https://images.openfoodfacts.org/images/products/843/655/310/5053/nutrition_es.15.200.jpg	27
1845	Delicious ravioli funghi e tartufo	Dia		c	https://world.openfoodfacts.org/product/8480017208750/delicious-ravioli-funghi-e-tartufo-dia	https://images.openfoodfacts.org/images/products/848/001/720/8750/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/848/001/720/8750/nutrition_es.5.200.jpg	27
2252	Ravioli jambon cuit			b	https://world.openfoodfacts.org/product/3250391713561/ravioli-jambon-cuit	https://images.openfoodfacts.org/images/products/325/039/171/3561/front_fr.4.400.jpg	\N	27
1848	Empanadillas de verduras	Vici		b	https://world.openfoodfacts.org/product/4770190105194/empanadillas-de-verduras-vici	https://images.openfoodfacts.org/images/products/477/019/010/5194/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/477/019/010/5194/nutrition_fr.12.200.jpg	27
1860	ravioli pur boeuf	Fiorini	Intermarch├®	b	https://world.openfoodfacts.org/product/25570205/ravioli-pur-boeuf-fiorini	https://images.openfoodfacts.org/images/products/25570205/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/25570205/nutrition_fr.7.200.jpg	27
1876	Ravioli pur boeuf @ la sauce italienne	Monoprix	Monoprix	b	https://world.openfoodfacts.org/product/3350033283725/ravioli-pur-boeuf-la-sauce-italienne-monoprix	https://images.openfoodfacts.org/images/products/335/003/328/3725/front_fr.5.400.jpg	\N	27
1877	Raviolis pur b┼ôuf	Rochambeau	Metro	d	https://world.openfoodfacts.org/product/3439497019252/raviolis-pur-boeuf-rochambeau	https://images.openfoodfacts.org/images/products/343/949/701/9252/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/343/949/701/9252/nutrition_fr.7.200.jpg	27
1878	Ravioli pour boeuf	Rochambeau	Metro	c	https://world.openfoodfacts.org/product/3439497020050/ravioli-pour-boeuf-rochambeau	https://images.openfoodfacts.org/images/products/343/949/702/0050/front_fr.4.400.jpg	\N	27
1892	Ravioli pur b┼ôuf	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/4265716366185/ravioli-pur-boeuf-carrefour	https://images.openfoodfacts.org/images/products/426/571/636/6185/front_fr.4.400.jpg	\N	27
1893	Ravioli Pur Boeuf	Toque Du Chef	Lidl	c	https://world.openfoodfacts.org/product/20713898/ravioli-pur-boeuf-toque-du-chef	https://images.openfoodfacts.org/images/products/20713898/front_fr.3.400.jpg	\N	27
1894	Ravioli Pur B┼ôuf			b	https://world.openfoodfacts.org/product/3021690023862/ravioli-pur-boeuf	https://images.openfoodfacts.org/images/products/302/169/002/3862/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/302/169/002/3862/nutrition_fr.16.200.jpg	27
1895	Ravioli pur boeuf ├á la sauce tomate	Monoprix	Monoprix	b	https://world.openfoodfacts.org/product/3248650010773/ravioli-pur-boeuf-a-la-sauce-tomate-monoprix	https://images.openfoodfacts.org/images/products/324/865/001/0773/front_fr.22.400.jpg	https://images.openfoodfacts.org/images/products/324/865/001/0773/nutrition_fr.24.200.jpg	27
1899	Ravioli Bolognaise	Netto	Netto	b	https://world.openfoodfacts.org/product/3250391341610/ravioli-bolognaise-netto	https://images.openfoodfacts.org/images/products/325/039/134/1610/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/325/039/134/1610/nutrition_fr.7.200.jpg	27
1909	Gyozas aux legumes	Aki.Yaki		b	https://world.openfoodfacts.org/product/3760258110056/gyozas-aux-legumes-aki-yaki	https://images.openfoodfacts.org/images/products/376/025/811/0056/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/376/025/811/0056/nutrition_fr.10.200.jpg	27
1910	Gyoza aux legumes	Picard	Picard	c	https://world.openfoodfacts.org/product/3270162001000/gyoza-aux-legumes-picard	https://images.openfoodfacts.org/images/products/327/016/200/1000/front_fr.6.400.jpg	\N	27
1914	Gyoza poulet	Asia Traiteur		b	https://world.openfoodfacts.org/product/3344730009801/gyoza-poulet-asia-traiteur	https://images.openfoodfacts.org/images/products/334/473/000/9801/front_fr.4.400.jpg	\N	27
1917	Mezzelune	Antica Pasteria		c	https://world.openfoodfacts.org/product/8007303012930/mezzelune-antica-pasteria	https://images.openfoodfacts.org/images/products/800/730/301/2930/front_it.4.400.jpg	\N	27
1918	Girasole tomate mozzarella	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710457236/girasole-tomate-mozzarella-auchan	https://images.openfoodfacts.org/images/products/359/671/045/7236/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/359/671/045/7236/nutrition_fr.18.200.jpg	27
1921	Ravioli au jambon	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3263859479923/ravioli-au-jambon-leader-price	https://images.openfoodfacts.org/images/products/326/385/947/9923/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/385/947/9923/nutrition_fr.7.200.jpg	27
1925	Girasoles aux asperges et parmigiano reggiano	Les Cr├®ations		d	https://world.openfoodfacts.org/product/3250392842666/girasoles-aux-asperges-et-parmigiano-reggiano-les-creations	https://images.openfoodfacts.org/images/products/325/039/284/2666/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/039/284/2666/nutrition_fr.5.200.jpg	27
1926	Tortellino tomates mozzarella & basilic			d	https://world.openfoodfacts.org/product/5055430401748/tortellino-tomates-mozzarella-basilic	https://images.openfoodfacts.org/images/products/505/543/040/1748/front_fr.4.400.jpg	\N	27
1927	Ravioli aux 4 fromages	Amord di pasta		d	https://world.openfoodfacts.org/product/8024324002429/ravioli-aux-4-fromages-amord-di-pasta	https://images.openfoodfacts.org/images/products/802/432/400/2429/front_fr.4.400.jpg	\N	27
1928	Ravioli 5 formaggi	Albert Heijn	Albert Heijn	d	https://world.openfoodfacts.org/product/8710400387923/ravioli-5-formaggi-albert-heijn	https://images.openfoodfacts.org/images/products/871/040/038/7923/front_nl.13.400.jpg	\N	27
1930	Girasoli	Delhaize	Delhaize	d	https://world.openfoodfacts.org/product/5400119519458/girasoli-delhaize	https://images.openfoodfacts.org/images/products/540/011/951/9458/front_fr.17.400.jpg	https://images.openfoodfacts.org/images/products/540/011/951/9458/nutrition_fr.19.200.jpg	27
1931	Whole foods market, value line cheese ravioli	Whole Foods Market,  Severino Pasta Mfg.	Whole Foods	b	https://world.openfoodfacts.org/product/0029737513171/whole-foods-market-value-line-cheese-ravioli	https://images.openfoodfacts.org/images/products/002/973/751/3171/front_en.9.400.jpg	\N	27
1933	ravioli a l'ancienne poulet petit l├®gumes	Panzani		b	https://world.openfoodfacts.org/product/3261055947055/ravioli-a-l-ancienne-poulet-petit-legumes-panzani	https://images.openfoodfacts.org/images/products/326/105/594/7055/front_fr.4.400.jpg	\N	27
1952	Ravioli ricota ├®pinard	L'Italie du bien-├¬tre		b	https://world.openfoodfacts.org/product/8059070741407/ravioli-ricota-epinard-l-italie-du-bien-etre	https://images.openfoodfacts.org/images/products/805/907/074/1407/front_fr.14.400.jpg	\N	27
1964	Ravioli aux fromages	Italica		b	https://world.openfoodfacts.org/product/3570513267278/ravioli-aux-fromages-italica	https://images.openfoodfacts.org/images/products/357/051/326/7278/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/357/051/326/7278/nutrition_fr.14.200.jpg	27
1969	Ravioli aux 5 Fromages	Thiriet	Thiriet	b	https://world.openfoodfacts.org/product/3292590879440/ravioli-aux-5-fromages-thiriet	https://images.openfoodfacts.org/images/products/329/259/087/9440/front_fr.4.400.jpg	\N	27
1993	Ravioli Aux 4 Fromages 300 Grammes	Cora		c	https://world.openfoodfacts.org/product/3257981176270/ravioli-aux-4-fromages-300-grammes-cora	https://images.openfoodfacts.org/images/products/325/798/117/6270/front_fr.7.400.jpg	https://images.openfoodfacts.org/images/products/325/798/117/6270/nutrition_fr.19.200.jpg	27
1994	Girasoli Cepes Parmesan	Lustucru		d	https://world.openfoodfacts.org/product/3240931545554/girasoli-cepes-parmesan-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/5554/front_fr.5.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/5554/nutrition_fr.7.200.jpg	27
1995	Raviolis de queso	Auchan	Auchan	d	https://world.openfoodfacts.org/product/8410069180049/raviolis-de-queso-auchan	https://images.openfoodfacts.org/images/products/841/006/918/0049/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/841/006/918/0049/nutrition_es.5.200.jpg	27
1997	Chicken Shiitake dumplings			b	https://world.openfoodfacts.org/product/5060198530197/chicken-shiitake-dumplings	https://images.openfoodfacts.org/images/products/506/019/853/0197/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/506/019/853/0197/nutrition_fr.13.200.jpg	27
1999	Italienische Ravioli mit Gem├╝sef├╝llung	dmBio,dm Bio		c	https://world.openfoodfacts.org/product/4010355333292/italienische-ravioli-mit-gemusefullung-dmbio	https://images.openfoodfacts.org/images/products/401/035/533/3292/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/401/035/533/3292/nutrition_fr.4.200.jpg	27
2000	Grand ravioli cepes fromage et champignons	RANZ		d	https://world.openfoodfacts.org/product/8001665704182/grand-ravioli-cepes-fromage-et-champignons-ranz	https://images.openfoodfacts.org/images/products/800/166/570/4182/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/800/166/570/4182/nutrition_fr.12.200.jpg	27
2002	Ravioli bolo├▒esa	il gusto dell' italia		c	https://world.openfoodfacts.org/product/24026994/ravioli-bolonesa-il-gusto-dell-italia	https://images.openfoodfacts.org/images/products/24026994/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/24026994/nutrition_es.5.200.jpg	27
2003	Ravioli thon et tomate	Giovanni Rana		d	https://world.openfoodfacts.org/product/8001665703017/ravioli-thon-et-tomate-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/3017/front_fr.7.400.jpg	\N	27
2006	Ravioli aux l├®gumes	Les l├®gendaires		c	https://world.openfoodfacts.org/product/26010212/ravioli-aux-legumes-les-legendaires	https://images.openfoodfacts.org/images/products/26010212/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/26010212/nutrition_fr.68.200.jpg	27
2007	Ravioli Mediterraneo	Dennree		b	https://world.openfoodfacts.org/product/4011849220005/ravioli-mediterraneo-dennree	https://images.openfoodfacts.org/images/products/401/184/922/0005/front_de.8.400.jpg	https://images.openfoodfacts.org/images/products/401/184/922/0005/nutrition_de.27.200.jpg	27
2008	Raviolis Aux Crevettes Bouche Aux Crevette1kg	Tang Frere	Tang Fr├¿res	b	https://world.openfoodfacts.org/product/3364699131030/raviolis-aux-crevettes-bouche-aux-crevette1kg-tang-frere	https://images.openfoodfacts.org/images/products/336/469/913/1030/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/336/469/913/1030/nutrition_fr.18.200.jpg	27
2011	Lustucru Jambon/Fromage ( lot 2 + 1 grat)	Lustucru		c	https://world.openfoodfacts.org/product/3240931533919/lustucru-jambon-fromage-lot-2-1-grat	https://images.openfoodfacts.org/images/products/324/093/153/3919/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/324/093/153/3919/nutrition_fr.17.200.jpg	27
2012	Ravioli	Chef Select		d	https://world.openfoodfacts.org/product/20499853/ravioli-chef-select	https://images.openfoodfacts.org/images/products/20499853/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/20499853/nutrition_fr.35.200.jpg	27
2013	Ravioli Tr├╝ffel	Cucina		c	https://world.openfoodfacts.org/product/23209633/ravioli-truffel-cucina	https://images.openfoodfacts.org/images/products/23209633/front_de.16.400.jpg	\N	27
2014	Ravioli Jambon 300 Grammes	Cora	Cora	b	https://world.openfoodfacts.org/product/3257981176294/ravioli-jambon-300-grammes-cora	https://images.openfoodfacts.org/images/products/325/798/117/6294/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/325/798/117/6294/nutrition_fr.16.200.jpg	27
2015	Fiori Funghi Porcini	Migros S├®lection,Migros	Migros	c	https://world.openfoodfacts.org/product/7613404088562/fiori-funghi-porcini-migros-selection	https://images.openfoodfacts.org/images/products/761/340/408/8562/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/761/340/408/8562/nutrition_fr.5.200.jpg	27
2017	Ravioli a la daube proven├ºale			d	https://world.openfoodfacts.org/product/3562420000017/ravioli-a-la-daube-provencale	https://images.openfoodfacts.org/images/products/356/242/000/0017/front_fr.4.400.jpg	\N	27
2020	Ravioli aux l├®gumes du soleil	Bofrost		b	https://world.openfoodfacts.org/product/0333669162216/ravioli-aux-legumes-du-soleil-bofrost	https://images.openfoodfacts.org/images/products/033/366/916/2216/front_fr.11.400.jpg	\N	27
2021	Rana Duetto	Giovanni Rana		d	https://world.openfoodfacts.org/product/8001665702256/duetto-giovanni-rana	https://images.openfoodfacts.org/images/products/800/166/570/2256/front_fr.8.400.jpg	\N	27
2022	Riavoli de carne de vacuno con salsa guisada a la italiana	Casa Morando	Aldi	b	https://world.openfoodfacts.org/product/24016728/riavoli-de-carne-de-vacuno-con-salsa-guisada-a-la-italiana-casa-morando	https://images.openfoodfacts.org/images/products/24016728/front_es.4.400.jpg	https://images.openfoodfacts.org/images/products/24016728/nutrition_es.10.200.jpg	27
2023	Mezzelune calabaza, salvia y mascarpone	Special de Aldi	Aldi	c	https://world.openfoodfacts.org/product/24089777/mezzelune-calabaza-salvia-y-mascarpone-special-de-aldi	https://images.openfoodfacts.org/images/products/24089777/front_es.5.400.jpg	https://images.openfoodfacts.org/images/products/24089777/nutrition_es.5.200.jpg	27
2024	Ravioli frais au jambon et parmesan	Landreau		a	https://world.openfoodfacts.org/product/3386750000024/ravioli-frais-au-jambon-et-parmesan-landreau	https://images.openfoodfacts.org/images/products/338/675/000/0024/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/338/675/000/0024/nutrition_fr.13.200.jpg	27
2025	Girasoles au Pesto Basilic et Pignons	Itin├®raire des Saveurs,Intermarch├®	Intermarch├®	c	https://world.openfoodfacts.org/product/3250392170714/girasoles-au-pesto-basilic-et-pignons-itineraire-des-saveurs	https://images.openfoodfacts.org/images/products/325/039/217/0714/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/325/039/217/0714/nutrition_fr.19.200.jpg	27
2026	Ravioli Bolognese	Zapetti	Delhaize	c	https://world.openfoodfacts.org/product/3021690011081/ravioli-bolognese-zapetti	https://images.openfoodfacts.org/images/products/302/169/001/1081/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/302/169/001/1081/nutrition_fr.17.200.jpg	27
2027	Ravioli daube			a	https://world.openfoodfacts.org/product/3478220001942/ravioli-daube	https://images.openfoodfacts.org/images/products/347/822/000/1942/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/347/822/000/1942/nutrition_fr.13.200.jpg	27
2029	Gyoza au poulet	Asia Gourmet	Denner	b	https://world.openfoodfacts.org/product/7610745214353/gyoza-au-poulet-asia-gourmet	https://images.openfoodfacts.org/images/products/761/074/521/4353/front_fr.4.400.jpg	\N	27
2042	Raviolis de verduras	Buitoni		c	https://world.openfoodfacts.org/product/8053041001101/raviolis-de-verduras-buitoni	https://images.openfoodfacts.org/images/products/805/304/100/1101/front_es.3.400.jpg	https://images.openfoodfacts.org/images/products/805/304/100/1101/nutrition_es.5.200.jpg	27
2043	Cheese ravioli		Whole Foods	b	https://world.openfoodfacts.org/product/0073872746239/cheese-ravioli	https://images.openfoodfacts.org/images/products/007/387/274/6239/front_en.7.400.jpg	\N	27
2099	Organic spinach & cheese ravioli	Valley Fine Foods Company	Whole Foods	b	https://world.openfoodfacts.org/product/0073872746093/organic-spinach-cheese-ravioli-valley-fine-foods-company	https://images.openfoodfacts.org/images/products/007/387/274/6093/front_en.10.400.jpg	\N	27
2141	Ravioli Gorgonzola & jambon cru	Saint Jean		d	https://world.openfoodfacts.org/product/3266140060220/ravioli-gorgonzola-jambon-cru-saint-jean	https://images.openfoodfacts.org/images/products/326/614/006/0220/front_fr.4.400.jpg	\N	27
2143	Grand ravioli tomate mozzarella	Cora	Cora	b	https://world.openfoodfacts.org/product/3257984854410/grand-ravioli-tomate-mozzarella-cora	https://images.openfoodfacts.org/images/products/325/798/485/4410/front_fr.4.400.jpg	\N	27
2144	Ravioli Jambon	Royans, Saint Jean		c	https://world.openfoodfacts.org/product/3266140054274/ravioli-jambon-royans	https://images.openfoodfacts.org/images/products/326/614/005/4274/front_fr.4.400.jpg	\N	27
2145	Ravioli boeuf	Ben's		c	https://world.openfoodfacts.org/product/3760307450416/ravioli-boeuf-ben-s	https://images.openfoodfacts.org/images/products/376/030/745/0416/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/376/030/745/0416/nutrition_fr.5.200.jpg	27
2147	Triangoli	Hero		c	https://world.openfoodfacts.org/product/7614200011723/triangoli-with-mushrooms-hero	https://images.openfoodfacts.org/images/products/761/420/001/1723/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/761/420/001/1723/nutrition_fr.18.200.jpg	27
2148	Ravioli Jambon Cuit, Petits Pois et Mozzarella	Buitoni		c	https://world.openfoodfacts.org/product/8053041000180/ravioli-jambon-cuit-petits-pois-et-mozzarella-buitoni	https://images.openfoodfacts.org/images/products/805/304/100/0180/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/805/304/100/0180/nutrition_fr.15.200.jpg	27
2149	Ravioli aux truffes d'├®t├®	Maison de la Truffe		c	https://world.openfoodfacts.org/product/3760114520692/ravioli-aux-truffes-d-ete-maison-de-la-truffe	https://images.openfoodfacts.org/images/products/376/011/452/0692/front_fr.4.400.jpg	\N	27
2157	Ravioli Pur Boeuf	Panzani		b	https://world.openfoodfacts.org/product/3261052880829/ravioli-pur-boeuf-panzani	https://images.openfoodfacts.org/images/products/326/105/288/0829/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/326/105/288/0829/nutrition_fr.7.200.jpg	27
2158	Raviolis ch├¿vre jambon sec	Lustucru		d	https://world.openfoodfacts.org/product/3240931541419/raviolis-chevre-jambon-sec-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/1419/front_fr.4.400.jpg	\N	27
2159	Ravioli tomate basilic mozzarella	lustucru		c	https://world.openfoodfacts.org/product/3240930013931/ravioli-tomate-basilic-mozzarella-lustucru	https://images.openfoodfacts.org/images/products/324/093/001/3931/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/324/093/001/3931/nutrition_fr.17.200.jpg	27
2160	Ravioli Ricotta e Spinaci	Garofalo	Migros	c	https://world.openfoodfacts.org/product/8000139929472/ravioli-ricotta-e-spinaci-garofalo	https://images.openfoodfacts.org/images/products/800/013/992/9472/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/800/013/992/9472/nutrition_fr.18.200.jpg	27
2170	Ravioli jambon au ble complet	Colomba		c	https://world.openfoodfacts.org/product/3336100001867/ravioli-jambon-au-ble-complet-colomba	https://images.openfoodfacts.org/images/products/333/610/000/1867/front_fr.4.400.jpg	\N	27
2171	Raviolis ├á la Daube Proven├ºale	Robert Esposito		b	https://world.openfoodfacts.org/product/3308090002544/raviolis-a-la-daube-provencale-robert-esposito	https://images.openfoodfacts.org/images/products/330/809/000/2544/front_fr.4.400.jpg	\N	27
2175	Mini Ravioli Daube			a	https://world.openfoodfacts.org/product/3478220001508/mini-ravioli-daube	https://images.openfoodfacts.org/images/products/347/822/000/1508/front_fr.4.400.jpg	\N	27
2176	Ravioli jambon emmental	Lustucru		c	https://world.openfoodfacts.org/product/3240931538914/ravioli-jambon-emmental-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/8914/front_fr.4.400.jpg	\N	27
2177	Vegetable Dim Sum : aux l├®gumes	Betty Bossi		b	https://world.openfoodfacts.org/product/7610849658916/vegetable-dim-sum-aux-legumes-betty-bossi	https://images.openfoodfacts.org/images/products/761/084/965/8916/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/761/084/965/8916/nutrition_fr.5.200.jpg	27
2181	Gnudi aux truffes	issimo	Carrefour market	a	https://world.openfoodfacts.org/product/3760244760142/gnudi-aux-truffes-issimo	https://images.openfoodfacts.org/images/products/376/024/476/0142/front_fr.4.400.jpg	\N	27
2183	Raviolis au fromage et au pesto	Betty Bossi	Coop	c	https://world.openfoodfacts.org/product/7613331671363/raviolis-au-fromage-et-au-pesto-betty-bossi	https://images.openfoodfacts.org/images/products/761/333/167/1363/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/761/333/167/1363/nutrition_fr.7.200.jpg	27
2185	Ravioli (Beef)	Roberto SA,Meryrin	Coop, Migros	a	https://world.openfoodfacts.org/product/7610695002628/fresh-pasta-ravioli-roberto-sa	https://images.openfoodfacts.org/images/products/761/069/500/2628/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/761/069/500/2628/nutrition_fr.18.200.jpg	27
2187	Gyoza ├á la viande	Wei Ming		d	https://world.openfoodfacts.org/product/3760269070172/gyoza-a-la-viande-wei-ming	https://images.openfoodfacts.org/images/products/376/026/907/0172/front_fr.8.400.jpg	\N	27
2188	Duck Gyoza En Hoisin opruimprijs	Ajinomoto		b	https://world.openfoodfacts.org/product/5905279248045/duck-gyoza-en-hoisin-opruimprijs-ajinomoto	https://images.openfoodfacts.org/images/products/590/527/924/8045/front_fr.4.400.jpg	\N	27
2253	Raviolis jambon de bayonne			d	https://world.openfoodfacts.org/product/0208649020933/raviolis-jambon-de-bayonne	https://images.openfoodfacts.org/images/products/020/864/902/0933/front_fr.4.400.jpg	\N	27
2192	Ravioli salsiccia funghi	Fini		b	https://world.openfoodfacts.org/product/4001096041737/ravioli-salsiccia-funghi-fini	https://images.openfoodfacts.org/images/products/400/109/604/1737/front_it.4.400.jpg	https://images.openfoodfacts.org/images/products/400/109/604/1737/nutrition_it.10.200.jpg	27
2197	Le ravioli bolognaise	Panzani		c	https://world.openfoodfacts.org/product/7877738285312/le-ravioli-bolognaise-panzani	https://images.openfoodfacts.org/images/products/787/773/828/5312/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/787/773/828/5312/nutrition_fr.5.200.jpg	27
2198	Raviolis Chinois au porc	Vitasia		d	https://world.openfoodfacts.org/product/3366760043617/raviolis-chinois-au-porc-vitasia	https://images.openfoodfacts.org/images/products/336/676/004/3617/front_fr.4.400.jpg	\N	27
2199	Girasoli	Mmm !		d	https://world.openfoodfacts.org/product/3596710384983/girasoli-mmm	https://images.openfoodfacts.org/images/products/359/671/038/4983/front_fr.7.400.jpg	\N	27
2202	GYOZAS	Leclerc		b	https://world.openfoodfacts.org/product/2020001400751/gyozas-leclerc	https://images.openfoodfacts.org/images/products/202/000/140/0751/front_fr.8.400.jpg	\N	27
2203	Ravioli ricotta jambon	Robert Esposito		b	https://world.openfoodfacts.org/product/3308090003510/ravioli-ricotta-jambon-robert-esposito	https://images.openfoodfacts.org/images/products/330/809/000/3510/front_fr.4.400.jpg	\N	27
2206	Raviolis frais	Metro Chef		d	https://world.openfoodfacts.org/product/3439496608228/raviolis-frais-metro-chef	https://images.openfoodfacts.org/images/products/343/949/660/8228/front_fr.4.400.jpg	\N	27
2208	Z├Âlds├®ges gyoza	Konspol		c	https://world.openfoodfacts.org/product/5900962040180/zoldseges-gyoza-konspol	https://images.openfoodfacts.org/images/products/590/096/204/0180/front_hu.6.400.jpg	https://images.openfoodfacts.org/images/products/590/096/204/0180/nutrition_hu.12.200.jpg	27
2209	Gomser Ravioli au fromage de montagne	Pro Montagna	Coop	c	https://world.openfoodfacts.org/product/7610846255729/pro-montagna-raviolini-with-mountain-cheese	https://images.openfoodfacts.org/images/products/761/084/625/5729/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/761/084/625/5729/nutrition_fr.11.200.jpg	27
2211	Girasoli ai funghi e mascarpone.	Gourmet	Aldi	d	https://world.openfoodfacts.org/product/24131032/girasoli-ai-funghi-e-mascarpone-gourmet	https://images.openfoodfacts.org/images/products/24131032/front_it.4.400.jpg	https://images.openfoodfacts.org/images/products/24131032/nutrition_it.10.200.jpg	27
2212	Ravioli au fromage sauce tomate	Casino	Casino	b	https://world.openfoodfacts.org/product/3222475412431/ravioli-au-fromage-sauce-tomate-casino	https://images.openfoodfacts.org/images/products/322/247/541/2431/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/322/247/541/2431/nutrition_fr.11.200.jpg	27
2214	Ravioli a la daube			a	https://world.openfoodfacts.org/product/3416310001274/ravioli-a-la-daube	https://images.openfoodfacts.org/images/products/341/631/000/1274/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/341/631/000/1274/nutrition_fr.10.200.jpg	27
2216	Ravioli 4 fromages	Monoprix bio,Monoprix	Monoprix	c	https://world.openfoodfacts.org/product/3350030105822/ravioli-4-fromages-monoprix-bio	https://images.openfoodfacts.org/images/products/335/003/010/5822/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/335/003/010/5822/nutrition_fr.22.200.jpg	27
2217	P├ótes de Puys├®gur raviolis saumon			a	https://world.openfoodfacts.org/product/0656272123673/pates-de-puysegur-raviolis-saumon	https://images.openfoodfacts.org/images/products/065/627/212/3673/front_fr.4.400.jpg	\N	27
2218	10 raviolis chinois aux crevettes			b	https://world.openfoodfacts.org/product/3474930405001/10-raviolis-chinois-aux-crevettes	https://images.openfoodfacts.org/images/products/347/493/040/5001/front_fr.4.400.jpg	\N	27
2219	Ravioli aux l├®gumes	La Vie Claire	La Vie Claire	c	https://world.openfoodfacts.org/product/3266191105451/ravioli-aux-legumes-la-vie-claire	https://images.openfoodfacts.org/images/products/326/619/110/5451/front_fr.4.400.jpg	\N	27
2221	Ravioli 3 fromages	Fiorini		c	https://world.openfoodfacts.org/product/3250392254469/ravioli-3-fromages-fiorini	https://images.openfoodfacts.org/images/products/325/039/225/4469/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/325/039/225/4469/nutrition_fr.14.200.jpg	27
2222	Gyoza Poulet	Hanabi		b	https://world.openfoodfacts.org/product/3662676000349/gyoza-poulet-hanabi	https://images.openfoodfacts.org/images/products/366/267/600/0349/front_fr.4.400.jpg	\N	27
2223	Gyoza - Raviolis aux L├®gumes ├á la Japonaise	Ajinomoto		a	https://world.openfoodfacts.org/product/8858639000258/gyoza-raviolis-aux-legumes-a-la-japonaise-ajinomoto	https://images.openfoodfacts.org/images/products/885/863/900/0258/front_fr.8.400.jpg	\N	27
2224	Raviolotti au Pecorino Romano	Lustucru		d	https://world.openfoodfacts.org/product/3240931544960/raviolotti-au-pecorino-romano-lustucru	https://images.openfoodfacts.org/images/products/324/093/154/4960/front_fr.4.400.jpg	\N	27
2226	Ravioli jambon emmental			a	https://world.openfoodfacts.org/product/3416310001038/ravioli-jambon-emmental	https://images.openfoodfacts.org/images/products/341/631/000/1038/front_fr.4.400.jpg	\N	27
2228	Ravioli BIO Tomates et Mozzarella	Michelis		b	https://world.openfoodfacts.org/product/8011207079555/ravioli-bio-tomates-et-mozzarella-michelis	https://images.openfoodfacts.org/images/products/801/120/707/9555/front_fr.4.400.jpg	\N	27
2231	Ravioli Chinois Porc Champignon Noir	fresh Asia Dumpling		c	https://world.openfoodfacts.org/product/5060198530128/ravioli-chinois-porc-champignon-noir-fresh-asia-dumpling	https://images.openfoodfacts.org/images/products/506/019/853/0128/front_fr.4.400.jpg	\N	27
2234	Ravioli au jambon			b	https://world.openfoodfacts.org/product/3153575616880/ravioli-au-jambon	https://images.openfoodfacts.org/images/products/315/357/561/6880/front_fr.4.400.jpg	\N	27
2235	Ravioli au boeuf	Landier Nord		b	https://world.openfoodfacts.org/product/3153575616385/ravioli-au-boeuf-landier-nord	https://images.openfoodfacts.org/images/products/315/357/561/6385/front_fr.21.400.jpg	\N	27
2249	Ravioli jambon emmental	Lustucru		c	https://world.openfoodfacts.org/product/3240931536019/ravioli-jambon-emmental-lustucru	https://images.openfoodfacts.org/images/products/324/093/153/6019/front_fr.4.400.jpg	\N	27
2250	Ravioli Jambon Emmental	Lustucru		c	https://world.openfoodfacts.org/product/3240963425206/ravioli-jambon-emmental-lustucru	https://images.openfoodfacts.org/images/products/324/096/342/5206/front_fr.4.400.jpg	\N	27
2251	Ravioli au jambon de Toscane AOP & parmigiano reggiano	issimo		c	https://world.openfoodfacts.org/product/3760244760166/ravioli-au-jambon-de-toscane-aop-parmigiano-reggiano-issimo	https://images.openfoodfacts.org/images/products/376/024/476/0166/front_fr.4.400.jpg	\N	27
2255	Nems aux lentins de ch├¬ne	Champichoux		c	https://world.openfoodfacts.org/product/2216028041460/nems-aux-lentins-de-chene-champichoux	https://images.openfoodfacts.org/images/products/221/602/804/1460/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/221/602/804/1460/nutrition_fr.13.200.jpg	27
2261	8 Gyoza L├®gumes sauce soja	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710464449/8-gyoza-legumes-sauce-soja-auchan	https://images.openfoodfacts.org/images/products/359/671/046/4449/front_fr.4.400.jpg	\N	27
2267	Ravioli chinois aux crevettes			c	https://world.openfoodfacts.org/product/5999885801589/ravioli-chinois-aux-crevettes	https://images.openfoodfacts.org/images/products/599/988/580/1589/front_fr.4.400.jpg	\N	27
2270	Ravioli 100% volaille	Combino	Lidl	c	https://world.openfoodfacts.org/product/20027911/ravioli-100-volaille-combino	https://images.openfoodfacts.org/images/products/20027911/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/20027911/nutrition_fr.7.200.jpg	27
2273	Ravioli b┼ôuf	Cora	Cora	b	https://world.openfoodfacts.org/product/3257981176287/ravioli-boeuf-cora	https://images.openfoodfacts.org/images/products/325/798/117/6287/front_fr.6.400.jpg	\N	27
2276	Ravioli au Gorgonzola	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3254560153653/ravioli-au-gorgonzola-auchan	https://images.openfoodfacts.org/images/products/325/456/015/3653/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/456/015/3653/nutrition_fr.5.200.jpg	27
2277	Ravioli au boeuf 	Auchan	Auchan	d	https://world.openfoodfacts.org/product/3596710173488/ravioli-au-boeuf-auchan	https://images.openfoodfacts.org/images/products/359/671/017/3488/front_fr.9.400.jpg	https://images.openfoodfacts.org/images/products/359/671/017/3488/nutrition_fr.11.200.jpg	27
2283	Raviolis ├á la daube proven├ºale			b	https://world.openfoodfacts.org/product/3562420002431/raviolis-a-la-daube-provencale	https://images.openfoodfacts.org/images/products/356/242/000/2431/front_fr.4.400.jpg	\N	27
2284	Ravioli ├á la daube proven├ºale			b	https://world.openfoodfacts.org/product/3562420002905/ravioli-a-la-daube-provencale	https://images.openfoodfacts.org/images/products/356/242/000/2905/front_fr.4.400.jpg	\N	27
2285	Raviolis ├á la daube proven├ºale			d	https://world.openfoodfacts.org/product/3562420002752/raviolis-a-la-daube-provencale	https://images.openfoodfacts.org/images/products/356/242/000/2752/front_fr.4.400.jpg	\N	27
2290	Ravioli au jambon ├á la mytte	colomba pasta di corsica		b	https://world.openfoodfacts.org/product/3336100001836/ravioli-au-jambon-a-la-mytte-colomba-pasta-di-corsica	https://images.openfoodfacts.org/images/products/333/610/000/1836/front_fr.4.400.jpg	\N	27
2291	Ravioli jambon			b	https://world.openfoodfacts.org/product/3245212459179/ravioli-jambon	https://images.openfoodfacts.org/images/products/324/521/245/9179/front_fr.4.400.jpg	\N	27
2296	Vegetarian gyoza			c	https://world.openfoodfacts.org/product/5890802099082/vegetarian-gyoza	https://images.openfoodfacts.org/images/products/589/080/209/9082/front_fr.4.400.jpg	\N	27
2297				d	https://world.openfoodfacts.org/product/7350060701816	https://images.openfoodfacts.org/images/products/735/006/070/1816/front_sv.5.400.jpg	https://images.openfoodfacts.org/images/products/735/006/070/1816/nutrition_sv.7.200.jpg	27
2298				c	https://world.openfoodfacts.org/product/7802810005717	https://images.openfoodfacts.org/images/products/780/281/000/5717/front_es.6.400.jpg	https://images.openfoodfacts.org/images/products/780/281/000/5717/nutrition_es.8.200.jpg	27
2299	Ravioles du Dauphin├®	Saint jean		d	https://world.openfoodfacts.org/product/3266140051679/ravioles-du-dauphine-saint-jean	https://images.openfoodfacts.org/images/products/326/614/005/1679/front_fr.3.400.jpg	\N	27
2301	Sardines A L'huile De Tournesol	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3596710396122/sardines-a-l-huile-de-tournesol-auchan	https://images.openfoodfacts.org/images/products/359/671/039/6122/front_fr.16.400.jpg	\N	28
2302	Sardines ├á l'huile d'olive	Zapi	Aldi	b	https://world.openfoodfacts.org/product/27052549/sardines-a-l-huile-d-olive-zapi	https://images.openfoodfacts.org/images/products/27052549/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/27052549/nutrition_fr.26.200.jpg	28
2303	Sardines huil.olive extra v.St Gil.	Saveurs de nos R├®gions		b	https://world.openfoodfacts.org/product/20290221/sardines-huil-olive-extra-v-st-gil-saveurs-de-nos-regions	https://images.openfoodfacts.org/images/products/20290221/front_fr.52.400.jpg	https://images.openfoodfacts.org/images/products/20290221/nutrition_fr.54.200.jpg	28
2307	Sardines ├á l'huile de tournesol			c	https://world.openfoodfacts.org/product/8410149061060/sardines-a-l-huile-de-tournesol	https://images.openfoodfacts.org/images/products/841/014/906/1060/front_fr.4.400.jpg	\N	28
2308	sardine a la tomate	Cap Rousset		c	https://world.openfoodfacts.org/product/3251870002800/sardine-tomate-cap-rousset	https://images.openfoodfacts.org/images/products/325/187/000/2800/front_fr.11.400.jpg	\N	28
2310	Sauce Arrabiata - Belle France	Belle France		c	https://world.openfoodfacts.org/product/3258561140612/sauce-arrabiata-belle-france	https://images.openfoodfacts.org/images/products/325/856/114/0612/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/325/856/114/0612/nutrition_fr.29.200.jpg	29
2311	Panzani - spf - sauce bolognaise pur boeuf	Panzani	E.leclerc,Carrefour,Carrefour Market	b	https://world.openfoodfacts.org/product/3038359007613/panzani-spf-sauce-bolognaise-pur-boeuf	https://images.openfoodfacts.org/images/products/303/835/900/7613/front_fr.33.400.jpg	https://images.openfoodfacts.org/images/products/303/835/900/7613/nutrition_fr.43.200.jpg	29
2314	Saumon d ecosse fume label rouge	Delpeyrat		d	https://world.openfoodfacts.org/product/3067163649665/saumon-d-ecosse-fume-label-rouge-delpeyrat	https://images.openfoodfacts.org/images/products/306/716/364/9665/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/306/716/364/9665/nutrition_fr.23.200.jpg	30
2315	Velout├® de Potiron et pointe de cr├¿me (lot de 2)	Liebig	Carrefour,E.leclerc,Auchan,Cora,Carrefour Market	b	https://world.openfoodfacts.org/product/3036811357764/veloute-de-potiron-et-pointe-de-creme-lot-de-2-liebig	https://images.openfoodfacts.org/images/products/303/681/135/7764/front_fr.34.400.jpg	https://images.openfoodfacts.org/images/products/303/681/135/7764/nutrition_fr.17.200.jpg	31
2316	VELOUT├ë COURGETTES BASILIC BIO	Auchan bio	Auchan	b	https://world.openfoodfacts.org/product/3596710464982/veloute-courgettes-basilic-bio-auchan-bio	https://images.openfoodfacts.org/images/products/359/671/046/4982/front_fr.25.400.jpg	https://images.openfoodfacts.org/images/products/359/671/046/4982/nutrition_fr.36.200.jpg	31
2317	Velout├® courge butternut patate douce girolle	Picard	Picard	b	https://world.openfoodfacts.org/product/3270160680702/veloute-courge-butternut-patate-douce-girolle-picard	https://images.openfoodfacts.org/images/products/327/016/068/0702/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/327/016/068/0702/nutrition_fr.5.200.jpg	31
2318	Corte Fresco - Filet de Porc Sec d'Espagne­ƒç¬­ƒç©	Serrano	E.Leclerc,Carrefour Market,Magasin U,Monoprix,M├®tro	d	https://world.openfoodfacts.org/product/8411030050965/corte-fresco-filet-de-porc-sec-d-espagne%F0%9F%87%AA%F0%9F%87%B8-serrano	https://images.openfoodfacts.org/images/products/841/103/005/0965/front_fr.11.400.jpg	https://images.openfoodfacts.org/images/products/841/103/005/0965/nutrition_fr.12.200.jpg	32
2319	Poulet Grill├® R├┤ti ou Cuit au Four	Carrefour	Carrefour,carrefour.fr	b	https://world.openfoodfacts.org/product/3276552190163/poulet-grille-roti-ou-cuit-au-four-carrefour	https://images.openfoodfacts.org/images/products/327/655/219/0163/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/327/655/219/0163/nutrition_fr.23.200.jpg	32
2320	Saucisse De Volaille Aux Pistaches	Sunsatbaktat	Gortat	d	https://world.openfoodfacts.org/product/4040328033430/saucisse-de-volaille-aux-pistaches-sunsatbaktat	https://images.openfoodfacts.org/images/products/404/032/803/3430/front.6.400.jpg	\N	32
2321	Allumettes fumees au bois de hetre	Tradil├¿ge,Marque Rep├¿re	Leclerc	d	https://world.openfoodfacts.org/product/3661112054199/allumettes-fumees-au-bois-de-hetre-tradilege	https://images.openfoodfacts.org/images/products/366/111/205/4199/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/366/111/205/4199/nutrition_fr.6.200.jpg	32
2324	Eminc├®s jambon r├®duit en sel	Monique Ranou	Intermarch├®	c	https://world.openfoodfacts.org/product/3250391402861/eminces-jambon-reduit-en-sel-monique-ranou	https://images.openfoodfacts.org/images/products/325/039/140/2861/front_fr.40.400.jpg	https://images.openfoodfacts.org/images/products/325/039/140/2861/nutrition_fr.42.200.jpg	32
2325	Girasoli mozzarella chorizo 250g	Lustucru Lustucru selection	E.Leclerc	c	https://world.openfoodfacts.org/product/3240931546452/girasoli-mozzarella-chorizo-250g-lustucru-lustucru-selection	https://images.openfoodfacts.org/images/products/324/093/154/6452/front_fr.8.400.jpg	https://images.openfoodfacts.org/images/products/324/093/154/6452/nutrition_fr.5.200.jpg	32
2326	Steaks Hach├®s 100% Pur B┼ôuf	Isla Mondial	Carrefour, carrefour.fr	c	https://world.openfoodfacts.org/product/3700091900179/steaks-haches-100-pur-boeuf-isla-mondial	https://images.openfoodfacts.org/images/products/370/009/190/0179/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/370/009/190/0179/nutrition_fr.15.200.jpg	32
2327	Zeybek Poultry Sausage With Flucky Paprika	Efepasa	Jumbo	e	https://world.openfoodfacts.org/product/4017979046003/zeybek-poultry-sausage-with-flucky-paprika-efepasa	https://images.openfoodfacts.org/images/products/401/797/904/6003/front_fr.10.400.jpg	\N	32
2328	Le Sup├®rieur - ├á l'Etouff├®e - Conservation sans Nitrite	Fleury Michon	Carrefour,E.Leclerc,Auchan,Franprix, carrefour.fr	c	https://world.openfoodfacts.org/product/3302740047367/le-superieur-a-l-etouffee-conservation-sans-nitrite-fleury-michon	https://images.openfoodfacts.org/images/products/330/274/004/7367/front_fr.164.400.jpg	https://images.openfoodfacts.org/images/products/330/274/004/7367/nutrition_fr.269.200.jpg	32
2329	Putenbrust	K-CLASSIC	Kaufland	c	https://world.openfoodfacts.org/product/4337185397684/putenbrust-k-classic	https://images.openfoodfacts.org/images/products/433/718/539/7684/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/433/718/539/7684/nutrition_fr.5.200.jpg	32
2330	Terrine de campagne au piment d'espelette	Secret d'Eleveurs	E.leclerc,Auchan,Carrefour	d	https://world.openfoodfacts.org/product/3277160000530/terrine-de-campagne-au-piment-d-espelette-secret-d-eleveurs	https://images.openfoodfacts.org/images/products/327/716/000/0530/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/327/716/000/0530/nutrition_fr.16.200.jpg	32
2331	Eminc├®s de filet de poulet r├┤ti ├á la Mexicaine	Le gaulois	E.Leclerc, carrefour.fr	b	https://world.openfoodfacts.org/product/3266980134549/eminces-de-filet-de-poulet-roti-a-la-mexicaine-le-gaulois	https://images.openfoodfacts.org/images/products/326/698/013/4549/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/326/698/013/4549/nutrition_fr.21.200.jpg	32
2332	Cuisses de Poulet	null	carrefour.fr	b	https://world.openfoodfacts.org/product/3560070450848/cuisses-de-poulet-null	https://images.openfoodfacts.org/images/products/356/007/045/0848/front_fr.9.400.jpg	\N	32
2333	Aiguillettes poulet Maitre coq Jaune	Maitre Coq		a	https://world.openfoodfacts.org/product/3230890759185/aiguillettes-poulet-maitre-coq-jaune	https://images.openfoodfacts.org/images/products/323/089/075/9185/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/323/089/075/9185/nutrition_fr.16.200.jpg	32
2334	Steak hach├® pur boeuf (5% MG)	Carrefour	Carrefour City,Carrefour	a	https://world.openfoodfacts.org/product/3245413750754/steak-hache-pur-boeuf-5-mg-carrefour	https://images.openfoodfacts.org/images/products/324/541/375/0754/front_fr.30.400.jpg	\N	32
2335	Rillettes de Maquereaux	La Cancalaise	Carrefour,E.leclerc,Auchan,Lidl,Carrefour Market,Magasin U	d	https://world.openfoodfacts.org/product/3760023263987/rillettes-de-maquereaux-la-cancalaise	https://images.openfoodfacts.org/images/products/376/002/326/3987/front_fr.6.400.jpg	https://images.openfoodfacts.org/images/products/376/002/326/3987/nutrition_fr.9.200.jpg	32
2336	Filet de poulet LNA	La Nouvelle Agriculture	E.leclerc,Auchan,Carrefour,Cora,Franprix,Magasin U,Lidl,Biocop	a	https://world.openfoodfacts.org/product/0213400024341/filet-de-poulet-lna-la-nouvelle-agriculture	https://images.openfoodfacts.org/images/products/021/340/002/4341/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/021/340/002/4341/nutrition_fr.15.200.jpg	32
2338	Escalope de dinde	Le gaulois	E.Leclerc,Auchan,Carefour Market,Carefour,Intermarch├®,Grands Frais	a	https://world.openfoodfacts.org/product/3266980467098/escalope-de-dinde-le-gaulois	https://images.openfoodfacts.org/images/products/326/698/046/7098/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/326/698/046/7098/nutrition_fr.18.200.jpg	32
2339	Rillettes de Saumon rose du Pacifique Ronde des Mers	Ronde des Mers Marque Rep├¿re		b	https://world.openfoodfacts.org/product/3564706587243/rillettes-de-saumon-rose-du-pacifique-ronde-des-mers-ronde-des-mers-marque-repere	https://images.openfoodfacts.org/images/products/356/470/658/7243/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/356/470/658/7243/nutrition_fr.13.200.jpg	32
2341	4 V├®ritables Knacks d'Alsace	Reflets de FranceBazin Andr├®	Carrefour,Dia,E.leclerc, carrefour.fr	d	https://world.openfoodfacts.org/product/3560070382828/4-veritables-knacks-d-alsace-reflets-de-francebazin-andre	https://images.openfoodfacts.org/images/products/356/007/038/2828/front_fr.79.400.jpg	https://images.openfoodfacts.org/images/products/356/007/038/2828/nutrition_fr.87.200.jpg	32
2343	Viande hach├®e	Auchan	Auchan	c	https://world.openfoodfacts.org/product/3254565412106/viande-hachee-auchan	https://images.openfoodfacts.org/images/products/325/456/541/2106/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/325/456/541/2106/nutrition_fr.26.200.jpg	32
2344	Le steak hach├® 100% boeuf	Isla D├®lice	Cora,Magasins U, carrefour.fr	d	https://world.openfoodfacts.org/product/3512690000163/le-steak-hache-100-boeuf-isla-delice	https://images.openfoodfacts.org/images/products/351/269/000/0163/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/351/269/000/0163/nutrition_fr.32.200.jpg	32
2345	Jambon magistral ├á l'os	Saint alby		c	https://world.openfoodfacts.org/product/20342111/jambon-magistral-a-l-os-saint-alby	https://images.openfoodfacts.org/images/products/20342111/front_fr.4.400.jpg	https://images.openfoodfacts.org/images/products/20342111/nutrition_fr.13.200.jpg	32
2347	Pr├®paration pour Fond de Veau	Belle France		e	https://world.openfoodfacts.org/product/3258561130095/preparation-pour-fond-de-veau-belle-france	https://images.openfoodfacts.org/images/products/325/856/113/0095/front_fr.10.400.jpg	https://images.openfoodfacts.org/images/products/325/856/113/0095/nutrition_fr.12.200.jpg	32
2348	JAMBON DE PARIS	Tradil├¿ge,Marque Rep├¿re	Leclerc	c	https://world.openfoodfacts.org/product/3661112502843/jambon-de-paris-tradilege	https://images.openfoodfacts.org/images/products/366/111/250/2843/front_fr.21.400.jpg	https://images.openfoodfacts.org/images/products/366/111/250/2843/nutrition_fr.23.200.jpg	32
2351	Jambon sup├®rieur brais├® d├®couenn├® d├®graiss├® 4 tranches	Tradil├¿geMarque Rep├¿re	E.Leclerc	c	https://world.openfoodfacts.org/product/3661112096489/jambon-superieur-braise-decouenne-degraisse-4-tranches-tradilegemarque-repere	https://images.openfoodfacts.org/images/products/366/111/209/6489/front_fr.35.400.jpg	https://images.openfoodfacts.org/images/products/366/111/209/6489/nutrition_fr.26.200.jpg	32
2352	Jambon de Bayonne grandes tranches	Delpeyrat		e	https://world.openfoodfacts.org/product/3067163646596/jambon-de-bayonne-grandes-tranches-delpeyrat	https://images.openfoodfacts.org/images/products/306/716/364/6596/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/306/716/364/6596/nutrition_fr.18.200.jpg	32
2353	Pilons de poulet	Plukon	Super U, carrefour.fr	a	https://world.openfoodfacts.org/product/5413458017585/pilons-de-poulet-plukon	https://images.openfoodfacts.org/images/products/541/345/801/7585/front_fr.19.400.jpg	https://images.openfoodfacts.org/images/products/541/345/801/7585/nutrition_fr.11.200.jpg	32
2354	Filets poulet blanc Ma├«tre Coq	Maitre Coq	carrefour.fr	a	https://world.openfoodfacts.org/product/3230890758348/filets-poulet-blanc-maitre-coq	https://images.openfoodfacts.org/images/products/323/089/075/8348/front_fr.29.400.jpg	https://images.openfoodfacts.org/images/products/323/089/075/8348/nutrition_fr.36.200.jpg	32
2355	KNACKI Original 100% pur porc	Herta Nestl├® Original Knacki	Carrefour market,Magasins U,Intermarch├®, carrefour.fr	d	https://world.openfoodfacts.org/product/7613034897503/knacki-original-100-pur-porc-herta-nestle-original-knacki	https://images.openfoodfacts.org/images/products/761/303/489/7503/front_en.84.400.jpg	https://images.openfoodfacts.org/images/products/761/303/489/7503/nutrition_fr.152.200.jpg	32
2356	HERTA Lardons fum├®s	Herta	Carrefour Market	e	https://world.openfoodfacts.org/product/7613036012577/herta-lardons-fumes	https://images.openfoodfacts.org/images/products/761/303/601/2577/front_fr.56.400.jpg	https://images.openfoodfacts.org/images/products/761/303/601/2577/nutrition_fr.46.200.jpg	32
2357	Pastrami de Boeuf - au Poivre	Fleury Michon	Auchan,Magasins U,E.leclerc, carrefour.fr	c	https://world.openfoodfacts.org/product/3095758097010/pastrami-de-boeuf-au-poivre-fleury-michon	https://images.openfoodfacts.org/images/products/309/575/809/7010/front_fr.148.400.jpg	https://images.openfoodfacts.org/images/products/309/575/809/7010/nutrition_fr.66.200.jpg	32
2358	Carrefour Chorizo	Carrefour	Carrefour	c	https://world.openfoodfacts.org/product/5400101262102/carrefour-chorizo	https://images.openfoodfacts.org/images/products/540/010/126/2102/front_fr.20.400.jpg	https://images.openfoodfacts.org/images/products/540/010/126/2102/nutrition_fr.15.200.jpg	32
2359	Longaniza de cerdo	lidl	Lidl	d	https://world.openfoodfacts.org/product/20305659/longaniza-de-cerdo-lidl	https://images.openfoodfacts.org/images/products/20305659/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/20305659/nutrition_fr.5.200.jpg	32
2360	Knacks pur porc	Carrefour	Carrefour, carrefour.fr	d	https://world.openfoodfacts.org/product/3560071232856/knacks-pur-porc-carrefour	https://images.openfoodfacts.org/images/products/356/007/123/2856/front_fr.15.400.jpg	https://images.openfoodfacts.org/images/products/356/007/123/2856/nutrition_fr.5.200.jpg	32
2362	Rillettes de thon piment	Saupiquet	Magasins U, carrefour.fr	b	https://world.openfoodfacts.org/product/3165950218510/rillettes-de-thon-piment-saupiquet	https://images.openfoodfacts.org/images/products/316/595/021/8510/front_fr.32.400.jpg	https://images.openfoodfacts.org/images/products/316/595/021/8510/nutrition_fr.34.200.jpg	32
2368	Coq'Ailes Indian Curry	Ma├«tre Coq		c	https://world.openfoodfacts.org/product/3230890005640/coq-ailes-indian-curry-maitre-coq	https://images.openfoodfacts.org/images/products/323/089/000/5640/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/323/089/000/5640/nutrition_fr.5.200.jpg	32
2369	Steacks hach├®s fa├ºon bouch├¿re	Leader Price	Leader Price	c	https://world.openfoodfacts.org/product/3263859972424/steacks-haches-facon-bouchere-leader-price	https://images.openfoodfacts.org/images/products/326/385/997/2424/front_fr.24.400.jpg	https://images.openfoodfacts.org/images/products/326/385/997/2424/nutrition_fr.40.200.jpg	32
2370	LaMilanese	AIA		c	https://world.openfoodfacts.org/product/2839122012183/lamilanese-aia	https://images.openfoodfacts.org/images/products/283/912/201/2183/front_fr.4.400.jpg	\N	32
2372				d	https://world.openfoodfacts.org/product/5411123905458	https://images.openfoodfacts.org/images/products/541/112/390/5458/front_ar.26.400.jpg	\N	32
2373	terrine de foie de poulet	Stephan	Restaurants du Coeur	e	https://world.openfoodfacts.org/product/3261830102051/terrine-de-foie-de-poulet-stephan	https://images.openfoodfacts.org/images/products/326/183/010/2051/front_fr.35.400.jpg	https://images.openfoodfacts.org/images/products/326/183/010/2051/nutrition_fr.37.200.jpg	32
2376	Nuggets	Auchan	Auchan	b	https://world.openfoodfacts.org/product/3596710462902/nuggets-auchan	https://images.openfoodfacts.org/images/products/359/671/046/2902/front_fr.14.400.jpg	https://images.openfoodfacts.org/images/products/359/671/046/2902/nutrition_fr.16.200.jpg	32
2378	Chipolatas	Carrefour	Carrefour	d	https://world.openfoodfacts.org/product/3245415872522/chipolatas-carrefour	https://images.openfoodfacts.org/images/products/324/541/587/2522/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/324/541/587/2522/nutrition_fr.5.200.jpg	32
2385	Knacks	U		e	https://world.openfoodfacts.org/product/3256228623980/knacks-u	https://images.openfoodfacts.org/images/products/325/622/862/3980/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/325/622/862/3980/nutrition_fr.12.200.jpg	32
2386	Saucison sec au poivre vert	Loste		e	https://world.openfoodfacts.org/product/3466250014087/saucison-sec-au-poivre-vert-loste	https://images.openfoodfacts.org/images/products/346/625/001/4087/front_fr.13.400.jpg	https://images.openfoodfacts.org/images/products/346/625/001/4087/nutrition_fr.15.200.jpg	32
2388	wudy classico	aia		d	https://world.openfoodfacts.org/product/8008110002008/wudy-classico-aia	https://images.openfoodfacts.org/images/products/800/811/000/2008/front_it.17.400.jpg	https://images.openfoodfacts.org/images/products/800/811/000/2008/nutrition_it.9.200.jpg	32
2397	Sauce Piquante	Star		a	https://world.openfoodfacts.org/product/6111184000923/sauce-piquante-star	https://images.openfoodfacts.org/images/products/611/118/400/0923/front_fr.12.400.jpg	https://images.openfoodfacts.org/images/products/611/118/400/0923/nutrition_fr.14.200.jpg	32
2398	salami de dinde et boeuf fum├®			e	https://world.openfoodfacts.org/product/4027394005097/salami-de-dinde-et-boeuf-fume	https://images.openfoodfacts.org/images/products/402/739/400/5097/front_fr.3.400.jpg	https://images.openfoodfacts.org/images/products/402/739/400/5097/nutrition_fr.5.200.jpg	32
2404	Yemavin	yemavin		b	https://world.openfoodfacts.org/product/8432286007060/yemavin	https://images.openfoodfacts.org/images/products/843/228/600/7060/front_fr.16.400.jpg	https://images.openfoodfacts.org/images/products/843/228/600/7060/nutrition_fr.18.200.jpg	33
2405	Dessert lact├® aux fruits st├®rilis├® UHT - Fruits des bois	Elle & VireSavencia, Elle&Vire International	Noz,Toutes enseignes GMS	c	https://world.openfoodfacts.org/product/3451790397745/dairy-dessert-uht-sterilised-mixed-berries-elle-viresavencia	https://images.openfoodfacts.org/images/products/345/179/039/7745/front_fr.88.400.jpg	https://images.openfoodfacts.org/images/products/345/179/039/7745/nutrition_fr.79.200.jpg	34
2406	Gourmand┬« Yaourt Mandarine Citron­ƒìï Vert	Mamie NovaGourmand	Monoprix,Cora,Magasins U, carrefour.fr	c	https://world.openfoodfacts.org/product/3456774758772/gourmand-yaourt-mandarine-citron%F0%9F%8D%8B-vert-mamie-novagourmand	https://images.openfoodfacts.org/images/products/345/677/475/8772/front_fr.43.400.jpg	https://images.openfoodfacts.org/images/products/345/677/475/8772/nutrition_fr.45.200.jpg	34
2407	Yaourts ├á la grecque nature	Les ├ëleveurs des Hauts de France		c	https://world.openfoodfacts.org/product/3456770948047/yaourts-a-la-grecque-nature-les-eleveurs-des-hauts-de-france	https://images.openfoodfacts.org/images/products/345/677/094/8047/front_fr.6.400.jpg	\N	34
\.


--
-- Data for Name: app_data_off_userproduct; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.app_data_off_userproduct (id, product_id, user_id) FROM stdin;
1	2353	1
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add category	1	add_category
2	Can change category	1	change_category
3	Can delete category	1	delete_category
4	Can view category	1	view_category
5	Can add product	2	add_product
6	Can change product	2	change_product
7	Can delete product	2	delete_product
8	Can view product	2	view_product
9	Can add user product	3	add_userproduct
10	Can change user product	3	change_userproduct
11	Can delete user product	3	delete_userproduct
12	Can view user product	3	view_userproduct
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add config	10	add_config
38	Can change config	10	change_config
39	Can delete config	10	delete_config
40	Can view config	10	view_config
41	Can add message	11	add_message
42	Can change message	11	change_message
43	Can delete message	11	delete_message
44	Can view message	11	view_message
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
4	pbkdf2_sha256$600000$GzdoIh9e0QF4w8A59nr24X$DZKO0+s4CZJQh8hguQ09abe4Fa+3Gsq+06FkVAV0mvo=	2023-09-16 11:38:45.442899+02	f	preudhomme.patrice@gmail.com			preudhomme.patrice@gmail.com	f	t	2023-08-31 08:49:08.015351+02
2	pbkdf2_sha256$600000$7tCNDsJSPxA0dYcsenVoEZ$CGIOIWpzhDJ7+kOvioAQeFTqa80S+HPtC5kYld3LjWY=	2023-09-16 11:49:03.906169+02	f	michele			michele@gmail.com	f	t	2022-03-18 17:53:55.122487+01
1	pbkdf2_sha256$600000$Up5t4Ad1M3dl960sUuYN7Z$c9/PgDgflwCdcKBAz+o6Whpuzfr2bktcL2bmUzdyP4A=	2023-08-24 19:32:34.926883+02	f	bobo			bobo@gmail.com	f	t	2022-03-14 13:39:48.252431+01
3	pbkdf2_sha256$600000$tddkLNuihAMfm3U2v1kuVG$L8v4IbAeeK+VKOC50BoCbALUV+TQyxvdOMmhjzki6Q4=	2023-08-24 19:34:50.264205+02	f	baba			boba@gmail.com	f	t	2023-08-24 19:34:49.888663+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_command_debug_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_command_debug_config (id, app, name, is_enabled) FROM stdin;
1	app_data_off	cm_db	t
\.


--
-- Data for Name: django_command_debug_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_command_debug_message (id, app, name, msg, created_at) FROM stdin;
1	app_data_off	cm_db	message	2022-03-14 13:33:04.032633+01
2	app_data_off	cm_db	message	2022-03-30 20:27:53.796816+02
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	app_data_off	category
2	app_data_off	product
3	app_data_off	userproduct
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	django_command_debug	config
11	django_command_debug	message
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-03-14 13:32:54.022411+01
2	auth	0001_initial	2022-03-14 13:32:54.083249+01
3	admin	0001_initial	2022-03-14 13:32:54.101201+01
4	admin	0002_logentry_remove_auto_add	2022-03-14 13:32:54.108184+01
5	admin	0003_logentry_add_action_flag_choices	2022-03-14 13:32:54.113169+01
6	app_data_off	0001_initial	2022-03-14 13:32:54.1391+01
7	contenttypes	0002_remove_content_type_name	2022-03-14 13:32:54.153062+01
8	auth	0002_alter_permission_name_max_length	2022-03-14 13:32:54.160043+01
9	auth	0003_alter_user_email_max_length	2022-03-14 13:32:54.168022+01
10	auth	0004_alter_user_username_opts	2022-03-14 13:32:54.174006+01
11	auth	0005_alter_user_last_login_null	2022-03-14 13:32:54.17999+01
12	auth	0006_require_contenttypes_0002	2022-03-14 13:32:54.180988+01
13	auth	0007_alter_validators_add_error_messages	2022-03-14 13:32:54.185974+01
14	auth	0008_alter_user_username_max_length	2022-03-14 13:32:54.195948+01
15	auth	0009_alter_user_last_name_max_length	2022-03-14 13:32:54.202929+01
16	auth	0010_alter_group_name_max_length	2022-03-14 13:32:54.210908+01
17	auth	0011_update_proxy_permissions	2022-03-14 13:32:54.21789+01
18	auth	0012_alter_user_first_name_max_length	2022-03-14 13:32:54.223873+01
19	django_command_debug	0001_initial	2022-03-14 13:32:54.251799+01
20	django_command_debug	0002_auto_20211024_0944	2022-03-14 13:32:54.282715+01
21	sessions	0001_initial	2022-03-14 13:32:54.298674+01
22	django_command_debug	0002_alter_config_id_alter_message_id	2022-09-01 10:31:17.72528+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
digodfnarvu56r6ha537pm9zabay5wgh	.eJxVjMEOwiAQRP-FsyFsl1rw6L3fQJZdlKqhSWlPxn-XJj3oHN-8mbcKtK05bDUtYRJ1UaBOvywSP1PZC3lQuc-a57IuU9S7oo-26nGW9Loe7t9Bpprb2oIZuh4FnL2hExxi6sC1GEZDLolntr4xYYYeUIwHQRIgi2drjPp8AbxzNvo:1nTjzI:fZKYiuVR-s7dmm-rCt2CdpxuGJXOHyrFyocAUkaXGbA	2022-03-28 14:39:48.426963+02
98bztmycfr9d7szm2ms7uw3dywecfkoh	.eJxVjMsOwiAQRf-FtSEMT3Hpvt9AGBikaiAp7cr479qkC93ec859sRC3tYZt0BLmzC5MstPvhjE9qO0g32O7dZ56W5cZ-a7wgw4-9UzP6-H-HdQ46rdGC5JKEUo5JyBqbzxZrRUKMh51AZAiCwfSW28t2uTIgXcJziWRKYm9P7uNNx8:1nVFrP:V2T3KYmBiR0BDunlNmtShgWBtc6KBRNxj0tg6ymqGDQ	2022-04-01 18:53:55.303208+02
0vztgy5p3pbxm0ro2t7l5embfxl1ii3g	.eJxVjMsOwiAQRf-FtSEMT3Hpvt9AGBikaiAp7cr479qkC93ec859sRC3tYZt0BLmzC5MstPvhjE9qO0g32O7dZ56W5cZ-a7wgw4-9UzP6-H-HdQ46rdGC5JKEUo5JyBqbzxZrRUKMh51AZAiCwfSW28t2uTIgXcJziWRKYm9P7uNNx8:1nVFsO:-uJ2IWORkD7HCnONOpT07VCD5hvrsK96_CzonWf245I	2022-04-01 18:54:56.54212+02
zpau19u7355foylj4gyv2jfqmknpiu9i	.eJxVjMEOwiAQRP-FsyFsl1rw6L3fQJZdlKqhSWlPxn-XJj3oHN-8mbcKtK05bDUtYRJ1UaBOvywSP1PZC3lQuc-a57IuU9S7oo-26nGW9Loe7t9Bpprb2oIZuh4FnL2hExxi6sC1GEZDLolntr4xYYYeUIwHQRIgi2drjPp8AbxzNvo:1oTIWc:GXq2zI1adbP3alq04uNKVxEBz89rjujocHdakt6hZx0	2022-09-14 09:52:38.866573+02
556pnd5ira0i6wzy9ricuqq46u1lqkkr	.eJxVjMEOwiAQRP-FsyFsl1rw6L3fQJZdlKqhSWlPxn-XJj3oHN-8mbcKtK05bDUtYRJ1UaBOvywSP1PZC3lQuc-a57IuU9S7oo-26nGW9Loe7t9Bpprb2oIZuh4FnL2hExxi6sC1GEZDLolntr4xYYYeUIwHQRIgi2drjPp8AbxzNvo:1oTO5f:kA2gVDQWM0hR6ZxHq0U4fBnSZXRh-XuA8nErIw0ZZIw	2022-09-14 15:49:11.025534+02
e036kvyb92nwehru8h8ly0xkcwxa21u5	.eJxVjMEOwiAQBf-FsyFA6QIevfcbyAKLVA0kpT0Z_9026UGvM_Pem3nc1uK3ToufE7syyS6_LGB8Uj1EemC9Nx5bXZc58CPhp-18aolet7P9OyjYy742SFKrwQCByVKNSBlJZQtEWjpINiiEMFrtbBoMSYcgzE5siALFkNjnC-bHOAs:1qYO8B:gpW9ZjFX8WTxP5E1CmG-nsoF_FnqdpPAyUGREo0tmpQ	2023-09-05 11:56:59.387226+02
o6mtcxnejx8v0oeqp7sgma8vuw4hz4bx	.eJxVjEEOwiAQRe_C2pBSKENduvcMZKYzSNVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uzsur0uxFODyk74DuWW9VTLesyk94VfdCmr5XleTncv4OMLX_r3kAIkwGShCLkje38SASdQ5vS4AWw50E4JR4BgCwz9cE78EGMc6TeH_uSOHg:1qZEEM:kfteS0WTtF344QN-qMgTFu4_wt1h8xRHsH2bMOiHHP0	2023-09-07 19:34:50.265205+02
a7lm7lhyqsxm1omzpaoue9bn4lygcsrc	.eJxVjMEOwiAQRP-FsyEUWRCP3vsNZJddpGrapLQn47_bJj3oZQ7z3sxbJVyXmtYmcxpYXZVTp9-OMD9l3AE_cLxPOk_jMg-kd0UftOl-YnndDvfvoGKr27qQcUKlGCIvEgM5tAUAyHGB4IrNDIyhY4HIhgPnzvtoYUu8nEXU5wshiDj_:1qflTj:4V-1dg_ABqMd6omdJo0AOj7FuPEa0YuylYBU1lF9svw	2023-09-25 20:17:43.101424+02
3f1ctjolggfdwacv8j83bz2dp4nmque1	.eJxVjMsOwiAQRf-FtSE8BmRcuu83EOgMUjU0Ke3K-O_apAvd3nPOfYmYtrXGrfMSJxIXAeL0u-U0PrjtgO6p3WY5zm1dpix3RR60y2Emfl4P9--gpl6_dTk7iyoolXS2oNmzRwNsFZADLMU4b0tO3gUE1kFTUVgUGDCMjpDE-wO6mjb2:1qhRlF:b1ZYIe90QL38P5JdFIN-2yNa7I8HBw9RcKCS1fq-9CI	2023-09-30 11:38:45.443902+02
udvlwnk8sausf4o50l6hy4evjq6yxlwv	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJidjhzNmgtMjMzNmU5ZTE1NjY2ZGJlMGNiOWEyZmFhMmM4NGEwYjMifQ:1qlqaB:qVfI67OhPlDI5_2B1W-Ht42vzQYnmJ5308O2hiF0fe0	2023-10-12 14:57:31.546984+02
adfwanvcux5jagnl7t8p2574m3hg3e6j	e30:1qc67C:tXIMPEW7VX15Gg3Bawb3PbS8o9I1Dzl0cOKNIjZ56nY	2023-09-15 17:31:18.543585+02
\.


--
-- Name: app_data_off_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_data_off_category_id_seq', 34, true);


--
-- Name: app_data_off_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_data_off_product_id_seq', 2407, true);


--
-- Name: app_data_off_userproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.app_data_off_userproduct_id_seq', 9, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_command_debug_config_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_command_debug_config_id_seq', 1, true);


--
-- Name: django_command_debug_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_command_debug_message_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: app_data_off_category app_data_off_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_category
    ADD CONSTRAINT app_data_off_category_pkey PRIMARY KEY (id);


--
-- Name: app_data_off_product app_data_off_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_product
    ADD CONSTRAINT app_data_off_product_pkey PRIMARY KEY (id);


--
-- Name: app_data_off_userproduct app_data_off_userproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_userproduct
    ADD CONSTRAINT app_data_off_userproduct_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_command_debug_config django_command_debug_config_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_command_debug_config
    ADD CONSTRAINT django_command_debug_config_name_key UNIQUE (name);


--
-- Name: django_command_debug_config django_command_debug_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_command_debug_config
    ADD CONSTRAINT django_command_debug_config_pkey PRIMARY KEY (id);


--
-- Name: django_command_debug_message django_command_debug_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_command_debug_message
    ADD CONSTRAINT django_command_debug_message_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: app_data_off_product_category_id_11d9c71d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_data_off_product_category_id_11d9c71d ON public.app_data_off_product USING btree (category_id);


--
-- Name: app_data_off_userproduct_product_id_b9629778; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_data_off_userproduct_product_id_b9629778 ON public.app_data_off_userproduct USING btree (product_id);


--
-- Name: app_data_off_userproduct_user_id_2a85606e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX app_data_off_userproduct_user_id_2a85606e ON public.app_data_off_userproduct USING btree (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_comm_app_89a284_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comm_app_89a284_idx ON public.django_command_debug_message USING btree (app);


--
-- Name: django_comm_app_b40757_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comm_app_b40757_idx ON public.django_command_debug_config USING btree (app);


--
-- Name: django_comm_created_8068c1_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comm_created_8068c1_idx ON public.django_command_debug_message USING btree (created_at DESC);


--
-- Name: django_comm_name_75f1c1_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comm_name_75f1c1_idx ON public.django_command_debug_config USING btree (name);


--
-- Name: django_comm_name_c83350_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_comm_name_c83350_idx ON public.django_command_debug_message USING btree (name);


--
-- Name: django_command_debug_config_name_9d2f1e46_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_command_debug_config_name_9d2f1e46_like ON public.django_command_debug_config USING btree (name text_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: app_data_off_product app_data_off_product_category_id_11d9c71d_fk_app_data_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_product
    ADD CONSTRAINT app_data_off_product_category_id_11d9c71d_fk_app_data_ FOREIGN KEY (category_id) REFERENCES public.app_data_off_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_data_off_userproduct app_data_off_userpro_product_id_b9629778_fk_app_data_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_userproduct
    ADD CONSTRAINT app_data_off_userpro_product_id_b9629778_fk_app_data_ FOREIGN KEY (product_id) REFERENCES public.app_data_off_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_data_off_userproduct app_data_off_userproduct_user_id_2a85606e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.app_data_off_userproduct
    ADD CONSTRAINT app_data_off_userproduct_user_id_2a85606e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

