%% YT: Best Practice for Converting MATLAB Code to Fixed Point Using Fixed-Point Designer
%% defual matlab data type: double
clearvars
a = magic (3)
whos
% 3*3 array in double class 

%% just simple assignment
a(1) = 0;
a = 0;
a(:) = 0; 

%% otherMATLAB data type
b = single(magic(3))
class(b)
c = int8(magic(3))
class(c)

c = 9;
class (c)
% by assignment, class c from int8 change to doiuble :)

%% fixed point type by fi construction
% a = fi(v,s,w,f) returns a fixed-point object with value v, Signed property value s, word length w, and fraction length f. 
% Fraction length can be greater than word length or negative
d = fi(pi, true, 32, 24)
% trun on long to see more digit
format long
% look at the double precision of the pi 
pi
% trun on short to see less digit
format short
% store integer value
d.int
class(d.int)
% convert machine value to real world value
d.int * d.lsb
% example: d = fi(3, true, 8, 3)
% 00011.000 
% d.int = 00011000 = 24
% d.lsb = 2^(-3) = 1/8
% d.int*d.lsb = 24/8 = 3

%% casting
a = fi([],true ,32, 24)
b = cast(pi, 'like', a)
a = single([])
class(b)
b = cast(pi, 'like', a)
class(b)


a = fi(2)
a = a * a
a = a * a 

b = fi(2, true, 8, 0)
b(:) = b * b
b(:) = b * b 

rehash



%% e_01 : prepare code for instrumentation, fixed-point conversion, acceleration
%% e_02 : manage data type and control bit growth
%% e_03 : separate data type definition from algorithmic code
%% e_04 : create fixed-point entries in types table
%% e_05 : optimize data types
%% e_06 : optimize your algorithm
 
