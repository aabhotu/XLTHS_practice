h=[1.5 -2.5 3 0 -3 2.5 -1.5];
[c,w,L,Hr]=FIR_t3(h);
plot(w/pi,abs(Hr));
title('Dap ung bien do cua bo loc FIR 3');
grid on;