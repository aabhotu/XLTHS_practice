h=[1.5 -2.5 3 -3 2.5 -1.5];
[d,w,L,Hr]=FIR_t4(h);
plot(w/pi,abs(Hr));
title('Dap ung bien do cua bo loc FIR 4');
grid on;