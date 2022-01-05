function fft_plot(F)

lim = [-pi,pi];
f = linspace(-pi,pi,numel(F));
figure;
set(gcf,'position',[0,0,1800,900]);
subplot(3,1,1)
plot(f,abs(F), '.-', 'markersize', 6)
title("Magnitude");
ax = gca;
xlim(lim)
subplot(3,1,2)
plot(f,real(F), '.-', 'markersize', 6)
title("Real");
ax = gca;
xlim(lim)
subplot(3,1,3)
plot(f,unwrap(angle(F)), '.-', 'markersize', 6)
title('Phase');
xlim(lim);
ax = gca;
shg;
end