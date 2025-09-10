t = -10:1:10;
impulse = (t==0);
figure;
subplot(3,2,1);
stem(t,impulse);
xlabel('time');
ylabel('amplitude');
grid on;


step = (t>=0);
subplot(3,2,2);
stem(t,step, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;


ramp = t.*(t>=0);
subplot(3,2,3);
stem(t,ramp, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;

a = -0.5;
exponential = exp(a*t);
subplot(3,2,4); 
stem(t,exponential, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;



impulse = sign(t);  % -1 for t<0, 0 at t=0, +1 for t>0

subplot(3,1,3);
stem(t, impulse, 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
ylim([-1.5 1.5]);
grid on;






%define a continuous sinc function
sincFunction = @(t) sin(pi*t)./(pi*t); % Define the sinc function
sincFunction(t==0) = 1; % Handle the indeterminate form at t=0
subplot(3,1,3);
hold on; % Hold the current plot
stem(t, sincFunction(t), 'LineWidth', 2);
xlabel('time');
ylabel('amplitude');
grid on;
hold off; % Release the plot hold