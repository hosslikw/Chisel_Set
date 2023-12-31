FasdUAS 1.101.10   ��   ��    k             l     ��  ��   2, TrimFileName: This script allows users to specify the number of characters they want to remove from a file's base name. The user can choose whether the characters should be removed from the beginning or end of the base name. If the user chooses "End" and specifies "6" in the displayed prompts then:     � 	 	X   T r i m F i l e N a m e :   T h i s   s c r i p t   a l l o w s   u s e r s   t o   s p e c i f y   t h e   n u m b e r   o f   c h a r a c t e r s   t h e y   w a n t   t o   r e m o v e   f r o m   a   f i l e ' s   b a s e   n a m e .   T h e   u s e r   c a n   c h o o s e   w h e t h e r   t h e   c h a r a c t e r s   s h o u l d   b e   r e m o v e d   f r o m   t h e   b e g i n n i n g   o r   e n d   o f   t h e   b a s e   n a m e .   I f   t h e   u s e r   c h o o s e s   " E n d "   a n d   s p e c i f i e s   " 6 "   i n   t h e   d i s p l a y e d   p r o m p t s   t h e n :   
  
 l     ��������  ��  ��        l     ��  ��      ShotInTulsa_MK5TW.jpg     �   ,   S h o t I n T u l s a _ M K 5 T W . j p g      l     ��  ��      ShotInLion_MK5TW.jpg     �   *   S h o t I n L i o n _ M K 5 T W . j p g      l     ��  ��      ShotInRome_MK5TW.jpg     �   *   S h o t I n R o m e _ M K 5 T W . j p g      l     ��  ��      ShotInMarfa_MK5TW.jpg     �   ,   S h o t I n M a r f a _ M K 5 T W . j p g     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $   becomes    % � & &    b e c o m e s #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   ShotInTulsa.jpg    , � - -     S h o t I n T u l s a . j p g *  . / . l     �� 0 1��   0   ShotInLion.jpg    1 � 2 2    S h o t I n L i o n . j p g /  3 4 3 l     �� 5 6��   5   ShotInRome.jpg    6 � 7 7    S h o t I n R o m e . j p g 4  8 9 8 l     �� : ;��   :   ShotInMarfa.jpg    ; � < <     S h o t I n M a r f a . j p g 9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A A ; Global variables - variables whose value should remain the    B � C C v   G l o b a l   v a r i a b l e s   -   v a r i a b l e s   w h o s e   v a l u e   s h o u l d   r e m a i n   t h e @  D E D l     �� F G��   F E ? same throughout the script so they may be used inside multiple    G � H H ~   s a m e   t h r o u g h o u t   t h e   s c r i p t   s o   t h e y   m a y   b e   u s e d   i n s i d e   m u l t i p l e E  I J I l     �� K L��   K + % functions to define other variables.    L � M M J   f u n c t i o n s   t o   d e f i n e   o t h e r   v a r i a b l e s . J  N O N p       P P �� Q�� 0 fileext fileExt Q �� R��  0 cleanbase_name cleanBase_Name R �� S�� 0 cleanfilename cleanFilename S �� T�� 0 filelist fileList T �� U��  0 savedfilenames savedFileNames U ������ 0 namecounter nameCounter��   O  V W V l     X���� X r      Y Z Y m     ����  Z o      ���� 0 namecounter nameCounter��  ��   W  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a t n A - Function to check if a file is invisible or an application and identify different portions of a file name    b � c c �   A   -   F u n c t i o n   t o   c h e c k   i f   a   f i l e   i s   i n v i s i b l e   o r   a n   a p p l i c a t i o n   a n d   i d e n t i f y   d i f f e r e n t   p o r t i o n s   o f   a   f i l e   n a m e `  d e d i      f g f I      �� h���� 0 invalidfile InvalidFile h  i�� i o      ���� 0 filepath filePath��  ��   g O     $ j k j k    # l l  m n m l   �� o p��   o 8 2 Checks if the file is invisible or an application    p � q q d   C h e c k s   i f   t h e   f i l e   i s   i n v i s i b l e   o r   a n   a p p l i c a t i o n n  r�� r Z    # s t�� u s G     v w v =    x y x l   
 z���� z n    
 { | { 1    
��
�� 
pvis | 4    �� }
�� 
file } o    ���� 0 filepath filePath��  ��   y m   
 ��
