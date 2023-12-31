FasdUAS 1.101.10   ��   ��    k             l     ��  ��     --     � 	 	  - -   
  
 l     ��  ��      --	Created by: Kyle Hossli     �   4 - - 	 C r e a t e d   b y :   K y l e   H o s s l i      l     ��  ��     --	Created on: 2023-11-12     �   2 - - 	 C r e a t e d   o n :   2 0 2 3 - 1 1 - 1 2      l     ��  ��     --     �    - -      l     ��  ��    6 0--	Copyright � 2023 Posture, All Rights Reserved     �   ` - - 	 C o p y r i g h t   �   2 0 2 3   P o s t u r e ,   A l l   R i g h t s   R e s e r v e d      l     ��   !��      --    ! � " "  - -   # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' @ :use AppleScript version "2.4" -- Yosemite (10.10) or later    ( � ) ) t u s e   A p p l e S c r i p t   v e r s i o n   " 2 . 4 "   - -   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r &  * + * l     �� , -��   ,  use scripting additions    - � . . . u s e   s c r i p t i n g   a d d i t i o n s +  / 0 / l     �� 1 2��   1  y-- This script appends an underscore to the file names that are passed to it, followed by the creation date of each file.    2 � 3 3 � - -   T h i s   s c r i p t   a p p e n d s   a n   u n d e r s c o r e   t o   t h e   f i l e   n a m e s   t h a t   a r e   p a s s e d   t o   i t ,   f o l l o w e d   b y   t h e   c r e a t i o n   d a t e   o f   e a c h   f i l e . 0  4 5 4 l     �� 6 7��   6 O I-- It functions as a quick action, taking the input of files and folders.    7 � 8 8 � - -   I t   f u n c t i o n s   a s   a   q u i c k   a c t i o n ,   t a k i n g   t h e   i n p u t   o f   f i l e s   a n d   f o l d e r s . 5  9 : 9 l     �� ; <��   ; w q-- Before renaming the files, users are asked to choose the format they wish the date to appear in the file name.    < � = = � - -   B e f o r e   r e n a m i n g   t h e   f i l e s ,   u s e r s   a r e   a s k e d   t o   c h o o s e   t h e   f o r m a t   t h e y   w i s h   t h e   d a t e   t o   a p p e a r   i n   t h e   f i l e   n a m e . :  > ? > l     �� @ A��   @ H B-- Once the format is chosen, the date is written to the filename.    A � B B � - -   O n c e   t h e   f o r m a t   i s   c h o s e n ,   t h e   d a t e   i s   w r i t t e n   t o   t h e   f i l e n a m e . ?  C D C l     �� E F��   E + %-- The following formats are offered:    F � G G J - -   T h e   f o l l o w i n g   f o r m a t s   a r e   o f f e r e d : D  H I H l     �� J K��   J $ -- 1. YYYYMMDD (e.g. 20230408)    K � L L < - -   1 .   Y Y Y Y M M D D   ( e . g .   2 0 2 3 0 4 0 8 ) I  M N M l     �� O P��   O ( "-- 2. YYYY-MM-DD (e.g. 2023-04-28)    P � Q Q D - -   2 .   Y Y Y Y - M M - D D   ( e . g .   2 0 2 3 - 0 4 - 2 8 ) N  R S R l     �� T U��   T ( "-- 3. DD-MM-YYYY (e.g. 28-04-2023)    U � V V D - -   3 .   D D - M M - Y Y Y Y   ( e . g .   2 8 - 0 4 - 2 0 2 3 ) S  W X W l     �� Y Z��   Y &  -- 4. DDMMYYYY (e.g. 28-04-2023)    Z � [ [ @ - -   4 .   D D M M Y Y Y Y   ( e . g .   2 8 - 0 4 - 2 0 2 3 ) X  \ ] \ l     �� ^ _��   ^ ( "-- 5. MM-DD-YYYY (e.g. 04-28-2023)    _ � ` ` D - -   5 .   M M - D D - Y Y Y Y   ( e . g .   0 4 - 2 8 - 2 0 2 3 ) ]  a b a l     �� c d��   c / )-- 6. mmmm dd, yyyy (e.g. April 28, 2023)    d � e e R - -   6 .   m m m m   d d ,   y y y y   ( e . g .   A p r i l   2 8 ,   2 0 2 3 ) b  f g f l     ��������  ��  ��   g  h i h i      j k j I      �������� (0 assigningvariables assigningVariables��  ��   k k    � l l  m n m r      o p o l    	 q���� q I    	���� r
�� .sysostdfalis    ��� null��   r �� s t
�� 
prmp s m     u u � v v  S e l e c t   F i l e s : t �� w��
�� 
mlsl w m    ��
�� boovtrue��  ��  ��   p o      ���� 	0 input   n  x y x r     z { z b     | } | l    ~���� ~ I   ��  �
�� .earsffdralis        afdr  m    ��
�� afdmdesk � �� ���
�� 
rtyp � m    ��
�� 
TEXT��  ��  ��   } m     � � � � �  l o g _ s h e e t . t x t { o      ���� 0 logsheetpath logSheetPath y  ��� � X   � ��� � � k   (� � �  � � � r   ( + � � � o   ( )���� 0 afile aFile � o      ���� 0 
chosenfile 
chosenFile �  ��� � O   ,� � � � k   0 � �  � � � r   0 5 � � � l  0 3 ����� � n   0 3 � � � 1   1 3��
�� 
psxp � o   0 1���� 0 
chosenfile 
chosenFile��  ��   � o      ���� 0 filepath filePath �  � � � r   6 ; � � � n   6 9 � � � 1   7 9��
�� 
pnam � o   6 7���� 0 
chosenfile 
chosenFile � o      ���� 0 
nameoffile 
nameOfFile �  � � � r   < C � � � n   < A � � � 1   = A��
�� 
kind � o   < =���� 0 
chosenfile 
chosenFile � o      ���� 0 filetype fileType �  � � � r   D K � � � n   D I � � � 1   E I��
�� 
nmxt � o   D E���� 0 
chosenfile 
chosenFile � o      ���� 0 	extension   �  � � � Z   L p � ��� � � >  L Q � � � o   L M���� 0 	extension   � m   M P � � � � �   � r   T j � � � n   T h � � � 7  U h�� � �
�� 
ctxt � m   [ ]����  � d   ^ g � � l  _ f ����� � [   _ f � � � l  _ d ����� � I  _ d�� ���
�� .corecnte****       **** � o   _ `���� 0 	extension  ��  ��  ��   � m   d e���� ��  ��   � o   T U���� 0 
nameoffile 
nameOfFile � o      ���� 0 basename baseName��   � r   m p � � � o   m n���� 0 
nameoffile 
nameOfFile � o      ���� 0 basename baseName �  � � � Q   q � � � � k   t � � �  � � � r   t { � � � n   t y � � � 1   u y��
�� 
ascd � o   t u���� 0 
chosenfile 
chosenFile � o      ���� 0 	datevalue 	dateValue �  � � � r   | � � � � n   | � � � � 1   } ���
�� 
year � o   | }���� 0 	datevalue 	dateValue � o      ���� 0 	yearvalue 	yearValue �  � � � r   � � � � � c   � � � � � n   � � � � � m   � ���
�� 
mnth � o   � ����� 0 	datevalue 	dateValue � m   � ���
�� 
long � o      ���� 0 
monthvalue 
monthValue �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
day  � o   � ����� 0 	datevalue 	dateValue � o      ���� 0 dayvalue dayValue �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 0 0 0 � o   � ����� 0 	yearvalue 	yearValue��  ��   � o      ���� 0 
yearstring 
yearString �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 0 � o   � ����� 0 
monthvalue 
monthValue��  ��   � o      ���� 0 monthstring monthString �  � � � r   � � � � � n   � �   7  � ���
�� 
ctxt m   � ������� m   � ������� l  � ����� b   � � m   � � �  0 0 o   � ����� 0 dayvalue dayValue��  ��   � o      ���� 0 	daystring 	dayString � 	��	 l  � ���������  ��  ��  ��   � R      ��
��
�� .ascrerr ****      � ****
 o      ���� 0 errmsg errMsg��   � k   �  r   � � m   � ���
