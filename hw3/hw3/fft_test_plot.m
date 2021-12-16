function fft_test_plot(f,F,abs_xlim,phase_xlim)
figure;
set(gcf,'position',[0,0,1800,900]);

subplot(2,1,1)
plot(f,real(F), '.-', 'markersize', 6)
title('REAL')
ax = gca;
xlim(abs_xlim)

%ax.XTick = [15 40 60 85];

subplot(2,1,2)
plot(f,(angle(F)), '.-', 'markersize', 6)
title('Phase');
xlim(phase_xlim);

ax = gca;
%ax.XTick = [15 40 60 85];
shg;
end
