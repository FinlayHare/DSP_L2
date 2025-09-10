t = -10:0.01:10;
impulse = (t==0);
figure;
subplot(3,2,1);
stem(t,impulse);
xlabel('time');
ylabel('amplitude');
grid on;


step = (t>=0);
subplot(3,2,2);
plot(t,step, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;


ramp = t.*(t>=0);
subplot(3,2,3);
plot(t,ramp, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;

a = -0.5;
exponential = exp(a*t);
subplot(3,2,4); 
plot(t,exponential, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;



impulse = sign(t);  

subplot(3,1,3);
plot(t, impulse, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
ylim([-1.5 1.5]);
grid on;






