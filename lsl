 ; ~Format=ANSI.S~
%RO Version Control
lsl
lsd(w1,w2) ;Levenshtein Distance calculator
    ; from "M Computing", June 1995.
    ;
    n a,i1,i2,l1,l2,r,t,x
    s l1=$l(w1),l2=$l(w2)
    q:'l1 l2
    q:'l2 l1
    s t=0
    f i1=0:1:l1 s a(0,i1)=i1
    f i2=1:1:l2 d
    . s t='t,a(t,0)=i2
    . f i1=1:1:l1 d
    . . s r=a('t,i1-1)+($e(w1,i1)'=$e(w2,i2))
    . . s x=a('t,i1)+1
    . . s:x<r r=x
    . . s x=a(t,i1-1)+1
    . . s:x<r r=x
    . . s a(t,i1)=r
    q r
 
 

