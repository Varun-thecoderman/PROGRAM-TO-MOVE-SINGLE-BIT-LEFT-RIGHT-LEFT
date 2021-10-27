org 00h

mov a,#01h
mov p1,#01h
back:

rl a
acall delay
mov p1,a

jb p1.7,new
jmp back
new:
mov p1,a
acall delay
rr a
jb p1.0,back
jmp new
delay:
mov r5,#100
pi:mov r1,#25
t:mov r2,#255
s:djnz r2,s
djnz r1,t
djnz r5,pi
ret
end
