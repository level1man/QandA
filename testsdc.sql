--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: answerstest; Type: TABLE; Schema: public; Owner: mingwen
--

CREATE TABLE public.answerstest (
    id integer NOT NULL,
    question_id integer NOT NULL,
    body character varying(1000),
    date_written date,
    answerer_name character varying(60),
    answerer_email character varying(100),
    reported boolean,
    helpful integer
);


ALTER TABLE public.answerstest OWNER TO mingwen;

--
-- Name: answerstest_id_seq; Type: SEQUENCE; Schema: public; Owner: mingwen
--

CREATE SEQUENCE public.answerstest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answerstest_id_seq OWNER TO mingwen;

--
-- Name: answerstest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mingwen
--

ALTER SEQUENCE public.answerstest_id_seq OWNED BY public.answerstest.id;


--
-- Name: questionstest; Type: TABLE; Schema: public; Owner: mingwen
--

CREATE TABLE public.questionstest (
    id integer NOT NULL,
    product_id integer NOT NULL,
    body character varying(1000),
    date_written date,
    asker_name character varying(60),
    asker_email character varying(100),
    reported boolean,
    helpful integer
);


ALTER TABLE public.questionstest OWNER TO mingwen;

--
-- Name: questionstest_id_seq; Type: SEQUENCE; Schema: public; Owner: mingwen
--

CREATE SEQUENCE public.questionstest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questionstest_id_seq OWNER TO mingwen;

--
-- Name: questionstest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mingwen
--

ALTER SEQUENCE public.questionstest_id_seq OWNED BY public.questionstest.id;


--
-- Name: answerstest id; Type: DEFAULT; Schema: public; Owner: mingwen
--

ALTER TABLE ONLY public.answerstest ALTER COLUMN id SET DEFAULT nextval('public.answerstest_id_seq'::regclass);


--
-- Name: questionstest id; Type: DEFAULT; Schema: public; Owner: mingwen
--

ALTER TABLE ONLY public.questionstest ALTER COLUMN id SET DEFAULT nextval('public.questionstest_id_seq'::regclass);


--
-- Data for Name: answerstest; Type: TABLE DATA; Schema: public; Owner: mingwen
--

