clear;
c = 3e8;
f = 100e6;
lambda = c/f;
dp = dipole('Length',lambda/2,'Width',lambda/100);
lc_small = loopCircular('Radius',lambda/10,'Thickness',0.00001);
lc_large = loopCircular('Radius',lambda,'Thickness',0.00001);
insetpatch = patchMicrostripInsetfed('Length', lambda/2, 'Width', lambda/2, 'Substrate', FR4);

p = PatternPlotOptions;
p.Transparency = 0.7;
figure(1)
pattern(dp, f, 'patternOptions', p)
figure(2)
pattern(lc_small, f, 'patternOptions', p)
figure(3)
pattern(lc_large, f, 'patternOptions', p)

% ra = rectangularArray
% layout(ra)
% show(ra)
% pattern(ra,2.4e9) 