�� 
msng o      ���� 0 	datevalue 	dateValue  r   � � m   � ���
�� 
msng o      �� 0 	yearvalue 	yearValue  r   � � m   � ��~
�~ 
msng o      �}�} 0 
monthvalue 
monthValue  r   � � m   � ��|
�| 
msng o      �{�{ 0 dayvalue dayValue  l  � ��z�y�x�z  �y  �x    r   �  !  m   � �"" �##  ! o      �w�w 0 
yearstring 
yearString $%$ r  &'& m  (( �))  ' o      �v�v 0 monthstring monthString% *�u* r  +,+ m  
-- �..  , o      �t�t 0 	daystring 	dayString�u   � /0/ l �s�r�q�s  �r  �q  0 121 l �p34�p  3 A ;Determine if the file is invalid (an app or invisible file)   4 �55 v D e t e r m i n e   i f   t h e   f i l e   i s   i n v a l i d   ( a n   a p p   o r   i n v i s i b l e   f i l e )2 676 O  3898 Z  2:;�o�n: G  $<=< C  >?> o  �m�m 0 
nameoffile 
nameOfFile? m  @@ �AA  .= =  BCB o  �l�l 0 filetype fileTypeC m  DD �EE  A p p l i c a t i o n; I '.�kF�j
�k .sysodlogaskr        TEXTF m  '*GG �HH l I n v a l i d   i n p u t :   I n v i s i b l e   f i l e   o r   A p p l i c a t i o n   d e t e c t e d .�j  �o  �n  9 m  II�                                                                                  sevs  alis    J  MAC                        �i��BD ����System Events.app                                              �����i��        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��  7 JKJ l 44�i�h�g�i  �h  �g  K LML l 44�fNO�f  N 3 - Rename the file using the chosen date format   O �PP Z   R e n a m e   t h e   f i l e   u s i n g   t h e   c h o s e n   d a t e   f o r m a tM QRQ r  4VSTS I 4R�eUV
�e .gtqpchltns    @   @ ns  U J  4JWW XYX m  47ZZ �[[  Y Y Y Y M M D DY \]\ m  7:^^ �__  Y Y Y Y - M M - D D] `a` m  :=bb �cc  D D - M M - Y Y Y Ya ded m  =@ff �gg  D D M M Y Y Y Ye hih m  @Cjj �kk  M M - D D - Y Y Y Yi l�dl m  CFmm �nn  m m m m   d d ,   y y y y�d  V �co�b
�c 
prmpo m  KNpp �qq . C h o o s e   t h e   d a t e   f o r m a t :�b  T o      �a�a 0 chosenformat chosenFormatR rsr Z  W}tu�`vt > W\wxw o  WZ�_�_ 0 chosenformat chosenFormatx m  Z[�^
�^ boovfalsu k  _yyy z{z r  _i|}| n  _e~~ 4  be�]�
�] 
cobj� m  cd�\�\  o  _b�[�[ 0 chosenformat chosenFormat} o      �Z�Z 0 
dateformat 
dateFormat{ ��� Z  j!����Y� = jq��� o  jm�X�X 0 
dateformat 
dateFormat� m  mp�� ���  Y Y Y Y M M D D� r  t}��� b  ty��� b  tw��� o  tu�W�W 0 	yearvalue 	yearValue� o  uv�V�V 0 
monthvalue 
monthValue� o  wx�U�U 0 dayvalue dayValue� o      �T�T 0 formatteddate formattedDate� ��� = ����� o  ���S�S 0 
dateformat 
dateFormat� m  ���� ���  Y Y Y Y - M M - D D� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���R�R 0 
yearstring 
yearString� m  ���� ���  -� o  ���Q�Q 0 monthstring monthString� m  ���� ���  -� o  ���P�P 0 	daystring 	dayString� o      �O�O 0 formatteddate formattedDate� ��� = ����� o  ���N�N 0 
dateformat 
dateFormat� m  ���� ���  D D - M M - Y Y Y Y� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���M�M 0 	daystring 	dayString� m  ���� ���  -� o  ���L�L 0 monthstring monthString� m  ���� ���  -� o  ���K�K 0 
yearstring 
yearString� o      �J�J 0 formatteddate formattedDate� ��� = ����� o  ���I�I 0 
dateformat 
dateFormat� m  ���� ���  D D M M Y Y Y Y� ��� r  ����� b  ����� b  ����� o  ���H�H 0 	daystring 	dayString� o  ���G�G 0 monthstring monthString� o  ���F�F 0 
yearstring 
yearString� o      �E�E 0 formatteddate formattedDate� ��� = ����� o  ���D�D 0 
dateformat 
dateFormat� m  ���� ���  M M - D D - Y Y Y Y� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���C�C 0 monthstring monthString� m  ���� ���  -� o  ���B�B 0 	daystring 	dayString� m  ���� ���  -� o  ���A�A 0 
yearstring 
yearString� o      �@�@ 0 formatteddate formattedDate� ��� = ����� o  ���?�? 0 
dateformat 
dateFormat� m  ���� ���  m m m m   d d ,   y y y y� ��>� r  ���� b  ���� b  ���� b  ���� b  ���� n  ���� 7 �=��
�= 
ctxt� m  	�<�< � m  
�;�;��� l ���:�9� c  ���� l ����8�7� n  ����� m  ���6
�6 
mnth� o  ���5�5 0 	datevalue 	dateValue�8  �7  � m  � �4
�4 
TEXT�:  �9  � m  �� ���  _� o  �3�3 0 	daystring 	dayString� m  �� ���  _� o  �2�2 0 
yearstring 
yearString� o      �1�1 0 formatteddate formattedDate�>  �Y  � � � l ""�0�/�.�0  �/  �.     l ""�-�-   0 * Append the formatted date to the filename    � T   A p p e n d   t h e   f o r m a t t e d   d a t e   t o   t h e   f i l e n a m e  r  "5	 b  "1

 b  "/ b  "+ b  "' o  "#�,�, 0 basename baseName m  #& �  _ o  '*�+�+ 0 formatteddate formattedDate m  +. �  . o  /0�*�* 0 	extension  	 o      �)�) 0 newfilename newFileName  r  6E b  6A l 6=�(�' c  6= n  6;  m  7;�&
�& 
ctnr  o  67�%�% 0 
chosenfile 
chosenFile m  ;<�$
�$ 
TEXT�(  �'   o  =@�#�# 0 newfilename newFileName o      �"�" 0 newpath newPath !"! l FF�!� ��!  �   �  " #$# l FF�%&�  %   Rename the file   & �''     R e n a m e   t h e   f i l e$ (�( Q  Fy)*+) r  IP,-, o  IL�� 0 newfilename newFileName- n      ./. 1  MO�
� 
pnam/ o  LM�� 0 
chosenfile 
chosenFile* R      �0�
� .ascrerr ****      � ****0 o      �� 0 errmsg errMsg�  + k  Xy11 232 l XX�45�  4 3 - Handle any error that occurs during renaming   5 �66 Z   H a n d l e   a n y   e r r o r   t h a t   o c c u r s   d u r i n g   r e n a m i n g3 7�7 I Xy�89
� .sysodisAaleR        TEXT8 m  X[:: �;; 
 E r r o r9 �<=
� 
mesS< b  ^e>?> m  ^a@@ �AA V A n   e r r o r   o c c u r r e d   w h i l e   r e n a m i n g   t h e   f i l e :  ? o  ad�� 0 errmsg errMsg= �BC
� 
btnsB J  hmDD E�E m  hkFF �GG  O K�  C �H�
� 
dfltH m  psII �JJ  O K�  �  �  �`  v l ||�KL�  K 6 0 User cancelled the format selection, do nothing   L �MM `   U s e r   c a n c e l l e d   t h e   f o r m a t   s e l e c t i o n ,   d o   n o t h i n gs N�N l ~~��
�	�  �
  �	  �   � m   , -OO�                                                                                  MACS  alis    .  MAC                        �i��BD ����
Finder.app                                                     �����i��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 afile aFile � o    �� 	0 input  ��   i PQP l     ����  �  �  Q RSR l     �TU�  T ? 9 Call the assigningVariables function to start the script   U �VV r   C a l l   t h e   a s s i g n i n g V a r i a b l e s   f u n c t i o n   t o   s t a r t   t h e   s c r i p tS WXW l    Y��Y I     �� ��� (0 assigningvariables assigningVariables�   ��  �  �  X Z[Z l     ��������  ��  ��  [ \��\ l     ��������  ��  ��  ��       ��]^_��  ] ������ (0 assigningvariables assigningVariables
�� .aevtoappnull  �   � ****^ �� k����`a���� (0 assigningvariables assigningVariables��  ��  ` ���������������������������������������������� 	0 input  �� 0 logsheetpath logSheetPath�� 0 afile aFile�� 0 
chosenfile 
chosenFile�� 0 filepath filePath�� 0 
nameoffile 
nameOfFile�� 0 filetype fileType�� 0 	extension  �� 0 basename baseName�� 0 	datevalue 	dateValue�� 0 	yearvalue 	yearValue�� 0 
monthvalue 
monthValue�� 0 dayvalue dayValue�� 0 
yearstring 
yearString�� 0 monthstring monthString�� 0 	daystring 	dayString�� 0 errmsg errMsg�� 0 chosenformat chosenFormat�� 0 
dateformat 
dateFormat�� 0 formatteddate formattedDate�� 0 newfilename newFileName�� 0 newpath newPatha L�� u�������������� �������O�������� ������������� ��� ���������"(-I@D��G��Z^bfjm��p������������������:��@��F��I��
�� 
prmp
�� 
mlsl�� 
�� .sysostdfalis    ��� null
�� afdmdesk
�� 
rtyp
�� 
TEXT
�� .earsffdralis        afdr
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psxp
�� 
pnam
�� 
kind
�� 
nmxt
�� 
ctxt
�� 
ascd
�� 
year
�� 
mnth
�� 
long
�� 
day ���������� 0 errmsg errMsg��  
�� 
msng
�� 
bool
�� .sysodlogaskr        TEXT�� 
�� .gtqpchltns    @   @ ns  
�� 
ctnr
�� 
mesS
�� 
btns
�� 
dflt
�� .sysodisAaleR        TEXT���*���e� E�O���l �%E�Ol�[��l kh �E�O�Q��,E�O��,E�O�a ,E�O�a ,E�O�a  �[a \[Zk\Z�j l'2E�Y �E�O l�a ,E�O�a ,E�O�a ,a &E�O�a ,E�Oa �%[a \[Za \Zi2E�Oa �%[a \[Za \Zi2E�Oa �%[a \[Za \Zi2E�OPW 0X  a  E�Oa  E�Oa  E�Oa  E�Oa !E�Oa "E�Oa #E�Oa $ !�a %
 �a & a '& a (j )Y hUOa *a +a ,a -a .a /a 0v�a 1l 2E^ O] f] �k/E^ O] a 3  ��%�%E^ Y �] a 4  �a 5%�%a 6%�%E^ Y �] a 7  �a 8%�%a 9%�%E^ Y g] a :  ��%�%E^ Y Q] a ;  �a <%�%a =%�%E^ Y 3] a >  (�a ,�&[a \[Zk\Zi2a ?%�%a @%�%E^ Y hO�a A%] %a B%�%E^ O�a C,�&] %E^ O ] ��,FW (X  a Da Ea F] %a Ga Hkva Ia Ja 0 KY hOPU[OY��_ ��b����cd��
�� .aevtoappnull  �   � ****b k     ee W����  ��  ��  c  d ���� (0 assigningvariables assigningVariables�� *j+  ascr  ��ޭ