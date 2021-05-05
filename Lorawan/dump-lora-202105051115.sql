--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-1.pgdg18.04+1)
-- Dumped by pg_dump version 12.5

-- Started on 2021-05-05 11:15:47

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
-- TOC entry 232 (class 1259 OID 25476)
-- Name: iotBS; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotBS" (
    "BSID" integer NOT NULL,
    "macAddress" text,
    "Name" text,
    "Address" text,
    "Comment" text,
    "VegaBSID" integer NOT NULL,
    "Latitude" double precision,
    "Longitude" double precision
);


ALTER TABLE public."iotBS" OWNER TO admin;

--
-- TOC entry 231 (class 1259 OID 25474)
-- Name: iotBS_BSID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotBS" ALTER COLUMN "BSID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotBS_BSID_seq"
    START WITH 4
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 271 (class 1259 OID 33632)
-- Name: iotCalendar; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotCalendar" (
    "CalendarDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."iotCalendar" OWNER TO admin;

--
-- TOC entry 234 (class 1259 OID 25486)
-- Name: iotCompany; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotCompany" (
    "CompanyID" integer NOT NULL,
    "Name" text
);


ALTER TABLE public."iotCompany" OWNER TO admin;

--
-- TOC entry 233 (class 1259 OID 25484)
-- Name: iotCompany_CompanyID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotCompany" ALTER COLUMN "CompanyID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotCompany_CompanyID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 253 (class 1259 OID 25627)
-- Name: iotDevice; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotDevice" (
    "DeviceID" bigint NOT NULL,
    "DevEUI" text,
    "AppKey" text,
    "Comment" text,
    "DeviceTypeID" integer,
    "ObjectID" integer,
    "RoomID" integer,
    "CompanyID" integer,
    "DeviceClassID" integer NOT NULL,
    "VegaDeviceID" bigint NOT NULL,
    "UserID" integer NOT NULL,
    "RecordDate" timestamp without time zone NOT NULL,
    "RecordStatusID" integer NOT NULL,
    "CalibrationValue" double precision NOT NULL,
    "DailyStatusID" integer DEFAULT 0 NOT NULL,
    "SerialNumber" text
);


ALTER TABLE public."iotDevice" OWNER TO admin;

--
-- TOC entry 236 (class 1259 OID 25496)
-- Name: iotDeviceType; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotDeviceType" (
    "DeviceTypeID" integer NOT NULL,
    "Name" text,
    "ShortName" text,
    "Manufacturer" text,
    "Producer" text,
    "MainMeasureTypeID" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."iotDeviceType" OWNER TO admin;

--
-- TOC entry 235 (class 1259 OID 25494)
-- Name: iotDeviceType_DeviceTypeID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotDeviceType" ALTER COLUMN "DeviceTypeID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotDeviceType_DeviceTypeID_seq"
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 252 (class 1259 OID 25625)
-- Name: iotDevice_DeviceID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotDevice" ALTER COLUMN "DeviceID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotDevice_DeviceID_seq"
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 273 (class 1259 OID 41432)
-- Name: iotMeasureFact; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotMeasureFact" (
    "MeasureFactID" bigint NOT NULL,
    "MeasureTypeID" integer NOT NULL,
    "ModuleDateTime" timestamp without time zone NOT NULL,
    "ArchiveDateTime" timestamp without time zone NOT NULL,
    "Value" double precision NOT NULL,
    "MessageID" bigint NOT NULL
);


ALTER TABLE public."iotMeasureFact" OWNER TO admin;

--
-- TOC entry 282 (class 1259 OID 41934)
-- Name: iotMeasureFactDaily; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotMeasureFactDaily" (
    "MeasureFactDailyID" bigint NOT NULL,
    "MeasureTypeID" integer NOT NULL,
    "DeviceID" bigint NOT NULL,
    "FactDateTime" timestamp without time zone NOT NULL,
    "Value" double precision NOT NULL,
    "DailyFactStatusID" bigint
);


ALTER TABLE public."iotMeasureFactDaily" OWNER TO admin;

