clear all;
close all;
clc;

x=0;
for i=1:1:1000
 x=x+i*(i+1);
end
sum(x);