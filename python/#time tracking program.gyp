#time tracking program
#let ammount in dollar per 1mins be "a"
#for every minute represnt it by point, so 2hours 30minutes becomes 2.5 in the time input.
#24hour time option used.
a='0.083'
b=float(a)
e=input("Start Date:")
f=str(e)
i=input("Start Time:")
g=input("End Date:")
h=str(g)
k=input("End Time:")
l=((float(k))-(float(i)))
m=float(l)
n=m*60
print("minutes worked is",n)
print("Total amounnt made this period is $",b*n)