--
-- TOC entry 281 (class 1259 OID 41932)
-- Name: iotMeasureFactDaily_MeasureFactDailyID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotMeasureFactDaily" ALTER COLUMN "MeasureFactDailyID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotMeasureFactDaily_MeasureFactDailyID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 272 (class 1259 OID 41430)
-- Name: iotMeasureFact_MeasureFactID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotMeasureFact" ALTER COLUMN "MeasureFactID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotMeasureFact_MeasureFactID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 25506)
-- Name: iotMeasureType; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotMeasureType" (
    "MeasureTypeID" integer NOT NULL,
    "Name" text,
    "MeasureUnitName" text,
    "ShortMeasureUnitName" text
);


ALTER TABLE public."iotMeasureType" OWNER TO admin;

--
-- TOC entry 237 (class 1259 OID 25504)
-- Name: iotMeasureType_MeasureTypeID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotMeasureType" ALTER COLUMN "MeasureTypeID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotMeasureType_MeasureTypeID_seq"
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 255 (class 1259 OID 25657)
-- Name: iotMessage; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotMessage" (
    "MessageID" bigint NOT NULL,
    "MessageDate" timestamp without time zone NOT NULL,
    "Data" text,
    "BSID" integer NOT NULL,
    "Direction" integer NOT NULL,
    "MessageTypeID" integer NOT NULL,
    "DeviceID" bigint NOT NULL,
    "VegaRawDataID" bigint NOT NULL
);


ALTER TABLE public."iotMessage" OWNER TO admin;

--
-- TOC entry 240 (class 1259 OID 25516)
-- Name: iotMessageType; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotMessageType" (
    "MessageTypeID" integer NOT NULL,
    "Name" text
);


ALTER TABLE public."iotMessageType" OWNER TO admin;

--
-- TOC entry 239 (class 1259 OID 25514)
-- Name: iotMessageType_MessageTypeID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotMessageType" ALTER COLUMN "MessageTypeID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotMessageType_MessageTypeID_seq"
    START WITH 10
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 254 (class 1259 OID 25655)
-- Name: iotMessage_MessageID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotMessage" ALTER COLUMN "MessageID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotMessage_MessageID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 249 (class 1259 OID 25597)
-- Name: iotObject; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotObject" (
    "ObjectID" integer NOT NULL,
    "CompanyID" integer,
    "Name" text,
    "Address" text,
    "iotCompanyCompanyID" integer,
    "Latitude" double precision,
    "Longitude" double precision
);


ALTER TABLE public."iotObject" OWNER TO admin;

--
-- TOC entry 248 (class 1259 OID 25595)
-- Name: iotObject_ObjectID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotObject" ALTER COLUMN "ObjectID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotObject_ObjectID_seq"
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 251 (class 1259 OID 25612)
-- Name: iotRoom; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotRoom" (
    "RoomID" integer NOT NULL,
    "Name" text,
    "ObjectID" integer NOT NULL,
    "RoomNumber" integer
);


ALTER TABLE public."iotRoom" OWNER TO admin;

--
-- TOC entry 250 (class 1259 OID 25610)
-- Name: iotRoom_RoomID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotRoom" ALTER COLUMN "RoomID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotRoom_RoomID_seq"
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 289 (class 1259 OID 42869)
-- Name: iotSettings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotSettings" (
    "SettingsID" smallint NOT NULL,
    "ClosePeriodDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."iotSettings" OWNER TO admin;

--
-- TOC entry 277 (class 1259 OID 41629)
-- Name: iotUserRoom; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."iotUserRoom" (
    "UserRoomID" integer NOT NULL,
    "RoomID" integer NOT NULL,
    "UserID" integer NOT NULL
);


ALTER TABLE public."iotUserRoom" OWNER TO admin;

--
-- TOC entry 276 (class 1259 OID 41627)
-- Name: iotUserRoom_UserRoomID_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

