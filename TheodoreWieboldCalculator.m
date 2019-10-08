function varargout = TheodoreWieboldCalculator(varargin)
% THEODOREWIEBOLDCALCULATOR MATLAB code for TheodoreWieboldCalculator.fig
%      THEODOREWIEBOLDCALCULATOR, by itself, creates a new THEODOREWIEBOLDCALCULATOR or raises the existing
%      singleton*.
%
%      H = THEODOREWIEBOLDCALCULATOR returns the handle to a new THEODOREWIEBOLDCALCULATOR or the handle to
%      the existing singleton*.
%
%      THEODOREWIEBOLDCALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THEODOREWIEBOLDCALCULATOR.M with the given input arguments.
%
%      THEODOREWIEBOLDCALCULATOR('Property','Value',...) creates a new THEODOREWIEBOLDCALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TheodoreWieboldCalculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TheodoreWieboldCalculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TheodoreWieboldCalculator

% Last Modified by GUIDE v2.5 24-Mar-2019 20:53:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TheodoreWieboldCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @TheodoreWieboldCalculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TheodoreWieboldCalculator is made visible.
function TheodoreWieboldCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TheodoreWieboldCalculator (see VARARGIN)

% Choose default command line output for TheodoreWieboldCalculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes TheodoreWieboldCalculator wait for user response (see UIRESUME)
% uiwait(handles.Calculator);

set(handles.CalcOutput,'String', '0');


% --- Outputs from this function are returned to the command line.
function varargout = TheodoreWieboldCalculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function CalcOutput_Callback(hObject, eventdata, handles)
% hObject    handle to CalcOutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CalcOutput as text
%        str2double(get(hObject,'String')) returns contents of CalcOutput as a double


% --- Executes during object creation, after setting all properties.
function CalcOutput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CalcOutput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Equals.
function Equals_Callback(hObject, eventdata, handles)
% hObject    handle to Equals (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput,'String');
ans = eval(textString);
set(handles.CalcOutput,'String', ans)



% --- Executes on button press in AllClear.
function AllClear_Callback(hObject, eventdata, handles)
% hObject    handle to AllClear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.CalcOutput,'String', '0');

% --- Executes on button press in Decimal.
function Decimal_Callback(hObject, eventdata, handles)
% hObject    handle to Decimal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','.');
else
    textString = strcat(textString,'.');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Exit.
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.Calculator);

% --- Executes on button press in Zero.
function Zero_Callback(hObject, eventdata, handles)
% hObject    handle to Zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput,'String');
if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','0');
else
    textString = strcat(textString,'0');
    set(handles.CalcOutput,'String', textString)
end

% --- Executes on button press in Three.
function Three_Callback(hObject, eventdata, handles)
% hObject    handle to Three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','3');
else
    textString = strcat(textString,'3');
    set(handles.CalcOutput,'String', textString)
end

% --- Executes on button press in Six.
function Six_Callback(hObject, eventdata, handles)
% hObject    handle to Six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','6');
else
    textString = strcat(textString,'6');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Nine.
function Nine_Callback(hObject, eventdata, handles)
% hObject    handle to Nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','9');
else
    textString = strcat(textString,'9');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Five.
function Five_Callback(hObject, eventdata, handles)
% hObject    handle to Five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','5');
else
    textString = strcat(textString,'5');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Two.
function Two_Callback(hObject, eventdata, handles)
% hObject    handle to Two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','2');
else
    textString = strcat(textString,'2');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Eight.
function Eight_Callback(hObject, eventdata, handles)
% hObject    handle to Eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','8');
else
    textString = strcat(textString,'8');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Four.
function Four_Callback(hObject, eventdata, handles)
% hObject    handle to Four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','4');
else
    textString = strcat(textString,'4');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Seven.
function Seven_Callback(hObject, eventdata, handles)
% hObject    handle to Seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','7');
else
    textString = strcat(textString,'7');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in One.
function One_Callback(hObject, eventdata, handles)
% hObject    handle to One (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','1');
else
    textString = strcat(textString,'1');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Multiplication.
function Multiplication_Callback(hObject, eventdata, handles)
% hObject    handle to Multiplication (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','*');
else
    textString = strcat(textString,'*');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Subtraction.
function Subtraction_Callback(hObject, eventdata, handles)
% hObject    handle to Subtraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','-');
else
    textString = strcat(textString,'-');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Addition.
function Addition_Callback(hObject, eventdata, handles)
% hObject    handle to Addition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','+');
else
    textString = strcat(textString,'+');
    set(handles.CalcOutput,'String', textString)
end

% --- Executes on button press in Division.
function Division_Callback(hObject, eventdata, handles)
% hObject    handle to Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','/');
else
    textString = strcat(textString,'/');
    set(handles.CalcOutput,'String', textString)
end

% --- Executes on button press in NaturalLog.
function NaturalLog_Callback(hObject, eventdata, handles)
% hObject    handle to NaturalLog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','log');
else
    textString = strcat(textString,'log');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in log10.
function log10_Callback(hObject, eventdata, handles)
% hObject    handle to log10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','log10');
else
    textString = strcat(textString,'log10');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in squareroot.
function squareroot_Callback(hObject, eventdata, handles)
% hObject    handle to squareroot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','sqrt');
else
    textString = strcat(textString,'sqrt');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in exponent.
function exponent_Callback(hObject, eventdata, handles)
% hObject    handle to exponent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','^');
else
    textString = strcat(textString,'^');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in tan.
function tan_Callback(hObject, eventdata, handles)
% hObject    handle to tan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','tan');
else
    textString = strcat(textString,'tan');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in cos.
function cos_Callback(hObject, eventdata, handles)
% hObject    handle to cos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','cos');
else
    textString = strcat(textString,'cos');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in sin.
function sin_Callback(hObject, eventdata, handles)
% hObject    handle to sin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','sin');
else
    textString = strcat(textString,'sin');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in rightparanthesis.
function rightparanthesis_Callback(hObject, eventdata, handles)
% hObject    handle to rightparanthesis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String',')');
else
    textString = strcat(textString,')');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in leftparanthesis.
function leftparanthesis_Callback(hObject, eventdata, handles)
% hObject    handle to leftparanthesis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','(');
else
    textString = strcat(textString,'(');
    set(handles.CalcOutput,'String', textString)
end

% --- Executes on button press in EulerNumber.
function EulerNumber_Callback(hObject, eventdata, handles)
% hObject    handle to EulerNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','exp(1)');
else
    textString = strcat(textString,'exp(1)');
    set(handles.CalcOutput,'String', textString)
end


% --- Executes on button press in Backspace.
function Backspace_Callback(hObject, eventdata, handles)
% hObject    handle to Backspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');
textString = textString(1:end-1);
set(handles.CalcOutput, 'String', textString);


% --- Executes on button press in pi.
function pi_Callback(hObject, eventdata, handles)
% hObject    handle to pi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.CalcOutput, 'String');

if(strcmp(textString, '0')==1)
    set(handles.CalcOutput,'String','pi');
else
    textString = strcat(textString,'pi');
    set(handles.CalcOutput,'String', textString)
end