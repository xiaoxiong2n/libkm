function [hP] = plot_xyerr(x,y, errbar_type)
% plot_xyerr(x,y, errbar_type)
% compute std or sem of y based on x, and plot errorbars.
% errbar = 'sem' | 'std'
if ~is_arg('errbar_type'), errbar_type = 'sem'; end;

cG = grpstats(y,x,'gname');
unique_x = cellfun(@(x) str2num(x), cG);

mG = grpstats(y,x,'mean');
nG = grpstats(y,x,'numel');
% stdG = grpstats(y,x,'std');
% semG = stdG ./ sqrt(nG);
semG = grpstats(y,x, errbar_type);

hPS = plot(unique_x, mG,'o');
c = get(hPS, 'color');
set(hPS, 'markersize', 4,'markerfacecolor', c);
prev_nextplot = get(gca,'nextplot'); % hold on;. wrong. just keep prev status
set(gca,'nextplot','add');
hPL = errorbar(unique_x, mG, semG);
set(gca,'nextplot', prev_nextplot); % hold off;

nN = length(x);
title(sprintf('N=%d, nG=%d', nN, length(cG)));

hP = [hPS hPL];