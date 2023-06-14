REM   3751/1172を連分数展開する
DIM   a(200)
LET x=3751
LET y=1172
LET k=0
LET tolerance=10  !問題に応じて適当に設定
LET big=MAX(x,y)
LET small=MIN(x,y)
DO   WHILE   (small>0  AND  count<tolerance)
   LET count=0
   LET Q=INT(big/small)
   LET k=k+1
   LET a(k)=Q
   LET new_small=MOD(big,small)
   LET big=small
   LET small=new_small
   REM--------------------------------------------
   FOR  i=1  TO  100
      IF   a(i)<>0  THEN   LET count=count+1
   NEXT I
    
LOOP
REM---結果を表示
PRINT   "[";
FOR    h=1  TO   tolerance

   IF  a(h)<>0  THEN     PRINT   a(h);
NEXT H
PRINT  "]"

END
