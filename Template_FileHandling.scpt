FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	  	Created by: Kyle Hossli    
 �   0 	 C r e a t e d   b y :   K y l e   H o s s l i      l     ��  ��     	Created on: 2023-11-12     �   . 	 C r e a t e d   o n :   2 0 2 3 - 1 1 - 1 2      l     ��������  ��  ��        l     ��  ��    4 .	Copyright � 2023 Posture, All Rights Reserved     �   \ 	 C o p y r i g h t   �   2 0 2 3   P o s t u r e ,   A l l   R i g h t s   R e s e r v e d      l     ��  ��        File Handling Template     �   2       F i l e   H a n d l i n g   T e m p l a t e      l     ��   ��    � z   This template is a robust base that provides working variables for a lot of the essential components of file handling.       � ! ! �       T h i s   t e m p l a t e   i s   a   r o b u s t   b a s e   t h a t   p r o v i d e s   w o r k i n g   v a r i a b l e s   f o r   a   l o t   o f   t h e   e s s e n t i a l   c o m p o n e n t s   o f   f i l e   h a n d l i n g .     " # " l     ��������  ��  ��   #  $ % $ l      & ' ( & x     �� ) *��   ) 1      ��
�� 
ascr * �� +��
�� 
minv + m       , , � - -  2 . 4��   '    Yosemite (10.10) or later    ( � . . 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r %  / 0 / x    �� 1����   1 2  	 ��
�� 
osax��   0  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 G A sets a list of variables to objects that can be used in a script    7 � 8 8 �   s e t s   a   l i s t   o f   v a r i a b l e s   t o   o b j e c t s   t h a t   c a n   b e   u s e d   i n   a   s c r i p t 5  9 : 9 i     ; < ; I      �������� (0 assigningvariables assigningVariables��  ��   < k    \ = =  > ? > r      @ A @ l    	 B���� B I    	���� C
�� .sysostdfalis    ��� null��   C �� D E
�� 
prmp D m     F F � G G  S e l e c t   F i l e s : E �� H��
�� 
mlsl H m    ��
�� boovtrue��  ��  ��   A o      ���� 	0 input   ?  I J I l   �� K L��   K N Hset logSheetPath to (path to desktop folder as string) & "log_sheet.txt"    L � M M � s e t   l o g S h e e t P a t h   t o   ( p a t h   t o   d e s k t o p   f o l d e r   a s   s t r i n g )   &   " l o g _ s h e e t . t x t " J  N�� N X   \ O�� P O k   W Q Q  R S R r     T U T o    ���� 0 afile aFile U o      ���� 0 
chosenfile 
chosenFile S  V�� V O    W W X W k   $V Y Y  Z [ Z r   $ ) \ ] \ l  $ ' ^���� ^ n   $ ' _ ` _ 1   % '��
�� 
psxp ` o   $ %���� 0 
chosenfile 
chosenFile��  ��   ] o      ���� 0 filepath filePath [  a b a r   * / c d c n   * - e f e 1   + -��
�� 
pnam f o   * +���� 0 
chosenfile 
chosenFile d o      ���� 0 
nameoffile 
nameOfFile b  g h g r   0 5 i j i n   0 3 k l k 1   1 3��
�� 
kind l o   0 1���� 0 
chosenfile 
chosenFile j o      ���� 0 filetype fileType h  m n m r   6 ; o p o n   6 9 q r q 1   7 9��
�� 
nmxt r o   6 7���� 0 
chosenfile 
chosenFile p o      ���� 0 	extension   n  s t s Z   < \ u v�� w u >  < ? x y x o   < =���� 0 	extension   y m   = > z z � { {   v r   B V | } | n   B T ~  ~ 7  C T�� � �
�� 
ctxt � m   G I����  � d   J S � � l  K R ����� � [   K R � � � l  K P ����� � I  K P�� ���
�� .corecnte****       **** � o   K L���� 0 	extension  ��  ��  ��   � m   P Q���� ��  ��    o   B C���� 0 
nameoffile 
nameOfFile } o      ���� 0 basename baseName��   w r   Y \ � � � o   Y Z���� 0 
nameoffile 
nameOfFile � o      ���� 0 basename baseName t  � � � 2  ] a��
�� 
ldt  �  � � � Q   b � � � � � k   e � � �  � � � r   e l � � � n   e j � � � 1   f j��
�� 
ascd � o   e f���� 0 
chosenfile 
chosenFile � o      ���� 0 	datevalue 	dateValue �  � � � r   m t � � � n   m r � � � 1   n r��
�� 
year � o   m n���� 0 	datevalue 	dateValue � o      ���� 0 	yearvalue 	yearValue �  � � � r   u � � � � c   u ~ � � � n   u z � � � m   v z��
�� 
mnth � o   u v���� 0 	datevalue 	dateValue � m   z }��
�� 
long � o      ���� 0 
monthvalue 
monthValue �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
day  � o   � ����� 0 	datevalue 	dateValue � o      ���� 0 dayvalue dayValue �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 � o   � ����� 0 	yearvalue 	yearValue��  ��   � o      ���� 0 
yearstring 
yearString �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 � o   � ����� 0 
monthvalue 
monthValue��  ��   � o      ���� 0 monthstring monthString �  � � � r   � � � � � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � ������� � m   � ������� � l  � � ����� � b   � � � � � m   � � � � � � �  0 � o   � ����� 0 dayvalue dayValue��  ��   � o      ���� 0 	daystring 	dayString �  � � � l  � ���������  ��  ��   �  ��� � l  � ��� � ���   � \ V if anything interupts the process the lines below revert any partially changed files	    � � � � �   i f   a n y t h i n g   i n t e r u p t s   t h e   p r o c e s s   t h e   l i n e s   b e l o w   r e v e r t   a n y   p a r t i a l l y   c h a n g e d   f i l e s 	��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   � k   � � � �  � � � r   � � � � � m   � ���
�� 
msng � o      ���� 0 	datevalue 	dateValue �  � � � r   � � � � � m   � ���
�� 
msng � o      ���� 0 	yearvalue 	yearValue �  � � � r   � � � � � m   � ���
�� 
msng � o      ���� 0 
monthvalue 
monthValue �  � � � r   � � � � � m   � ���
�� 
msng � o      ���� 0 dayvalue dayValue �  � � � l  � ���~�}�  �~  �}   �  � � � r   � � � � � m   � � � � � � �   � o      �|�| 0 
yearstring 
yearString �  � � � r   � � � � � m   � � � � � � �   � o      �{�{ 0 monthstring monthString �  � � � r   � � � � � m   � � � � �     � o      �z�z 0 	daystring 	dayString � �y l  � ��x�w�v�x  �w  �v  �y   �  l  � ��u�u   , & Log each 'set' command to a log sheet    � L   L o g   e a c h   ' s e t '   c o m m a n d   t o   a   l o g   s h e e t  r   �	
	 b   �	 l  ��t�s I  ��r
�r .earsffdralis        afdr m   � ��q
�q afdmdesk �p�o
�p 
rtyp m   �n
�n 
ctxt�o  �t  �s   m   �  l o g _ s h e e t . t x t
 o      �m�m 0 logsheetpath logSheetPath  r   m   �   o      �l�l 0 logentry logEntry  r  ! b   b    b  !"! b  #$# b  	%&% b  '(' b  �)*) b  �+,+ b  �-.- b  �/0/ b  �121 b  �343 b  �565 b  �787 b  �9:9 b  �;<; b  �=>= b  �?@? b  �ABA b  �CDC b  �EFE b  �GHG b  �IJI b  �KLK b  �MNM b  �OPO b  �QRQ b  �STS b  UVU b  uWXW b  qYZY b  m[\[ b  c]^] b  __`_ b  [aba b  Ucdc b  Qefe b  Mghg b  Giji b  Cklk b  ?mnm b  9opo b  5qrq b  1sts b  +uvu b  'wxw b  #yzy b  {|{ o  �k�k 0 logentry logEntry| m  }} �~~   s e t   f i l e P a t h   t o  z n  "� 1  "�j
�j 
strq� o  �i�i 0 filepath filePathx o  #&�h
�h 
ret v l 	'*��g�f� m  '*�� ��� $ s e t   n a m e O f F i l e   t o  �g  �f  t n  +0��� 1  ,0�e
�e 
strq� o  +,�d�d 0 
nameoffile 
nameOfFiler o  14�c
�c 
ret p l 	58��b�a� m  58�� ���   s e t   f i l e T y p e   t o  �b  �a  n n  9>��� 1  :>�`
�` 
strq� o  9:�_�_ 0 filetype fileTypel o  ?B�^
�^ 
ret j l 	CF��]�\� m  CF�� ��� " s e t   e x t e n s i o n   t o  �]  �\  h n  GL��� 1  HL�[
�[ 
strq� o  GH�Z�Z 0 	extension  f o  MP�Y
�Y 
ret d l 	QT��X�W� m  QT�� ���   s e t   b a s e N a m e   t o  �X  �W  b n  UZ��� 1  VZ�V
�V 
strq� o  UV�U�U 0 basename baseName` o  [^�T
�T 
ret ^ l 	_b��S�R� m  _b�� ��� " s e t   d a t e V a l u e   t o  �S  �R  \ n  cl��� 1  hl�Q
�Q 
strq� l ch��P�O� c  ch��� o  cd�N�N 0 	datevalue 	dateValue� m  dg�M
�M 
TEXT�P  �O  Z o  mp�L
�L 
ret X l 	qt��K�J� m  qt�� ��� " s e t   y e a r V a l u e   t o  �K  �J  V n  u~��� 1  z~�I
�I 
strq� l uz��H�G� c  uz��� o  uv�F�F 0 	yearvalue 	yearValue� m  vy�E
�E 
TEXT�H  �G  T o  ��D
�D 
ret R l 	����C�B� m  ���� ��� $ s e t   m o n t h V a l u e   t o  �C  �B  P n  ����� 1  ���A
�A 
strq� l ����@�?� c  ����� o  ���>�> 0 
monthvalue 
monthValue� m  ���=
�= 
TEXT�@  �?  N o  ���<
�< 
ret L l 	����;�:� m  ���� ���   s e t   d a y V a l u e   t o  �;  �:  J n  ����� 1  ���9
�9 
strq� l ����8�7� c  ����� o  ���6�6 0 dayvalue dayValue� m  ���5
�5 
TEXT�8  �7  H o  ���4
�4 
ret F l 	����3�2� m  ���� ��� $ s e t   y e a r S t r i n g   t o  �3  �2  D n  ����� 1  ���1
�1 
strq� l ����0�/� c  ����� o  ���.�. 0 
yearstring 
yearString� m  ���-
�- 
TEXT�0  �/  B o  ���,
�, 
ret @ l 	����+�*� m  ���� ��� & s e t   m o n t h S t r i n g   t o  �+  �*  > n  ����� 1  ���)
�) 
strq� l ����(�'� c  ����� o  ���&�& 0 monthstring monthString� m  ���%
�% 
TEXT�(  �'  < o  ���$
�$ 
ret : l 	����#�"� m  ���� ��� " s e t   d a y S t r i n g   t o  �#  �"  8 n  ����� 1  ���!
�! 
strq� l ���� �� c  ����� o  ���� 0 	daystring 	dayString� m  ���
� 
TEXT�   �  6 o  ���
� 
ret 4 l 	������ m  ���� ���   o p e n   f o r   a c c e s s  �  �  2 n  ����� 1  ���
� 
strq� o  ���� 0 logsheetpath logSheetPath0 m  ���� ��� ,   w i t h   w r i t e   p e r m i s s i o n. o  ���
� 
ret , l 	������ m  ���� ���  w r i t e  �  �  * n  ����� 1  ���
� 
strq� o  ���� 0 logentry logEntry( m  � �� ���    t o  & n  ��� 1  �
� 
strq� o  �� 0 logsheetpath logSheetPath$ m  	�� ��� 0   a s   t e x t   s t a r t i n g   a t   e o f" o  �
� 
ret   l 	���� m  �� ���  c l o s e   a c c e s s  �  �   n  ��� 1  �
� 
strq� o  �� 0 logsheetpath logSheetPath o      �� 0 logentry logEntry ��� l ""�
�	��
  �	  �  � ��� l ""����  �   Construct log entry   � ��� (   C o n s t r u c t   l o g   e n t r y� ��� r  "M��� b  "I��� b  "E��� b  "C��� b  "?��� b  "=��� b  "9��� b  "7��� b  "3��� b  "1� � b  "- b  "+ b  "' m  "% �  f i l e P a t h :   o  %&�� 0 filepath filePath m  '*		 �

  ,   y e a r V a l u e :   o  +,�� 0 	yearvalue 	yearValue  m  -0 �  ,   m o n t h V a l u e :  � o  12�� 0 
monthvalue 
monthValue� m  36 �  ,   d a y V a l u e   :  � o  78�� 0 dayvalue dayValue� m  9< �  ,   y e a r S t r i n g :  � o  =>�� 0 
yearstring 
yearString� m  ?B �   ,   m o n t h S t r i n g   :  � o  CD�� 0 monthstring monthString� m  EH �  
� o      � �  0 logentry logEntry� �� n NV I  OV������  0 writellogentry writeLlogEntry �� o  OR���� 0 logsheetpath logSheetPath��  ��    f  NO��   X m     !�                                                                                  MACS  alis    .  MAC                        �i��BD ����
Finder.app                                                     �����i��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 afile aFile P o    ���� 	0 input  ��   :  l     ��������  ��  ��    i      I      ��!���� 0 writelog writeLog! "#" o      ���� 0 texttoappend textToAppend# $��$ o      ���� 0 filepath filePath��  ��    Q     .%&'% k    (( )*) r    +,+ I   ��-.
�� .rdwropenshor       file- 4    ��/
�� 
file/ o    ���� 0 filepath filePath. ��0��
�� 
perm0 m    	��
�� boovtrue��  , o      ���� 0 fileref fileRef* 121 I   ��34
�� .rdwrwritnull���     ****3 o    ���� 0 texttoappend textToAppend4 ��56
�� 
refn5 o    ���� 0 fileref fileRef6 ��7��
�� 
wrat7 m    ��
�� rdwreof ��  2 8��8 I   ��9��
�� .rdwrclosnull���     ****9 o    ���� 0 fileref fileRef��  ��  & R      ��:��
�� .ascrerr ****      � ****: o      ���� 0 errmsg errMsg��  ' I  ' .��;��
�� .sysodlogaskr        TEXT; b   ' *<=< m   ' (>> �?? . E r r o r   w r i t i n g   t o   f i l e :  = o   ( )���� 0 errmsg errMsg��   @A@ l     ��������  ��  ��  A BCB l     ��������  ��  ��  C DED i    FGF I      ��H���� 80 checkfor_appsandinvisibles checkFor_AppsAndInvisiblesH I��I o      ���� 0 filepath filePath��  ��  G k     JJ KLK l     ��MN��  M A ;Determine if the file is invalid (an app or invisible file)   N �OO v D e t e r m i n e   i f   t h e   f i l e   i s   i n v a l i d   ( a n   a p p   o r   i n v i s i b l e   f i l e )L P��P O     QRQ Z    ST����S G    UVU C    WXW o    ���� 0 
nameoffile 
nameOfFileX m    YY �ZZ  .V =  
 [\[ o   
 ���� 0 filetype fileType\ m    ]] �^^  A p p l i c a t i o nT I   ��_��
�� .sysodlogaskr        TEXT_ m    `` �aa l I n v a l i d   i n p u t :   I n v i s i b l e   f i l e   o r   A p p l i c a t i o n   d e t e c t e d .��  ��  ��  R m     bb�                                                                                  sevs  alis    J  MAC                        �i��BD ����System Events.app                                              �����i��        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��  ��  E cdc l     ��������  ��  ��  d efe l    g����g I     �������� (0 assigningvariables assigningVariables��  ��  ��  ��  f hih l     ��������  ��  ��  i j��j l     ��������  ��  ��  ��       ��klmnop��  k ����������
�� 
pimr�� (0 assigningvariables assigningVariables�� 0 writelog writeLog�� 80 checkfor_appsandinvisibles checkFor_AppsAndInvisibles
�� .aevtoappnull  �   � ****l ��q�� q  rsr �� ,��
�� 
vers��  s ��t��
�� 
cobjt uu   ��
�� 
osax��  m �� <����vw���� (0 assigningvariables assigningVariables��  ��  v �������������������������������������� 	0 input  �� 0 afile aFile�� 0 
chosenfile 
chosenFile�� 0 filepath filePath�� 0 
nameoffile 
nameOfFile�� 0 filetype fileType�� 0 	extension  �� 0 basename baseName�� 0 	datevalue 	dateValue�� 0 	yearvalue 	yearValue�� 0 
monthvalue 
monthValue�� 0 dayvalue dayValue�� 0 
yearstring 
yearString�� 0 monthstring monthString�� 0 	daystring 	dayString�� 0 errmsg errMsg�� 0 logsheetpath logSheetPath�� 0 logentry logEntryw B�� F�������������������� z�������������� ��� ��� ������� � � ���~�}}�|�{������z������������	�y
�� 
prmp
�� 
mlsl�� 
�� .sysostdfalis    ��� null
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
ldt 
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
� afdmdesk
�~ 
rtyp
�} .earsffdralis        afdr
�| 
strq
�{ 
ret 
�z 
TEXT�y  0 writellogentry writeLlogEntry��]*���e� E�OO�[��l kh �E�O�4��,E�O��,E�O��,E�O��,E�O�� �[�\[Zk\Z�j l'2E�Y �E�O*�-EO f�a ,E�O�a ,E�O�a ,a &E�O�a ,E�Oa �%[�\[Za \Zi2E�Oa �%[�\[Za \Zi2E�Oa �%[�\[Za \Zi2E�OPW 2X  a E�Oa E�Oa E�Oa E�Oa E�Oa E�Oa E�OPOa  a !�l "a #%E^ Oa $E^ O] a %%�a &,%_ '%a (%�a &,%_ '%a )%�a &,%_ '%a *%�a &,%_ '%a +%�a &,%_ '%a ,%�a -&a &,%_ '%a .%�a -&a &,%_ '%a /%�a -&a &,%_ '%a 0%�a -&a &,%_ '%a 1%�a -&a &,%_ '%a 2%�a -&a &,%_ '%a 3%�a -&a &,%_ '%a 4%] a &,%a 5%_ '%a 6%] a &,%a 7%] a &,%a 8%_ '%a 9%] a &,%E^ Oa :�%a ;%�%a <%�%a =%�%a >%�%a ?%�%a @%E^ O)] k+ AU[OY��n �x �w�vxy�u�x 0 writelog writeLog�w �tz�t z  �s�r�s 0 texttoappend textToAppend�r 0 filepath filePath�v  x �q�p�o�n�q 0 texttoappend textToAppend�p 0 filepath filePath�o 0 fileref fileRef�n 0 errmsg errMsgy �m�l�k�j�i�h�g�f�e�d�c>�b
�m 
file
�l 
perm
�k .rdwropenshor       file
�j 
refn
�i 
wrat
�h rdwreof �g 
�f .rdwrwritnull���     ****
�e .rdwrclosnull���     ****�d 0 errmsg errMsg�c  
�b .sysodlogaskr        TEXT�u / !*�/�el E�O����� O�j W X 	 
�%j o �aG�`�_{|�^�a 80 checkfor_appsandinvisibles checkFor_AppsAndInvisibles�` �]}�] }  �\�\ 0 filepath filePath�_  { �[�Z�Y�[ 0 filepath filePath�Z 0 
nameoffile 
nameOfFile�Y 0 filetype fileType| bY]�X`�W
�X 
bool
�W .sysodlogaskr        TEXT�^ � ��
 �� �& 
�j Y hUp �V~�U�T��S
�V .aevtoappnull  �   � ****~ k     �� e�R�R  �U  �T    � �Q�Q (0 assigningvariables assigningVariables�S *j+   ascr  ��ޭ