�� boovfals w =    ~  ~ l    ����� � n     � � � 1    ��
�� 
kind � 4    �� �
�� 
file � o    ���� 0 filepath filePath��  ��    m     � � � � �  A p p l i c a t i o n t L     � � m    ��
�� boovtrue��   u L   ! # � � m   ! "��
�� boovfals��   k m      � ��                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��   e  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ; 5 B - Prepares file name by separating it's components    � � � � j   B   -   P r e p a r e s   f i l e   n a m e   b y   s e p a r a t i n g   i t ' s   c o m p o n e n t s �  � � � i     � � � I      �� ����� 0 nameunpacking nameUnpacking �  ��� � o      ���� 0 	base_name 	base_Name��  ��   � O     
 � � � r    	 � � � n     � � � 1    ��
�� 
nmxt � o    ���� 0 	base_name 	base_Name � o      ���� 0 fileext fileExt � m      � ��                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � E ? C - Cleans file name by removing special characters and spaces    � � � � ~   C   -   C l e a n s   f i l e   n a m e   b y   r e m o v i n g   s p e c i a l   c h a r a c t e r s   a n d   s p a c e s �  � � � i     � � � I      �� ����� ,0 cleanfilenamehandler cleanFileNameHandler �  ��� � o      ���� 0 afile aFile��  ��   � k     = � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � J D Places quotes around the base name, Replace spaces with underscores    � � � � �   P l a c e s   q u o t e s   a r o u n d   t h e   b a s e   n a m e ,   R e p l a c e   s p a c e s   w i t h   u n d e r s c o r e s �  � � � r      � � � n      � � � 1    ��
�� 
strq � o     ���� 0 	base_name 	base_Name � o      ���� "0 quotedbase_name quotedBase_Name �  � � � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � m     � � � � � 
 e c h o   � n    
 � � � 1    
��
�� 
strq � o    ���� "0 quotedbase_name quotedBase_Name � m     � � � � �    |   t r   '   '   ' _ '��   � o      ����  0 cleanbase_name cleanBase_Name �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � V P Remove any non-alphanumeric characters except for single dashes and underscores    � � � � �   R e m o v e   a n y   n o n - a l p h a n u m e r i c   c h a r a c t e r s   e x c e p t   f o r   s i n g l e   d a s h e s   a n d   u n d e r s c o r e s �  � � � r    ! � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � m     � � � � � 
 e c h o   � n     � � � 1    ��
�� 
strq � o    ����  0 cleanbase_name cleanBase_Name � m     � � � � � 8   |   s e d   ' s / [ ^ a - z A - Z 0 - 9 - _ ] / / g '��   � o      ����  0 cleanbase_name cleanBase_Name �  � � � l  " "��������  ��  ��   �  � � � l  " "�� � ���   � K E Replace sequences of dashes and underscores with a single underscore    � � � � �   R e p l a c e   s e q u e n c e s   o f   d a s h e s   a n d   u n d e r s c o r e s   w i t h   a   s i n g l e   u n d e r s c o r e �  � � � r   " / � � � I  " -�� ���
�� .sysoexecTEXT���     TEXT � b   " ) � � � b   " ' � � � m   " # � � � � � 
 e c h o   � n   # & � � � 1   $ &��
