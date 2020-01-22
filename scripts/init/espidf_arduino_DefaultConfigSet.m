function espidf_arduino_DefaultConfigSet(hDlg, hSrc)
% espidf_DEFAULTCONFIGSET sets the target

disp(mfilename)
%% Set default RTW parameters for ChibiOS target:
tabs={'SolverTab', 'CodeStyleTab', 'CodeGenerationTab', 'ReportTab', 'InterfaceTab', 'TemplatesTab', 'CodeStyleTab'};
n=numel(tabs);
for i=1:n
    feval(tabs{i},hDlg,hSrc)
end

%% Solver Tab **********************************************************
function SolverTab(hDlg,hSrc) %#ok<*DEFNU>
slConfigUISetVal(hDlg, hSrc,     'SolverName','FixedStepDiscrete')
slConfigUISetEnabled(hDlg, hSrc, 'SolverName', false);

slConfigUISetVal(hDlg, hSrc,     'FixedStep','0.1')
slConfigUISetEnabled(hDlg, hSrc, 'FixedStep', true);

%% General tab *************************************************************
function CodeGenerationTab(hDlg, hSrc)
slConfigUISetVal(hDlg, hSrc,     'GenerateMakefile','on')
slConfigUISetEnabled(hDlg, hSrc, 'GenerateMakefile', false);

slConfigUISetVal(hDlg, hSrc,     'MakeCommand','make_rtw')
slConfigUISetEnabled(hDlg, hSrc, 'MakeCommand', false);

slConfigUISetVal(hDlg, hSrc,     'TemplateMakefile','espidf_arduino.tmf')
slConfigUISetEnabled(hDlg, hSrc, 'TemplateMakefile', true);

%% Report tab **************************************************************
function ReportTab(hDlg, hSrc)
slConfigUISetVal(hDlg, hSrc,     'GenerateReport','off')
slConfigUISetEnabled(hDlg, hSrc, 'GenerateReport', true);

slConfigUISetVal(hDlg, hSrc,     'LaunchReport','off')
slConfigUISetEnabled(hDlg, hSrc, 'LaunchReport', true);

%% Interface tab ***********************************************************
function InterfaceTab(hDlg, hSrc)
slConfigUISetVal(hDlg, hSrc,     'SupportContinuousTime','off')
slConfigUISetEnabled(hDlg, hSrc, 'SupportContinuousTime', true);

% Templates tab ***********************************************************
function TemplatesTab(hDlg, hSrc)
slConfigUISetVal(hDlg, hSrc,     'ERTCustomFileTemplate','espidf_arduino_main.tlc')
slConfigUISetEnabled(hDlg, hSrc, 'ERTCustomFileTemplate', true);

slConfigUISetVal(hDlg, hSrc,     'GenerateSampleERTMain','on')
slConfigUISetEnabled(hDlg, hSrc, 'GenerateSampleERTMain', false);

slConfigUISetVal(hDlg, hSrc,     'IncludeMdlTerminateFcn','on')
slConfigUISetEnabled(hDlg, hSrc, 'IncludeMdlTerminateFcn', true);

% CodeStyle tab ***********************************************************
function CodeStyleTab(hDlg,hSrc)
slConfigUISetVal(hDlg, hSrc,     'ParenthesesLevel','Maximum')
slConfigUISetEnabled(hDlg, hSrc, 'ParenthesesLevel', true);

slConfigUISetVal(hDlg, hSrc,     'PreserveExpressionOrder','on')
slConfigUISetEnabled(hDlg, hSrc, 'PreserveExpressionOrder', true);

slConfigUISetVal(hDlg, hSrc,     'PreserveIfCondition','on')
slConfigUISetEnabled(hDlg, hSrc, 'PreserveIfCondition', true);

slConfigUISetVal(hDlg, hSrc,     'ConvertIfToSwitch','on')
slConfigUISetEnabled(hDlg, hSrc, 'ConvertIfToSwitch', true);
