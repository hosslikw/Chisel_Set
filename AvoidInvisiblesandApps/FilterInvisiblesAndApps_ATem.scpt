FasdUAS 1.101.10   ��   ��    k             l     ��  ��   � This file defines a way to keep invisible files and applications from being processed by user made AppleScripts. This template is intended to be pasted in two parts to future scripts. Place part A outside of your scripts repeat loop. Place B inside the repeat loop to call A and display a message to the user if an invisible file or an application was found among the files you are.     � 	 	�   T h i s   f i l e   d e f i n e s   a   w a y   t o   k e e p   i n v i s i b l e   f i l e s   a n d   a p p l i c a t i o n s   f r o m   b e i n g   p r o c e s s e d   b y   u s e r   m a d e   A p p l e S c r i p t s .   T h i s   t e m p l a t e   i s   i n t e n d e d   t o   b e   p a s t e d   i n   t w o   p a r t s   t o   f u t u r e   s c r i p t s .   P l a c e   p a r t   A   o u t s i d e   o f   y o u r   s c r i p t s   r e p e a t   l o o p .   P l a c e   B   i n s i d e   t h e   r e p e a t   l o o p   t o   c a l l   A   a n d   d i s p l a y   a   m e s s a g e   t o   t h e   u s e r   i f   a n   i n v i s i b l e   f i l e   o r   a n   a p p l i c a t i o n   w a s   f o u n d   a m o n g   t h e   f i l e s   y o u   a r e .   
  
 l     ��������  ��  ��        l     ��  ��          Example     �              E x a m p l e      l     ��  ��      1. Start of script     �   &   1 .   S t a r t   o f   s c r i p t      l     ��  ��    8 2 2. Functions of your script or A of this template     �   d   2 .   F u n c t i o n s   o f   y o u r   s c r i p t   o r   A   o f   t h i s   t e m p l a t e      l     ��  ��      3. A      �      3 .   A       !   l     ��������  ��  ��   !  " # " i      $ % $ I      �� &���� 0 invalidfile InvalidFile &  '�� ' o      ���� 0 afile aFile��  ��   % l    % ( ) * ( k     % + +  , - , O     " . / . k    ! 0 0  1 2 1 l   �� 3 4��   3 %  Check if the file is invisible    4 � 5 5 >   C h e c k   i f   t h e   f i l e   i s   i n v i s i b l e 2  6 7 6 Z     8 9���� 8 =   	 : ; : n     < = < 1    ��
�� 
pvis = o    ���� 0 afile aFile ; m    ��
�� boovfals 9 L     > > m    ��
�� boovtrue��  ��   7  ? @ ? l   �� A B��   A * $ Check if the file is an application    B � C C H   C h e c k   i f   t h e   f i l e   i s   a n   a p p l i c a t i o n @  D E D l   ��������  ��  ��   E  F�� F Z    ! G H���� G =    I J I n     K L K 1    ��
�� 
kind L o    ���� 0 afile aFile J m     M M � N N  A p p l i c a t i o n H L     O O m    ��
�� boovtrue��  ��  ��   / m      P P�                                                                                  MACS  alis    .  MAC                        �+	�BD ����
Finder.app                                                     �����+	�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M A C  &System/Library/CoreServices/Finder.app  / ��   -  Q�� Q L   # % R R m   # $��
�� boovfals��   ) Z T the following function return True if it is passed an application or invisible file    * � S S �   t h e   f o l l o w i n g   f u n c t i o n   r e t u r n   T r u e   i f   i t   i s   p a s s e d   a n   a p p l i c a t i o n   o r   i n v i s i b l e   f i l e #  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X R L 4. Other Functions or your Main Function, the block where you will call A.     Y � Z Z �   4 .   O t h e r   F u n c t i o n s   o r   y o u r   M a i n   F u n c t i o n ,   t h e   b l o c k   w h e r e   y o u   w i l l   c a l l   A .   W  [ \ [ l     �� ] ^��   ]   5. B     ^ � _ _    5 .   B   \  ` a ` l     ��������  ��  ��   a  b c b l     d���� d Z      e f���� e I     �� g���� 0 invalidfile InvalidFile g  h�� h o    ���� 0 afile aFile��  ��   f l  	  i j k i k   	  l l  m n m I  	 �� o p
�� .sysodlogaskr        TEXT o m   	 
 q q � r r : O n e   o f   y o u r   f i l e s   i s   i n v a l i d . p �� s t
�� 
btns s J     u u  v�� v m     w w � x x  O K��   t �� y��
�� 
dflt y m     z z � { {  O K��   n  |�� | L    ����  ��   j G A place the following wherever you intend to run the actions of A.    k � } } �   p l a c e   t h e   f o l l o w i n g   w h e r e v e r   y o u   i n t e n d   t o   r u n   t h e   a c t i o n s   o f   A .��  ��  ��  ��   c  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � / ) 6. Remaining lines of your Main Function    � � � � R   6 .   R e m a i n i n g   l i n e s   o f   y o u r   M a i n   F u n c t i o n �  ��� � l     �� � ���   �   7. End of Script    � � � � "   7 .   E n d   o f   S c r i p t��       �� � � ���   � ������ 0 invalidfile InvalidFile
�� .aevtoappnull  �   � **** � �� %���� � ����� 0 invalidfile InvalidFile�� �� ���  �  ���� 0 afile aFile��   � ���� 0 afile aFile �  P���� M
�� 
pvis
�� 
kind�� &� ��,f  eY hO��,�  eY hUOf � �� ����� � ���
�� .aevtoappnull  �   � **** � k      � �  b����  ��  ��   �   � 	���� q�� w�� z������ 0 afile aFile�� 0 invalidfile InvalidFile
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� *�k+  ���kv��� OhY h ascr  ��ޭ