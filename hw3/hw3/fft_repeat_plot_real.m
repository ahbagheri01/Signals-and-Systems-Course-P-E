function fft_repeat_plot_real(x,N,title_plot)
for n = N
    F = fftshift(fft(x,n));
    %f = linspace(-fs/2, fs/2, numel(F));
    f = linspace(-pi, pi, numel(F));
    figure;
    set(gcf,'position',[0,0,1800,900]);

    subplot(2,1,1)
    plot(f,real(F), '.-', 'markersize', 6)
    title(strcat(strcat(strcat('REAL\/ of\/ Fourier\/ Transform\/ of\/ ',title_plot),"with N = \/ "),string(n)),"fontsize",14,"interpreter","latex")
    ax = gca;
    %xlim(abs_xlim)
    xlim([-pi,pi])

    %ax.XTick = [15 40 60 85];

    subplot(2,1,2)
    plot(f,unwrap(angle(F)), '.-', 'markersize', 6)
    title(strcat(strcat(strcat('Phase\/ of\/ Fourier\/ Transform\/ of\/ ',title_plot),"with N = \/ "),string(n)),"fontsize",14,"interpreter","latex")
    %xlim(phase_xlim);
    xlim([-pi,pi])

    ax = gca;
    %ax.XTick = [15 40 60 85];
    shg;
end
end