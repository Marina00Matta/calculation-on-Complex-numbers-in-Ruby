# calculation-on-Complex-numbers-in-Ruby

A complex number is a number in the form z = a + b * i where a and b are real and i satisfies i^2 = -1.

a is called the real part and b is called the imaginary part of z. The conjugate of the number a + b * i is the number a - b * i. The absolute value of a complex number z = a + b * i is a real number |z| = sqrt(a^2 + b^2). The square of the absolute value |z|^2 is the result of multiplication of z by its complex conjugate.

The sum / difference of two complex numbers involves adding / subtracting their real and imaginary parts separately: (a + i * b) + (c + i * d) = (a + c) + (b + d) * i, (a + i * b) - (c + i * d) = (a - c) + (b - d) * i.

Multiplication result is by definition (a + i * b) * (c + i * d) = (a * c - b * d) + (b * c + a * d) * i.

Dividing a complex number a + i * b by another c + i * d gives: (a + i * b) / (c + i * d) = (a * c + b * d)/(c^2 + d^2) + (b * c - a * d)/(c^2 + d^2) * i.

Implement the following operations:

addition, subtraction, multiplication and division of two complex numbers,
a function to sum the number of the elements of many complex numbers in one array,
a function to get the total of multiplications of many complexe numbers in one array,
a function to know how many times you add or multiply complex numbers

Assume the programming language you are using does not have an implementation of complex numbers class 
