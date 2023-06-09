PGDMP                         {            kodlamaIoDevs    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16406    kodlamaIoDevs    DATABASE     �   CREATE DATABASE "kodlamaIoDevs" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "kodlamaIoDevs";
                postgres    false            �            1259    16408 
   langugages    TABLE     f   CREATE TABLE public.langugages (
    id integer NOT NULL,
    language_name character varying(255)
);
    DROP TABLE public.langugages;
       public         heap    postgres    false            �            1259    16407    langugages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.langugages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.langugages_id_seq;
       public          postgres    false    215            	           0    0    langugages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.langugages_id_seq OWNED BY public.langugages.id;
          public          postgres    false    214            �            1259    16415    technologies    TABLE     �   CREATE TABLE public.technologies (
    technology_id integer NOT NULL,
    technology_name character varying(255),
    language_id integer
);
     DROP TABLE public.technologies;
       public         heap    postgres    false            �            1259    16414    technologies_technology_id_seq    SEQUENCE     �   CREATE SEQUENCE public.technologies_technology_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.technologies_technology_id_seq;
       public          postgres    false    217            
           0    0    technologies_technology_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.technologies_technology_id_seq OWNED BY public.technologies.technology_id;
          public          postgres    false    216            j           2604    16411    langugages id    DEFAULT     n   ALTER TABLE ONLY public.langugages ALTER COLUMN id SET DEFAULT nextval('public.langugages_id_seq'::regclass);
 <   ALTER TABLE public.langugages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            k           2604    16418    technologies technology_id    DEFAULT     �   ALTER TABLE ONLY public.technologies ALTER COLUMN technology_id SET DEFAULT nextval('public.technologies_technology_id_seq'::regclass);
 I   ALTER TABLE public.technologies ALTER COLUMN technology_id DROP DEFAULT;
       public          postgres    false    217    216    217                       0    16408 
   langugages 
   TABLE DATA           7   COPY public.langugages (id, language_name) FROM stdin;
    public          postgres    false    215   �                 0    16415    technologies 
   TABLE DATA           S   COPY public.technologies (technology_id, technology_name, language_id) FROM stdin;
    public          postgres    false    217   �                  0    0    langugages_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.langugages_id_seq', 3, true);
          public          postgres    false    214                       0    0    technologies_technology_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.technologies_technology_id_seq', 4, true);
          public          postgres    false    216            m           2606    16413    langugages langugages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.langugages
    ADD CONSTRAINT langugages_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.langugages DROP CONSTRAINT langugages_pkey;
       public            postgres    false    215            o           2606    16420    technologies technologies_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (technology_id);
 H   ALTER TABLE ONLY public.technologies DROP CONSTRAINT technologies_pkey;
       public            postgres    false    217            p           2606    16421 (   technologies fkru53v93xr18trh69286773amb    FK CONSTRAINT     �   ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT fkru53v93xr18trh69286773amb FOREIGN KEY (language_id) REFERENCES public.langugages(id);
 R   ALTER TABLE ONLY public.technologies DROP CONSTRAINT fkru53v93xr18trh69286773amb;
       public          postgres    false    215    217    3181                "   x�3�LV�2��J,K�2���/�������� P�            x�3�.(��K�4����� $��     