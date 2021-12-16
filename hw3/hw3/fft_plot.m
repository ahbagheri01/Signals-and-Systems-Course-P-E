function fft_plot(f,F,abs_xlim,phase_xlim)
figure;
set(gcf,'position',[0,0,1800,900]);

subplot(3,1,1)
plot(f,abs(F), '.-', 'markersize', 6)
title("Magnitude");
ax = gca;
xlim(abs_xlim)

subplot(3,1,2)
plot(f,real(F), '.-', 'markersize', 6)
title("Real");
ax = gca;
xlim(abs_xlim)
%ax.XTick = [15 40 60 85];

subplot(3,1,3)
plot(f,unwrap(angle(F)), '.-', 'markersize', 6)
title('Phase');
xlim(phase_xlim);

ax = gca;
%ax.XTick = [15 40 60 85];
shg;
end