ALTER TABLE public."iotUserRoom" ALTER COLUMN "UserRoomID" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."iotUserRoom_UserRoomID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3238 (class 0 OID 25476)
-- Dependencies: 232
-- Data for Name: iotBS; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."iotBS" ("BSID", "macAddress", "Name", "Address", "Comment", "VegaBSID", "Latitude", "Longitude") FROM stdin;
5	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	ул.Гаджиева д.14А	МБДОУ 85	-2	69.006517	33.10732
9	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	ул.Челюскинцев д.14	Гимназия 3	-2	68.97751559931773	33.083896119048916
2	D8E0B8FFFE0058FD	PnP_GW_D8E0B8FFFE0058FD	ул.Челюскинцев 29	МБДОУ 156	20	68.9816505	33.0972033
4	AC1F09FFFE0162F7	PnP_GW_D8E0B8FFFE005804	ул.П.Морозова д.3А	ООШ 26	9	68.99421430129607	33.10598154078563
6	AC1F09FFFE0162F2	PnP_GW_D8E0B8FFFE005804	ул. Ивченко д.13	МБДОУ 119 к.2	6	69.01091268530696	33.11269988493348
10	AC1F09FFFE0162F6	PnP_GW_D8E0B8FFFE005804	пр.Кирова д.18	МБДОУ 101	22	68.95387699392042	33.07040585152042
11	AC1F09FFFE0162FA	PnP_GW_D8E0B8FFFE005804	ул.Щербакова д.28	МБДОУ 120	3	68.90518399826271	33.08460886508096
14	AC1F09FFFE0162F3	PnP_GW_D8E0B8FFFE005804	ул. Сафонова д.37	СОШ 38	14	69.02278587043602	33.07825064418001
26	AC1F09FFFE0162F0	PnP_GW_D8E0B8FFFE005804	ул Аскольдовцев, 9/22	МАЛ	15	68.99852513946597	33.0827434682905
15	AC1F09FFFE0162F9	PnP_GW_D8E0B8FFFE005804	проезд Связи д.30	Гимназия 1	5	68.968226	33.109404
17	AC1F09FFFE0162F5	PnP_GW_D8E0B8FFFE005804	ул.Книповича д.35	Гимназия8	11	68.957549	33.089839
8	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	пр. Ленина д.59	Гимназия 2	-2	68.964525	33.074163
23	AC1F09FFFE0162F1	PnP_GW_D8E0B8FFFE005804	Молодежный проезд 13	ЦБ	8	68.931628	33.12066
20	AC1F09FFFE0162EA	PnP_GW_D8E0B8FFFE005804	ул.Скальная д.12	СОШ 49	13	68.973653	33.110051
22	AC1F09FFFE0162FC	PnP_GW_D8E0B8FFFE005804	ул.Орликовой д.35	СОШ 50	10	68.944265	33.087234
12	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	пр.Кольский д.140А	МБДОУ 125	-2	68.91803	33.097358
13	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	ул.Крупской д.56	МБДОУ 130 к.2	-2	68.884923	33.087638
16	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	ул.О.Кошевого д.12А	Гимназия7	-2	68.937115	33.113521
24	AC1F09FFFE0162EF	PnP_GW_D8E0B8FFFE005804	ул. Копытова, д. 36	МАДОУ 19	4	68.893945	33.087395
19	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	ул.Чумбарова-Лучинского д.22	МБДОУ 95	-2	69.000992	33.084045
21	D8E0B8FFFE00ABCD	PnP_GW_D8E0B8FFFE005804	ул.Героев Рыбачьего д.15	СОШ 42	-2	68.898328	33.09513
3	D8E0B8FFFE005804	PnP_GW_D8E0B8FFFE005804	ул.Кильдинская 1	ЖСК	1	68.9817914	33.1017862
18	AC1F09FFFE0162EB	PnP_GW_D8E0B8FFFE005804	ул.Радищева д.76	МБДОУ 82	12	68.95428318334135	33.12371555092612
27	AC1F09FFFE0162E9	PnP_GW_D8E0B8FFFE005804	пр-д Кап.Тарана	Прогимназия 40	16	68.963318	33.083254
25	AC1F09FFFE0162EE	PnP_GW_D8E0B8FFFE005804	ул. Копытова, д. 36	СОШ 22	7	68.91247749241074	33.09927512429711
1	AC1F09FFFE0162FB	PnP_GW_D8E0B8FFFE005804	пр.Ленина 18а	Офис тест	18	68.952995	68.952995
7	AC1F09FFFE0162F4	PnP_GW_D8E0B8FFFE005804	пр.Ленина 18а	Офис резерв	19	68.952995	68.952995
\.


