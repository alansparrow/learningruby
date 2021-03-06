 # ! / u s r / b i n / r u b y 
 
 r e q u i r e   ' r u b y g e m s ' 
 r e q u i r e   ' m e c h a n i z e ' 
 
 #   W e   w i l l   p r o b a b l y   w a n t   t o   s t a r t   u s i n g   J S O N   i n s t e a d   o f   r e g u l a r   e x p r e s s i o n s   s o m e t i m e . 
 # r e q u i r e   ' j s o n ' 
 
 c l a s s   M e c h a n i z e : : P a g e 
     
     #   T h i s   i s   a   w o r k a r o u n d   f o r   a   p r o b l e m   w i t h   M e c h a n i z e .   I t   l e t s   y o u   s e a r c h   f o r   f o r m s   b y   i d   w h e n   s c r a p i n g   a   p a g e . 
     d e f   f o r m _ i d ( f o r m I d ) 
         f o r m C o n t e n t s   =   ( s e l f / : f o r m ) . f i n d   {   | e l e m |   e l e m [ ' i d ' ]   = =   f o r m I d   } 
         i f   f o r m C o n t e n t s   t h e n   r e t u r n   M e c h a n i z e : : F o r m . n e w ( f o r m C o n t e n t s )   e n d 
     e n d 
     
 e n d 
 
 c l a s s   F a c e b o o k B o t 
 
     d e f   i n i t i a l i z e ( e m a i l ,   p a s s ) 
         @ f b U r l   =   " h t t p : / / w w w . f a c e b o o k . c o m / " 
         @ m o b i l e U r l   =   " h t t p : / / m . f a c e b o o k . c o m / " 
 
         @ e m a i l ,   @ p a s s   =   e m a i l ,   p a s s 
         
         @ a g e n t   =   M e c h a n i z e . n e w 
         @ a g e n t . u s e r _ a g e n t _ a l i a s   =   ' M a c   S a f a r i ' 
         
         @ c o o k i e s   =   F i l e . d i r n a m e ( _ _ F I L E _ _ )   +   " / c o o k i e s - "   +   @ e m a i l   +   " . y m l " 
         i f   ( F i l e . f i l e ? ( @ c o o k i e s ) ) 
             @ a g e n t . c o o k i e _ j a r . l o a d ( @ c o o k i e s ) 
             p u t s   " S a v e d   c o o k i e s : " ,   @ a g e n t . c o o k i e s 
         e l s e 
             p u t s   " N o   s a v e d   c o o k i e s . " 
         e n d 
         
         s e l f . l o g i n 
     e n d 
 
     d e f   l o g i n 
         p a g e   =   @ a g e n t . g e t ( @ f b U r l ) 
 
         #   R e a d   s t o r e d   c o o k i e s . 
         i f   ( l o g i n f   =   p a g e . f o r m _ i d ( " l o g i n _ f o r m " ) ) 
             p u t s   " L o g g i n g   i n . . . " 
             l o g i n f . s e t _ f i e l d s ( : e m a i l   = >   @ e m a i l ,   : p a s s   = >   @ p a s s ) 
             p a g e   =   @ a g e n t . s u b m i t ( l o g i n f ,   l o g i n f . b u t t o n s . f i r s t ) 
             p u t s   p a g e . f o r m _ i d ( " l o g o u t _ f o r m " ) ?   " L o g i n   S u c c e s s f u l "   :   " L o g i n   F a i l e d " 
         e l s e 
             p u t s   " N o t   l o g g i n g   i n .   A l r e a d y   L o g g e d   I n ! " 
         e n d 
 
         #   W r i t e   l o g i n   c o o k i e s .   O n c e   t h e s e   a r e   w r i t t e n   y o u r   p a s s w o r d   i s   n o t   u s e d   a g a i n   u n t i l   y o u r   s e s s i o n   e x p i r e s . 
         @ a g e n t . c o o k i e _ j a r . s a v e _ a s ( @ c o o k i e s ) 
         
         b o d y   =   p a g e . r o o t . t o _ h t m l 
         #   @ u i d   =   % r { \ \ " u s e r \ \ " : ( \ d + ) , \ \ " h i d e \ \ " } . m a t c h ( b o d y ) [ 1 ]   #   T h i s   i s   a   U I D   g i v e n   t o   e a c h   F a c e b o o k   u s e r . 
         @ u i d   =   % r { u s e r : ( \ d + ) , } . m a t c h ( b o d y ) [ 1 ]   #   T h i s   i s   a   U I D   g i v e n   t o   e a c h   F a c e b o o k   u s e r . 
         #   @ p o s t _ f o r m _ i d   =   % r { < i n p u t   t y p e = " h i d d e n "   i d = " p o s t _ f o r m _ i d "   n a m e = " p o s t _ f o r m _ i d "   v a l u e = " ( [ ^ " ] + ) } . m a t c h ( b o d y ) [ 1 ]   #   T h i s   i s   a   t o k e n   w e   n e e d   t o   s u b m i t   f o r m s . 
         @ p o s t _ f o r m _ i d   =   % r { n a m e = \ \ " p o s t _ f o r m _ i d \ \ "   v a l u e = \ \ " ( [ ^ " ] + ) \ \ " } . m a t c h ( b o d y ) [ 1 ]   #   T h i s   i s   a   t o k e n   w e   n e e d   t o   s u b m i t   f o r m s . 
     e n d 
     
     d e f   p o s t S t a t u s ( s t a t u s ) 
         p u t s   " S h a r i n g   t e x t . . . " 
         p a g e   =   @ a g e n t . g e t ( @ m o b i l e U r l ) 
         c o m p o s e r F o r m   =   p a g e . f o r m _ i d ( " c o m p o s e r _ f o r m " ) 
         c o m p o s e r F o r m . s e t _ f i e l d s ( : f b _ d t s g   = >   " A 6 v y P " ,   : p o s t _ f o r m _ i d   = >   @ p o s t _ f o r m _ i d ,   : c h a r s e t _ t e s t   = >   " � , � , � , � ,l4 , , " ,   : s t a t u s   = >   s t a t u s ) 
         @ a g e n t . s u b m i t ( c o m p o s e r F o r m ,   c o m p o s e r F o r m . b u t t o n s . f i r s t ) 
         p u t s   " D o n e . " 
     e n d 
     
     d e f   s u g g e s t e d F r i e n d s 
         p a g e   =   @ a g e n t . g e t ( @ f b U r l   +   " f i n d - f r i e n d s " ) 
         f r i e n d s   =   [ ] 
         p a g e . s e a r c h ( " . f r i e n d _ b r o w s e r _ p a g e _ n a m e _ b o x / a " ) . e a c h   d o   
             | m y _ t a g |   f r i e n d s . p u s h ( % r { \ ? i d = ( \ d + ) " } . m a t c h ( m y _ t a g . t o _ h t m l ) [ 1 ] )   #   A d d   t h e   p e r s o n ' s   i d   t o   a n   a r r a y . 
             #   T h e   p e r s o n ' s   d i s p l a y   n a m e   w o u l d   b e   ( m y _ t a g . t o _ h t m l . g s u b ( / < \ / ? [ ^ > ] * > / ,   " " ) 
         e n d 
         f r i e n d s 
     e n d 
     
     d e f   r e q u e s t F r i e n d ( f r i e n d I d ) 
         r   =   @ a g e n t . p o s t ( ' h t t p : / / w w w . f a c e b o o k . c o m / a j a x / p r o f i l e / c o n n e c t . p h p ? p r o f i l e _ i d = '   +   f r i e n d I d . t o _ s   +   ' & r e l _ d i a l o g = 1 & s r c = f b x _ t o p _ b a r & r e f = n o n e & _ _ a = 1 ' , 
         ' p r o f i l e _ i d '   = >   f r i e n d I d , 
         ' r e l _ d i a l o g '   = >   1 , 
         ' s r c '   = >   ' f b x _ t o p _ b a r ' , 
         ' r e f '   = >   ' n o n e ' , 
         ' _ _ d '   = >   1 , 
         ' p o s t _ f o r m _ i d '   = >   @ p o s t _ f o r m _ i d , 
         ' f b _ d t s g '   = >   ' A 6 v y P ' , 
         ' l s d '   = >   ' ' , 
         ' p o s t _ f o r m _ i d _ s o u r c e '   = >   ' A s y n c R e q u e s t ' ) . b o d y 
         s u b m i t _ t o k e n   =   % r { \ \ " s u b m i t _ t o k e n \ \ " : \ \ " ( [ 0 - 9 a - z ] + ) \ \ " } . m a t c h ( r ) [ 1 ] 
         r   =   @ a g e n t . p o s t ( ' h t t p : / / w w w . f a c e b o o k . c o m / a j a x / p r o f i l e / c o n n e c t . p h p ? _ _ a = 1 ' , 
         ' u s e r '   = >   @ u i d , 
         ' p r o f i l e _ i d '   = >   f r i e n d I d , 
         ' s u b m i t _ t o k e n '   = >   s u b m i t _ t o k e n , 
         ' s o u r c e '   = >   ' p r o f i l e _ b u t t o n ' , 
         ' s r c '   = >   ' f b x _ t o p _ b a r ' , 
         ' s u b m i t '   = >   1 , 
         ' p o s t _ f o r m _ i d '   = >   @ p o s t _ f o r m _ i d , 
         ' f b _ d t s g '   = >   ' A 6 v y P ' , 
         ' l s d '   = >   ' ' , 
         ' p o s t _ f o r m _ i d _ s o u r c e '   = >   ' A s y n c R e q u e s t ' ) . b o d y 
     e n d 
     
     d e f   a c c e p t R e q u e s t s 
         p u t s   " A c c e p t i n g   a l l   r e q u e s t s . . . " 
         p a g e   =   @ a g e n t . g e t ( @ m o b i l e U r l   +   " f r i e n d s . p h p " ) 
         p a g e . f o r m s . e a c h   {   | f o r m |   i f   ( f o r m . b u t t o n s . f i r s t . v a l u e = = " C o n f i r m "   | |   f o r m . b u t t o n s . f i r s t . v a l u e = = " A d d   F r i e n d " )   t h e n   @ a g e n t . s u b m i t ( f o r m ,   f o r m . b u t t o n s . f i r s t )   e n d   } 
         p u t s   " D o n e . " 
     e n d 
     
     #   G e t   r e c e n t   s t a t u s   c h a n g e s   o r   t e x t   p o s t s   o n   o t h e r   p e o p l e ' s   w a l l s . 
     d e f   r e c e n t P o s t s 
         p a g e   =   @ a g e n t . g e t ( @ m o b i l e U r l   +   " s t o r i e s . p h p " ) 
         p o s t s   =   [ ] 
         p a g e . s e a r c h ( " . c   d i v " ) . e a c h   d o   | m y _ t a g | 
             i f   ( a u t h o r L i n k   =   m y _ t a g . s e a r c h ( " a " ) . f i r s t )   t h e n 
                 a u t h o r   =   a u t h o r L i n k . i n n e r _ t e x t 
                 a u t h o r L i n k . r e m o v e 
             e n d 
             i f   ( m y _ t a g . t o _ h t m l . s c a n ( " \ 3 4 2 \ 2 2 6 \ 2 6 6 " ) . c o u n t )   t h e n   #   I t ' s   a   c o n v e r s a t i o n . 
                 i f   ( r e c i e v e r L i n k   =   m y _ t a g . s e a r c h ( " a " ) . f i r s t )   t h e n   r e c i e v e r L i n k . r e m o v e   e n d 
             e n d 
             p o s t   =   { " t e x t "   = >   m y _ t a g . i n n e r _ t e x t . g s u b ( " \ 3 4 2 \ 2 2 6 \ 2 6 6 " ,   " " ) . s t r i p ,   " a u t h o r N a m e "   = >   a u t h o r } 
             i f   ( r e c i e v e r L i n k )   t h e n   p o s t [ " r e c i e v e r N a m e " ]   =   r e c i e v e r L i n k . i n n e r _ t e x t   e n d ; 
           p o s t s . p u s h ( p o s t ) 
         e n d 
         p o s t s 
     e n d 
     
     d e f   p e r s o n a l M e s s a g e s ( s h o w R e a d   =   f a l s e ) 
         p a g e   =   @ a g e n t . g e t ( @ m o b i l e U r l   +   ( s h o w R e a d   ?   " i n b o x # ! / i n b o x / "   :   " i n b o x # ! / i n b o x / ? u n r e a d " ) ) 
         m e s s a g e s   =   [ ] 
         p a g e . s e a r c h ( " t a b l e . r e s u l t s / * / t d " ) . e a c h   d o   | m y _ t a g | 
             s e n d e r T a g   =   m y _ t a g . s e a r c h ( " a [ @ h r e f ^ = ' / p r o f i l e ' ] " ) . f i r s t 
             s u b j e c t T a g   =   m y _ t a g . s e a r c h ( " a [ @ h r e f ^ = ' / i n b o x ' ] " ) . f i r s t 
             r e p l y T a g   =   m y _ t a g . s e a r c h ( " a [ @ h r e f ^ = ' / i n b o x / r e a d m e s s a g e . p h p ' ] " ) . f i r s t 
             m e s s a g e I d   =   % r { \ ? t = ( \ d + ) } . m a t c h ( r e p l y T a g . a t t r i b u t e s [ " h r e f " ] ) [ 1 ] 
             m e s s a g e   =   { " s u b j e c t "   = >   s u b j e c t T a g . i n n e r _ t e x t . g s u b ( " \ 3 4 2 \ 2 0 0 \ 2 4 2 " ,   ' ' ) ,   " s e n d e r N a m e "   = >   s e n d e r T a g . i n n e r _ t e x t ,   " m e s s a g e I d "   = >   m e s s a g e I d } 
             
             #   R e m o v e   a l l   d i v s   e x c e p t   t h e   o n e   w i t h   t h e   m e s s a g e . 
             m y _ t a g . s e a r c h ( " d i v . n o t e " ) . r e m o v e 
             m y _ t a g . s e a r c h ( " d i v . m f s s " ) . r e m o v e 
             m e s s a g e [ " b o d y " ]   =   m y _ t a g . i n n e r _ t e x t 
             
             m e s s a g e s . p u s h ( m e s s a g e ) 
         e n d 
         m e s s a g e s 
     e n d 
     
     #   T h i s   m e t h o d   i s   u n f i n i s h e d . 
     d e f   r e p l y T o M e s s a g e W i t h T e x t ( m e s s a g e I d ,   m e s s a g e T e x t ) 
         p a g e   =   @ a g e n t . g e t ( @ m o b i l e U r l   +   " i n b o x / r e a d m e s s a g e . p h p ? t = "   +   m e s s a g e I d ) 
     e n d 
 
 e n d 
 
 
 #   R e q u i r e   F a c e b o o k B o t . r b   f r o m   t h e   s a m e   d i r e c t o r y . 
 r e q u i r e   F i l e . j o i n ( F i l e . d i r n a m e ( _ _ F I L E _ _ ) ,   ' F a c e b o o k B o t . r b ' ) 
   
 #   L o g   i n . 
 f b   =   F a c e b o o k B o t . n e w ( " b a o t r u n g t n @ l i v e . c o m " ,   " b a o t r u n g " ) 
   
 #   A c c e p t   a l l   f r i e n d   r e q u e s t s . 
 # f b . a c c e p t R e q u e s t s 
   
 #   F r i e n d   a   w h o l e   p a g e   o f   s u g g e s t e d   f r i e n d s . 
 # f b . s u g g e s t e d F r i e n d s . e a c h   {   | f r i e n d I d |   f b . r e q u e s t F r i e n d ( f r i e n d I d )   } 
   
 #   D i s p l a y   a l l   p e r s o n a l   m e s s a g e s   a n d   r e c e n t   w a l l   p o s t s . 
 r e q u i r e   " p p " 
 p p   f b . p e r s o n a l M e s s a g e s 
 p p   f b . r e c e n t P o s t s 
 p p   " F i n i s h ! "