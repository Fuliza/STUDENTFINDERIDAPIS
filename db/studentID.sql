PGDMP      "                }            studentIdFinder    17.2    17.2 K    V           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            W           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            X           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            Y           1262    114707    studentIdFinder    DATABASE     �   CREATE DATABASE "studentIdFinder" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 !   DROP DATABASE "studentIdFinder";
                     postgres    false            a           1247    114722    Role    TYPE     B   CREATE TYPE public."Role" AS ENUM (
    'STUDENT',
    'ADMIN'
);
    DROP TYPE public."Role";
       public               postgres    false            �            1259    114778    AuditLog    TABLE     �   CREATE TABLE public."AuditLog" (
    id integer NOT NULL,
    action text NOT NULL,
    "userId" integer NOT NULL,
    "timestamp" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."AuditLog";
       public         heap r       postgres    false            �            1259    114777    AuditLog_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AuditLog_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."AuditLog_id_seq";
       public               postgres    false    229            Z           0    0    AuditLog_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."AuditLog_id_seq" OWNED BY public."AuditLog".id;
          public               postgres    false    228            �            1259    131483    Chat    TABLE     �   CREATE TABLE public."Chat" (
    id integer NOT NULL,
    "user1Id" integer NOT NULL,
    "user2Id" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public."Chat";
       public         heap r       postgres    false            �            1259    131482    Chat_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Chat_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Chat_id_seq";
       public               postgres    false    231            [           0    0    Chat_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Chat_id_seq" OWNED BY public."Chat".id;
          public               postgres    false    230            �            1259    114748    FoundID    TABLE     -  CREATE TABLE public."FoundID" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    name text NOT NULL,
    "admissionNo" text NOT NULL,
    location text NOT NULL,
    "reportedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    image text NOT NULL,
    status text
);
    DROP TABLE public."FoundID";
       public         heap r       postgres    false            �            1259    114747    FoundID_id_seq    SEQUENCE     �   CREATE SEQUENCE public."FoundID_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FoundID_id_seq";
       public               postgres    false    223            \           0    0    FoundID_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."FoundID_id_seq" OWNED BY public."FoundID".id;
          public               postgres    false    222            �            1259    114738    LostID    TABLE       CREATE TABLE public."LostID" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    name text NOT NULL,
    "admissionNo" text NOT NULL,
    "reportedAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    image text NOT NULL,
    status text
);
    DROP TABLE public."LostID";
       public         heap r       postgres    false            �            1259    114737    LostID_id_seq    SEQUENCE     �   CREATE SEQUENCE public."LostID_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LostID_id_seq";
       public               postgres    false    221            ]           0    0    LostID_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."LostID_id_seq" OWNED BY public."LostID".id;
          public               postgres    false    220            �            1259    114768    Message    TABLE     �   CREATE TABLE public."Message" (
    id integer NOT NULL,
    "senderId" integer NOT NULL,
    "receiverId" integer NOT NULL,
    text text NOT NULL,
    "sentAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "chatId" integer
);
    DROP TABLE public."Message";
       public         heap r       postgres    false            �            1259    114767    Message_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Message_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Message_id_seq";
       public               postgres    false    227            ^           0    0    Message_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Message_id_seq" OWNED BY public."Message".id;
          public               postgres    false    226            �            1259    114758    Notification    TABLE     �   CREATE TABLE public."Notification" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    message text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 "   DROP TABLE public."Notification";
       public         heap r       postgres    false            �            1259    114757    Notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Notification_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Notification_id_seq";
       public               postgres    false    225            _           0    0    Notification_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Notification_id_seq" OWNED BY public."Notification".id;
          public               postgres    false    224            �            1259    148004    Payment    TABLE     �  CREATE TABLE public."Payment" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    amount double precision NOT NULL,
    "paymentMethod" text DEFAULT 'MPESA'::text NOT NULL,
    "paymentStatus" text DEFAULT 'pending'::text NOT NULL,
    "paymentDate" timestamp(3) without time zone NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "transactionId" text,
    "merchantRequestId" text,
    "mpesaReceipt" text,
    "failureReason" text
);
    DROP TABLE public."Payment";
       public         heap r       postgres    false            �            1259    148003    Payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Payment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Payment_id_seq";
       public               postgres    false    233            `           0    0    Payment_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Payment_id_seq" OWNED BY public."Payment".id;
          public               postgres    false    232            �            1259    114728    User    TABLE     �   CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    role public."Role" DEFAULT 'STUDENT'::public."Role" NOT NULL
);
    DROP TABLE public."User";
       public         heap r       postgres    false    865    865            �            1259    114727    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public               postgres    false    219            a           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public               postgres    false    218            �            1259    114710    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap r       postgres    false            �           2604    114781    AuditLog id    DEFAULT     n   ALTER TABLE ONLY public."AuditLog" ALTER COLUMN id SET DEFAULT nextval('public."AuditLog_id_seq"'::regclass);
 <   ALTER TABLE public."AuditLog" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    229    229            �           2604    131486    Chat id    DEFAULT     f   ALTER TABLE ONLY public."Chat" ALTER COLUMN id SET DEFAULT nextval('public."Chat_id_seq"'::regclass);
 8   ALTER TABLE public."Chat" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    231    231            �           2604    114751 
   FoundID id    DEFAULT     l   ALTER TABLE ONLY public."FoundID" ALTER COLUMN id SET DEFAULT nextval('public."FoundID_id_seq"'::regclass);
 ;   ALTER TABLE public."FoundID" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    223    223            �           2604    114741 	   LostID id    DEFAULT     j   ALTER TABLE ONLY public."LostID" ALTER COLUMN id SET DEFAULT nextval('public."LostID_id_seq"'::regclass);
 :   ALTER TABLE public."LostID" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    220    221            �           2604    114771 
   Message id    DEFAULT     l   ALTER TABLE ONLY public."Message" ALTER COLUMN id SET DEFAULT nextval('public."Message_id_seq"'::regclass);
 ;   ALTER TABLE public."Message" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    226    227            �           2604    114761    Notification id    DEFAULT     v   ALTER TABLE ONLY public."Notification" ALTER COLUMN id SET DEFAULT nextval('public."Notification_id_seq"'::regclass);
 @   ALTER TABLE public."Notification" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    225    224    225            �           2604    148007 
   Payment id    DEFAULT     l   ALTER TABLE ONLY public."Payment" ALTER COLUMN id SET DEFAULT nextval('public."Payment_id_seq"'::regclass);
 ;   ALTER TABLE public."Payment" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    232    233    233            �           2604    114731    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    219    219            O          0    114778    AuditLog 
   TABLE DATA           G   COPY public."AuditLog" (id, action, "userId", "timestamp") FROM stdin;
    public               postgres    false    229   
\       Q          0    131483    Chat 
   TABLE DATA           G   COPY public."Chat" (id, "user1Id", "user2Id", "createdAt") FROM stdin;
    public               postgres    false    231   '\       I          0    114748    FoundID 
   TABLE DATA           m   COPY public."FoundID" (id, "userId", name, "admissionNo", location, "reportedAt", image, status) FROM stdin;
    public               postgres    false    223   H]       G          0    114738    LostID 
   TABLE DATA           b   COPY public."LostID" (id, "userId", name, "admissionNo", "reportedAt", image, status) FROM stdin;
    public               postgres    false    221   {^       M          0    114768    Message 
   TABLE DATA           [   COPY public."Message" (id, "senderId", "receiverId", text, "sentAt", "chatId") FROM stdin;
    public               postgres    false    227   "_       K          0    114758    Notification 
   TABLE DATA           L   COPY public."Notification" (id, "userId", message, "createdAt") FROM stdin;
    public               postgres    false    225   �b       S          0    148004    Payment 
   TABLE DATA           �   COPY public."Payment" (id, "userId", amount, "paymentMethod", "paymentStatus", "paymentDate", "createdAt", "transactionId", "merchantRequestId", "mpesaReceipt", "failureReason") FROM stdin;
    public               postgres    false    233   �b       E          0    114728    User 
   TABLE DATA           A   COPY public."User" (id, name, email, password, role) FROM stdin;
    public               postgres    false    219   e       C          0    114710    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public               postgres    false    217   �g       b           0    0    AuditLog_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."AuditLog_id_seq"', 1, false);
          public               postgres    false    228            c           0    0    Chat_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Chat_id_seq"', 23, true);
          public               postgres    false    230            d           0    0    FoundID_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."FoundID_id_seq"', 7, true);
          public               postgres    false    222            e           0    0    LostID_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LostID_id_seq"', 23, true);
          public               postgres    false    220            f           0    0    Message_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Message_id_seq"', 67, true);
          public               postgres    false    226            g           0    0    Notification_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Notification_id_seq"', 1, false);
          public               postgres    false    224            h           0    0    Payment_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Payment_id_seq"', 20, true);
          public               postgres    false    232            i           0    0    User_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."User_id_seq"', 17, true);
          public               postgres    false    218            �           2606    114786    AuditLog AuditLog_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."AuditLog"
    ADD CONSTRAINT "AuditLog_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."AuditLog" DROP CONSTRAINT "AuditLog_pkey";
       public                 postgres    false    229            �           2606    131489    Chat Chat_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Chat"
    ADD CONSTRAINT "Chat_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Chat" DROP CONSTRAINT "Chat_pkey";
       public                 postgres    false    231            �           2606    114756    FoundID FoundID_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."FoundID"
    ADD CONSTRAINT "FoundID_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."FoundID" DROP CONSTRAINT "FoundID_pkey";
       public                 postgres    false    223            �           2606    114746    LostID LostID_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."LostID"
    ADD CONSTRAINT "LostID_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."LostID" DROP CONSTRAINT "LostID_pkey";
       public                 postgres    false    221            �           2606    114776    Message Message_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "Message_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Message" DROP CONSTRAINT "Message_pkey";
       public                 postgres    false    227            �           2606    114766    Notification Notification_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Notification"
    ADD CONSTRAINT "Notification_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Notification" DROP CONSTRAINT "Notification_pkey";
       public                 postgres    false    225            �           2606    148014    Payment Payment_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_pkey";
       public                 postgres    false    233            �           2606    114736    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public                 postgres    false    219            �           2606    114718 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public                 postgres    false    217            �           1259    114787    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public                 postgres    false    219            �           2606    114813    AuditLog AuditLog_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AuditLog"
    ADD CONSTRAINT "AuditLog_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public."AuditLog" DROP CONSTRAINT "AuditLog_userId_fkey";
       public               postgres    false    229    4761    219            �           2606    131495    Chat Chat_user1Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chat"
    ADD CONSTRAINT "Chat_user1Id_fkey" FOREIGN KEY ("user1Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public."Chat" DROP CONSTRAINT "Chat_user1Id_fkey";
       public               postgres    false    4761    231    219            �           2606    131500    Chat Chat_user2Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Chat"
    ADD CONSTRAINT "Chat_user2Id_fkey" FOREIGN KEY ("user2Id") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public."Chat" DROP CONSTRAINT "Chat_user2Id_fkey";
       public               postgres    false    4761    231    219            �           2606    114793    FoundID FoundID_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."FoundID"
    ADD CONSTRAINT "FoundID_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public."FoundID" DROP CONSTRAINT "FoundID_userId_fkey";
       public               postgres    false    219    4761    223            �           2606    114788    LostID LostID_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."LostID"
    ADD CONSTRAINT "LostID_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public."LostID" DROP CONSTRAINT "LostID_userId_fkey";
       public               postgres    false    221    219    4761            �           2606    131490    Message Message_chatId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "Message_chatId_fkey" FOREIGN KEY ("chatId") REFERENCES public."Chat"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Message" DROP CONSTRAINT "Message_chatId_fkey";
       public               postgres    false    231    227    4773            �           2606    114808    Message Message_receiverId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "Message_receiverId_fkey" FOREIGN KEY ("receiverId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public."Message" DROP CONSTRAINT "Message_receiverId_fkey";
       public               postgres    false    227    219    4761            �           2606    114803    Message Message_senderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "Message_senderId_fkey" FOREIGN KEY ("senderId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public."Message" DROP CONSTRAINT "Message_senderId_fkey";
       public               postgres    false    4761    219    227            �           2606    114798 %   Notification Notification_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Notification"
    ADD CONSTRAINT "Notification_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public."Notification" DROP CONSTRAINT "Notification_userId_fkey";
       public               postgres    false    225    4761    219            �           2606    148015    Payment Payment_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Payment"
    ADD CONSTRAINT "Payment_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public."Payment" DROP CONSTRAINT "Payment_userId_fkey";
       public               postgres    false    233    219    4761            O      x������ � �      Q     x�]��q1D�"�M�_	��� vFU����<x��!��!O�4A�2V�]i�D��ມ�.�*�'e���3�gc�P�hZ5�	k�7eI�)��h\T�i,��=�p`�ʻ�g*�� �(��˷B��(��#���la�]ڔ���(Au����L�v�v���9]�~�*�Ոs���V�(�:�'�~V�5@4�&`�sMq�N��/\���A�z�x'����ǝoA$	��/����6���?�y_����YW�� ���y�      I   #  x�]��n�0�g�)���x�UUUee��	A�$U^���,w8�w�{X!����Eok�~��Qm�O7]�˄��	H��J��đ��@���d�[^��Y�$P�o��VU��4(�R7+$��	��R\xA�����3H�2=��>wC׷k���wO�h�	J��x�\UV��\ydK�&����.D!�)��j�5�4�"EJ����K~� �x _��𝎹�K���M'��>�W��#�ӶV�����FI�E�/{��2����Y��w����(�?��x�      G   �   x�E�A�0 ����@�ݭK[>`L<y�B�`(���`�<`�!�?#�;��Y:C��j�5�� �M����(D�{���}�=��\�M_˺]Z���w�v�ɚ\�k����$��^$��'��Q�5��{ޞ��SZ��*����/      M   {  x����r�8��ŧ��C� Oϲ7�Ǝ팣κ�L޾ (wc�i3���O&�p:���N���(���ܐ=�<�ÿ�1z*$`\�;D����cA�K���XaC�NO���6N�O[���������F_5�<��x ��G,�2)4"�B�5�)������9��� j���9����Sr Ƽ��l!j!�
�NU�{!����TȏP�n�ذ��ʐ�<??��'R�Mg���Y�3,���cI��S��i���t����'E�b����(}�Y��+1(q#�v(;�2�R|"T�b����5%�	�c��b�����~��� Ɂ2����)��j1��&sճ�S��NՁ"�&���p��d�2*h*�"����Q4�0�vz��{�Yoc���Rʒ���$���8ʾH��C����u�d��=������o�0+F� >��\���]��H��Q4�dbasa����_��d��Hm���4�T嵋:�0@:4-��,o�Q�� F
�de땂Uky�w#(ۃ��j�'�)Y V"��*ronB��`�����	B�ϟfv��"�d��t�k&�V���@GiL,��B�!�DsO��eٝ�#ٳF'd�z��ן#'f�唫�{?��۫�]>��������ՐC��\�����0�"&/N���6��a���֚b�wM�qo�@U[o���D�Q�w8�0�oS�'��
�C��Gt���*�X^C�t����?-�ʃ�b$$����^v���gR,EnF�=YC�º�?���I�tV��ӿ�$�F适�
FJ��-�~�x֒��� ��N����V�ҥn>����sYFT,��1�UQV`~����Fyȗ�u�Mw�te� h[*����s� �9��      K      x������ � �      S   9  x���ˊ�@E��W��Tu=��۬�Xd908��9X��T�3�D]�+�G��%�0v ���ݧ��~\·�4�.B��i���Guu�����}|D�o B��@	 q���Ç۵��+�}��P���tAOs*������P� �D-��Y�&P�	s���@�E�E�p
v��b���H�CZ��
J��}=R��"{X}�ށ�X�5��[7ΠFɽMk�hQH}��5��@1c���k��j��̡7]T�d@+���A�@��Uצ���B�"��F��kϮ����#[Q]*���]!Grt	Fj�LYܱ�f��j��65�, -TmXٳ#�=퇧����d�AA��z��H���a�u�X鲣��i�H��r����o�)X��&���-�F�>Л�q!N.h�N��&�d֐�8W���ـʼ�7ސ"ٲ�٣���.���u-�M%��.������ڏ��v���8�<���p���������e?N��u8�a�f^p/+RO���e}uiy�Gh�:QN�`������*u���}=�T��~�A#�[����l~�t�      E   m  x�e��r�@Ec�8Fl�Y�[M����̎�~\#[v����9���8R�����8Ao y!./8��1�gU���LX�����M]}���]�E$8��Hu���@#�{ģ���;�.F$N+X��*�%�4շA������%+OF̳	&O����$��N������A<�?�sX���L�i�Tim1:9;:#��JcG���Ľ��ٺ����"�lȲ�������S�=[zvӻ��A���з����e@�ՠ��%<XGa�h+sa��J��?,�=�_آOm�l��6���1�b�5�q9h�����brÒ=�GP��e� �q��H����>�4�i��~����мbZݴ���n�z<+#٠��w�k)8:�#��_�{ڞ�KꤽGR[�|>5�,�#矙�A	��>;2��k>R:�܋*}������<-�Z�єqA����؝�^0�s�jl3�5�-W\���hz������{�s*�5��b}�����cK�Vˮ��j�p�e��0�U�B�?�ȫ��O������ڸ^�霮[�IԕE�����(���4Z�᫈{�&�`y�c'7sC�!=~���l6� �p0&      C   �  x�mTYNcI�6��TV�U�>D��%����Z4|��'<tˋ�3^DFģѸv�b3�H[R*�������aoDS� �s���mD�[eW>B�| �(V�|4Tt��THo�N�'��
�_�����UY�wwχ��.���؏��.sx�kɌ�
��E�1ً�뚮����hFݑ�Y�ϾH���2��ۚm������Ȣ+W�d�n���N؎��]�o(`X�}���}�;�/O?��� �G�F�o2z���ⵯ"Vw镸Թ`���C�컁Djq��0�_,i#0w=�� ޢjn�wm��J�6��/,�O�G�D��_:ҧ�?J�S:�X�M�VM<%�ŉUW��t�cy*����5�c<*�����;�#j�)\�����Wp���s�da�h'��Q��\��P�A^%�����q�oV| �1�����D�]0AӊM���%�pm�chd2`F���VL�1)�B�̝�-S�V�9gO(��bdD�w\�5ע'��z�(��åH痟�?����������k�zl���ʋ���l7�l�@��2�z�5(]�`eG�vR%�j�1���p��:w�w��LZTY`#4v�,�.,PO$G��WbrÞ��)?�����'_�101D�6�7��M�Zf(yl%�%=��Fy���N�1a�{�K�2|w��g���u�`��c}�8��'~-*]򕷲��J
g��=_���xy��S�_�_�\���f��������?l/V�     