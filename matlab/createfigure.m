function createfigure(XMatrix1, YMatrix1, DMatrix1)
%CREATEFIGURE1(XMatrix1, YMatrix1, DMatrix1)
%  XMATRIX1:  errorbar x matrix data
%  YMATRIX1:  errorbar y matrix data
%  DMATRIX1:  errorbar delta matrix data

%  Auto-generated by MATLAB on 26-Jan-2018 20:09:55

% Create figure
figure1 = figure('Name','Figure');

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple error bars using matrix input to errorbar
errorbar1 = errorbar(XMatrix1(:,1),YMatrix1(:,1),DMatrix1(:,1),'MarkerSize',30,...
    'Marker','.',...
    'CapSize',15,...
    'Linewidth',1.5);
set(errorbar1,'DisplayName','Public attribute');
hold on;
errorbar2 = errorbar(XMatrix1(:,2),YMatrix1(:,2),DMatrix1(:,2),'MarkerSize',30,...
    'Marker','.',...
    'CapSize',15,...
    'Linewidth',1.5,...
    'LineStyle', '-.');
set(errorbar1,'DisplayName','Public attribute');
set(errorbar2,'DisplayName','Private attribute');

% Create ylabel
ylabel('Client Latency [ms]',...
    'Color',[0.313725501298904 0.313725501298904 0.313725501298904]);

% Create xlabel
xlabel('Threshold parameter',...
    'Color',[0.313725501298904 0.313725501298904 0.313725501298904]);

% Set the remaining axes properties
set(axes1,'FontSize',12,'XColor',...
    [0.313725501298904 0.313725501298904 0.313725501298904],'YColor',...
    [0.313725501298904 0.313725501298904 0.313725501298904],'ZColor',...
    [0.313725501298904 0.313725501298904 0.313725501298904]);
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','northwest');
grid on;

