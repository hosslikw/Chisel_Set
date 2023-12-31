FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	  Purpose    
 �    P u r p o s e      l     ��  ��    b \This script allows you to make up to 50 folders at one time when you right click and select      �   � T h i s   s c r i p t   a l l o w s   y o u   t o   m a k e   u p   t o   5 0   f o l d e r s   a t   o n e   t i m e   w h e n   y o u   r i g h t   c l i c k   a n d   s e l e c t        l     ��  ��    X RQuick actions then "New Folders." You can implament this script in many ways. The      �   � Q u i c k   a c t i o n s   t h e n   " N e w   F o l d e r s . "   Y o u   c a n   i m p l a m e n t   t h i s   s c r i p t   i n   m a n y   w a y s .   T h e        l     ��  ��    M Gtwo methods that are built into the MacOs are Automator and Shortcuts.      �   � t w o   m e t h o d s   t h a t   a r e   b u i l t   i n t o   t h e   M a c O s   a r e   A u t o m a t o r   a n d   S h o r t c u t s .        l     ��������  ��  ��        l     ��   ��     Install      � ! !  I n s t a l l   " # " l     �� $ %��   $ f `In the Shortcuts app select the + symbol at the top of the window. This will open the Shortcuts     % � & & � I n   t h e   S h o r t c u t s   a p p   s e l e c t   t h e   +   s y m b o l   a t   t h e   t o p   o f   t h e   w i n d o w .   T h i s   w i l l   o p e n   t h e   S h o r t c u t s   #  ' ( ' l     �� ) *��   ) i ceditor. In the editor select the information button ??. it is located in the top right hand corner     * � + + � e d i t o r .   I n   t h e   e d i t o r   s e l e c t   t h e   i n f o r m a t i o n   b u t t o n  �=�� .   i t   i s   l o c a t e d   i n   t h e   t o p   r i g h t   h a n d   c o r n e r   (  , - , l     �� . /��   . k eof the window. Choose "Use as Quick Action" and "Finder" then select the widget for "Action Library,"    / � 0 0 � o f   t h e   w i n d o w .   C h o o s e   " U s e   a s   Q u i c k   A c t i o n "   a n d   " F i n d e r "   t h e n   s e l e c t   t h e   w i d g e t   f o r   " A c t i o n   L i b r a r y , " -  1 2 1 l     �� 3 4��   3 h bthe button next to Information. Search for "Run AppleScript" and drag it into the scroll field on     4 � 5 5 � t h e   b u t t o n   n e x t   t o   I n f o r m a t i o n .   S e a r c h   f o r   " R u n   A p p l e S c r i p t "   a n d   d r a g   i t   i n t o   t h e   s c r o l l   f i e l d   o n   2  6 7 6 l     �� 8 9��   8 g athe left. Delete the text that comes printed inside the Run AppleScript action. Paste this script    9 � : : � t h e   l e f t .   D e l e t e   t h e   t e x t   t h a t   c o m e s   p r i n t e d   i n s i d e   t h e   R u n   A p p l e S c r i p t   a c t i o n .   P a s t e   t h i s   s c r i p t 7  ; < ; l     �� = >��   = h binto that "Run AppleScript" wideget. Hit "Compile" ?? in the corner of the Run Applescript window     > � ? ? � i n t o   t h a t   " R u n   A p p l e S c r i p t "   w i d e g e t .   H i t   " C o m p i l e "  �=�(   i n   t h e   c o r n e r   o f   t h e   R u n   A p p l e s c r i p t   w i n d o w   <  @ A @ l     �� B C��   B 7 1then hit the Play button ?? to test your script.     C � D D b t h e n   h i t   t h e   P l a y   b u t t o n  %��   t o   t e s t   y o u r   s c r i p t .   A  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I  Propertis of this Script    J � K K 0 P r o p e r t i s   o f   t h i s   S c r i p t H  L M L l     �� N O��   N ] WUser defined variables : "folderCount, theFolder, newFolders, dialogResult, folderName"    O � P P � U s e r   d e f i n e d   v a r i a b l e s   :   " f o l d e r C o u n t ,   t h e F o l d e r ,   n e w F o l d e r s ,   d i a l o g R e s u l t ,   f o l d e r N a m e " M  Q R Q l     �� S T��   S a [Applescript commands: "run, set, display dialog, try, tell, activate, repeat, make, select"    T � U U � A p p l e s c r i p t   c o m m a n d s :   " r u n ,   s e t ,   d i s p l a y   d i a l o g ,   t r y ,   t e l l ,   a c t i v a t e ,   r e p e a t ,   m a k e ,   s e l e c t " R  V W V l     �� X Y��   X r lOther Applescript nomenclature includes input, parameters, default answer, integer, buttons, default button,    Y � Z Z � O t h e r   A p p l e s c r i p t   n o m e n c l a t u r e   i n c l u d e s   i n p u t ,   p a r a m e t e r s ,   d e f a u l t   a n s w e r ,   i n t e g e r ,   b u t t o n s ,   d e f a u l t   b u t t o n , W  [ \ [ l     �� ] ^��   ] Z Tapplication, folder, window, alias, new folder at, with properties, with i from 0 to    ^ � _ _ � a p p l i c a t i o n ,   f o l d e r ,   w i n d o w ,   a l i a s ,   n e w   f o l d e r   a t ,   w i t h   p r o p e r t i e s ,   w i t h   i   f r o m   0   t o \  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d  --Author KWH    e � f f  - - A u t h o r   K W H c  g�� g i      h i h I     �� j��
�� .aevtoappnull  �   � **** j J       k k  l m l o      ���� 	0 input   m  n�� n o      ���� 0 
parameters  ��  ��   i k    
 o o  p q p r      r s r n     	 t u t 1    	��
�� 
ttxt u l     v���� v I    �� w x
�� .sysodlogaskr        TEXT w m      y y � z z 8 E n t e r   t h e   n u m b e r   o f   f o l d e r s : x �� {��
�� 
dtxt { m     | | � } }  2��  ��  ��   s o      ���� 0 foldercount folderCount q  ~  ~ l   ��������  ��  ��     � � � Q    � ��� � k    � � �  � � � r     � � � c     � � � o    ���� 0 foldercount folderCount � m    ��
�� 
long � o      ���� 0 foldercount folderCount �  � � � l   ��������  ��  ��   �  ��� � Z    � � ��� � � G      � � � A     � � � o    ���� 0 foldercount folderCount � m    ����  � ?     � � � o    ���� 0 foldercount folderCount � m    ���� 2 � I  # .�� � �
�� .sysodlogaskr        TEXT � m   # $ � � � � � l I n v a l i d   i n p u t .   P l e a s e   e n t e r   a   n u m b e r   b e t w e e n   2   a n d   5 0 . � �� � �
�� 
btns � J   % ( � �  ��� � m   % & � � � � �  O K��   � �� ���
�� 
dflt � m   ) * � � � � �  O K��  ��   � O   1 � � � � k   5 � � �  � � � I  5 :������
�� .miscactvnull��� ��� obj ��  ��   �  � � � r   ; M � � � c   ; I � � � l  ; E ����� � n   ; E � � � m   A E��
�� 
cfol � l  ; A ����� � 4  ; A�� �
�� 
cwin � m   ? @���� ��  ��  ��  ��   � m   E H��
�� 
alis � o      ���� 0 	thefolder 	theFolder �  � � � r   N T � � � J   N P����   � o      ���� 0 
newfolders 
newFolders �  � � � Y   U � ��� � ��� � k   a � � �  � � � r   a � � � � I  a ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   e h��
�� 
cfol � �� � �
�� 
insh � o   k n���� 0 	thefolder 	theFolder � �� ���
�� 
prdt � K   q { � � �� ���
�� 
pnam � l  t y ����� � c   t y � � � o   t u���� 0 i   � m   u x��
�� 
ctxt��  ��  ��  ��   � o      ���� 0 	newfolder 	newFolder �  ��� � r   � � � � � o   � ����� 0 	newfolder 	newFolder � n       � � �  ;   � � � o   � ����� 0 
newfolders 
newFolders��  �� 0 i   � m   X Y����   � \   Y \ � � � o   Y Z���� 0 foldercount folderCount � m   Z [���� ��   �  � � � I  � ��� ���
�� .miscslctnull���     obj  � o   � ����� 0 
newfolders 
newFolders��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � @ D o   y o u   w a n t   t o   n a m e   e a c h   f o l d e r ? � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  Y e s �  ��� � m   � � � � � � �  N o��   � �� ���
�� 
dflt � m   � � � � � � �  N o��   � o      ���� 0 dialogresult dialogResult �  � � � l  � ���������  ��  ��   �  ��� � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 dialogresult dialogResult � m   � � � � � � �  Y e s � X   � � ��� � � k   � � � �  � � � r   � � � � � n   � �   1   � ���
�� 
ttxt l  � ����� I  � ���
�� .sysodlogaskr        TEXT m   � � � @ E n t e r   a   n e w   n a m e   f o r   t h e   f o l d e r : ���
�� 
dtxt m   � � �		  �  ��  ��   � o      �~�~ 0 
foldername 
folderName � 
�}
 r   � � o   � ��|�| 0 
foldername 
folderName n       1   � ��{
�{ 
pnam o   � ��z�z 0 	thefolder 	theFolder�}  �� 0 	thefolder 	theFolder � o   � ��y�y 0 
newfolders 
newFolders��  ��  ��   � m   1 2�                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��   � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  ��   � �u L  
 o  	�t�t 	0 input  �u  ��       �s�s   �r
�r .aevtoappnull  �   � **** �q i�p�o�n
�q .aevtoappnull  �   � ****�p �m�m   �l�k�l 	0 input  �k 0 
parameters  �o   �j�i�h�g�j 	0 input  �i 0 
parameters  �h 0 i  �g 0 	thefolder 	theFolder - y�f |�e�d�c�b�a�` ��_ ��^ ��]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N � � � ��M�L ��K�J�I�H�G
�f 
dtxt
�e .sysodlogaskr        TEXT
�d 
ttxt�c 0 foldercount folderCount
�b 
long�a 2
�` 
bool
�_ 
btns
�^ 
dflt�] 
�\ .miscactvnull��� ��� obj 
�[ 
cwin
�Z 
cfol
�Y 
alis�X 0 	thefolder 	theFolder�W 0 
newfolders 
newFolders
�V 
kocl
�U 
insh
�T 
prdt
�S 
pnam
�R 
ctxt�Q 
�P .corecrel****      � null�O 0 	newfolder 	newFolder
�N .miscslctnull���     obj �M 0 dialogresult dialogResult
�L 
bhit
�K 
cobj
�J .corecnte****       ****�I 0 
foldername 
folderName�H  �G  �n���l �,E�O ���&E�O�l
 ���& ���kv��� Y �� �*j O*a k/a ,a &E` OjvE` O =j�kkh *a a a _ a a �a &la  E` O_ _ 6F[OY��O_ j Oa �a  a !lv�a "� E` #O_ #a $,a %  ; 5_ [a a &l 'kh a (�a )l �,E` *O_ *�a ,F[OY��Y hUW X + ,hO�ascr  ��ޭ