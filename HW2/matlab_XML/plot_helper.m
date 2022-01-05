function plot_helper(x,y,title_plot,address,x_lim,y_lim) 
set(gcf,'position',[0,0,1800,900]);
plot(x,y);
xlim(x_lim);
ylim(y_lim);
title(strcat('figure of function ',title_plot),"fontsize",14,"interpreter","latex");
xlabel('time (t)');
ylabel('y');
saveas(gcf,string(strcat(address,'.jpg')));
end
