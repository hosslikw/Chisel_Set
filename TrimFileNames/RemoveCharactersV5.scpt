FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Global Variables     � 	 	 "   G l o b a l   V a r i a b l e s   
  
 p         ������  0 savedfilenames savedFileNames��        l     ����  r         J     ����    o      ����  0 savedfilenames savedFileNames��  ��        p         ������ 0 namecounter nameCounter��        l    ����  r        m    ����   o      ���� 0 namecounter nameCounter��  ��        l     ��������  ��  ��        l     ��  ��    "  Save file names to the list     �     8   S a v e   f i l e   n a m e s   t o   t h e   l i s t   ! " ! i      # $ # I      �� %���� 0 savefilenames saveFileNames %  &�� & o      ���� 0 filelist fileList��  ��   $ k      ' '  ( ) ( l     �� * +��   * 4 . Add the file names to the savedFileNames list    + � , , \   A d d   t h e   f i l e   n a m e s   t o   t h e   s a v e d F i l e N a m e s   l i s t )  -�� - r      . / . b      0 1 0 o     ����  0 savedfilenames savedFileNames 1 o    ���� 0 filelist fileList / o      ����  0 savedfilenames savedFileNames��   "  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6   Process selected files    7 � 8 8 .   P r o c e s s   s e l e c t e d   f i l e s 5  9 : 9 i     ; < ; I      �������� 0 processfiles processFiles��  ��   < k     i = =  > ? > r      @ A @ I    	���� B
�� .sysostdfalis    ��� null��   B �� C D
�� 
prmp C m     E E � F F  S e l e c t   F i l e s : D �� G��
�� 
mlsl G m    ��
�� boovtrue��   A o      ���� 0 	filepaths 	filePaths ?  H�� H O    i I J I X    h K�� L K k     c M M  N O N r     % P Q P n     # R S R 1   ! #��
�� 
pnam S o     !���� 0 afile aFile Q o      ���� 0 	dirtyname 	dirtyName O  T U T r   & + V W V n   & ) X Y X 1   ' )��
�� 
nmxt Y o   & '���� 0 afile aFile W o      ���� 0 fileext fileExt U  Z [ Z r   , > \ ] \ n   , < ^ _ ^ 7  - <�� ` a
�� 
ctxt ` m   1 3����  a d   4 ; b b l  5 : c���� c [   5 : d e d l  5 8 f���� f n   5 8 g h g 1   6 8��
�� 
leng h o   5 6���� 0 fileext fileExt��  ��   e m   8 9���� ��  ��   _ o   , -���� 0 	dirtyname 	dirtyName ] o      ���� 0 	nakedname 	nakedName [  i j i r   ? L k l k I  ? J�� m��
�� .sysoexecTEXT���     TEXT m b   ? F n o n b   ? D p q p m   ? @ r r � s s 
 e c h o   q n   @ C t u t 1   A C��
�� 
strq u o   @ A���� 0 	nakedname 	nakedName o m   D E v v � w w 4   |   s e d   ' s / [ ^ [ : a l n u m : ] ] / / g '��   l o      ���� 0 cleanedname cleanedName j  x y x r   M T z { z J   M R | |  } ~ } o   M N���� 0 	dirtyname 	dirtyName ~   �  o   N O���� 0 cleanedname cleanedName �  ��� � o   O P���� 0 cleanedname cleanedName��   { o      ���� 0 filelist fileList y  � � � I   U [�� ����� 0 savefilenames saveFileNames �  ��� � o   V W���� 0 filelist fileList��  ��   �  ��� � I   \ c�� ����� 0 
renamefile 
renameFile �  � � � o   ] ^���� 0 cleanedname cleanedName �  ��� � o   ^ _���� 0 fileext fileExt��  ��  ��  �� 0 afile aFile L o    ���� 0 	filepaths 	filePaths J m     � ��                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��   :  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ' ! Rename file based on user choice    � � � � B   R e n a m e   f i l e   b a s e d   o n   u s e r   c h o i c e �  � � � i     � � � I      �� ����� 0 
renamefile 
renameFile �  � � � o      ���� 0 cleanedname cleanedName �  ��� � o      ���� 0 fileext fileExt��  ��   � k     X � �  � � � I    
�� � �
�� .sysodlogaskr        TEXT � m      � � � � �  C u t   T h e � �� ���
�� 
btns � J     � �  � � � m     � � � � �  B e g i n n i n g �  ��� � m     � � � � �  E n d��  ��   �  � � � r     � � � =    � � � l    ����� � n     � � � 1    ��
�� 
bhit � l    ����� � 1    ��
�� 
rslt��  ��  ��  ��   � m     � � � � �  B e g i n n i n g � o      ���� 0 
cutatbegin 
cutAtBegin �  � � � r     � � � n     � � � 1    ��
�� 
ttxt � l    ����� � I   �� � �
�� .sysodlogaskr        TEXT � m     � � � � � d E n t e r   t h e   n u m b e r   o f   c h a r a c t e r s   y o u   w i s h   t o   r e m o v e : � �� ���
�� 
dtxt � m     � � � � �  ��  ��  ��   � o      ���� 0 	deletions   �  � � � r    $ � � � n    " � � � 1     "��
�� 
leng � o     ���� 0 cleanedname cleanedName � o      ���� 0 totallength totalLength �  � � � Z   % N � ��� � � o   % &���� 0 
cutatbegin 
cutAtBegin � r   ) : � � � c   ) 8 � � � n   ) 6 � � � 7 * 6�� � �
�� 
cha  � l  . 2 ����� � [   . 2 � � � o   / 0���� 0 	deletions   � m   0 1���� ��  ��   � o   3 5���� 0 totallength totalLength � o   ) *���� 0 cleanedname cleanedName � m   6 7��
�� 
TEXT � o      ���� 0 
nimblename 
nimbleName��   � r   = N � � � c   = L � � � n   = J � � � 7 > J�� � �
�� 
cha  � m   B D����  � l  E I ����� � \   E I � � � o   F G���� 0 totallength totalLength � o   G H���� 0 	deletions  ��  ��   � o   = >�� 0 cleanedname cleanedName � m   J K�~
�~ 
TEXT � o      �}�} 0 
nimblename 
nimbleName �  ��| � r   O X � � � n  O V � � � I   P V�{ ��z�{ (0 generateuniquename GenerateUniqueName �  � � � o   P Q�y�y 0 
nimblename 
nimbleName �  ��x � o   Q R�w�w 0 fileext fileExt�x  �z   �  f   O P � o      �v�v 0 rarename rareName�|   �  � � � l     �u�t�s�u  �t  �s   �  � � � l     �r � ��r   � "  Generate a unique file name    � � � � 8   G e n e r a t e   a   u n i q u e   f i l e   n a m e �  � � � i     � � � I      �q ��p�q (0 generateuniquename GenerateUniqueName �  � � � o      �o�o 0 
nimblename 
nimbleName �  ��n � o      �m�m 0 fileext fileExt�n  �p   � k     ; � �  �  � r      b      b      b      b     	
	 o     �l�l 0 
nimblename 
nimbleName
 m     �  _ n     7   �k
�k 
ctxt m   
 �j�j�� m    �i�i�� l   �h�g b     m     �  0 0 0 o    �f�f 0 namecounter nameCounter�h  �g   m     �  . o    �e�e 0 fileext fileExt o      �d�d 0 rarename rareName   r     [     o    �c�c 0 namecounter nameCounter m    �b�b  o      �a�a 0 namecounter nameCounter �` O    ;  Z   " :!"�_#! I  " *�^$�]