COPY public.answerstest (id, question_id, body, date_written, answerer_name, answerer_email, reported, helpful) FROM stdin;
1	36	Supposedly suede, but I think its synthetic	2018-01-17	sillyguy	first.last@gmail.com	f	1
2	13	Some kind of recycled rubber, works great!	2019-03-18	marcanthony	first.last@gmail.com	f	2
3	23	Some kind of recycled rubber, works great!	2018-03-18	iluvdogz	first.last@gmail.com	f	3
4	26	No	2018-08-08	Seller	first.last@gmail.com	f	4
5	1	Something pretty soft but I can't be sure	2018-01-04	metslover	first.last@gmail.com	f	5
6	28	I wouldn't machine wash it	2019-01-17	warmkid	first.last@cbs.com	t	6
7	1	Its the best! Seriously magic fabric	2018-01-04	metslover	first.last@gmail.com	f	7
8	1	DONT BUY IT! It's bad for the environment	2018-01-04	metslover	first.last@gmail.com	f	8
9	28	Only if you want to ruin it!	2019-01-17	warmkid	first.last@cbs.com	t	9
10	34	I've thrown it in the wash and it seems fine	2017-01-04	skilover	first.last@cbs.com	f	1
11	34	It says not to	2017-01-04	skilover	first.last@cbs.com	f	2
12	34	Yes	2017-01-04	skilover	first.last@cbs.com	f	3
13	36	Something pretty soft but I can't be sure	2018-01-17	sillyguy	first.last@gmail.com	f	4
14	29	Something pretty soft but I can't be sure	2018-01-08	superman	first.last@gmail.com	f	5
15	36	Its the best! Seriously magic fabric	2018-01-17	sillyguy	first.last@gmail.com	f	6
16	13	Rubber	2019-03-18	Seller	first.last@gmail.com	f	7
17	14	China	2018-08-04	Seller	first.last@gmail.com	f	8
18	17	Runs small, I'd say	2018-01-12	warmkid	first.last@gmail.com	f	9
19	18	I wouldn't machine wash it	2018-08-06	dschulman	first.last@gmail.com	f	1
20	18	Only if you want to ruin it!	2018-08-06	dschulman	first.last@gmail.com	f	2
21	18	I've thrown it in the wash and it seems fine	2018-08-06	dschulman	first.last@gmail.com	f	3
22	18	It says not to	2018-08-06	dschulman	first.last@gmail.com	f	4
23	11	It ships from the facility in Tulsa	2018-01-06	dschulman	first.last@gmail.com	f	25
24	21	No?	2019-06-12	dschulman	first.last@gmail.com	f	6
25	22	Its made from sustainable parts and manufactured in a green facility	2018-10-04	marcanthony	first.last@gmail.com	f	17
26	23	Rubber	2018-03-18	iluvdogz	first.last@gmail.com	f	8
27	35	Canada	2018-08-06	footballfan	first.last@gmail.com	f	9
28	36	Suede	2018-01-17	sillyguy	first.last@gmail.com	f	0
29	23	Its a rubber sole	2018-03-18	iluvbirds	first.last@gmail.com	f	1
30	2	Its a rubber sole	2019-06-28	dschulman	first.last@gmail.com	f	2
31	11	Mine was delivered from Oklahoma	2018-01-06	dschulman	first.last@gmail.com	f	23
32	7	Michigan	2018-01-24	iluvbirds	first.last@gmail.com	f	4
33	12	It fit fine for me	2018-01-17	iluvbirds	first.last@gmail.com	f	5
34	12	Felt a little smaller than my usual size.	2018-12-17	iluvbirds	first.last@gmail.com	f	6
35	13	Its a rubber sole	2019-03-18	marcanthony	first.last@gmail.com	f	7
36	7	Made locally!	2018-11-24	Seller	first.last@gmail.com	f	8
37	28	It says not to	2019-11-17	warmkid	first.last@cbs.com	t	9
38	32	The rubber on the bottom wears thin quickly	2018-10-12	iluvbirds	first.last@gmail.com	f	4
39	32	Rubber	2018-10-12	iluvbirds	first.last@gmail.com	f	1
40	33	This product is overstocked here!	2017-09-12	toofast	first.last@gmail.com	f	2
41	48	I've had mine for months and still holdign up great!	2018-10-12	n00bgamer	first.last@gmail.com	f	3
42	49	It runs pretty wide on me	2018-09-04	dschulman	first.last@gmail.com	f	4
43	34	I wouldn't machine wash it	2017-11-04	skilover	first.last@cbs.com	f	5
44	18	Yes	2018-09-06	dschulman	first.last@gmail.com	f	6
45	8	Its made from sustainable parts and manufactured in a green facility	2018-09-12	warmkid	first.last@gmail.com	t	7
46	5	I've thrown it in the wash and it seems fine	2018-02-08	marcanthony	first.last@gmail.com	f	8
47	13	The rubber on the bottom wears thin quickly	2019-02-18	marcanthony	first.last@gmail.com	f	9
48	8	Its Green Circle Certified!	2018-09-12	Seller	first.last@gmail.com	t	0
49	9	Yes	2019-11-24	n00bgamer	first.last@gmail.com	f	3
50	44	Something pretty soft but I can't be sure	2018-02-12	mrmrs	first.last@gmail.com	f	0
51	46	I've thrown it in the wash and it seems fine	2018-10-24	marcanthony	first.last@aol.com	f	1
52	46	It says not to	2018-10-24	marcanthony	first.last@aol.com	f	12
53	46	Yes	2018-10-24	ceasar	first.last@aol.com	f	3
54	47	We are selling it here without any markup from the middleman!	2018-11-08	Seller	null	f	4
55	34	Only if you want to ruin it!	2017-11-04	skilover	first.last@cbs.com	f	5
56	23	The rubber on the bottom wears thin quickly	2018-02-18	iluvdogz	first.last@gmail.com	f	46
57	1	Suede	2018-11-04	metslover	first.last@gmail.com	f	7
58	50	Its a rubber sole	2019-11-28	n00bgamer	first.last@gmail.com	f	8
59	50	Some kind of recycled rubber, works great!	2019-11-28	n00bgamer	first.last@gmail.com	f	9
60	50	The rubber on the bottom wears thin quickly	2019-11-28	n00bgamer	first.last@gmail.com	f	7
61	44	Its the best! Seriously magic fabric	2018-03-12	mrmrs	first.last@gmail.com	f	1
62	24	Mine was delivered from Oklahoma	2017-11-04	toofast	first.last@gmail.com	f	14
63	28	I've thrown it in the wash and it seems fine	2019-11-17	warmkid	first.last@cbs.com	t	0
64	5	It says not to	2018-03-08	ceasar	first.last@gmail.com	f	0
65	4	It runs small	2019-11-17	dschulman	first.last@gmail.com	f	1
66	44	Supposedly suede, but I think its synthetic	2018-03-12	mrmrs	first.last@gmail.com	f	2
67	28	Yes	2019-11-17	warmkid	first.last@cbs.com	t	3
68	37	We are selling it here without any markup from the middleman!	2018-08-18	Seller	null	f	4
69	52	Mine started showing wear a weeks in	2019-11-28	sillyguy	first.last@gmail.com	f	5
70	38	Some of the seams started splitting the first time I wore it!	2019-11-28	sillyguy	first.last@gmail.com	f	6
71	39	Runs small, I'd say	2018-06-04	smithsmith	first.last@gmail.com	f	7
72	29	Suede	2018-11-08	Seller	first.last@gmail.com	f	8
73	24	It ships from the facility in Tulsa	2017-11-04	toofast	first.last@gmail.com	f	19
74	25	Taiwan	2018-09-12	thegrimreaker	first.last@gmail.com	f	0
75	2	The rubber on the bottom wears thin quickly	2019-06-28	dschulman	first.last@gmail.com	f	2
76	50	Rubber	2019-11-28	n00bgamer	first.last@gmail.com	f	7
77	51	USA	2019-06-04	sillyguy	first.last@gmail.com	t	44
78	38	9 lives	2019-11-12	iluvdogz	first.last@gmail.com	f	31
79	54	Supposedly suede, but I think its synthetic	2019-10-12	n00bgamer	first.last@gmail.com	f	4
80	40	We are selling it here without any markup from the middleman!	2018-11-08	Seller	null	f	2
81	41	Suede	2019-09-18	warmkid	first.last@gmail.com	f	0
82	41	Something pretty soft but I can't be sure	2019-09-18	warmkid	first.last@gmail.com	f	1
83	46	I wouldn't machine wash it	2018-10-24	ceasar	first.last@aol.com	f	2
84	2	Rubber	2019-06-28	dschulman	first.last@gmail.com	f	3
85	29	Its the best! Seriously magic fabric	2018-11-08	superman	first.last@gmail.com	f	4
86	29	Supposedly suede, but I think its synthetic	2018-12-08	superman	first.last@gmail.com	f	5
87	32	Its a rubber sole	2018-10-12	iluvdogz	first.last@gmail.com	f	6
88	32	Some kind of recycled rubber, works great!	2018-10-12	iluvdogz	first.last@gmail.com	f	7
89	4	Showing no wear after a few months!	2019-09-06	sillyguy	first.last@gmail.com	f	8
90	44	Suede	2018-03-12	mrmrs	first.last@gmail.com	f	9
91	45	Manufactured in Mexico City	2019-12-12	Seller	first.last@aol.com	f	4
92	5	Haha, are you serious?	2018-03-08	ceasar	first.last@gmail.com	t	0
93	41	Its the best! Seriously magic fabric	2019-09-18	warmkid	first.last@gmail.com	f	1
94	41	Supposedly suede, but I think its synthetic	2019-09-18	warmkid	first.last@gmail.com	f	2
95	1	Supposedly suede, but I think its synthetic	2018-12-04	metslover	first.last@gmail.com	f	3
96	5	I wouldn't machine wash it	2018-03-08	ceasar	first.last@gmail.com	f	0
97	53	China	2018-03-28	sillyguy	first.last@gmail.com	f	11
98	54	Suede	2019-10-12	n00bgamer	first.last@gmail.com	f	2
99	54	Something pretty soft but I can't be sure	2019-10-12	n00bgamer	first.last@gmail.com	f	3
100	54	Its the best! Seriously magic fabric	2019-10-12	n00bgamer	first.last@gmail.com	f	4
101	29	Is this for Sharks?	2021-03-16	babyshark	babyshark@gmail.com	t	2
\.