--
-- TOC entry 3240 (class 0 OID 25486)
-- Dependencies: 234
-- Data for Name: iotCompany; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."iotCompany" ("CompanyID", "Name") FROM stdin;
1	Кроссджойн
2	ЖСК
3	ЖЭУ
\.


--
-- TOC entry 3252 (class 0 OID 25627)
-- Dependencies: 253
-- Data for Name: iotDevice; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."iotDevice" ("DeviceID", "DevEUI", "AppKey", "Comment", "DeviceTypeID", "ObjectID", "RoomID", "CompanyID", "DeviceClassID", "VegaDeviceID", "UserID", "RecordDate", "RecordStatusID", "CalibrationValue", "DailyStatusID", "SerialNumber") FROM stdin;
12	3331333758385909	1638550900000000163855093E512349	Кильдинская 1 кв.57 42261988	11	5	15	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261988
14	333133375F38770B	1F38770B000000001F38770B39510D49	Кильдинская 1 кв.57 42261997	11	5	15	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261997
15	3230333751386401	29385A010000000029385A0137501E39	Седова 10 кв.3 ванная 42261995	12	4	5	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261995
18	333133377D38610C	79385D0C0000000079385D0C1B511B4F	Седова 10 кв.3 ванная 42261996	11	4	5	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261996
13	323033375E388402	1E387A02000000001E387A023850FE3B	Бетар-Вега 42262027	12	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42262027
10	3331333756387F09	10387F090000000010387F0930510549	Бетар-Вега 41320290	11	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	41320290
11	3331333763387909	03387509000000000338750905510349	Бетар-Вега 42261999	12	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42261999
2	70B3D58FF1015482	02222222222222222222222222222222	ЦЭ2727А	2	1	1	\N	3	0	1	2020-08-04 11:03:19.454238	1	0	0	ЦЭ2727А
4	383A215FFFFEFFBB	DE1FA405F7614C1E591E789B18A8CB0C	Карат-307	4	1	1	\N	1	0	1	2020-08-04 11:03:19.45424	1	0	0	арат-307
6	04631188002C001E	2B7E151628AED2A6ABF3158809CF1F30	СИ QTech	6	1	1	\N	1	0	1	2020-08-04 11:03:19.454241	1	0	0	СИ QTech
7	323934346938820D	05387C0D0000000005387C0D0C49F94C	Вега ТС-12	7	1	1	\N	1	0	1	2020-08-04 11:03:19.454241	1	0	0	га ТС-12
8	313735324C38780F	2C38760F000000002C38760F2D57044E	Вега RS-485	8	1	1	\N	1	0	1	2020-08-04 11:03:19.454241	1	0	0	а RS-485
9	3239343444387009	22386E090000000022386E0921490B34	Вега RS-232	9	1	1	\N	1	0	1	2020-08-04 11:03:19.454242	1	0	0	а RS-232
5	313033376B386803	0338660300000000033866030E501239	Вега ТД-11	5	2	4	\N	1	0	1	2020-08-04 11:03:19.454241	1	0	0	га ТД-11
1	70B3D58FF1015124	02222222222222222222222222222222	ЦЭ2726А	1	1	2	\N	3	0	1	2020-08-04 11:03:19.453576	1	0	0	ЦЭ2726А
3	0463118800220028	2B7E151628AED2A6ABF7158809CF4F3C	ХВС Пульс	3	1	3	\N	1	0	1	2020-08-04 11:03:19.45424	1	0.313	0	ВС Пульс
59	3630313072385617	08384817000000000838481719502E50	ЦЭ2726А 1692556	13	4	18	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1692556
58	3630313053387118	2B386D18000000002B386D1838500950	Седова 10 кв.33 ЦЭ2726А 1692605	13	4	12	\N	1	0	1	2020-01-01 00:00:00	1	0	1	1692605
60	363031305D386816	1D386616000000001D38661636501050	Кильдинская 1 кв 8а ЦЭ2726А 1666214	13	5	14	\N	1	0	1	2020-01-01 00:00:00	1	0	1	1666214
51	363031305C386915	12386515000000001238651537501150	Кильдинская 1 кв 57 ЦЭ2726А 1692560	13	5	15	\N	1	0	1	2020-01-01 00:00:00	1	0	1	1692560
53	343838365E398416	1E397A16000000001E397A163848FB5A	ЦЭ2726А 1692450	13	4	10	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1692450
54	3630313084386315	7A385B15000000007A385B15EF501B50	ЦЭ2726А 1666216	13	4	10	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1666216
55	3630313051386E18	2938601800000000293860183A501650	ЦЭ2726А 1692435	13	4	10	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1692435
56	3630313082387615	783868150000000078386815E9500E50	ЦЭ2726А 1692576	13	4	10	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1692576
32	333133377C38760C	7A38680C000000007A38680C1A510C4F	Седова 10 кв.3 кухня 42261994	12	4	5	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261994
52	343838365F397616	1F396816000000001F3968163948095A	ЦЭ2726А 1666222	13	4	10	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1666222
57	363031305D386515	1D385915000000001D38591536501D50	ЦЭ2726А 1692574	13	4	16	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1692574
64	3934313866387816	0638761600000000063876160F540058	ЦЭ2726А 4109198	14	4	23	\N	1	0	1	2020-01-01 00:00:00	1	0	0	4109198
16	3230333770385805	08385605000000000838560516502239	Кильдинская 1 кв.8а 41320018	11	5	14	\N	1	0	1	2020-01-01 00:00:00	1	0	1	41320018
63	393431386E386C17	0E386217000000000E38621707541458	ЦЭ2726А 4109196	14	4	22	\N	1	0	1	2020-01-01 00:00:00	1	0	0	4109196
62	3934313868388117	08387D170000000008387D170154F958	ЦЭ2726А 4109192	14	4	21	\N	1	0	1	2020-01-01 00:00:00	1	0	0	4109192
65	3934313856386615	1638581500000000163858153F541E58	ЦЭ2726А 4109201	14	4	24	\N	1	0	1	2020-01-01 00:00:00	1	0	0	4109201
17	3331333766385A0C	0038540C000000000038540C0051204F	Бетар-Вега 42261991	12	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42261991
61	3630313057386F15	17386F150000000017386F153C501750	ЦЭ2726А 1692611	13	4	20	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1692611
22	333133376C385E0C	0A38500C000000000A38500C0A51244F	Седова 10 кв.33 42261993	11	4	12	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261993
21	3230333752387301	2A386B01000000002A386B0134500939	Кильдинская 1 кв.185 42262030	12	5	11	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262030
28	323033375E385506	1E384906000000001E38490638502F3B	Седова 10 кв.47 42262012	11	4	7	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262012
31	333133376B38550C	0B38490C000000000B38490C0D512F4F	Кильдинская 1 кв.47 42262014	11	5	13	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262014
25	333133375D385C0B	1938520B000000001938520B3B512649	Кильдинская 1 кв.8а 42262003	12	5	14	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262003
26	3331333751386F0B	2D386F0B000000002D386F0B37511549	Бетар-Вега 42262018	11	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42262018
27	3331333766385B0C	0038530C000000000038530C0051214F	Бетар-Вега 42262015	12	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42262015
38	333133375138650B	2D38590B000000002D38590B37511F49	Кильдинская 1 кв.57 42262002	11	5	15	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262002
39	3331333756387F09	10387F090000000010387F0930510549	Бетар-Вега 41320290	11	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	41320290
43	333133375238610B	2C385D0B000000002C385D0B34511B49	Бетар-Вега 42262005	11	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42262005
50	3630313071388217	09387C170000000009387C171A50FA50	ЦЭ2726А 1666219	13	4	8	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1666219
35	3230333754386004	14385E040000000014385E0432501A3F	Седова 10 кв.47 42551010	12	4	7	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42551010
36	323033376F387702	0F387702000000000F38770209500D3B	Кильдинская 1 кв.8а 42262029	11	5	14	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262029
20	333133377E38690C	7838650C000000007838650C1851134F	Седова 10 кв.33 42261989	12	4	12	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261989
33	323033375D386A02	1D386402000000001D3864023B50103B	Кильдинская 1 кв.47 42262001	12	5	13	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262001
34	333133376B387A0C	0B38740C000000000B38740C0D51004F	Кильдинская 1 кв.8а 42262022	12	5	14	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262022
23	323033375E386406	1E385A06000000001E385A0638501E3B	Бетар-Вега 42551011	12	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42551011
24	333133376C38550C	0A38490C000000000A38490C0A512F4F	Бетар-Вега 42262023	11	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42262023
48	393431386E387017	0E386E17000000000E386E1707540858	ЦЭ2726А 1666215	13	4	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1666215
47	363031306A385D17	00385117000000000038511701502550	ЦЭ2726А 1666221	13	4	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	1666221
49	3630313053386315	2B385B15000000002B385B1538501B50	Седова 10 кв.3 ЦЭ2726А 1666217	13	4	5	\N	1	0	1	2020-01-01 00:00:00	1	0	1	1666217
40	333133375038770B	2E38770B000000002E38770B36510D49	Седова 10 кв.3 кухня 42261986	11	4	5	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261986
45	333133375038630B	2E385B0B000000002E385B0B36511949	Седова 10 кв.25 42262010	11	4	6	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262010
42	3230333776386605	76385805000000007638580510501C39	Седова 10 кв.47 42551009	12	4	7	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42551009
44	333133377F38760C	7F38680C000000007F38680C19510C4F	Кильдинская 1 кв.185 42262006	11	5	11	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262006
46	3230333769387F02	01387F020000000001387F020F50053B	Кильдинская 1 кв.47 42261992	11	5	13	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42261992
41	333133377C38710C	7A386D0C000000007A386D0C1A510B4F	Кильдинская 1 кв.47 42262004	12	5	13	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262004
37	323033376D386D05	0D386105000000000D3861050B501739	Седова 10 кв.25 42262009	12	4	6	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262009
19	3230333751386906	2938650600000000293865063750133B	Бетар-Вега 41884315	12	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	41884315
30	333133377D385E0C	7938500C000000007938500C1B51244F	Бетар-Вега 42261990	11	1	1	\N	1	0	1	2020-01-01 00:00:00	1	0	0	42261990
29	333133377D38600C	79385E0C0000000079385E0C1B511A4F	Кильдинская 1 кв.57 42262021	11	5	15	\N	1	0	1	2020-01-01 00:00:00	1	0	1	42262021
\.


