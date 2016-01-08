local D,I,c,d,i,b,f,g=1,1,{},{},1
for k=1,3e4 do
d[k]=0
end
for m in io.open(...):read'*a':gmatch'[<>%+%-%.%,%[%]]'do
c[i],i=m,i+1
end
function f(x)d[D]=d[D]+x end
function g(k,x)if k then b=1 while b~=0 do I=I+x b=(c[I]=='['and b+x)or(c[I]==']'and b-x)or b end I=I-1 end end
while I<#c do 
({['+']=function()f(1)end,['-']=function()f(-1)end,['>']=function()D=D+1 end,['<']=function()D=D-1 end,['[']=function()g(d[D]==0,1)end,[']']=function()g(d[D]~=0,-1)end,['.']=function()io.write(('').char(d[D]))end})[c[I]]()I=I+1
end