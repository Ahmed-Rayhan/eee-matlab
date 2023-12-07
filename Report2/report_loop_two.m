clear;
close all;
clc;

A=(1:2:99);
B=(2:2:100);

C=(A.*A)-((B.*B).*B);
sum(C)