�^ .coredoexnull���     ****$ 4   " &�\%
�\ 
file% o   $ %�[�[ 0 rarename rareName�]  " L   - 5&& n  - 4'(' I   . 4�Z)�Y�Z (0 generateuniquename GenerateUniqueName) *+* o   . /�X�X 0 
nimblename 
nimbleName+ ,�W, o   / 0�V�V 0 fileext fileExt�W  �Y  (  f   - .�_  # L   8 :-- o   8 9�U�U 0 rarename rareName  m    ..�                                                                                  sevs  alis    J  MAC                        �+	�BD ����System Events.app                                              �����+	�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��  �`   � /0/ l     �T�S�R�T  �S  �R  0 121 l     �Q34�Q  3   Undo naming changes   4 �55 (   U n d o   n a m i n g   c h a n g e s2 676 i    898 I      �P�O�N�P 0 
undonaming 
undoNaming�O  �N  9 Z     L:;�M<: ?     =>= l    ?�L�K? I    �J@�I
�J .corecnte****       ****@ o     �H�H  0 savedfilenames savedFileNames�I  �L  �K  > m    �G�G  ; k   
 BAA BCB O   
 5DED Y    4F�FGH�EF k    /II JKJ r    "LML n     NON 4     �DP
�D 
cobjP o    �C�C 0 i  O o    �B�B 0 	filepaths 	filePathsM o      �A�A 0 afile aFileK QRQ r   # )STS n   # 'UVU 4   $ '�@W
�@ 
cobjW o   % &�?�? 0 i  V o   # $�>�>  0 savedfilenames savedFileNamesT o      �=�= $0 originalfilename originalFileNameR X�<X r   * /YZY o   * +�;�; $0 originalfilename originalFileNameZ n      [\[ 1   , .�:
�: 
pnam\ o   + ,�9�9 0 afile aFile�<  �F 0 i  G m    �8�8 H I   �7]�6
�7 .corecnte****       ****] o    �5�5 0 	filepaths 	filePaths�6  �E  E m   
 ^^�                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  C _`_ r   6 :aba J   6 8�4�4  b o      �3�3  0 savedfilenames savedFileNames` c�2c I  ; B�1de
