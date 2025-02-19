FasdUAS 1.101.10   ��   ��    k             l     ��  ��    S M This script will export specific properties of all connections to a CSV file     � 	 	 �   T h i s   s c r i p t   w i l l   e x p o r t   s p e c i f i c   p r o p e r t i e s   o f   a l l   c o n n e c t i o n s   t o   a   C S V   f i l e   
  
 l     ��  ��    M G The properties to be exported are specified in the following variable:     �   �   T h e   p r o p e r t i e s   t o   b e   e x p o r t e d   a r e   s p e c i f i e d   i n   t h e   f o l l o w i n g   v a r i a b l e :      l     ����  r         J            m        �    N a m e   ��  m       �    U R I��    o      ���� (0 propertiestoexport propertiesToExport��  ��        l     ��������  ��  ��        l     ��   !��       Main    ! � " " 
   M a i n   # $ # l   � %���� % O    � & ' & k    � ( (  ) * ) l   �� + ,��   +   Get file to write to    , � - - *   G e t   f i l e   t o   w r i t e   t o *  . / . r     0 1 0 c     2 3 2 l    4���� 4 I   ���� 5
�� .sysonwflfile    ��� null��   5 �� 6 7
�� 
prmt 6 m     8 8 � 9 9  E x p o r t   a s   C S V 7 �� : ;
�� 
dfnm : m     < < � = = ( R o y a l   T S X   E x p o r t . c s v ; �� >��
�� 
dflc > I   �� ?��
�� .earsffdralis        afdr ? m    ��
�� afdrdesk��  ��  ��  ��   3 m    ��
�� 
ctxt 1 o      ���� 0 csvfilepath csvFilePath /  @ A @ l   ��������  ��  ��   A  B C B l   �� D E��   D 3 - Append .csv if file path does not contain it    E � F F Z   A p p e n d   . c s v   i f   f i l e   p a t h   d o e s   n o t   c o n t a i n   i t C  G H G Z   1 I J���� I H    # K K D    " L M L o     ���� 0 csvfilepath csvFilePath M m     ! N N � O O  . c s v J r   & - P Q P b   & + R S R o   & '���� 0 csvfilepath csvFilePath S m   ' * T T � U U  . c s v Q o      ���� 0 csvfilepath csvFilePath��  ��   H  V W V l  2 2��������  ��  ��   W  X Y X l  2 2�� Z [��   Z , & Get IDs properties of all connections    [ � \ \ L   G e t   I D s   p r o p e r t i e s   o f   a l l   c o n n e c t i o n s Y  ] ^ ] r   2 ? _ ` _ n   2 ; a b a 1   7 ;��
�� 
ID00 b 2  2 7��
�� 
RCON ` o      ���� 0 conids conIds ^  c d c l  @ @��������  ��  ��   d  e f e l  @ @�� g h��   g   Write CSV Header    h � i i "   W r i t e   C S V   H e a d e r f  j k j r   @ S l m l n  @ O n o n I   A O�� p���� 0 createcsvrow createCSVRow p  q r q o   A B���� (0 propertiestoexport propertiesToExport r  s t s m   B C��
�� boovfals t  u v u m   C F w w � x x  ; v  y�� y 1   F I��
�� 
quot��  ��   o  f   @ A m o      ���� 0 	csvheader 	csvHeader k  z { z n  T b | } | I   U b�� ~���� 0 writetofile writeToFile ~   �  b   U \ � � � o   U X���� 0 	csvheader 	csvHeader � 1   X [��
�� 
lnfd �  � � � o   \ ]���� 0 csvfilepath csvFilePath �  ��� � m   ] ^��
�� boovfals��  ��   }  f   T U {  � � � l  c c��������  ��  ��   �  � � � l  c c�� � ���   � &   Loop through all connection IDs    � � � � @   L o o p   t h r o u g h   a l l   c o n n e c t i o n   I D s �  ��� � X   c � ��� � � k   y � � �  � � � l  y y�� � ���   � %  Get properties of a connection    � � � � >   G e t   p r o p e r t i e s   o f   a   c o n n e c t i o n �  � � � r   y  � � � J   y {����   � o      ���� 0 conproperties conProperties �  � � � l  � ���������  ��  ��   �  � � � X   � � ��� � � k   � � � �  � � � r   � � � � � I  � ����� �
�� .GETPROP0null��� ��� null��   � �� � �
�� 
OFKE � o   � ����� 0 propkey propKey � �� ���
�� 
FRID � o   � ����� 0 conid conId��   � o      ���� 0 	propvalue 	propValue �  � � � l  � ���������  ��  ��   �  ��� � s   � � � � � o   � ����� 0 	propvalue 	propValue � l      ����� � n       � � �  ;   � � � o   � ����� 0 conproperties conProperties��  ��  ��  �� 0 propkey propKey � o   � ����� (0 propertiestoexport propertiesToExport �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Write line to CSV file    � � � � .   W r i t e   l i n e   t o   C S V   f i l e �  � � � r   � � � � � n  � � � � � I   � ��� ����� 0 createcsvrow createCSVRow �  � � � o   � ����� 0 conproperties conProperties �  � � � m   � ���
�� boovfals �  � � � m   � � � � � � �  ; �  ��� � 1   � ���
�� 
quot��  ��   �  f   � � � o      ���� 0 csvline csvLine �  ��� � n  � � � � � I   � ��� ����� 0 writetofile writeToFile �  � � � b   � � � � � o   � ����� 0 csvline csvLine � 1   � ���
�� 
lnfd �  � � � o   � ����� 0 csvfilepath csvFilePath �  ��� � m   � ���
�� boovtrue��  ��   �  f   � ���  �� 0 conid conId � o   f i���� 0 conids conIds��   ' m     � �r                                                                                      @ alis      Macintosh HD               �/�yH+   ?Royal TSX.app                                                   ?��|�.        ����  	                Release     �/�Y      �|t    , ? ¬ �w �v �u �� � `^ Ul 	�� `�  uMacintosh HD:Users: fx: Development: Mono: RoyalFamily: RoyalTSX: Managed: App: RoyalTSX: bin: Release: Royal TSX.app     R o y a l   T S X . a p p    M a c i n t o s h   H D  ]Users/fx/Development/Mono/RoyalFamily/RoyalTSX/Managed/App/RoyalTSX/bin/Release/Royal TSX.app   /    	��  ��  ��   $  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Helper functions    � � � � "   H e l p e r   f u n c t i o n s �  � � � i      � � � I      �� ����� 0 createcsvrow createCSVRow �  � � � o      ���� 0 thelist theList �  � � � o      ���� 0 alwaysquote alwaysQuote �  � � � o      ����  0 fieldseparator fieldSeparator �  ��� � o      ���� 0 textindicator textIndicator��  ��   � k     ? � �  � � � Y     $ ��� � ��� � r     � � � I    �� ���� 0 quotecsvfield quoteCSVField �  � � � n     � � � 4    �~ �
�~ 
cobj � o    �}�} 0 x   � o    �|�| 0 thelist theList �  � � � o    �{�{ 0 alwaysquote alwaysQuote �  � � � o    �z�z  0 fieldseparator fieldSeparator �  ��y � o    �x�x 0 textindicator textIndicator�y  �   � n       � � � 4    �w �
�w 
cobj � o    �v�v 0 x   � o    �u�u 0 thelist theList�� 0 x   � m    �t�t  � I   	�s ��r
�s .corecnte****       **** � o    �q�q 0 thelist theList�r  ��   �    l  % %�p�o�n�p  �o  �n    r   % * n  % ( 1   & (�m
�m 
txdl 1   % &�l
�l 
ascr o      �k�k 0 oldtid oldTID 	 r   + 0

 o   + ,�j�j  0 fieldseparator fieldSeparator n      1   - /�i
�i 
txdl 1   , -�h
�h 
ascr	  r   1 6 c   1 4 o   1 2�g�g 0 thelist theList m   2 3�f
�f 
TEXT o      �e�e 0 csvrow csvRow  r   7 < o   7 8�d�d 0 oldtid oldTID n      1   9 ;�c
�c 
txdl 1   8 9�b
�b 
ascr �a L   = ? o   = >�`�` 0 csvrow csvRow�a   �  l     �_�^�]�_  �^  �]    i     !  I      �\"�[�\ 0 quotecsvfield quoteCSVField" #$# o      �Z�Z 0 plainstring plainString$ %&% o      �Y�Y 0 alwaysquote alwaysQuote& '(' o      �X�X  0 fieldseparator fieldSeparator( )�W) o      �V�V 0 textindicator textIndicator�W  �[  ! Z     E*+�U,* G     -.- G     	/0/ o     �T�T 0 alwaysquote alwaysQuote0 E    121 o    �S�S 0 plainstring plainString2 o    �R�R  0 fieldseparator fieldSeparator. E    343 o    �Q�Q 0 plainstring plainString4 o    �P�P 0 textindicator textIndicator+ k    @55 676 r    898 n   :;: 1    �O
�O 
txdl; 1    �N
�N 
ascr9 o      �M�M 0 oldtid oldTID7 <=< r    >?> o    �L�L 0 textindicator textIndicator? n     @A@ 1    �K
�K 
txdlA 1    �J
�J 
ascr= BCB r     %DED n     #FGF 2  ! #�I
�I 
citmG o     !�H�H 0 plainstring plainStringE o      �G�G 0 	textitems 	textItemsC HIH r   & -JKJ b   & )LML o   & '�F�F 0 textindicator textIndicatorM o   ' (�E�E 0 textindicator textIndicatorK n     NON 1   * ,�D
�D 
txdlO 1   ) *�C
�C 
ascrI PQP r   . 3RSR c   . 1TUT o   . /�B�B 0 	textitems 	textItemsU m   / 0�A
�A 
TEXTS o      �@�@ 0 str  Q VWV r   4 9XYX o   4 5�?�? 0 oldtid oldTIDY n     Z[Z 1   6 8�>
�> 
txdl[ 1   5 6�=
�= 
ascrW \�<\ L   : @]] b   : ?^_^ b   : =`a` o   : ;�;�; 0 textindicator textIndicatora o   ; <�:�: 0 str  _ o   = >�9�9 0 textindicator textIndicator�<  �U  , L   C Ebb o   C D�8�8 0 plainstring plainString cdc l     �7�6�5�7  �6  �5  d e�4e i    fgf I      �3h�2�3 0 writetofile writeToFileh iji o      �1�1 0 	this_data  j klk o      �0�0 0 target_file  l m�/m o      �.�. 0 append_data  �/  �2  g l    Ynopn Q     Yqrsq k    :tt uvu r    wxw c    yzy l   {�-�,{ o    �+�+ 0 target_file  �-  �,  z m    �*
�* 
ctxtx l     |�)�(| o      �'�' 0 target_file  �)  �(  v }~} r   	 � l 	 	 ��&�%� I  	 �$��
�$ .rdwropenshor       file� 4   	 �#�
�# 
file� o    �"�" 0 target_file  � �!�� 
�! 
perm� m    �
� boovtrue�   �&  �%  � l     ���� o      �� 0 open_target_file  �  �  ~ ��� Z   '����� =   ��� o    �� 0 append_data  � m    �
� boovfals� l 	  #���� I   #���
� .rdwrseofnull���     ****� l   ���� o    �� 0 open_target_file  �  �  � ���
� 
set2� m    ��  �  �  �  �  �  � ��� I  ( 1���
� .rdwrwritnull���     ****� o   ( )�� 0 	this_data  � ���
� 
refn� l  * +���
� o   * +�	�	 0 open_target_file  �  �
  � ���
� 
wrat� m   , -�
� rdwreof �  � ��� I  2 7���
� .rdwrclosnull���     ****� l  2 3���� o   2 3�� 0 open_target_file  �  �  �  � �� � L   8 :�� m   8 9��
�� boovtrue�   r R      ������
�� .ascrerr ****      � ****��  ��  s k   B Y�� ��� Q   B V����� I  E M�����
�� .rdwrclosnull���     ****� 4   E I���
�� 
file� o   G H���� 0 target_file  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   W Y�� m   W X��
�� boovfals��  o - ' (string, file path as string, boolean)   p ��� N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n )�4       ���������  � ���������� 0 createcsvrow createCSVRow�� 0 quotecsvfield quoteCSVField�� 0 writetofile writeToFile
�� .aevtoappnull  �   � ****� �� ����������� 0 createcsvrow createCSVRow�� ����� �  ���������� 0 thelist theList�� 0 alwaysquote alwaysQuote��  0 fieldseparator fieldSeparator�� 0 textindicator textIndicator��  � ���������������� 0 thelist theList�� 0 alwaysquote alwaysQuote��  0 fieldseparator fieldSeparator�� 0 textindicator textIndicator�� 0 x  �� 0 oldtid oldTID�� 0 csvrow csvRow� ��������������
�� .corecnte****       ****
�� 
cobj�� �� 0 quotecsvfield quoteCSVField
�� 
ascr
�� 
txdl
�� 
TEXT�� @ #k�j  kh *��/����+ ��/F[OY��O��,E�O���,FO��&E�O���,FO�� ��!���������� 0 quotecsvfield quoteCSVField�� ����� �  ���������� 0 plainstring plainString�� 0 alwaysquote alwaysQuote��  0 fieldseparator fieldSeparator�� 0 textindicator textIndicator��  � ���������������� 0 plainstring plainString�� 0 alwaysquote alwaysQuote��  0 fieldseparator fieldSeparator�� 0 textindicator textIndicator�� 0 oldtid oldTID�� 0 	textitems 	textItems�� 0 str  � ����������
�� 
bool
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� F�
 ���&
 ���& 1��,E�O���,FO��-E�O��%��,FO��&E�O���,FO��%�%Y �� ��g���������� 0 writetofile writeToFile�� ����� �  �������� 0 	this_data  �� 0 target_file  �� 0 append_data  ��  � ���������� 0 	this_data  �� 0 target_file  �� 0 append_data  �� 0 open_target_file  � ����������������������������
�� 
ctxt
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  �� Z <��&E�O*�/�el E�O�f  ��jl Y hO����� 
O�j OeW X   *�/j W X  hOf� �����������
�� .aevtoappnull  �   � ****� k     ���  ��  #����  ��  ��  � ������ 0 conid conId�� 0 propkey propKey� %  �� ��� 8�� <�������������� N T������ w���������������������������� ����� (0 propertiestoexport propertiesToExport
�� 
prmt
�� 
dfnm
�� 
dflc
�� afdrdesk
�� .earsffdralis        afdr�� 
�� .sysonwflfile    ��� null
�� 
ctxt�� 0 csvfilepath csvFilePath
�� 
RCON
�� 
ID00�� 0 conids conIds
�� 
quot�� �� 0 createcsvrow createCSVRow�� 0 	csvheader 	csvHeader
�� 
lnfd�� 0 writetofile writeToFile
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 conproperties conProperties
�� 
OFKE
�� 
FRID
�� .GETPROP0null��� ��� null�� 0 	propvalue 	propValue�� 0 csvline csvLine�� ���lvE�O� �*������j 
� �&E�O�� �a %E�Y hO*a -a ,E` O)�fa _ a + E` O)_ _ %�fm+ O {_ [a a l kh  jvE` O 4�[a a l kh *a �a  �a  !E` "O_ "_ 6G[OY��O)_ fa #_ a + E` $O)_ $_ %�em+ [OY��Uascr  ��ޭ