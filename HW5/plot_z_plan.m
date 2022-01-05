function plot_z_plan(num,dom)
H = tf(num,dom);
figure;
set(gcf,'position',[0,0,1800,900]);
pzplot(H);
h = findobj(gca, 'type', 'line');
set(h, 'markersize', 20)
text(real(roots(num)) - 0.1, imag(roots(num)) + 0.1, 'Zero')
text(real(roots(dom)) - 0.1, imag(roots(dom)) + 0.1, 'Pole')
axis equal
figure;
set(gcf,'position',[0,0,1800,900]);
zplane(num,dom);
grid on;
end
