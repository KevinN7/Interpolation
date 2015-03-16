function val = bernstein(n,j,x)

res = (factorial(n)/(factorial(n-j)*factorial(j)))*(x^j)*((1-x)^(n-j))

val = res;