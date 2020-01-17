function esp32pio_DefaultConfigSet(hDlg, hSrc)
% esp32pio_DEFAULTCONFIGSET sets the target

disp(mfilename)
%% Set default RTW parameters for ChibiOS target:
tabs={'CodeStyleTab'};
n=numel(tabs);
for i=1:n
    waitbar(i/(2*n));
    feval(tabs{i},hDlg,hSrc)
end

%% Solver Tab **********************************************************
function SolverTab(hDlg,hSrc) %#ok<*DEFNU>
slConfigUISetVal(hDlg, hSrc,     'SolverName','FixedStepDiscrete')
slConfigUISetEnabled(hDlg, hSrc, 'SolverName', false);

slConfigUISetVal(hDlg, hSrc,     'FixedStep','auto')
slConfigUISetEnabled(hDlg, hSrc, 'FixedStep', true);

%% HardwareImplementation tab **********************************************************
function HardwareImplementationTab(hDlg, hSrc)
slConfigUISetVal(hDlg, hSrc,     'ProdHWDeviceType','STMicroelectronics->STM32F4xx 32-bit Cortex-M4')
slConfigUISetEnabled(hDlg, hSrc, 'ProdHWDeviceType', true);


%% General tab *************************************************************
function CodeGenerationTab(hDlg, hSrc)
slConfigUISetVal(hDlg, hSrc,     'GenerateMakefile','on')
slConfigUISetEnabled(hDlg, hSrc, 'GenerateMakefile', false);

slConfigUISetVal(hDlg, hSrc,     'MakeCommand','make_rtw')
slConfigUISetEnabled(hDlg, hSrc, 'MakeCommand', false);

slConfigUISetVal(hDlg, hSrc,     'TemplateMakefile','esp32_platformio.tmf')
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
slConfigUISetVal(hDlg, hSrc,     'ERTCustomFileTemplate','esp32pio_customRoutineProcess.tlc')
slConfigUISetEnabled(hDlg, hSrc, 'ERTCustomFileTemplate', true);

slConfigUISetVal(hDlg, hSrc,     'ERTSrcFileBannerTemplate','esp32pio_sourceFileTemplate.cgt')
slConfigUISetEnabled(hDlg, hSrc, 'ERTSrcFileBannerTemplate', true);

slConfigUISetVal(hDlg, hSrc,     'ERTHdrFileBannerTemplate','esp32pio_sourceFileTemplate.cgt')
slConfigUISetEnabled(hDlg, hSrc, 'ERTHdrFileBannerTemplate', true);

slConfigUISetVal(hDlg, hSrc,     'ERTDataSrcFileTemplate','esp32pio_sourceFileTemplate.cgt')
slConfigUISetEnabled(hDlg, hSrc, 'ERTDataSrcFileTemplate', true);

slConfigUISetVal(hDlg, hSrc,     'ERTDataHdrFileTemplate','esp32pio_sourceFileTemplate.cgt')
slConfigUISetEnabled(hDlg, hSrc, 'ERTDataHdrFileTemplate', true);

slConfigUISetVal(hDlg, hSrc,     'GenerateSampleERTMain','off')
slConfigUISetEnabled(hDlg, hSrc, 'GenerateSampleERTMain', false);

slConfigUISetVal(hDlg, hSrc,     'IncludeMdlTerminateFcn','off')
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
% [EOF] esp32pio_DefaultConfigSet.m