�1 .sysonotfnull��� ��� TEXTd m   ; <ff �gg H U n d o   n a m i n g :   A l l   f i l e   n a m e s   r e s t o r e de �0h�/
�0 
apprh m   = >ii �jj   F i l e   N a m e   C h a n g e�/  �2  �M  < I  E L�.kl
�. .sysonotfnull��� ��� TEXTk m   E Fmm �nn * N o   f i l e   n a m e s   t o   u n d ol �-o�,
�- 
appro m   G Hpp �qq   F i l e   N a m e   C h a n g e�,  7 rsr l     �+�*�)�+  �*  �)  s tut l     �(vw�(  v   Call functions   w �xx    C a l l   f u n c t i o n su yzy l  	 {�'�&{ I   	 �%�$�#�% 0 processfiles processFiles�$  �#  �'  �&  z |�"| l   }�!� } I    ���� 0 
undonaming 
undoNaming�  �  �!  �   �"       �~������  ~ ������� 0 savefilenames saveFileNames� 0 processfiles processFiles� 0 
renamefile 
renameFile� (0 generateuniquename GenerateUniqueName� 0 
undonaming 
undoNaming
� .aevtoappnull  �   � **** � $������ 0 savefilenames saveFileNames� ��� �  �� 0 filelist fileList�  � �� 0 filelist fileList� ��  0 savedfilenames savedFileNames� ��%E�� � <�����
� 0 processfiles processFiles�  �  � �	�������	 0 	filepaths 	filePaths� 0 afile aFile� 0 	dirtyname 	dirtyName� 0 fileext fileExt� 0 	nakedname 	nakedName� 0 cleanedname cleanedName� 0 filelist fileList� � E�� �� ��������������� r�� v������
� 
prmp
� 
mlsl�  
�� .sysostdfalis    ��� null
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
nmxt
�� 
ctxt
�� 
leng
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 savefilenames saveFileNames�� 0 
renamefile 
renameFile�
 j*���e� E�O� Z W�[��l kh ��,E�O��,E�O�[�\[Zk\Z��,l'2E�O���,%�%j E�O���mvE�O*�k+ O*��l+ [OY��U� �� ����������� 0 
renamefile 
renameFile�� ����� �  ������ 0 cleanedname cleanedName�� 0 fileext fileExt��  � ���������������� 0 cleanedname cleanedName�� 0 fileext fileExt�� 0 
cutatbegin 
cutAtBegin�� 0 	deletions  �� 0 totallength totalLength�� 0 
nimblename 
nimbleName�� 0 rarename rareName�  ��� � ������� � ��� �����������
�� 
btns
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
dtxt
�� 
ttxt
�� 
leng
�� 
cha 
�� 
TEXT�� (0 generateuniquename GenerateUniqueName�� Y����lvl O��,� E�O���l �,E�O��,E�O� �[�\[Z�k\Z�2�&E�Y �[�\[Zk\Z��2�&E�O)��l+ E�� �� ����������� (0 generateuniquename GenerateUniqueName�� ����� �  ������ 0 
nimblename 
nimbleName�� 0 fileext fileExt��  � �������� 0 
nimblename 
nimbleName�� 0 fileext fileExt�� 0 rarename rareName� 
������.�������� 0 namecounter nameCounter
�� 
ctxt����
�� 
file
�� .coredoexnull���     ****�� (0 generateuniquename GenerateUniqueName�� <��%��%[�\[Z�\Zi2%�%�%E�O�kE�O� *�/j  )��l+ 	Y �U� ��9���������� 0 
undonaming 
undoNaming��  ��  � ���������� 0 	filepaths 	filePaths�� 0 i  �� 0 afile aFile�� $0 originalfilename originalFileName� ����^����f��i��mp��  0 savedfilenames savedFileNames
�� .corecnte****       ****
�� 
cobj
�� 
pnam
�� 
appr
�� .sysonotfnull��� ��� TEXT�� M�j j =� ( %k�j kh ��/E�O��/E�O���,F[OY��UOjvE�O���l Y 	���l � �����������
�� .aevtoappnull  �   � ****� k     ��  ��  �� y�� |����  ��  ��  �  � ����������  0 savedfilenames savedFileNames�� 0 namecounter nameCounter�� 0 processfiles processFiles�� 0 
undonaming 
undoNaming�� jvE�OkE�O*j+ O*j+  ascr  ��ޭ