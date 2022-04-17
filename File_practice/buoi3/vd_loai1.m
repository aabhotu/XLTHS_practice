h=[1.5 -2.5 3 -2 4 -2 3 -2.5 1.5];
[a,w,L,Hr]=FIR_t1(h);
plot(w/pi,abs(Hr));
title('Dap ung bien do cua bo loc FIR 1');
grid on;