FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	  Created by: Kyle Hossli    
 �   . C r e a t e d   b y :   K y l e   H o s s l i      l     ��  ��     Created on: 2023-11-12     �   , C r e a t e d   o n :   2 0 2 3 - 1 1 - 1 2      l     ��������  ��  ��        l     ��  ��    3 -Copyright � 2023 Posture, All Rights Reserved     �   Z C o p y r i g h t   �   2 0 2 3   P o s t u r e ,   A l l   R i g h t s   R e s e r v e d      l     ��������  ��  ��        l     ��  ��    @ :use AppleScript version "2.4" -- Yosemite (10.10) or later     �   t u s e   A p p l e S c r i p t   v e r s i o n   " 2 . 4 "   - -   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r       l     �� ! "��   !  use scripting additions    " � # # . u s e   s c r i p t i n g   a d d i t i o n s    $ % $ l     �� & '��   & } w	This script appends an underscore to the file names that are passed to it, followed by the creation date of each file.    ' � ( ( � 	 T h i s   s c r i p t   a p p e n d s   a n   u n d e r s c o r e   t o   t h e   f i l e   n a m e s   t h a t   a r e   p a s s e d   t o   i t ,   f o l l o w e d   b y   t h e   c r e a t i o n   d a t e   o f   e a c h   f i l e . %  ) * ) l     �� + ,��   + M G	It functions as a quick action, taking the input of files and folders.    , � - - � 	 I t   f u n c t i o n s   a s   a   q u i c k   a c t i o n ,   t a k i n g   t h e   i n p u t   o f   f i l e s   a n d   f o l d e r s . *  . / . l     �� 0 1��   0 u o	Before renaming the files, users are asked to choose the format they wish the date to appear in the file name.    1 � 2 2 � 	 B e f o r e   r e n a m i n g   t h e   f i l e s ,   u s e r s   a r e   a s k e d   t o   c h o o s e   t h e   f o r m a t   t h e y   w i s h   t h e   d a t e   t o   a p p e a r   i n   t h e   f i l e   n a m e . /  3 4 3 l     �� 5 6��   5 F @	Once the format is chosen, the date is written to the filename.    6 � 7 7 � 	 O n c e   t h e   f o r m a t   i s   c h o s e n ,   t h e   d a t e   i s   w r i t t e n   t o   t h e   f i l e n a m e . 4  8 9 8 l     �� : ;��   : ) #	The following formats are offered:    ; � < < F 	 T h e   f o l l o w i n g   f o r m a t s   a r e   o f f e r e d : 9  = > = l     �� ? @��   ? " 	1. YYYYMMDD (e.g. 20230408)    @ � A A 8 	 1 .   Y Y Y Y M M D D   ( e . g .   2 0 2 3 0 4 0 8 ) >  B C B l     �� D E��   D &  	2. YYYY-MM-DD (e.g. 2023-04-28)    E � F F @ 	 2 .   Y Y Y Y - M M - D D   ( e . g .   2 0 2 3 - 0 4 - 2 8 ) C  G H G l     �� I J��   I &  	3. DD-MM-YYYY (e.g. 28-04-2023)    J � K K @ 	 3 .   D D - M M - Y Y Y Y   ( e . g .   2 8 - 0 4 - 2 0 2 3 ) H  L M L l     �� N O��   N $ 	4. DDMMYYYY (e.g. 28-04-2023)    O � P P < 	 4 .   D D M M Y Y Y Y   ( e . g .   2 8 - 0 4 - 2 0 2 3 ) M  Q R Q l     �� S T��   S &  	5. MM-DD-YYYY (e.g. 04-28-2023)    T � U U @ 	 5 .   M M - D D - Y Y Y Y   ( e . g .   0 4 - 2 8 - 2 0 2 3 ) R  V W V l     �� X Y��   X - '	6. mmmm dd, yyyy (e.g. April 28, 2023)    Y � Z Z N 	 6 .   m m m m   d d ,   y y y y   ( e . g .   A p r i l   2 8 ,   2 0 2 3 ) W  [ \ [ l     ��������  ��  ��   \  ] ^ ] i      _ ` _ I      �������� (0 assigningvariables assigningVariables��  ��   ` k    � a a  b c b r      d e d l    	 f���� f I    	���� g
