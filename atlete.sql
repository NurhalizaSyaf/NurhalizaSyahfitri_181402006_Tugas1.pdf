PGDMP         #                y            atlete    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16400    atlete    DATABASE     j   CREATE DATABASE atlete WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE atlete;
                postgres    false            ?            1259    16434    customer    TABLE     ?  CREATE TABLE public.customer (
    custno character varying(10) NOT NULL,
    custname character varying(30) NOT NULL,
    address character varying(30) NOT NULL,
    internal character varying(1) NOT NULL,
    contact character varying(30) NOT NULL,
    phone character varying(10) NOT NULL,
    city character varying(15) NOT NULL,
    state character varying(2) NOT NULL,
    zip character varying(5) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            ?            1259    16439    facility    TABLE     w   CREATE TABLE public.facility (
    facno character varying(10) NOT NULL,
    facname character varying(30) NOT NULL
);
    DROP TABLE public.facility;
       public         heap    postgres    false            ?            1259    16444    location    TABLE     ?   CREATE TABLE public.location (
    locno character varying(10) NOT NULL,
    facno character varying(10) NOT NULL,
    locname character varying(30) NOT NULL
);
    DROP TABLE public.location;
       public         heap    postgres    false            ?          0    16434    customer 
   TABLE DATA           i   COPY public.customer (custno, custname, address, internal, contact, phone, city, state, zip) FROM stdin;
    public          postgres    false    200   "       ?          0    16439    facility 
   TABLE DATA           2   COPY public.facility (facno, facname) FROM stdin;
    public          postgres    false    201          ?          0    16444    location 
   TABLE DATA           9   COPY public.location (locno, facno, locname) FROM stdin;
    public          postgres    false    202   o       )           2606    16438    customer custno_ 
   CONSTRAINT     R   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT custno_ PRIMARY KEY (custno);
 :   ALTER TABLE ONLY public.customer DROP CONSTRAINT custno_;
       public            postgres    false    200            +           2606    16455    facility facilityname 
   CONSTRAINT     S   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facilityname UNIQUE (facname);
 ?   ALTER TABLE ONLY public.facility DROP CONSTRAINT facilityname;
       public            postgres    false    201            -           2606    16443    facility facno_ 
   CONSTRAINT     P   ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facno_ PRIMARY KEY (facno);
 9   ALTER TABLE ONLY public.facility DROP CONSTRAINT facno_;
       public            postgres    false    201            /           2606    16448    location locno_ 
   CONSTRAINT     P   ALTER TABLE ONLY public.location
    ADD CONSTRAINT locno_ PRIMARY KEY (locno);
 9   ALTER TABLE ONLY public.location DROP CONSTRAINT locno_;
       public            postgres    false    202            0           2606    16449    location _locno    FK CONSTRAINT     r   ALTER TABLE ONLY public.location
    ADD CONSTRAINT _locno FOREIGN KEY (facno) REFERENCES public.facility(facno);
 9   ALTER TABLE ONLY public.location DROP CONSTRAINT _locno;
       public          postgres    false    201    2861    202            ?   ?   x?u??N?0???~???q\*!t;䀐?d?Y+B??v?oO?IcH?h;???TJJxdv!Fp????:?^?i?:t?H	?WE9?u<?C??-????RRAM??B?A ?@>w&???S?s??U???]#Rψkc??h??7/????~G???#?N2d?V7???c?~?0G?|R^??n?C"`?}??w`?]R=?????Ξԥx?B? ?e      ?   T   x?s340?t??/IJ??Q(.IL?,??r340?tJ,?N??'??%?D?@??`???Ԝ??1gPjrQjbIf~?BQ~~.W? ??      ?   h   x??140?t>??٩E
E???\>??р?ĪD??K??L?IUHO,I	???5?@?dEK???K2@¦??P?fP+RSR?K?2? ???qqq ??(4     