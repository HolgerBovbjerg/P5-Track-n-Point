clear;
%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 2);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ";";

% Specify column names and types
opts.VariableNames = ["Frequency_HZ", "Power_dBm"];
opts.VariableTypes = ["double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["Frequency_HZ", "Power_dBm"], "DecimalSeparator", ",");

% Import the data
data_controller = readtable("MAALING_CONTROLLER_EDIT.DAT", opts);
data_drone = readtable("MAALING_DRONE_EDIT.DAT", opts);
data_controller = table2array(data_controller);
data_drone = table2array(data_drone);

tiledlayout(2,1)
ax1 = nexttile;
plot(ax1, data_controller(:,1)./1e6, data_controller(:,2)+20,'blue', 'LineWidth', 1)
title('Spectrum of controller')
xlabel('Frequency')
ylabel('Received power')
xtickformat('%g MHz')
ytickformat('%g dBm')
ylim([-80 -10])
grid on;
ax2 = nexttile;
plot(ax2, data_drone(:,1)./1e6, data_drone(:,2)+20, 'red', 'LineWidth', 1)
title('Spectrum of drone')
xlabel('Frequency')
ylabel('Received power')
xtickformat('%g MHz')
ytickformat('%g dBm')
ylim([-80 -10])
grid on;