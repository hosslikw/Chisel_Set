FasdUAS 1.101.10   ��   ��    k             l     ��  ��      File names storage     � 	 	 &   F i l e   n a m e s   s t o r a g e   
  
 p         ������  0 savedfilenames savedFileNames��        l     ����  r         J     ����    o      ����  0 savedfilenames savedFileNames��  ��        l     ��������  ��  ��        l     ��  ��    "  Save file names to the list     �   8   S a v e   f i l e   n a m e s   t o   t h e   l i s t      i         I      �� ���� 0 savefilenames saveFileNames   ��  o      ���� 0 filelist fileList��  ��    k           !   l     �� " #��   " 4 . Add the file names to the savedFileNames list    # � $ $ \   A d d   t h e   f i l e   n a m e s   t o   t h e   s a v e d F i l e N a m e s   l i s t !  %�� % r      & ' & b      ( ) ( o     ����  0 savedfilenames savedFileNames ) o    ���� 0 filelist fileList ' o      ����  0 savedfilenames savedFileNames��     * + * l     ��������  ��  ��   +  , - , l     �� . /��   . 	  1.    / � 0 0    1 . -  1 2 1 p     3 3 ������ 0 namecounter nameCounter��   2  4 5 4 l    6���� 6 r     7 8 7 m    ����  8 o      ���� 0 namecounter nameCounter��  ��   5  9 : 9 l  	  ;���� ; I  	 �� <��
�� .sysodlogaskr        TEXT < m   	 
 = = � > >  1��  ��  ��   :  ? @ ? l     ��������  ��  ��   @  A B A l     �� C D��   C   2.Lets get it poppin     D � E E ,   2 . L e t s   g e t   i t   p o p p i n   B  F G F l    H���� H r     I J I I   ���� K
