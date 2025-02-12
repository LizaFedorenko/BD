PGDMP  9    3                }            hospital_database    16.4    16.4 *               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    90278    hospital_database    DATABASE     �   CREATE DATABASE hospital_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 !   DROP DATABASE hospital_database;
                postgres    false            �            1259    90287    doctor    TABLE     �   CREATE TABLE public.doctor (
    doctor_id integer NOT NULL,
    hospital_id integer,
    salary numeric(10,2),
    experience_years integer,
    name character varying(255),
    specialization character varying(255)
);
    DROP TABLE public.doctor;
       public         heap    postgres    false            �            1259    90286    doctor_doctor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.doctor_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.doctor_doctor_id_seq;
       public          postgres    false    218                       0    0    doctor_doctor_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.doctor_doctor_id_seq OWNED BY public.doctor.doctor_id;
          public          postgres    false    217            �            1259    90280    hospital    TABLE     m   CREATE TABLE public.hospital (
    hospital_id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.hospital;
       public         heap    postgres    false            �            1259    90279    hospital_hospital_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hospital_hospital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.hospital_hospital_id_seq;
       public          postgres    false    216                       0    0    hospital_hospital_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.hospital_hospital_id_seq OWNED BY public.hospital.hospital_id;
          public          postgres    false    215            �            1259    90394 
   medication    TABLE     z   CREATE TABLE public.medication (
    medication_id integer NOT NULL,
    treatment_id integer,
    price numeric(10,2)
);
    DROP TABLE public.medication;
       public         heap    postgres    false            �            1259    90393    medication_medication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.medication_medication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.medication_medication_id_seq;
       public          postgres    false    224                       0    0    medication_medication_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.medication_medication_id_seq OWNED BY public.medication.medication_id;
          public          postgres    false    223            �            1259    90299    patient    TABLE     �   CREATE TABLE public.patient (
    patient_id integer NOT NULL,
    name character varying(255) NOT NULL,
    city character varying(255),
    age integer
);
    DROP TABLE public.patient;
       public         heap    postgres    false            �            1259    90298    patient_patient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.patient_patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.patient_patient_id_seq;
       public          postgres    false    220                       0    0    patient_patient_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.patient_patient_id_seq OWNED BY public.patient.patient_id;
          public          postgres    false    219            �            1259    90382 	   treatment    TABLE     �   CREATE TABLE public.treatment (
    treatment_id integer NOT NULL,
    doctor_id integer,
    patient_id integer,
    treatment_cost numeric(10,2)
);
    DROP TABLE public.treatment;
       public         heap    postgres    false            �            1259    90381    treatment_treatment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.treatment_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.treatment_treatment_id_seq;
       public          postgres    false    222                       0    0    treatment_treatment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.treatment_treatment_id_seq OWNED BY public.treatment.treatment_id;
          public          postgres    false    221            e           2604    90290    doctor doctor_id    DEFAULT     t   ALTER TABLE ONLY public.doctor ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctor_doctor_id_seq'::regclass);
 ?   ALTER TABLE public.doctor ALTER COLUMN doctor_id DROP DEFAULT;
       public          postgres    false    217    218    218            d           2604    90283    hospital hospital_id    DEFAULT     |   ALTER TABLE ONLY public.hospital ALTER COLUMN hospital_id SET DEFAULT nextval('public.hospital_hospital_id_seq'::regclass);
 C   ALTER TABLE public.hospital ALTER COLUMN hospital_id DROP DEFAULT;
       public          postgres    false    216    215    216            h           2604    90397    medication medication_id    DEFAULT     �   ALTER TABLE ONLY public.medication ALTER COLUMN medication_id SET DEFAULT nextval('public.medication_medication_id_seq'::regclass);
 G   ALTER TABLE public.medication ALTER COLUMN medication_id DROP DEFAULT;
       public          postgres    false    223    224    224            f           2604    90302    patient patient_id    DEFAULT     x   ALTER TABLE ONLY public.patient ALTER COLUMN patient_id SET DEFAULT nextval('public.patient_patient_id_seq'::regclass);
 A   ALTER TABLE public.patient ALTER COLUMN patient_id DROP DEFAULT;
       public          postgres    false    220    219    220            g           2604    90385    treatment treatment_id    DEFAULT     �   ALTER TABLE ONLY public.treatment ALTER COLUMN treatment_id SET DEFAULT nextval('public.treatment_treatment_id_seq'::regclass);
 E   ALTER TABLE public.treatment ALTER COLUMN treatment_id DROP DEFAULT;
       public          postgres    false    222    221    222                      0    90287    doctor 
   TABLE DATA           h   COPY public.doctor (doctor_id, hospital_id, salary, experience_years, name, specialization) FROM stdin;
    public          postgres    false    218   �/                 0    90280    hospital 
   TABLE DATA           5   COPY public.hospital (hospital_id, name) FROM stdin;
    public          postgres    false    216   T0                 0    90394 
   medication 
   TABLE DATA           H   COPY public.medication (medication_id, treatment_id, price) FROM stdin;
    public          postgres    false    224   �0       
          0    90299    patient 
   TABLE DATA           >   COPY public.patient (patient_id, name, city, age) FROM stdin;
    public          postgres    false    220   �0                 0    90382 	   treatment 
   TABLE DATA           X   COPY public.treatment (treatment_id, doctor_id, patient_id, treatment_cost) FROM stdin;
    public          postgres    false    222   �1                  0    0    doctor_doctor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.doctor_doctor_id_seq', 26, true);
          public          postgres    false    217                       0    0    hospital_hospital_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.hospital_hospital_id_seq', 3, true);
          public          postgres    false    215                       0    0    medication_medication_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.medication_medication_id_seq', 4, true);
          public          postgres    false    223                       0    0    patient_patient_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.patient_patient_id_seq', 11, true);
          public          postgres    false    219                       0    0    treatment_treatment_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.treatment_treatment_id_seq', 4, true);
          public          postgres    false    221            l           2606    90292    doctor doctor_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctor_id);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    218            j           2606    90285    hospital hospital_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.hospital
    ADD CONSTRAINT hospital_pkey PRIMARY KEY (hospital_id);
 @   ALTER TABLE ONLY public.hospital DROP CONSTRAINT hospital_pkey;
       public            postgres    false    216            r           2606    90399    medication medication_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.medication
    ADD CONSTRAINT medication_pkey PRIMARY KEY (medication_id);
 D   ALTER TABLE ONLY public.medication DROP CONSTRAINT medication_pkey;
       public            postgres    false    224            n           2606    90306    patient patient_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (patient_id);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            postgres    false    220            p           2606    90387    treatment treatment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT treatment_pkey PRIMARY KEY (treatment_id);
 B   ALTER TABLE ONLY public.treatment DROP CONSTRAINT treatment_pkey;
       public            postgres    false    222            s           2606    90293    doctor doctor_hospital_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_hospital_id_fkey FOREIGN KEY (hospital_id) REFERENCES public.hospital(hospital_id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_hospital_id_fkey;
       public          postgres    false    4714    216    218            u           2606    90400 '   medication medication_treatment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.medication
    ADD CONSTRAINT medication_treatment_id_fkey FOREIGN KEY (treatment_id) REFERENCES public.treatment(treatment_id);
 Q   ALTER TABLE ONLY public.medication DROP CONSTRAINT medication_treatment_id_fkey;
       public          postgres    false    224    222    4720            t           2606    90388 "   treatment treatment_doctor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT treatment_doctor_id_fkey FOREIGN KEY (doctor_id) REFERENCES public.doctor(doctor_id);
 L   ALTER TABLE ONLY public.treatment DROP CONSTRAINT treatment_doctor_id_fkey;
       public          postgres    false    222    218    4716               �   x�5�A� ���p
N@�h7ml�v�"� $X���W����_�vBJP�,�i���ֻ�ΖRH���F��ST��d�v�?��4��W7�=�`M��ƺO������"ܢ�m���1���Y~��Β~g2{	���Y0�         L   x�3�tN�+)J�Qp�,�T��/.�,I��2��M-)�WpO�K�rse��g��*���d&�t u�q��qqq kx@         ,   x�3�4�4�30�2�4�4��9�9��LN Ċ���� ���      
   �   x�U��
�@ �ݯ�/�D=� �`
SH ��0���0į׳2��0���cH�
V7paL'�.p���pջX���8d���#�-�O������������aY��*��~z�KC�QH��.�)�?;2         4   x�-��	  C�s2LIk�q�9�������RH,��k��l���v�o�|b�
:     