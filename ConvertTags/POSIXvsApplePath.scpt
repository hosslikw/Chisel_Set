FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	  	Created by: Kyle Hossli    
 �   0 	 C r e a t e d   b y :   K y l e   H o s s l i      l     ��  ��     	Created on: 2023-11-12     �   . 	 C r e a t e d   o n :   2 0 2 3 - 1 1 - 1 2      l     ��������  ��  ��        l     ��  ��    4 .	Copyright � 2023 Posture, All Rights Reserved     �   \ 	 C o p y r i g h t   �   2 0 2 3   P o s t u r e ,   A l l   R i g h t s   R e s e r v e d      l     ��  ��    \ V   AppleScript to demonstrate the difference between POSIX paths and AppleScript paths     �   �       A p p l e S c r i p t   t o   d e m o n s t r a t e   t h e   d i f f e r e n c e   b e t w e e n   P O S I X   p a t h s   a n d   A p p l e S c r i p t   p a t h s      l     ��������  ��  ��         l      ! " # ! x     �� $ %��   $ 1      ��
�� 
ascr % �� &��
�� 
minv & m       ' ' � ( (  2 . 4��   "    Yosemite (10.10) or later    # � ) ) 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r    * + * x    �� ,����   , 2  	 ��
�� 
osax��   +  - . - l     ��������  ��  ��   .  / 0 / l     1���� 1 O      2 3 2 k     4 4  5 6 5 l   �� 7 8��   7 #  Prompt user to select a file    8 � 9 9 :   P r o m p t   u s e r   t o   s e l e c t   a   f i l e 6  : ; : r     < = < I   ���� >
�� .sysostdfalis    ��� null��   > �� ?��
�� 
prmp ? m     @ @ � A A  S e l e c t   a   f i l e��   = o      ���� 0 	inputfile 	inputFile ;  B C B l   ��������  ��  ��   C  D E D l   �� F G��   F "  Get POSIX path (UNIX style)    G � H H 8   G e t   P O S I X   p a t h   ( U N I X   s t y l e ) E  I J I r     K L K n     M N M 1    ��
�� 
psxp N o    ���� 0 	inputfile 	inputFile L o      ���� 0 	posixpath 	posixPath J  O P O l   ��������  ��  ��   P  Q R Q l   �� S T��   S - ' Convert POSIX path to AppleScript path    T � U U N   C o n v e r t   P O S I X   p a t h   t o   A p p l e S c r i p t   p a t h R  V�� V r     W X W c     Y Z Y o    ���� 0 	inputfile 	inputFile Z m    ��
�� 
ctxt X o      ���� "0 applescriptpath appleScriptPath��   3 m      [ [�                                                                                  MACS  alis    .  MAC                        �i��BD ����
Finder.app                                                     �����i��        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��  ��  ��   0  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   `   Display the paths    a � b b $   D i s p l a y   t h e   p a t h s _  c d c l   " e���� e I   "�� f��
�� .sysodlogaskr        TEXT f b     g h g m     i i � j j  P O S I X   P a t h : h o    ���� 0 	posixpath 	posixPath��  ��  ��   d  k l k l  # * m���� m I  # *�� n��
�� .sysodlogaskr        TEXT n b   # & o p o m   # $ q q � r r " A p p l e s c r i p t   P a t h : p o   $ %���� "0 applescriptpath appleScriptPath��  ��  ��   l  s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w�� w l     ��������  ��  ��  ��       �� x y z��   x ����
�� 
pimr
�� .aevtoappnull  �   � **** y �� {��  {   | } | �� '��
�� 
vers��   } �� ~��
�� 
cobj ~      ��
�� 
osax��   z �� ����� � ���
�� .aevtoappnull  �   � **** � k     * � �  / � �  c � �  k����  ��  ��   �   �  [�� @������������ i�� q
�� 
prmp
�� .sysostdfalis    ��� null�� 0 	inputfile 	inputFile
�� 
psxp�� 0 	posixpath 	posixPath
�� 
ctxt�� "0 applescriptpath appleScriptPath
�� .sysodlogaskr        TEXT�� +� *��l E�O��,E�O��&E�UO��%j 
O��%j 
ascr  ��ޭ