�� .sysostdfalis    ��� null��   K �� L M
�� 
prmp L m     N N � O O  S e l e c t   F i l e s : M �� P��
�� 
mlsl P m    ��
�� boovtrue��   J o      ���� 0 	filepaths 	filePaths��  ��   G  Q R Q l     ��������  ��  ��   R  S T S l  1 U���� U O   1 V W V X   0 X�� Y X k   /+ Z Z  [ \ [ r   / 4 ] ^ ] n   / 2 _ ` _ 1   0 2��
�� 
pnam ` o   / 0���� 0 afile aFile ^ o      ���� 0 	dirtyname 	dirtyName \  a b a I  5 <�� c��
�� .sysodlogaskr        TEXT c m   5 8 d d � e e  3 .   f i l e s   l o a d e d��   b  f g f l  = =��������  ��  ��   g  h i h l  = =�� j k��   j j d 4. Isolate the file fileExt and isolate the the nakedNames, i.e., the filename without the fileExt,    k � l l �   4 .   I s o l a t e   t h e   f i l e   f i l e E x t   a n d   i s o l a t e   t h e   t h e   n a k e d N a m e s ,   i . e . ,   t h e   f i l e n a m e   w i t h o u t   t h e   f i l e E x t , i  m n m r   = F o p o n   = B q r q 1   > B��
�� 
nmxt r o   = >���� 0 afile aFile p o      ���� 0 fileext fileExt n  s t s r   G a u v u n   G ] w x w 7  H ]�� y z
�� 
ctxt y m   N P����  z d   Q \ { { l  R [ |���� | [   R [ } ~ } l  R Y ����  n   R Y � � � 1   U Y��
�� 
leng � o   R U���� 0 fileext fileExt��  ��   ~ m   Y Z���� ��  ��   x o   G H���� 0 	dirtyname 	dirtyName v o      ���� 0 	nakedname 	nakedName t  � � � I  b i�� ���
�� .sysodlogaskr        TEXT � m   b e � � � � �  4��   �  � � � l  j j��������  ��  ��   �  � � � l  j j�� � ���   �   5. Clean the nakedNames    � � � � 0   5 .   C l e a n   t h e   n a k e d N a m e s �  � � � r   j � � � � I  j }�� ���
�� .sysoexecTEXT���     TEXT � b   j y � � � b   j u � � � m   j m � � � � � 
 e c h o   � n   m t � � � 1   p t��
�� 
strq � o   m p���� 0 	nakedname 	nakedName � m   u x � � � � � 4   |   s e d   ' s / [ ^ [ : a l n u m : ] ] / / g '��   � o      ���� 0 cleanedname cleanedName �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � �  5��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � J   � � � �  � � � o   � ����� 0 	dirtyname 	dirtyName �  � � � o   � ����� 0 cleanedname cleanedName �  ��� � o   � ����� 0 cleanedname cleanedName��   � o      ���� 0 filelist fileList �  � � � I   � ��� ����� 0 savefilenames saveFileNames �  ��� � o   � ����� 0 filelist fileList��  ��   �  � � � l  � ��� � ���   � W Q 6. Ask if characters will be removed from the begining or end of the file names.    � � � � �   6 .   A s k   i f   c h a r a c t e r s   w i l l   b e   r e m o v e d   f r o m   t h e   b e g i n i n g   o r   e n d   o f   t h e   f i l e   n a m e s . �  � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � �  C u t   T h e � �� ���
�� 
btns � J   � � � �  � � � m   � � � � � � �  B e g i n n i n g �  ��� � m   � � � � � � �  E n d��  ��   �  � � � r   � � � � � =  � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
bhit � l  � � ����� � 1   � ���
�� 
rslt��  ��  ��  ��   � m   � � � � � � �  B e g i n n i n g � o      ���� 0 
cutatbegin 
cutAtBegin �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � = 7 Prompt the user for the number of characters to delete    � � � � n   P r o m p t   t h e   u s e r   f o r   t h e   n u m b e r   o f   c h a r a c t e r s   t o   d e l e t e �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � d E n t e r   t h e   n u m b e r   o f   c h a r a c t e r s   y o u   w i s h   t o   r e m o v e : � �� ���
�� 
dtxt � m   � � � � � � �  ��  ��  ��   � o      ���� 0 	deletions   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ��
� 
leng � o   � ��~�~ 0 cleanedname cleanedName � o      �}�} 0 totallength totalLength �  � � � l  � ��|�{�z�|  �{  �z   �  � � � Z   �) � ��y � � o   � ��x�x 0 
cutatbegin 
cutAtBegin � r   �	 � � � c   � � � � n   � � � � 7 ��w � �
�w 
cha  � l  � � ��v�u � [   � � �  � o   � ��t�t 0 	deletions    m   � ��s�s �v  �u   � o   � �r�r 0 totallength totalLength � o   � ��q�q 0 cleanedname cleanedName � m  �p
�p 
TEXT � o      �o�o 0 
nimblename 
nimbleName�y   � r  ) c  % n  ! 7!�n
�n 
cha  m  �m�m  l  	�l�k	 \   

 o  �j�j 0 totallength totalLength o  �i�i 0 	deletions  �l  �k   o  �h�h 0 cleanedname cleanedName m  !$�g
�g 
TEXT o      �f�f 0 
nimblename 
nimbleName �  l **�e�d�c�e  �d  �c   �b l **�a�`�_�a  �`  �_  �b  �� 0 afile aFile Y o   " #�^�^ 0 	filepaths 	filePaths W m    �                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��  ��   T  l 29�]�\ I 29�[�Z
�[ .sysodlogaskr        TEXT m  25 �  1 0�Z  �]  �\    l     �Y�X�W�Y  �X  �W    i     I      �V�U�V (0 generateuniquename GenerateUniqueName  o      �T�T 0 
nimblename 
nimbleName �S o      �R�R 0 fileext fileExt�S  �U   k     ;   !"! r     #$# b     %&% b     '(' b     )*) b     +,+ o     �Q�Q 0 
nimblename 
nimbleName, m    -- �..  _* n    /0/ 7   �P12
�P 
ctxt1 m   
 �O�O��2 m    �N�N��0 l   3�M�L3 b    454 m    66 �77  0 0 05 o    �K�K 0 namecounter nameCounter�M  �L  ( m    88 �99  .& o    �J�J 0 fileext fileExt$ o      �I�I 0 rarename rareName" :;: r    <=< [    >?> o    �H�H 0 namecounter nameCounter? m    �G�G = o      �F�F 0 namecounter nameCounter; @A@ l   �E�D�C�E  �D  �C  A B�BB O    ;CDC Z   " :EF�AGE I  " *�@H�?
�@ .coredoexnull���     ****H 4   " &�>I
�> 
fileI o   $ %�=�= 0 rarename rareName�?  F L   - 5JJ n  - 4KLK I   . 4�<M�;�< (0 generateuniquename GenerateUniqueNameM NON o   . /�:�: 0 
nimblename 
nimbleNameO P�9P o   / 0�8�8 0 fileext fileExt�9  �;  L  f   - .�A  G L   8 :QQ o   8 9�7�7 0 rarename rareNameD m    RR�                                                                                  sevs  alis    J  MAC                        �+	�BD ����System Events.app                                              �����+	�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��  �B   STS l     �6�5�4�6  �5  �4  T UVU i    WXW I      �3�2�1�3 0 
undonaming 
undoNaming�2  �1  X k     LYY Z[Z l     �0\]�0  \ . ( Check if there are any saved file names   ] �^^ P   C h e c k   i f   t h e r e   a r e   a n y   s a v e d   f i l e   n a m e s[ _�/_ Z     L`a�.b` ?     cdc l    e�-�,e I    �+f�*
�+ .corecnte****       ****f o     �)�)  0 savedfilenames savedFileNames�*  �-  �,  d m    �(�(  a k   
 Bgg hih l  
 
�'jk�'  j 4 . Rename the files back to their original names   k �ll \   R e n a m e   t h e   f i l e s   b a c k   t o   t h e i r   o r i g i n a l   n a m e si mnm O   
 5opo Y    4q�&rs�%q k    /tt uvu r    "wxw n     yzy 4     �${
�$ 
cobj{ o    �#�# 0 i  z o    �"�" 0 	filepaths 	filePathsx o      �!�! 0 afile aFilev |}| r   # )~~ n   # '��� 4   $ '� �
�  
cobj� o   % &�� 0 i  � o   # $��  0 savedfilenames savedFileNames o      �� $0 originalfilename originalFileName} ��� r   * /��� o   * +�� $0 originalfilename originalFileName� n      ��� 1   , .�
� 
pnam� o   + ,�� 0 afile aFile�  �& 0 i  r m    �� s I   ���
� .corecnte****       ****� o    �� 0 	filepaths 	filePaths�  �%  p m   
 ���                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  n ��� l  6 6����  �  �  � ��� l  6 6����  � $  Clear the savedFileNames list   � ��� <   C l e a r   t h e   s a v e d F i l e N a m e s   l i s t� ��� r   6 :��� J   6 8��  � o      ��  0 savedfilenames savedFileNames� ��� l  ; ;����  �  �  � ��� I  ; B�
��
�
 .sysonotfnull��� ��� TEXT� m   ; <�� ��� H U n d o   n a m i n g :   A l l   f i l e   n a m e s   r e s t o r e d� �	��
�	 
appr� m   = >�� ���   F i l e   N a m e   C h a n g e�  �  �.  b I  E L���
� .sysonotfnull��� ��� TEXT� m   E F�� ��� * N o   f i l e   n a m e s   t o   u n d o� ���
� 
appr� m   G H�� ���   F i l e   N a m e   C h a n g e�  �/  V ��� l     ����  �  �  � ��� l     �� ���  �   ��  � ��� l     ������  � V P Call the undoNaming handler when the user wants to undo the file naming changes   � ��� �   C a l l   t h e   u n d o N a m i n g   h a n d l e r   w h e n   t h e   u s e r   w a n t s   t o   u n d o   t h e   f i l e   n a m i n g   c h a n g e s� ���� l :?������ I  :?�������� 0 
undonaming 
undoNaming��  ��  ��  ��  ��       ��������������������������  � ���������������������������������� 0 savefilenames saveFileNames�� (0 generateuniquename GenerateUniqueName�� 0 
undonaming 
undoNaming
�� .aevtoappnull  �   � ****��  0 savedfilenames savedFileNames�� 0 namecounter nameCounter�� 0 	filepaths 	filePaths�� 0 	dirtyname 	dirtyName�� 0 fileext fileExt�� 0 	nakedname 	nakedName�� 0 cleanedname cleanedName�� 0 filelist fileList��  ��  ��  ��  � �� ���������� 0 savefilenames saveFileNames�� ����� �  ���� 0 filelist fileList��  � ���� 0 filelist fileList� ����  0 savedfilenames savedFileNames�� ��%E�� ������������ (0 generateuniquename GenerateUniqueName�� ����� �  ������ 0 
nimblename 
nimbleName�� 0 fileext fileExt��  � �������� 0 
nimblename 
nimbleName�� 0 fileext fileExt�� 0 rarename rareName� 
-6������8R�������� 0 namecounter nameCounter
�� 
ctxt����
�� 
file
�� .coredoexnull���     ****�� (0 generateuniquename GenerateUniqueName�� <��%��%[�\[Z�\Zi2%�%�%E�O�kE�O� *�/j  )��l+ 	Y �U� ��X���������� 0 
undonaming 
undoNaming��  ��  � ���������� 0 	filepaths 	filePaths�� 0 i  �� 0 afile aFile�� $0 originalfilename originalFileName� �������������������  0 savedfilenames savedFileNames
�� .corecnte****       ****
�� 
cobj
�� 
pnam
�� 
appr
�� .sysonotfnull��� ��� TEXT�� M�j j =� ( %k�j kh ��/E�O��/E�O���,F[OY��UOjvE�O���l Y 	���l � �����������
�� .aevtoappnull  �   � ****� k    ?��  ��  4��  9��  F��  S�� �� �����  ��  ��  � ���� 0 afile aFile� 2���� =���� N������������������ d���������� � ��� ����� ����� ��� � ����� ��� ��� �����������������  0 savedfilenames savedFileNames�� 0 namecounter nameCounter
�� .sysodlogaskr        TEXT
�� 
prmp
�� 
mlsl�� 
�� .sysostdfalis    ��� null�� 0 	filepaths 	filePaths
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 	dirtyname 	dirtyName
�� 
nmxt�� 0 fileext fileExt
�� 
ctxt
�� 
leng�� 0 	nakedname 	nakedName
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 cleanedname cleanedName�� 0 filelist fileList�� 0 savefilenames saveFileNames
�� 
btns
�� 
rslt
�� 
bhit�� 0 
cutatbegin 
cutAtBegin
�� 
dtxt
�� 
ttxt�� 0 	deletions  �� 0 totallength totalLength
�� 
cha 
�� 
TEXT�� 0 
nimblename 
nimbleName�� 0 
undonaming 
undoNaming��@jvE�OkE�O�j O*���e� E�O��[��l kh  ��,E�Oa j O�a ,E` O�[a \[Zk\Z_ a ,l'2E` Oa j Oa _ a ,%a %j E` Oa j O�_ _ mvE` O*_ k+ Oa a  a !a "lvl O_ #a $,a % E` &Oa 'a (a )l a *,E` +O_ a ,E` ,O_ & "_ [a -\[Z_ +k\Z_ ,2a .&E` /Y _ [a -\[Zk\Z_ ,_ +2a .&E` /OP[OY��UOa 0j O*j+ 1� ������  ��  �� � ����� �  ����������������Palis    L   MAC                        �+	�BD ����NewFolders_00.png                                              �����W��        ����  J cu            6/:Users:Kyle:Desktop:untitled_folder:NewFolders_00.png  $  N e w F o l d e r s _ 0 0 . p n g    M A C  4Users/Kyle/Desktop/untitled_folder/NewFolders_00.png  /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00002.png                                           �����W�0        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00002.png   *  N e w F o l d e r s _ 0 0 0 0 2 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00002.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00003.png                                           �����W�^        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00003.png   *  N e w F o l d e r s _ 0 0 0 0 3 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00003.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00004.png                                           �����W�V        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00004.png   *  N e w F o l d e r s _ 0 0 0 0 4 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00004.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00005.png                                           �����W�;        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00005.png   *  N e w F o l d e r s _ 0 0 0 0 5 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00005.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00007.png                                           �����XiM        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00007.png   *  N e w F o l d e r s _ 0 0 0 0 7 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00007.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00008.png                                           �����W�)        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00008.png   *  N e w F o l d e r s _ 0 0 0 0 8 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00008.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00009.png                                           �����W��        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00009.png   *  N e w F o l d e r s _ 0 0 0 0 9 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00009.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00010.png                                           �����W�        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00010.png   *  N e w F o l d e r s _ 0 0 0 1 0 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00010.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00011.png                                           �����W��        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00011.png   *  N e w F o l d e r s _ 0 0 0 1 1 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00011.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00012.png                                           �����W��        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00012.png   *  N e w F o l d e r s _ 0 0 0 1 2 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00012.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00013.png                                           �����W��        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00013.png   *  N e w F o l d e r s _ 0 0 0 1 3 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00013.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00014.png                                           �����Z��        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00014.png   *  N e w F o l d e r s _ 0 0 0 1 4 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00014.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00015.png                                           �����W�w        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00015.png   *  N e w F o l d e r s _ 0 0 0 1 5 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00015.png   /    ��  �^alis    Z   MAC                        �+	�BD ����NewFolders_00016.png                                           �����W�|        ����  J cu            9/:Users:Kyle:Desktop:untitled_folder:NewFolders_00016.png   *  N e w F o l d e r s _ 0 0 0 1 6 . p n g    M A C  7Users/Kyle/Desktop/untitled_folder/NewFolders_00016.png   /    ��  � ��� " N e w F o l d e r s _ 0 0 . p n g� ���  p n g� ���  N e w F o l d e r s _ 0 0� ���  N e w F o l d e r s 0 0� ����� �  �����  ��  ��  ��   ascr  ��ޭ