�� 
strq � o   # $����  0 cleanbase_name cleanBase_Name � m   ' ( � � � � � 0   |   s e d   ' s / [ - _ ] [ - _ ] * / _ / g '��   � o      ����  0 cleanbase_name cleanBase_Name �  � � � l  0 0��������  ��  ��   �  � � � l  0 0� � �   � : 4 Re-attaches the file extension to the prepared name     � h   R e - a t t a c h e s   t h e   f i l e   e x t e n s i o n   t o   t h e   p r e p a r e d   n a m e �  r   0 7 b   0 5 b   0 3	 o   0 1�~�~  0 cleanbase_name cleanBase_Name	 m   1 2

 �  . o   3 4�}�} 0 fileext fileExt o      �|�| 0 cleanfilename cleanFilename  l  8 8�{�z�y�{  �z  �y   �x r   8 = J   8 ; �w o   8 9�v�v 0 cleanfilename cleanFilename�w   o      �u�u 0 filelist fileList�x   �  l     �t�s�r�t  �s  �r    l     �q�p�o�q  �p  �o    l     �n�m�l�n  �m  �l    l     �k�k   W Q D - Saves file names to a list so they can be recalled by command+z if necessary    � �   D   -   S a v e s   f i l e   n a m e s   t o   a   l i s t   s o   t h e y   c a n   b e   r e c a l l e d   b y   c o m m a n d + z   i f   n e c e s s a r y  i     !  I      �j"�i�j 0 savefilenames saveFileNames" #�h# o      �g�g 0 filelist fileList�h  �i  ! O     B$%$ k    A&& '(' l   �f)*�f  ) 8 2 Store the current selection before making changes   * �++ d   S t o r e   t h e   c u r r e n t   s e l e c t i o n   b e f o r e   m a k i n g   c h a n g e s( ,-, r    	./. 1    �e
�e 
sele/ o      �d�d 0 oldselection oldSelection- 010 l  
 
�c�b�a�c  �b  �a  1 232 l  
 
�`45�`  4 4 . Add the file names to the savedFileNames list   5 �66 \   A d d   t h e   f i l e   n a m e s   t o   t h e   s a v e d F i l e N a m e s   l i s t3 787 X   
 #9�_:9 r    ;<; o    �^�^ 0 fileitem fileItem< n      =>=  ;    > o    �]�]  0 savedfilenames savedFileNames�_ 0 fileitem fileItem: o    �\�\ 0 filelist fileList8 ?@? l  $ $�[�Z�Y�[  �Z  �Y  @ ABA l  $ $�XCD�X  C 0 * Select the savedFileNames items in Finder   D �EE T   S e l e c t   t h e   s a v e d F i l e N a m e s   i t e m s   i n   F i n d e rB FGF O   $ .HIH I  ( -�WJ�V
�W .miscslctnull���     obj J o   ( )�U�U  0 savedfilenames savedFileNames�V  I m   $ %KK�                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  G LML l  / /�T�S�R�T  �S  �R  M NON l  / /�QPQ�Q  P @ : Simulate Command-Z keystroke to undo the selection change   Q �RR t   S i m u l a t e   C o m m a n d - Z   k e y s t r o k e   t o   u n d o   t h e   s e l e c t i o n   c h a n g eO STS I  / 6�PUV
�P .prcskprsnull���     ctxtU m   / 0WW �XX  zV �OY�N
�O 
faalY m   1 2�M
�M eMdsKcmd�N  T Z[Z l  7 7�L�K�J�L  �K  �J  [ \]\ l  7 7�I^_�I  ^ %  Restore the previous selection   _ �`` >   R e s t o r e   t h e   p r e v i o u s   s e l e c t i o n] a�Ha O   7 Abcb I  ; @�Gd�F
�G .miscslctnull���     obj d o   ; <�E�E 0 oldselection oldSelection�F  c m   7 8ee�                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  �H  % m     ff�                                                                                  sevs  alis    J  MAC                        �+	�BD ����System Events.app                                              �����+	�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��   ghg l     �D�C�B�D  �C  �B  h iji l     �A�@�?�A  �@  �?  j klk l     �>�=�<�>  �=  �<  l mnm l     �;op�;  o C = E - Asks User to define how the file names should be altered   p �qq z   E   -   A s k s   U s e r   t o   d e f i n e   h o w   t h e   f i l e   n a m e s   s h o u l d   b e   a l t e r e dn rsr i    tut I      �:�9�8�: 0 trimbase_name trimBase_Name�9  �8  u k     Yvv wxw l     �7�6�5�7  �6  �5  x yzy l     �4{|�4  { E ? Ask if the begining or end of the file names should be trimmed   | �}} ~   A s k   i f   t h e   b e g i n i n g   o r   e n d   o f   t h e   f i l e   n a m e s   s h o u l d   b e   t r i m m e dz ~~ r     ��� =    ��� l    ��3�2� n     ��� 1   
 �1
�1 
bhit� l    
��0�/� I    
�.��
�. .sysodlogaskr        TEXT� m     �� ���  C u t   T h e� �-��,
�- 
btns� J    �� ��� m    �� ���  B e g i n n i n g� ��+� m    �� ���  E n d�+  �,  �0  �/  �3  �2  � m    �� ���  B e g i n n i n g� o      �*�*  0 removebegining removeBegining ��� l   �)�(�'�)  �(  �'  � ��� l   �&���&  � 2 ,Ask for a number of characters to be deleted   � ��� X A s k   f o r   a   n u m b e r   o f   c h a r a c t e r s   t o   b e   d e l e t e d� ��� r    ��� n    ��� 1    �%
�% 
ttxt� l   ��$�#� I   �"��
�" .sysodlogaskr        TEXT� m    �� ��� d E n t e r   t h e   n u m b e r   o f   c h a r a c t e r s   y o u   w i s h   t o   r e m o v e :� �!�� 
�! 
dtxt� m    �� ���  �   �$  �#  � o      �� 0 sumtoremove sumToRemove� ��� l   ����  �  �  � ��� l   ����  � ' ! Establishes how long the name is   � ��� B   E s t a b l i s h e s   h o w   l o n g   t h e   n a m e   i s� ��� r    "��� n     ��� 1     �
� 
leng� o    ��  0 cleanbase_name cleanBase_Name� o      �� 0 totallength totalLength� ��� l  # #����  �  �  � ��� l  # #����  � 2 ,If begining is chosen cut from there else...   � ��� X I f   b e g i n i n g   i s   c h o s e n   c u t   f r o m   t h e r e   e l s e . . .� ��� Z   # L����� o   # $��  0 removebegining removeBegining� r   ' 8��� c   ' 6��� n   ' 4��� 7 ( 4���
� 
cha � l  , 0���� [   , 0��� o   - .�� 0 sumtoremove sumToRemove� m   . /�� �  �  � o   1 3�� 0 totallength totalLength� o   ' (��  0 cleanbase_name cleanBase_Name� m   4 5�

�
 
TEXT� o      �	�	 $0 trimmedbase_name trimmedBase_Name�  � r   ; L��� c   ; J��� n   ; H��� 7 < H���
� 
cha � m   @ B�� � l  C G���� \   C G��� o   D E�� 0 totallength totalLength� o   E F�� 0 sumtoremove sumToRemove�  �  � o   ; <��  0 cleanbase_name cleanBase_Name� m   H I�
� 
TEXT� o      � �  $0 trimmedbase_name trimmedBase_Name� ��� l  M M��������  ��  ��  � ��� l  M M������  � o i If the renaming process causes the files to have the same name they are processed with the function at E   � ��� �   I f   t h e   r e n a m i n g   p r o c e s s   c a u s e s   t h e   f i l e s   t o   h a v e   t h e   s a m e   n a m e   t h e y   a r e   p r o c e s s e d   w i t h   t h e   f u n c t i o n   a t   E� ��� r   M V��� n  M T��� I   N T������� (0 generateuniquename GenerateUniqueName� ��� o   N O���� $0 trimmedbase_name trimmedBase_Name� ���� o   O P���� 0 fileext fileExt��  ��  �  f   M N� o      ���� 0 redundantname redundantName� ��� l  W W��������  ��  ��  � ���� L   W Y�� o   W X���� $0 trimmedbase_name trimmedBase_Name��  s ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � A ; F - Generate a unique file name in case of naming conflict   � ��� v   F   -   G e n e r a t e   a   u n i q u e   f i l e   n a m e   i n   c a s e   o f   n a m i n g   c o n f l i c t� ��� i    ��� I      ������� (0 generateuniquename GenerateUniqueName�    o      ���� 0 
nimblename 
nimbleName �� o      ���� 0 fileext fileExt��  ��  � k     ;  r      b     	 b     

 b      b      o     ���� 0 
nimblename 
nimbleName m     �  _ n     7   ��
�� 
ctxt m   
 ������ m    ������ l   ���� b     m     �  0 0 0 o    ���� 0 namecounter nameCounter��  ��   m     �  .	 o    ���� 0 fileext fileExt o      ���� 0 rarename rareName  r      [    !"! o    ���� 0 namecounter nameCounter" m    ����   o      ���� 0 namecounter nameCounter #��# O    ;$%$ Z   " :&'��(& I  " *��)��
�� .coredoexnull���     ****) 4   " &��*
�� 
file* o   $ %���� 0 rarename rareName��  ' L   - 5++ n  - 4,-, I   . 4��.���� (0 generateuniquename GenerateUniqueName. /0/ o   . /���� 0 
nimblename 
nimbleName0 1��1 o   / 0���� 0 fileext fileExt��  ��  -  f   - .��  ( L   8 :22 o   8 9���� 0 rarename rareName% m    33�                                                                                  sevs  alis    J  MAC                        �+	�BD ����System Events.app                                              �����+	�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M A C  -System/Library/CoreServices/System Events.app   / ��  ��  � 454 l     ��������  ��  ��  5 676 l     ��������  ��  ��  7 898 l     ��������  ��  ��  9 :;: l     ��<=��  < D > Main - Gets files from Finder. Calls A,B,C, D,and E Functions   = �>> |   M a i n   -   G e t s   f i l e s   f r o m   F i n d e r .   C a l l s   A , B , C ,   D , a n d   E   F u n c t i o n s; ?��? i    @A@ I      �������� 0 processfiles processFiles��  ��  A k     BB CDC I    ��E��
�� .ascrcmnt****      � ****E m     FF �GG 0 S t a r t i n g   p r o c e s s F i l e s . . .��  D HIH l   ��������  ��  ��  I JKJ r    LML I   ����N
�� .sysostdfalis    ��� null��  N ��OP
�� 
prmpO m    	QQ �RR  S e l e c t   F i l e s :P ��S��
�� 
mlslS m   
 ��
�� boovtrue��  M o      ���� 0 	filepaths 	filePathsK TUT l   ��������  ��  ��  U VWV O    wXYX X    vZ��[Z k   & q\\ ]^] I  & /��_��
�� .ascrcmnt****      � ****_ b   & +`a` m   & 'bb �cc " P r o c e s s i n g   f i l e :  a l  ' *d����d n   ' *efe 1   ( *��
�� 
pnamf o   ' (���� 0 afile aFile��  ��  ��  ^ ghg l  0 0��������  ��  ��  h iji l  0 0��kl��  k $  Call A,B,C,D, and E Functions   l �mm <   C a l l   A , B , C , D ,   a n d   E   F u n c t i o n sj n��n Z   0 qop��qo I   0 6��r���� 0 invalidfile InvalidFiler s��s o   1 2���� 0 afile aFile��  ��  p k   9 Ytt uvu I   9 ?��w���� ,0 cleanfilenamehandler cleanFileNameHandlerw x��x o   : ;���� 0 afile aFile��  ��  v yzy I   @ G��{���� 0 savefilenames saveFileNames{ |}| o   A B���� 0 afile aFile} ~��~ o   B C���� 0 filelist fileList��  ��  z � I   H Q������� 0 trimbase_name trimBase_Name� ��� o   I J���� 0 	cleanname 	cleanName� ���� o   J M���� 0 fileext fileExt��  ��  � ���� r   R Y��� J   R W�� ���� o   R U���� 0 cleanfilename cleanFilename��  � o      ���� 0 filelist fileList��  ��  q I  \ q����
�� .sysodlogaskr        TEXT� m   \ _�� ��� t T h i s   a c t i o n   d o e s   a p p l y   t o   i n v i s i b l e   f i l e s   o r   a p p l i c a t i o n s .� ����
�� 
btns� J   b g�� ���� m   b e�� ���  O K��  � �����
�� 
dflt� m   j m�� ���  O K��  ��  �� 0 afile aFile[ o    ���� 0 	filepaths 	filePathsY m    ���                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  W ��� l  x x��������  ��  ��  � ���� I  x ���~
� .ascrcmnt****      � ****� m   x {�� ��� ( F i n i s h e d   p r o c e s s i n g .�~  ��  ��       �}����������|�{�z�y�x�w�v�u�}  � �t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�t 0 invalidfile InvalidFile�s 0 nameunpacking nameUnpacking�r ,0 cleanfilenamehandler cleanFileNameHandler�q 0 savefilenames saveFileNames�p 0 trimbase_name trimBase_Name�o (0 generateuniquename GenerateUniqueName�n 0 processfiles processFiles
�m .aevtoappnull  �   � ****�l 0 namecounter nameCounter�k  �j  �i  �h  �g  �f  �e  � �d g�c�b���a�d 0 invalidfile InvalidFile�c �`��` �  �_�_ 0 filepath filePath�b  � �^�^ 0 filepath filePath�  ��]�\�[ ��Z
�] 
file
�\ 
pvis
�[ 
kind
�Z 
bool�a %� !*�/�,f 
 *�/�,� �& eY fU� �Y ��X�W���V�Y 0 nameunpacking nameUnpacking�X �U��U �  �T�T 0 	base_name 	base_Name�W  � �S�S 0 	base_name 	base_Name�  ��R�Q
�R 
nmxt�Q 0 fileext fileExt�V � ��,E�U� �P ��O�N���M�P ,0 cleanfilenamehandler cleanFileNameHandler�O �L��L �  �K�K 0 afile aFile�N  � �J�I�H�J 0 afile aFile�I 0 	base_name 	base_Name�H "0 quotedbase_name quotedBase_Name� �G � ��F�E � � � �
�D�C�B
�G 
strq
�F .sysoexecTEXT���     TEXT�E  0 cleanbase_name cleanBase_Name�D 0 fileext fileExt�C 0 cleanfilename cleanFilename�B 0 filelist fileList�M >��,E�O��,%�%j E�O���,%�%j E�O���,%�%j E�O��%�%E�O�kvE�� �A!�@�?���>�A 0 savefilenames saveFileNames�@ �=��= �  �<�< 0 filelist fileList�?  � �;�:�9�; 0 filelist fileList�: 0 oldselection oldSelection�9 0 fileitem fileItem� f�8�7�6�5�4K�3W�2�1�0
�8 
sele
�7 
kocl
�6 
cobj
�5 .corecnte****       ****�4  0 savedfilenames savedFileNames
�3 .miscslctnull���     obj 
�2 
faal
�1 eMdsKcmd
�0 .prcskprsnull���     ctxt�> C� ?*�,E�O �[��l kh ��6F[OY��O� �j UO���l O� �j UU� �/u�.�-���,�/ 0 trimbase_name trimBase_Name�.  �-  � �+�*�)�(�'�+  0 removebegining removeBegining�* 0 sumtoremove sumToRemove�) 0 totallength totalLength�( $0 trimmedbase_name trimmedBase_Name�' 0 redundantname redundantName� ��&���%�$���#��"�!� ����
�& 
btns
�% .sysodlogaskr        TEXT
�$ 
bhit
�# 
dtxt
�" 
ttxt�!  0 cleanbase_name cleanBase_Name
�  
leng
� 
cha 
� 
TEXT� 0 fileext fileExt� (0 generateuniquename GenerateUniqueName�, Z����lvl �,� E�O���l �,E�O��,E�O� �[�\[Z�k\Z�2�&E�Y �[�\[Zk\Z��2�&E�O)��l+ E�O�� �������� (0 generateuniquename GenerateUniqueName� ��� �  ��� 0 
nimblename 
nimbleName� 0 fileext fileExt�  � ���� 0 
nimblename 
nimbleName� 0 fileext fileExt� 0 rarename rareName� 
���3���� 0 namecounter nameCounter
� 
ctxt���
� 
file
� .coredoexnull���     ****� (0 generateuniquename GenerateUniqueName� <��%��%[�\[Z�\Zi2%�%�%E�O�kE�O� *�/j  )��l+ 	Y �U� �A�
�	���� 0 processfiles processFiles�
  �	  � ���� 0 	filepaths 	filePaths� 0 afile aFile� 0 	cleanname 	cleanName� F��Q��� �������b��������������������������
� .ascrcmnt****      � ****
� 
prmp
� 
mlsl� 
�  .sysostdfalis    ��� null
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam�� 0 invalidfile InvalidFile�� ,0 cleanfilenamehandler cleanFileNameHandler�� 0 filelist fileList�� 0 savefilenames saveFileNames�� 0 fileext fileExt�� 0 trimbase_name trimBase_Name�� 0 cleanfilename cleanFilename
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT� ��j O*���e� E�O� b _�[��l 
kh ��,%j O*�k+  %*�k+ O*��l+ O*�_ l+ O_ kvE�Y a a a kva a � [OY��UOa j � �����������
�� .aevtoappnull  �   � ****� k     ��  V����  ��  ��  �  � ���� 0 namecounter nameCounter�� kE��| �{  �z  �y  �x  �w  �v  �u   ascr  ��ޭ