--
-- TOC entry 3242 (class 0 OID 25496)
-- Dependencies: 236
-- Data for Name: iotDeviceType; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."iotDeviceType" ("DeviceTypeID", "Name", "ShortName", "Manufacturer", "Producer", "MainMeasureTypeID") FROM stdin;
-1	Неизвестное устройство	Н/У	нет	нет	8
1	Однофазный электрический счетчик ЦЭ2726А	ЦЭ2726А	СПб ЗИП	QTech	1
2	Трехфазный электрический счетчик ЦЭ2727А	ЦЭ2727А	СПб ЗИП	QTech	1
3	Счетчик ХВС Пульс	Пульс	Аква-С	QTech	2
4	Тепловычислитель Карат-307	Карат-307	Вега	Вега	8
5	Датчик температуры Вега ТД-11	Вега ТД-11	Вега	Вега	8
6	Счетчик импульсов QSH-С500-P4	СИ QSH-С500-P4	QTech	QTech	8
7	Тестер сети Вега ТС-12	Вега ТС-12	Вега	Вега	8
8	Счетчик импульсов Вега СИ-13 RS-485	Вега СИ-13 RS-485	Вега	Вега	8
9	Счетчик импульсов Вега СИ-13 RS-232	Вега СИ-13 RS-232	Вега	Вега	8
10	Счетчик ГВС Пульс	Пульс	Аква-С	QTech	3
11	Счетчик Бетар-Вега СХВЭ-15	СХВЭ-15	Вега	Вега	2
12	Счетчик Бетар-Вега СГВЭ-15	СГВЭ-15	Вега	Вега	3
13	Однофазный электросчетчик ЦЭ2726А	ЦЭ2726А	Вега	Вега	1
14	Трехфазный электросчетчик ЦЭ2727А	ЦЭ2727А	Вега	Вега	1
\.