--
-- Data for Name: questionstest; Type: TABLE DATA; Schema: public; Owner: mingwen
--

COPY public.questionstest (id, product_id, body, date_written, asker_name, asker_email, reported, helpful) FROM stdin;
1	1	What fabric is the top made of?	2018-01-04	yankeelover	first.last@gmail.com	f	1
2	1	HEY THIS IS A WEIRD QUESTION!!!!?	2019-04-28	jbilas	first.last@gmail.com	t	4
3	1	Does this product run big or small?	2019-01-17	jbilas	first.last@gmail.com	f	8
4	1	How long does it last?	2019-07-06	funnygirl	first.last@gmail.com	f	6
5	1	Can I wash it?	2018-02-08	cleopatra	first.last@gmail.com	f	7
6	1	Is it noise cancelling?	2018-08-12	coolkid	first.last@gmail.com	t	19
7	2	Where is this product made?	2018-01-24	iluvcatz	first.last@gmail.com	f	0
8	2	Is this product sustainable?	2018-07-12	coolkid	first.last@gmail.com	t	5
9	2	I'm allergic to dye #17, does this product contain any?	2019-01-24	l33tgamer	first.last@gmail.com	f	6
10	2	Why is this product cheaper here than other sites?	2018-04-24	toofast	first.last@gmail.com	f	5
11	2	Where does this product ship from?	2018-01-06	jbilas	first.last@gmail.com	f	24
12	2	Does this product run big or small?	2018-11-17	iluvcatz	first.last@gmail.com	f	2
13	2	What fabric is the bottom made of?	2019-02-18	cleopatra	first.last@gmail.com	f	7
14	2	Where is this product made?	2018-10-04	jbilas	first.last@gmail.com	f	4
15	2	What fabric is the side made of?	2018-11-12	funnygirl	first.last@gmail.com	f	1
16	3	How long does it last?	2018-08-24	funnygirl	first.last@gmail.com	f	0
17	3	Does this product run big or small?	2018-11-12	coolkid	first.last@gmail.com	f	8
18	3	Can I wash it?	2018-07-06	jbilas	first.last@gmail.com	f	5
19	3	Why is this product cheaper here than other sites?	2018-11-28	jbilas	first.last@gmail.com	f	6
20	3	What fabric is the front made of?	2018-11-08	internethistorian	first.last@gmail.com	f	1
21	3	Is it noise cancelling?	2019-04-12	jbilas	first.last@gmail.com	t	4
22	3	Is this product sustainable?	2018-09-04	cleopatra	first.last@gmail.com	f	12
23	3	What fabric is the bottom made of?	2018-02-18	iluvcatz	first.last@gmail.com	f	6
24	3	Where does this product ship from?	2017-11-04	toofast	first.last@gmail.com	f	17
25	3	Where is this product made?	2018-08-12	thegrimreaker	first.last@gmail.com	f	9
26	3	I'm allergic to dye #17, does this product contain any?	2018-10-08	rhcp81	first.last@gmail.com	f	0
27	3	What fabric is the back made of?	2018-04-12	wildchild	first.last@gmail.com	f	5
28	3	Can I wash it?	2019-11-17	coolkid	first.last@cbs.com	t	6
29	3	What fabric is the top made of?	2018-11-08	wonderwoman	first.last@gmail.com	f	5
30	3	Why is this product cheaper here than other sites?	2018-07-28	l33tgamer	first.last@gmail.com	f	4
31	4	Where is this product made?	2017-02-06	cleopatra	first.last@gmail.com	f	2
32	4	What fabric is the bottom made of?	2018-09-12	iluvcatz	first.last@gmail.com	f	7
33	4	Why is this product cheaper here than other sites?	2017-08-12	toofast	first.last@gmail.com	f	4
34	5	Can I wash it?	2017-01-04	luaulover	first.last@cbs.com	f	1
35	5	Where is this product made?	2018-07-06	bballfan	first.last@gmail.com	f	0
36	5	What fabric is the top made of?	2018-06-17	funnygirl	first.last@gmail.com	f	1
37	5	Why is this product cheaper here than other sites?	2018-10-18	willsmith	first.last@gmail.com	f	4
38	5	How long does it last?	2019-06-28	funnygirl	first.last@gmail.com	f	2
39	6	Does this product run big or small?	2018-04-04	smithsmith	first.last@gmail.com	f	6
40	6	Why is this product cheaper here than other sites?	2018-06-08	toofast	first.last@gmail.com	f	7
41	7	What fabric is the top made of?	2019-08-18	coolkid	first.last@gmail.com	f	9
42	7	How long does it last?	2018-06-17	jbilas	first.last@gmail.com	t	0
43	7	Why is this product cheaper here than other sites?	2019-02-04	l33tgamer	first.last@gmail.com	f	5
44	8	What fabric is the top made of?	2018-02-12	mrmrs	first.last@gmail.com	f	6
45	8	Where is this product made?	2019-06-12	iluvcatz	first.last@aol.com	f	5
46	8	Can I wash it?	2018-09-24	cleopatra	first.last@aol.com	f	4
47	8	Why is this product cheaper here than other sites?	2019-04-04	h@ckerwhiz	first.last@cbs.com	f	2
48	8	How long does it last?	2018-09-12	l33tgamer	first.last@gmail.com	f	7
49	8	Does this product run big or small?	2018-08-04	jbilas	first.last@gmail.com	f	4
50	9	What fabric is the bottom made of?	2019-06-28	l33tgamer	first.last@gmail.com	f	1
51	9	Where is this product made?	2019-04-04	funnygirl	first.last@gmail.com	t	40
52	10	HI GUYS?	2019-01-12	iluvcatz	first.last@gmail.com	t	0
53	10	Where is this product made?	2018-02-28	funnygirl	first.last@gmail.com	f	15
54	10	What fabric is the top made of?	2019-09-12	l33tgamer	first.last@gmail.com	f	6
55	12	Earum sunt nisi earum voluptatem rerum.	2019-02-14	Briana28	Esteban4@gmail.com	f	11
56	12	Maiores velit repellat deserunt pariatur aut et.	2018-11-27	Wava5	Earline18@yahoo.com	f	26
57	12	Minima veniam voluptas.	2019-04-28	Gia.Macejkovic14	Kaylie_Pagac48@hotmail.com	f	11
58	12	Consequatur saepe consequatur architecto rerum facilis non.	2018-08-11	Israel.Williamson23	Mariah95@hotmail.com	f	29
59	14	Tenetur aut vitae ex provident enim quo unde blanditiis.	2019-01-27	Wilton.Lakin60	Laney89@yahoo.com	f	2
60	14	Exercitationem autem vero ducimus blanditiis corrupti distinctio.	2019-01-30	Melany92	Haven.Considine@hotmail.com	f	21
61	14	Illum rerum voluptatem ullam voluptates.	2019-01-14	Manuel.Miller	Wellington_Koch@gmail.com	f	27
62	14	Dolor veritatis dolorum in aut voluptatem et velit accusantium assumenda.	2019-07-12	Amani.Hayes	Kiley_Dibbert@gmail.com	f	5
63	14	Sit labore reprehenderit saepe labore deleniti.	2018-09-03	Verner24	Stefanie_Veum72@yahoo.com	f	0
64	14	Laboriosam sapiente qui corrupti iusto aut et.	2018-11-02	Wilma.Schultz	Vella55@gmail.com	f	15
65	15	Quas rerum sapiente illo aperiam quisquam.	2019-03-31	Ashly47	Marlin7@gmail.com	f	25
66	15	Aperiam dignissimos ipsa quam at.	2019-02-03	Vernice96	Russell.Hettinger63@yahoo.com	f	10
67	15	Minima est reiciendis.	2018-09-22	Rosalind.Stanton80	Narciso.Murphy66@yahoo.com	f	24
68	16	Id velit sint quaerat voluptatum enim.	2018-10-14	Theresa_Raynor	Rosina.Rolfson@yahoo.com	f	9
69	16	Fugiat aut ducimus dolore voluptatem dolorem officia repellendus earum consectetur.	2018-08-23	Benny.Wehner	Jacquelyn_Krajcik@yahoo.com	f	8
70	16	Similique quas quae nobis et eius libero aut.	2018-09-23	Rhoda97	Hoyt_Bradtke@yahoo.com	f	22
71	16	Sapiente aut veritatis voluptatem error in facilis id tenetur.	2018-07-30	Beatrice.Wintheiser	Clovis94@hotmail.com	f	21
72	17	Beatae id qui.	2018-08-13	Virgie81	Abigail_Bins@gmail.com	f	8
73	17	Unde est aut nobis.	2019-05-24	Joelle.Prosacco	Guillermo62@hotmail.com	f	26
74	18	Quibusdam id quas sint aperiam repudiandae officia pariatur et.	2019-06-20	Moshe.Mann	Millie.Murray@gmail.com	f	24
75	19	Esse eligendi nobis neque consequatur.	2018-12-11	Austyn_Robel56	Chanel71@yahoo.com	f	27
76	19	Dicta laborum velit.	2018-11-01	Arlo.Denesik79	Monserrate_Harris@gmail.com	f	27
77	20	Magnam voluptates adipisci at non at non ullam.	2018-08-03	Louie_Ryan	Letha51@yahoo.com	f	23
78	20	Et sint dolor laborum et eius consequatur ducimus facilis iusto.	2019-05-30	Sydnee_Hartmann34	Cordell75@yahoo.com	f	28
79	21	Perspiciatis eum molestiae qui doloribus.	2018-10-18	Randi.Zboncak65	Cassandra10@yahoo.com	t	26
80	22	Mollitia eius eum.	2019-02-10	Jordon13	Piper55@hotmail.com	f	1
81	23	Dicta et veritatis maxime velit accusantium voluptatem odio ea velit.	2019-07-01	Jacynthe_Block	Muriel.Nikolaus@yahoo.com	f	28
82	23	Et totam placeat illum rerum.	2018-08-02	Lura5	Letha92@hotmail.com	t	28
83	24	Alias sit odio qui ullam iure nemo quia qui ut.	2019-07-21	Henry_Larkin32	Tressa_Kirlin@yahoo.com	f	16
84	24	Assumenda mollitia modi laboriosam assumenda.	2019-02-14	Otho82	Porter11@yahoo.com	f	9
85	24	Veritatis minus autem.	2019-03-07	Osbaldo94	Camilla_Kling8@gmail.com	f	16
86	25	Sint magnam rem suscipit consectetur suscipit.	2019-01-27	Mozelle89	Brianne.Becker67@hotmail.com	f	25
87	25	Eum enim voluptates unde aliquam reprehenderit corporis nihil.	2019-07-11	Santos19	Dameon66@yahoo.com	f	24
88	25	Aliquam hic magni molestiae sit ipsum quibusdam sed maxime magnam.	2018-12-28	Zelma_Gleason36	Pat.Wyman@yahoo.com	f	13
89	25	Omnis nisi eligendi enim eveniet.	2018-08-31	Clara.Koss93	Savannah_Carter@hotmail.com	f	6
90	25	Ipsum minima dolores impedit.	2019-04-20	Norberto.Murazik32	Fausto84@hotmail.com	f	23
91	25	Nesciunt a tempore quas sunt.	2019-04-11	Janiya76	Isabelle.Treutel57@hotmail.com	f	9
92	26	Libero quia necessitatibus nobis mollitia quia.	2018-12-22	Rozella_Wisoky9	Colten.Pagac87@hotmail.com	f	13
93	26	Incidunt impedit iure sint non animi.	2018-12-26	Michael1	Preston.Kemmer88@gmail.com	f	19
94	27	Quam et et voluptatem sed magni repellendus laboriosam perferendis sit.	2018-10-15	Emely4	Kristy_Simonis@gmail.com	f	17
95	27	Provident iusto laborum.	2019-03-02	Clifton5	Owen_Monahan@yahoo.com	f	13
96	27	Aut incidunt vero quo illo veniam.	2018-10-02	Kyle.Considine	Ruthie.Lemke@gmail.com	f	15
97	28	Ex placeat sit illum reiciendis consequatur hic nam vel id.	2019-03-12	Nellie_Bechtelar	Beverly80@yahoo.com	f	9
98	28	Nisi esse reprehenderit in.	2018-09-15	Amani8	Dianna.Reinger17@hotmail.com	f	22
99	29	Error nihil delectus tempora dolores asperiores.	2019-04-14	Taryn.Lebsack24	Avery.Gerhold34@gmail.com	f	5
101	29	Is this for Sharks?	2021-03-16	babyshark	babyshark@gmail.com	t	2
\.


--
-- Name: answerstest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mingwen
--

SELECT pg_catalog.setval('public.answerstest_id_seq', 101, true);


--
-- Name: questionstest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mingwen
--

SELECT pg_catalog.setval('public.questionstest_id_seq', 101, true);


--
-- Name: answerstest answerstest_pkey; Type: CONSTRAINT; Schema: public; Owner: mingwen
--

ALTER TABLE ONLY public.answerstest
    ADD CONSTRAINT answerstest_pkey PRIMARY KEY (id);


--
-- Name: questionstest questionstest_pkey; Type: CONSTRAINT; Schema: public; Owner: mingwen
--

ALTER TABLE ONLY public.questionstest
    ADD CONSTRAINT questionstest_pkey PRIMARY KEY (id);


--
-- Name: answerstest fk_question_answer; Type: FK CONSTRAINT; Schema: public; Owner: mingwen
--

ALTER TABLE ONLY public.answerstest
    ADD CONSTRAINT fk_question_answer FOREIGN KEY (question_id) REFERENCES public.questionstest(id);


--
-- PostgreSQL database dump complete
--

