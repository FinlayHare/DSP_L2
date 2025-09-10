t = -10:0.01:10;
sinc_signal = sinc(t),
figure;
subplot(2,1,1);
plot(t,sinc_signal);
xlabel('time');
ylabel('amplitude');
grid on;

subplot(2,1,2);
t = -10:0.01:10;
stem(t,sinc_signal);
xlabel('time');
ylabel('amplitude');
grid on;


