function plot_fourier_helper(y,f,threshhold,title_plot,address,abs_xlim,abs_ylim,phase_xlim,phase_ylim) 
absval = abs(y);
figure;
set(gcf,'position',[0,0,1800,900])%,"visible","on")

plot(f,absval)
abs_ylim(2) = max(absval+10);
abs_ylim(1) = min(absval-10);
xlim(abs_xlim)
ylim(abs_ylim)
title(strcat('Magnitude\/ of\/ Fourier\/ Transform\/ of\/ ',title_plot),"fontsize",14,"interpreter","latex")
xlabel('Frequency(Hz)')
ylabel('Magnitude')
shg;
saveas(gcf,string(strcat(address,'_abs','.jpg')))
y(absval < threshhold) = 0;
ph = angle(y);
figure;
set(gcf,'position',[0,0,1800,900])%,"visible","on")

plot(f,ph/pi)

xlim(phase_xlim);
    
phase_ylim(2) = max((ph+1)/pi);
phase_ylim(1) = min((ph-1)/pi);
ylim(phase_ylim)

title(strcat('Phase\/ of\/ Fourier\/ Transform of\/ ',title_plot),"fontsize",14,"interpreter","latex")
xlabel('Frequency(Hz)')
ylabel('Phase($\frac{degree}{\pi}$)',"interpreter","latex")
saveas(gcf,string(strcat(address,'_phase','.jpg')))
shg;
end