�� .sysostdfalis    ��� null��   g �� h i
�� 
prmp h m     j j � k k  S e l e c t   F i l e s : i �� l��
�� 
mlsl l m    ��
�� boovtrue��  ��  ��   e o      ���� 	0 input   c  m n m r     o p o b     q r q l    s���� s I   �� t u
�� .earsffdralis        afdr t m    ��
�� afdmdesk u �� v��
�� 
rtyp v m    ��
�� 
TEXT��  ��  ��   r m     w w � x x  l o g _ s h e e t . t x t p o      ���� 0 logsheetpath logSheetPath n  y�� y X   � z�� { z k   (� | |  } ~ } r   ( +  �  o   ( )���� 0 afile aFile � o      ���� 0 
chosenfile 
chosenFile ~  ��� � O   ,� � � � k   0 � �  � � � r   0 5 � � � l  0 3 ����� � n   0 3 � � � 1   1 3��
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
monthValue��  ��   � o      ���� 0 monthstring monthString �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 0 � o   � ����� 0 dayvalue dayValue��  ��   � o      ���� 0 	daystring 	dayString �  ��� � l  � ���������  ��  ��  ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   � k   �    r   � � m   � ��
� 
msng o      �~�~ 0 	datevalue 	dateValue  r   � � m   � ��}
�} 
msng o      �|�| 0 	yearvalue 	yearValue 	
	 r   � � m   � ��{
�{ 
msng o      �z�z 0 
monthvalue 
monthValue
  r   � � m   � ��y
�y 
msng o      �x�x 0 dayvalue dayValue  l  � ��w�v�u�w  �v  �u    r   �  m   � � �   o      �t�t 0 
yearstring 
yearString  r   m   �   o      �s�s 0 monthstring monthString �r r   !  m  
"" �##  ! o      �q�q 0 	daystring 	dayString�r   � $%$ l �p�o�n�p  �o  �n  % &'& l �m()�m  ( A ;Determine if the file is invalid (an app or invisible file)   ) �** v D e t e r m i n e   i f   t h e   f i l e   i s   i n v a l i d   ( a n   a p p   o r   i n v i s i b l e   f i l e )' +,+ O  3-.- Z  2/0�l�k/ G  $121 C  343 o  �j�j 0 
nameoffile 
nameOfFile4 m  55 �66  .2 =  787 o  �i�i 0 filetype fileType8 m  99 �::  A p p l i c a t i o n0 I '.�h;�g
�h .sysodlogaskr        TEXT; m  '*<< �== l I n v a l i d   i n p u t :   I n v i s i b l e   f i l e   o r   A p p l i c a t i o n   d e t e c t e d .�g  �l  �k  . m  >>�                                                                                  sevs  alis    J  MAC                        �i��BD ����System Events.app                                              �����i��        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��  , ?@? l 44�f�e�d�f  �e  �d  @ ABA l 44�cCD�c  C 3 - Rename the file using the chosen date format   D �EE Z   R e n a m e   t h e   f i l e   u s i n g   t h e   c h o s e n   d a t e   f o r m a tB FGF r  4VHIH I 4R�bJK
�b .gtqpchltns    @   @ ns  J J  4JLL MNM m  47OO �PP  Y Y Y Y M M D DN QRQ m  7:SS �TT  Y Y Y Y - M M - D DR UVU m  :=WW �XX  D D - M M - Y Y Y YV YZY m  =@[[ �\\  D D M M Y Y Y YZ ]^] m  @C__ �``  M M - D D - Y Y Y Y^ a�aa m  CFbb �cc  m m m m   d d ,   y y y y�a  K �`d�_
�` 
prmpd m  KNee �ff . C h o o s e   t h e   d a t e   f o r m a t :�_  I o      �^�^ 0 chosenformat chosenFormatG ghg Z  W}ij�]ki > W\lml o  WZ�\�\ 0 chosenformat chosenFormatm m  Z[�[
�[ boovfalsj k  _ynn opo r  _iqrq n  _ests 4  be�Zu
�Z 
cobju m  cd�Y�Y t o  _b�X�X 0 chosenformat chosenFormatr o      �W�W 0 
dateformat 
dateFormatp vwv Z  j!xyz�Vx = jq{|{ o  jm�U�U 0 
dateformat 
dateFormat| m  mp}} �~~  Y Y Y Y M M D Dy r  t}� b  ty��� b  tw��� o  tu�T�T 0 	yearvalue 	yearValue� o  uv�S�S 0 
monthvalue 
monthValue� o  wx�R�R 0 dayvalue dayValue� o      �Q�Q 0 formatteddate formattedDatez ��� = ����� o  ���P�P 0 
dateformat 
dateFormat� m  ���� ���  Y Y Y Y - M M - D D� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���O�O 0 
yearstring 
yearString� m  ���� ���  -� o  ���N�N 0 monthstring monthString� m  ���� ���  -� o  ���M�M 0 	daystring 	dayString� o      �L�L 0 formatteddate formattedDate� ��� = ����� o  ���K�K 0 
dateformat 
dateFormat� m  ���� ���  D D - M M - Y Y Y Y� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���J�J 0 	daystring 	dayString� m  ���� ���  -� o  ���I�I 0 monthstring monthString� m  ���� ���  -� o  ���H�H 0 
yearstring 
yearString� o      �G�G 0 formatteddate formattedDate� ��� = ����� o  ���F�F 0 
dateformat 
dateFormat� m  ���� ���  D D M M Y Y Y Y� ��� r  ����� b  ����� b  ����� o  ���E�E 0 	daystring 	dayString� o  ���D�D 0 monthstring monthString� o  ���C�C 0 
yearstring 
yearString� o      �B�B 0 formatteddate formattedDate� ��� = ����� o  ���A�A 0 
dateformat 
dateFormat� m  ���� ���  M M - D D - Y Y Y Y� ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���@�@ 0 monthstring monthString� m  ���� ���  -� o  ���?�? 0 	daystring 	dayString� m  ���� ���  -� o  ���>�> 0 
yearstring 
yearString� o      �=�= 0 formatteddate formattedDate� ��� = ����� o  ���<�< 0 
dateformat 
dateFormat� m  ���� ���  m m m m   d d ,   y y y y� ��;� r  ���� b  ���� b  ���� b  ���� b  ���� n  ���� 7 �:��
�: 
ctxt� m  	�9�9 � m  
�8�8��� l ���7�6� c  ���� l ����5�4� n  ����� m  ���3
�3 
mnth� o  ���2�2 0 	datevalue 	dateValue�5  �4  � m  � �1
�1 
TEXT�7  �6  � m  �� ���  _� o  �0�0 0 	daystring 	dayString� m  �� ���  _� o  �/�/ 0 
yearstring 
yearString� o      �.�. 0 formatteddate formattedDate�;  �V  w ��� l ""�-�,�+�-  �,  �+  � ��� l ""�*���*  � 0 * Append the formatted date to the filename   � ��� T   A p p e n d   t h e   f o r m a t t e d   d a t e   t o   t h e   f i l e n a m e� ��� r  "5��� b  "1� � b  "/ b  "+ b  "' o  "#�)�) 0 basename baseName m  #& �  _ o  '*�(�( 0 formatteddate formattedDate m  +.		 �

  .  o  /0�'�' 0 	extension  � o      �&�& 0 newfilename newFileName�  r  6E b  6A l 6=�%�$ c  6= n  6; m  7;�#
�# 
ctnr o  67�"�" 0 
chosenfile 
chosenFile m  ;<�!
�! 
TEXT�%  �$   o  =@� �  0 newfilename newFileName o      �� 0 newpath newPath  l FF����  �  �    l FF��     Rename the file    �     R e n a m e   t h e   f i l e � Q  Fy  r  IP!"! o  IL�� 0 newfilename newFileName" n      #$# 1  MO�
� 
pnam$ o  LM�� 0 
chosenfile 
chosenFile R      �%�
� .ascrerr ****      � ****% o      �� 0 errmsg errMsg�    k  Xy&& '(' l XX�)*�  ) 3 - Handle any error that occurs during renaming   * �++ Z   H a n d l e   a n y   e r r o r   t h a t   o c c u r s   d u r i n g   r e n a m i n g( ,�, I Xy�-.
� .sysodisAaleR        TEXT- m  X[// �00 
 E r r o r. �12
� 
mesS1 b  ^e343 m  ^a55 �66 V A n   e r r o r   o c c u r r e d   w h i l e   r e n a m i n g   t h e   f i l e :  4 o  ad�� 0 errmsg errMsg2 �78
� 
btns7 J  hm99 :�: m  hk;; �<<  O K�  8 �=�
� 
dflt= m  ps>> �??  O K�  �  �  �]  k l ||�
@A�
  @ 6 0 User cancelled the format selection, do nothing   A �BB `   U s e r   c a n c e l l e d   t h e   f o r m a t   s e l e c t i o n ,   d o   n o t h i n gh C�	C l ~~����  �  �  �	   � m   , -DD�                                                                                  MACS  alis    .  MAC                        �i��BD ����
Finder.app                                                     �����i��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 afile aFile { o    �� 	0 input  ��   ^ EFE l     ����  �  �  F GHG l     �IJ�  I ? 9 Call the assigningVariables function to start the script   J �KK r   C a l l   t h e   a s s i g n i n g V a r i a b l e s   f u n c t i o n   t o   s t a r t   t h e   s c r i p tH LML l    N� ��N I     �������� (0 assigningvariables assigningVariables��  ��  �   ��  M OPO l     ��������  ��  ��  P Q��Q l     ��������  ��  ��  ��       ��RST��  R ������ (0 assigningvariables assigningVariables
�� .aevtoappnull  �   � ****S �� `����UV���� (0 assigningvariables assigningVariables��  ��  U ���������������������������������������������� 	0 input  �� 0 logsheetpath logSheetPath�� 0 afile aFile�� 0 
chosenfile 
chosenFile�� 0 filepath filePath�� 0 
nameoffile 
nameOfFile�� 0 filetype fileType�� 0 	extension  �� 0 basename baseName�� 0 	datevalue 	dateValue�� 0 	yearvalue 	yearValue�� 0 
monthvalue 
monthValue�� 0 dayvalue dayValue�� 0 
yearstring 
yearString�� 0 monthstring monthString�� 0 	daystring 	dayString�� 0 errmsg errMsg�� 0 chosenformat chosenFormat�� 0 
dateformat 
dateFormat�� 0 formatteddate formattedDate�� 0 newfilename newFileName�� 0 newpath newPathV L�� j�������������� w������D�������� ������������� ��� ��� �������">59��<��OSW[_b��e��}�������������	��/��5��;��>��
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
 �a & a '& a (j )Y hUOa *a +a ,a -a .a /a 0v�a 1l 2E^ O] f] �k/E^ O] a 3  ��%�%E^ Y �] a 4  �a 5%�%a 6%�%E^ Y �] a 7  �a 8%�%a 9%�%E^ Y g] a :  ��%�%E^ Y Q] a ;  �a <%�%a =%�%E^ Y 3] a >  (�a ,�&[a \[Zk\Zi2a ?%�%a @%�%E^ Y hO�a A%] %a B%�%E^ O�a C,�&] %E^ O ] ��,FW (X  a Da Ea F] %a Ga Hkva Ia Ja 0 KY hOPU[OY��T ��W����XY��
�� .aevtoappnull  �   � ****W k     ZZ L����  ��  ��  X  Y ���� (0 assigningvariables assigningVariables�� *j+   ascr  ��ޭ