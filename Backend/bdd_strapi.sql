PGDMP         $                 y            strapi-ECF4    12.4    12.4 z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    29647    strapi-ECF4    DATABASE     �   CREATE DATABASE "strapi-ECF4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE "strapi-ECF4";
                postgres    false            �            1259    29650 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    postgres    false            �            1259    29648    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          postgres    false    203            �           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          postgres    false    202            �            1259    29797    messages    TABLE     �  CREATE TABLE public.messages (
    id integer NOT NULL,
    content text,
    id_user integer,
    id_subject integer,
    "CreationDate" date,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    users_permissions_user integer,
    subject_of_discussion integer,
    "creationDate" date
);
    DROP TABLE public.messages;
       public         heap    postgres    false            �            1259    29795    messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    227            �           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    226            �            1259    29816    news    TABLE     R  CREATE TABLE public.news (
    id integer NOT NULL,
    title character varying(255),
    "creationDate" date,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.news;
       public         heap    postgres    false            �            1259    29814    news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.news_id_seq;
       public          postgres    false    229            �           0    0    news_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;
          public          postgres    false    228            �            1259    29702    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    postgres    false            �            1259    29700    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          postgres    false    211            �           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          postgres    false    210            �            1259    29672    strapi_permission    TABLE     S  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    postgres    false            �            1259    29670    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          postgres    false    207            �           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          postgres    false    206            �            1259    29685    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    postgres    false            �            1259    29683    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          postgres    false    209            �           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          postgres    false    208            �            1259    29715    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    postgres    false            �            1259    29713    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          postgres    false    213            �           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          postgres    false    212            �            1259    29661    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    29659    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    205            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    204            �            1259    29787    subject_of_discussions    TABLE     �  CREATE TABLE public.subject_of_discussions (
    id integer NOT NULL,
    title character varying(255),
    admin_user integer,
    "CreationDate" date,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    id_user integer,
    users_permissions_user integer
);
 *   DROP TABLE public.subject_of_discussions;
       public         heap    postgres    false            �            1259    29785    subject_of_discussions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subject_of_discussions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.subject_of_discussions_id_seq;
       public          postgres    false    225            �           0    0    subject_of_discussions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.subject_of_discussions_id_seq OWNED BY public.subject_of_discussions.id;
          public          postgres    false    224            �            1259    29826    subjects    TABLE     �  CREATE TABLE public.subjects (
    id integer NOT NULL,
    title character varying(255),
    users_permissions_user integer,
    "CreationDate" date,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    id_user integer
);
    DROP TABLE public.subjects;
       public         heap    postgres    false            �            1259    29824    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public          postgres    false    231            �           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
          public          postgres    false    230            �            1259    29836    tests    TABLE     e  CREATE TABLE public.tests (
    id integer NOT NULL,
    content text,
    admin_user integer,
    subject_of_discussion integer,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tests;
       public         heap    postgres    false            �            1259    29834    tests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tests_id_seq;
       public          postgres    false    233            �           0    0    tests_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;
          public          postgres    false    232            �            1259    29762    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    postgres    false            �            1259    29760    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          postgres    false    221            �           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          postgres    false    220            �            1259    29775    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    postgres    false            �            1259    29773    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          postgres    false    223            �           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          postgres    false    222            �            1259    29723    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    postgres    false            �            1259    29721 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          postgres    false    215            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          postgres    false    214            �            1259    29734    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    postgres    false            �            1259    29732    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          postgres    false    217            �           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          postgres    false    216            �            1259    29747    users-permissions_user    TABLE     z  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    message integer,
    subject_of_discussion integer
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    postgres    false            �            1259    29745    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          postgres    false    219            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          postgres    false    218            �
           2604    29653    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    29800    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �
           2604    29819    news id    DEFAULT     b   ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);
 6   ALTER TABLE public.news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    29705    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    29675    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    29688    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    29718    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    29664    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    29790    subject_of_discussions id    DEFAULT     �   ALTER TABLE ONLY public.subject_of_discussions ALTER COLUMN id SET DEFAULT nextval('public.subject_of_discussions_id_seq'::regclass);
 H   ALTER TABLE public.subject_of_discussions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                       2604    29829    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231                       2604    29839    tests id    DEFAULT     d   ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);
 7   ALTER TABLE public.tests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �
           2604    29765    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    29778    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    29726    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    29737    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    29750    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �          0    29650 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    203   E�       �          0    29797    messages 
   TABLE DATA           �   COPY public.messages (id, content, id_user, id_subject, "CreationDate", published_at, created_by, updated_by, created_at, updated_at, users_permissions_user, subject_of_discussion, "creationDate") FROM stdin;
    public          postgres    false    227   !�       �          0    29816    news 
   TABLE DATA           w   COPY public.news (id, title, "creationDate", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    229   �       �          0    29702    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
    public          postgres    false    211   Z�       �          0    29672    strapi_permission 
   TABLE DATA           r   COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
    public          postgres    false    207   ܮ       �          0    29685    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �       �          0    29715    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          postgres    false    213   ��       �          0    29661    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    205   �       �          0    29787    subject_of_discussions 
   TABLE DATA           �   COPY public.subject_of_discussions (id, title, admin_user, "CreationDate", published_at, created_by, updated_by, created_at, updated_at, id_user, users_permissions_user) FROM stdin;
    public          postgres    false    225   9�       �          0    29826    subjects 
   TABLE DATA           �   COPY public.subjects (id, title, users_permissions_user, "CreationDate", published_at, created_by, updated_by, created_at, updated_at, id_user) FROM stdin;
    public          postgres    false    231   ��       �          0    29836    tests 
   TABLE DATA           �   COPY public.tests (id, content, admin_user, subject_of_discussion, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    233   r�       �          0    29762    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    221   µ       �          0    29775    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    223   ߵ       �          0    29723    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          postgres    false    215   ��       �          0    29734    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          postgres    false    217   Ļ       �          0    29747    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at, message, subject_of_discussion) FROM stdin;
    public          postgres    false    219   +�       �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 29, true);
          public          postgres    false    202            �           0    0    messages_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.messages_id_seq', 9, true);
          public          postgres    false    226            �           0    0    news_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.news_id_seq', 1, true);
          public          postgres    false    228            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          postgres    false    210            �           0    0    strapi_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 116, true);
          public          postgres    false    206            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          postgres    false    208            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          postgres    false    212            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    204            �           0    0    subject_of_discussions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.subject_of_discussions_id_seq', 3, true);
          public          postgres    false    224            �           0    0    subjects_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.subjects_id_seq', 9, true);
          public          postgres    false    230            �           0    0    tests_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tests_id_seq', 1, true);
          public          postgres    false    232            �           0    0    upload_file_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);
          public          postgres    false    220            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);
          public          postgres    false    222            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 214, true);
          public          postgres    false    214            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          postgres    false    216            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 5, true);
          public          postgres    false    218                       2606    29658    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            postgres    false    203            ,           2606    29807    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    227            .           2606    29823    news news_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.news DROP CONSTRAINT news_pkey;
       public            postgres    false    229                       2606    29712 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            postgres    false    211                       2606    29710 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            postgres    false    211                       2606    29682 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            postgres    false    207                       2606    29699 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            postgres    false    209                       2606    29697 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            postgres    false    209                       2606    29695    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            postgres    false    209                       2606    29720 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            postgres    false    213            
           2606    29669 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    205            (           2606    29809 <   subject_of_discussions subject_of_discussions_id_user_unique 
   CONSTRAINT     z   ALTER TABLE ONLY public.subject_of_discussions
    ADD CONSTRAINT subject_of_discussions_id_user_unique UNIQUE (id_user);
 f   ALTER TABLE ONLY public.subject_of_discussions DROP CONSTRAINT subject_of_discussions_id_user_unique;
       public            postgres    false    225            *           2606    29794 2   subject_of_discussions subject_of_discussions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.subject_of_discussions
    ADD CONSTRAINT subject_of_discussions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.subject_of_discussions DROP CONSTRAINT subject_of_discussions_pkey;
       public            postgres    false    225            0           2606    29833    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    231            2           2606    29846    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public            postgres    false    233            &           2606    29783 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            postgres    false    223            $           2606    29772    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            postgres    false    221                       2606    29731 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            postgres    false    215                       2606    29742 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            postgres    false    217                       2606    29744 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            postgres    false    217                        2606    29757 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            postgres    false    219            "           2606    29759 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            postgres    false    219            �   �  x��k��6�s�+\�r�8ݤM[��]�I���d���$0h�^�V�T=���߸�w��O��H���&m�ak���p83r���;Y\]�d^eqJ�yA˒%ŝ߂��J�g%[�_I��$��yEO��Y�lC��5��E®喇Ѱ�����坻�w�iD�yD���I�f�0�齢����E�,h��� L�B�Ț��5�%�4��$,�E��L2�'A*���-J���ے�0)˜-��
�Kz%�2*y�p"WԂ���%.�"h�ay�pQ��\ ϯ�(�>�?w 2���*M/��5 ��ę[(!�ᆒ�t�7��䊒���WsIn@�( !��Fd��1%I[��"r��%C��G~
|ɒH(��z��o����� �))i4'%���Hy�)ޓ`͒irQ���)�H�/\o��d�.���M�ֿT,�bS�cE#Qv�� !�եPj��QP�@g�|�C��X�9x@"x���c��Tk�� �X���eEb�xF�5+
=f('�~�j
�HoM�=�Ęj.�{/󋜀��-�k�Ĥ2SBE�`��Y�\�"V���d�
[c�Hc����b��sH�xA�K�v�T��¿o ���@�Ys�-����+�f�e�^�KE�]��E�C��9�HӋ����|���:e�Z�u*�;�h�J�����5�H�e[�l��f����c
&-��[V��Xw�÷w�_�}�m0�S��~jߞL����gy�d�4�U7}ʽ���v�K���������Η����T*f�%�X�ÀA�eA7@���1+�5���`�D����)L/V�=,�n/�E�E�������0]c̪�zF�{{��Rk���&?���+�\��$!�P��pb��k��XjwЊe��|.�E_J�%�0��~RP��+�I,���8�O���H�c4����{_�*._�y��U�yq<~y�'뚖�"�b�+E�(�\�0U1YP�n�Q�qV ���5��Bb(b���%'&��\�*�%{�I��S�zisgH�pzŇc���cMۇ�%���;	�EC��PMߚE�ɞ E�5�<��c����W}��Ra(���K�m՗�
X�L��je �J<��k��a�Z1!쾮�������.�@��J�m%�7rb,ga&�P�w��4&J��8 ��Ƭ>k"�l?�>1�����;�.������7�O{x#�ַ2Ϗ��k{���[�az}�T�g��C3E��*�A��F������14Y|b���ԥ�e�t~�e���>a���r�G?W�H�4�?��~	eِ7p;�!�>�}�8eWö���\�T�V:��)�m�����]��Y��z����h�|h�����{TX�<v��ߊԛ+M%��9��V��|`R�<Ûw,<4t��GM���"�6s�,>U�1x�i�0��1�Po'!c�hH�p��Z_�xeqB[ѕZ):�?���z�O�V��i����=ɧ7Zq��Z�|�x~��Ρv+���Rٌ>QUS�a5&ݜ�HFd�"���󵆍��E��a�=Ϧ�Pi������*HQl�Fk�Yh�(�&��0(X��UzI�(�Ek��n���qc(�bt�Di�wh���
�����w?h�[�}#t��B���������.�U�1$[ӾQ,d;ظ6��PwD�
٦�m,�XPTY6�i�4�,��j�� �J{�c䘥�H|��GEC� ��C/��|��Qøc���F��s%�/S,�r�<��&ꍥ�a�~w�M
�a%sD&�1(ۑf=�\�7��74�����Alq<�� .�p?���R��Qr��>��ä�s���FMۇ�-�����0���{+�.V�/!c0hH{%��|MJ�����x2���֊�0ϟ�"DI�+����#���3x�p���4*�^��kAN�������9��{�����t�bМnݾ��;�����l�~ܦ�{��6���>�:@�c�F�s��3�<�ųC/h�D��}<���Siƣu������Z ���I!i.�j
[_!i��	mಎ)�3�+���)�N6׬�-�L.�<F�d��Ĳ����;�������v"�	kG����<+@e�JNlMK�θL����J���]橨XR,?�E�&�99'	�/�6��$���,������4�6�t��x��@�L,Vִ(`�
���o~��̒hR�H9��0��B|�M��V��Մ,`�ď���}��m�Ʒ�4J�����d�1?���$��0��,�8N�����*�I�N���~f�*����'�_�8�����\_�ﯞ���3x���jE��bʟfwPf�f��X�8!�f���B����a�VI9i0挜xs1b0�'2CNyE�;8|$VdC��9)u��DPM'�1%0Xa���	�51V`W��ԡ�N͡���O���5��Ը�hC��F<i#j����%'\������E�_�j�ᤊc� F,�e�K�id18��
d��,�~��V�9ɲ�� ��L`1�LF�-@*�-�gY�Ou���t�@ȱ���R����@7'��q�Wp�+��v�������RR̻5��P1e�-����_�T;��JCգ{���e��2m#_���1Q��V��qV��]Kjqe��N� ��Hy�6g�� ��FHG�V�x}4+�"�*��#v]�� y���f������"�]�`����i�����2��k�ųv=�����h[��j߳����PN��):���S�� �*�D`�U%���C���㒕1�Բ��g=�A�쵼jC�M??fƍIz�H[��q���{=��ܚ_���5N�Bk�ý}@����-�/tj�t�b8U���v6~���E�Ps���G��=�Sӝʽ���4�>��l�yL�aWX���r��<�Uν.���;o�j�^��i��c�ɺ��.��,�{�cγ�G�>��T`���<Lb�l(�A�r��X?н�<�~��;��['C� ��{y�J;9��g-�q��n���zf�#U��>��*~gE�Ǎ����m��R����F�8��==�3:+~�M�Ϻ҃	�N�/��S@l������#a�{�����!}u�]��� Ns�y]`���5�S
ݵ�Չ�}���1����=)�_��6�b�צM3Q�TY;V}�-�t�1)���#���Bje��d���R�f�o�Z���R'��Rv������e^D�� }�����y��-����í���iZ�/���S�C��i�*���tJ �����7߸��3)�%�_��vfD��.LoBi��s���kS�\Gv��P{�w�0-�)���?���\��`�0	��)i�77����<]έ��ǔ����}C/�D�)h�%��KR`O�Tط�C0~>)��sEV��_Sn��̛v`�u��g�o繥�,n?���.&ۯ+]�'2ٚ���ݟ[ط[5��kz#���gL�Jg�@��z�?�|��^���:�<�(����g���{Z� v(�u���z�҂h�]�Ga����b���`�^,s~���ި����>~�O-�����/�H3�lm���q����;L�Sk�(��Q{�1���w���zw�ni՝��{�����K������~s����~~;�}��mV���_g�(���<�~���zQ���B��b��q������z�H��}ݧ�mm�[�\숆n���M��k�Ls|���ݻw���      �   �  x���n�0E��Wp� )S�]�iP�@VZ��q)��C��wImk�U!-^�9���"O>���)����FHTO&���]4C2)��p�8�����<8z �o���-D�-�e�����ja�VS���	� ��4�q	$�=�߲���C1E=BJX3����l�����T8�d�
Ń C�e��h��&��=夓a�f]�;kkφ�S�4F1�_pmQ��3N�T>@u�YS=P�l�sL���cdC"��\<���S
*6�R�lX%�.Hy���e�ڮ+��+�NQ�kƪ&�?����iF��t�"���u]���Խ�X���g�d�����wG��Wx��e���mQ�%���RM/6L��R�E_q��ލ�E²�T�-��X�ۇ	�{0oӱF.��7,�/R����{���l��J�
��Z���r���o���V��V[�Z��S���      �   B   x�3��H���W(�/�I�4202�50�52���4B����������������)S�W� �g      �   r   x�3��)M������L�(�,.H,36tH�M���K���T1JT14P	((K.�-��.��,��J1u�OM12���J��/��u3)I5��t�׋�(3M�
D%@�+F��� �2!:      �   +  x��XK��0>'��ʵac���\��[[U�-����n��w`�Y0L������:8|߼���Tw��Mw��If�2�v��������;�Y�8{�X�Ȳ��������֞�p���mc����m�L z�D�UًA�����6�0Sx=�g4���-����p0t����C�y�yc�ct}��s��|�Ţ��
�>�� ���"����3����̹ L$��$B�YR]��l�")�Y��'�ְ=�T��Ӥ�5���M�j�io^���;x���g_�F���?dڂ@�sE�E1lFOe���!s	��A�ge_=D��cJ�	>r[����M�5<���Jm�*T�Y��K�x�'b.@h��>[�m2�$8�1�A�ƪd]�(0�+<�y9h�hf�i��Q�������]��ɤYc�2s0$Y/�WÒ��af��M�J��ꢉ�x����qI]��k/g3`h��!�:0W��c�rnN�x����*��7]-��\޽ �J�L�RPH �$77!Ǻ�W
E��J���wZ���}bo���ZIj��1�C>���E�M�`���ځ�����m���?�+Z�j}�C1�Z�̆��uhdDC�f�	E����"ɕ�ʢR�FS1��c1
���_�IӔ�ꮱ&�mR�2�.�����B�\q)Q�Z,�����"�O�S�����T���%�QK>m�Գh���h��Ld<\'�p"����Z���� ͠I>�ĳ�+�3&F��h�+��RH���(5sh>Ac*����j�#�{��m�T�s!�Q)�q��;ǥZw�!/��\b��Ҭn���4��l`���9*Ͷ��I��0���#���� Z��r��<J�[uG�7�������V���dI��<�̃YrO[�;����<��f���	��p�ӡ�W&ʊ��~1]2q�읮�~]K��||�'Y��}wT��Ӈ�;*���e��K�������F�<2���~�ϴÖ��K�oVǰb�!A��p�?=JI襱��Q>�����<�c�������=      �   �   x�}�1n�0Eg����@�9A�,����� �}�
.������'�:����%9��;YPG��_,`) Y�"@����h��ʔK�ƅs��&�2��n��  pߛ�Ϗ�Dڨ��9�Շ��`�X�k�\�'/#�2�,�������(�
1��E8mH��lI�H�Ա�{RԶ_�j�*��O�QI�_�n�~�پ$��k� u|�      �      x�3�4�4����� �X      �      x������ � �      �   w   x���A�@��p�����9DO�֍[��t�4ڤ6��c�,�<�R�WQ�t�N�N��Ln�����qJ��9"2�m���/?]���.am'1�Q�v��ׇ�"��3����%F#��4�      �   �   x���;� k8���h,f��u����!���Ѭ4o4�۟��@'��p�	�s�h�!0�����b���ɩ"��ȭ����ITt\c6Ԁ��f��?�_Z���r �Q�`4���Ƶb*�Zn�����T\.����ze�mO�M~�PK��{���V�      �   @   x�uɱ�  �ڞ"}���H��?GX ���5HB�)g_7��y�5bQ����T�-=]U?E�9      �      x������ � �      �      x������ � �      �   �  x��Y�r�:}N�%g0��O�/�/ܔ]��ӿ�&�Vzf:mC�$�kI��˛z����guvӝy]U:ʦ�߭�wױ�,t��{����׿��-~?�I�w:���W@K�C���+�%�)z/�b�,�,Q.2HS����`K0�°��_��c���t�M��(�@$��C��v�Ve��B��A4�fƚ�'�BD�vƶp�A	�cQ�Rн5���,xi�����=AuO�I�c�#��E�@z�)=m� �!0��I��)m̯m=�LxG�6������J:��R��#L	%�"Sz\����iB��5W�A�*[u&�''�����U�JM�p� �������_+b��@w;K|���ߧ�-6�)� K��o4B����A$_cY���������kY��7��`�|L����ѳ��_��'���	U��:�Ua �ߛ:���Kuv�� =����k;����t%��� -�!�?^`rTr/�(2���> �$�ci� e���A�s��ǟ�!6���H��Hp
QC
�P��cHwv�{��
P��H4�fV��4�Lܾ\�f���ج�V�¢Px��*y�X��<,J�s`� 9��[y���J��JogW�C��'���w�Q=���#�6�O�{�d��'oF��ә� Ǣ���5��#�f�sN�`|>86fi{=fD��_�@����|�0������y�e��}?=�>�2����0��3�ko��ޏ+ƒ�Q�����Mlcu�쬈�_\\��n}�al̀��[����b��l>LⷲL>ksE�OO(���&N�	gܯ��X�D7R]3�ў;g�v�Wi�r<Hd��:JD�V��ڻ��/��3n*=f	r��$,H9�o�(sW�`����O�	R�+H{�&������(d����=I���N�,�	��%��],��gUu��O��X��$5�Y��i:��Y��� v���it"��PR:�*��2��p�f����!A,���׽�=%@9�j��f�"�z�����Z��{�ZJQ؇(ܶ�b���<�.kkی<Ɂ*s���κ�������X�ˬ�D뛞�quNU��c�dȖ:�{0�O������9k������\�@�H�x����s�n�`�ٯ�k��
�=lX~�f�r~Q�R8̯�V֖��.�%��ʕz�j>!y~-O�'����J �'��'r�v=Y��{j�$�E��Mwk�>��9
4�m*f��yM8C�����rc�R�N�A�d�U��3:O�R����}b��"���9��N����s�A^m��� ^m�A^�Ղ�y��*�DH�����iԄYs<O�:�0�<mk�l�Ӷ�E`g���-B�<m�Z�����*Q�����ԃ`R�%�Z����X
�&e[���Ƥl�Uv'e[�"�3)/�_�����@���      �   W   x�3�(M��L�tIMK,�)Q(��IUH�,K�S(�W(�K,-�H�+�LN,IMQ(-N-��,�h��".CNGd%8�f�Դ=... ag3O      �   �   x�u��o�0��s�+v�f,}��isa0�<���D�Q�M����y/��M^>�F*@Z6��;�p�Py9d%�if�g9e�V-B#�V瑧Β/_�{L�4���ӟ4a�����YM�m^���[�
�PBaL`L�X@'!��#2TD��'��io�H-�*9�Yjt�vϦ��~Q�޴�ӯ��/s�VO~[�d%Z���,��x���������r�-���^V�     