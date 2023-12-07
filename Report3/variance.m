clear all
close all
clc

x=[1:100];
n=length(x);
avg=sum(x)/n;

s=0; for i=1:100;
    s=s+(i-avg)^2
end

var= s/n

% P=(x-avg).^2;
% var=sum(P)/n