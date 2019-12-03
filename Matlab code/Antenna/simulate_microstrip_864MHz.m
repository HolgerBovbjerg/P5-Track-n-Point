%% Create and simulate microstrip antenna
insetpatch = patchMicrostripInsetfed('Length', L, 'Width', W);
insetpatch.Height = h;
insetpatch.Substrate = dielectric('FR4');
insetpatch.StripLineWidth = W_0;
insetpatch.NotchLength = y_0;
insetpatch.NotchWidth = W_0+g;
insetpatch.GroundPlaneWidth = W+6*h;
insetpatch.GroundPlaneLength = L+6*h;
%insetpatch.Load = lumpedElement('Impedance',50);

% Plot pattern
p = PatternPlotOptions;
p.Transparency = 0.7;
pattern(insetpatch, f_0, 'patternOptions', p)


% impedance(insetpatch, f_0-f_0/10:2*f_0/10:f_0+f_0/10)
% S = sparameters(insetpatch,2300e6:10e6:2500e6,72);
% rfplot(S)
% vswr(d,2300e6:10e6:2500e6,72)