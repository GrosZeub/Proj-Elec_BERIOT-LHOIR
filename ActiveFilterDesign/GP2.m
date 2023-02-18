function varargout = GP2(varargin)

format long e;
% GP2 M-file for GP2.fig
%      GP2, by itself, creates a new GP2 or raises the existing
%      singleton*.
%
%      H = GP2 returns the handle to a new GP2 or the handle to
%      the existing singleton*.
%
%      GP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GP2.M with the given input arguments.
%
%      GP2('Property','Value',...) creates a new GP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GP2_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GP2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GP2

% Last Modified by GUIDE v2.5 13-Apr-2006 23:02:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GP2_OpeningFcn, ...
                   'gui_OutputFcn',  @GP2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GP2 is made visible.
function GP2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GP2 (see VARARGIN)
movegui(hObject,'center')  % To display application in the center of screen

% Choose default command line output for GP2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end

% UIWAIT makes GP2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GP2_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function qp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to qp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function qp_Callback(hObject, eventdata, handles)
% hObject    handle to qp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

qp = str2double(get(hObject, 'String'));
if isnan(qp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.qp = qp;
setappdata(gcbf, 'metricdata', data);


% Hints: get(hObject,'String') returns contents of qp as text
%        str2double(get(hObject,'String')) returns contents of qp as a double


% --- Executes during object creation, after setting all properties.
function C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

C = str2double(get(hObject, 'String'));
if isnan(C)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C = C;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of C as text
%        str2double(get(hObject,'String')) returns contents of C as a double


% --- Executes during object creation, after setting all properties.
function K_CreateFcn(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function K_Callback(hObject, eventdata, handles)
% hObject    handle to K (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

K = str2double(get(hObject, 'String'));
if isnan(K)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.K = K;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of K as text
%        str2double(get(hObject,'String')) returns contents of K as a double


% --- Executes during object creation, after setting all properties.
function R1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R1_Callback(hObject, eventdata, handles)
% hObject    handle to R1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R1 as text
%        str2double(get(hObject,'String')) returns contents of R1 as a double


% --- Executes during object creation, after setting all properties.
function R2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R2_Callback(hObject, eventdata, handles)
% hObject    handle to R2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R2 as text
%        str2double(get(hObject,'String')) returns contents of R2 as a double


% --- Executes during object creation, after setting all properties.
function R4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R4_Callback(hObject, eventdata, handles)
% hObject    handle to R4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R4 as text
%        str2double(get(hObject,'String')) returns contents of R4 as a double


% --- Executes during object creation, after setting all properties.
function R5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R5_Callback(hObject, eventdata, handles)
% hObject    handle to R5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R5 as text
%        str2double(get(hObject,'String')) returns contents of R5 as a double


% --- Executes during object creation, after setting all properties.
function R7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R7_Callback(hObject, eventdata, handles)
% hObject    handle to R7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R7 as text
%        str2double(get(hObject,'String')) returns contents of R7 as a double


% --- Executes during object creation, after setting all properties.
function R8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R8_Callback(hObject, eventdata, handles)
% hObject    handle to R8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R8 as text
%        str2double(get(hObject,'String')) returns contents of R8 as a double


% --- Executes during object creation, after setting all properties.
function comments_CreateFcn(hObject, eventdata, handles)
% hObject    handle to comments (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function comments_Callback(hObject, eventdata, handles)
% hObject    handle to comments (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of comments as text
%        str2double(get(hObject,'String')) returns contents of comments as a double


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', '');

data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
C=data.C;
K=data.K;
R_discrete=data.RD;
R_optimal=data.R0;
answer1=get(handles.yes, 'Value');
answer2=get(handles.no, 'Value');

if (R_discrete==0)    
    
    R_optimal=1/(2*pi*f_p*C);
    set(handles.R0, 'String', R_optimal);
    set(handles.comments, 'String', 'Ro is the optimal resistor for low GSP and Rd is the discrete resistor value, wich should be close to Ro. Please, enter now the Rd value and click on calculate. ');
    
else
    
    if (answer1==0)&(answer2==0)
        
        R_optimal=1/(2*pi*f_p*C);
        R2=R_discrete;
        R7=R_discrete;
        R8=R_discrete;
        C3=C;
        C6=C;
        R5=(R_optimal^2)/R_discrete;
        R4=q_p*R_optimal;
    
        
        set(handles.R2, 'String', R2);
        set(handles.R7, 'String', R7);
        set(handles.R8, 'String', R8);
        set(handles.R5, 'String', R5);
        set(handles.R4, 'String', R4);
        set(handles.C3, 'String', C3);
        set(handles.C6, 'String', C6);
        set(handles.comments, 'String', 'Constant for lowpass? Please, answer with the radiobutton and click on the calculate button.');
        
    else
        
        if (answer1==1)
            
            R_optimal=1/(2*pi*f_p*C);
            R2=R_discrete;
            R4=q_p*R_optimal;
            R1=R2/K;
            K_bp=R4/R1;
            K_lp1=K;
            K_lp2=K;
            
            set(handles.R1, 'String', R1);
            set(handles.KBP, 'String', K_bp);
            set(handles.KLP1, 'String', K_lp1);
            set(handles.KLP2, 'String', K_lp2);
            
        else
            
            R_optimal=1/(2*pi*f_p*C);
            R2=R_discrete;
            R4=q_p*R_optimal;
            R1=R4/K;
            K_bp=K;
            K_lp1=R2/R1;
            K_lp2=R2/R1;
            
            set(handles.R1, 'String', R1);
            set(handles.KBP, 'String', K_bp);
            set(handles.KLP1, 'String', K_lp1);
            set(handles.KLP2, 'String', K_lp2);
        end;
    end;
end;
    
function initialize_gui(fig_handle, handles)


data.fp = 0;
data.qp = 0;
data.C = 0;
data.K = 0;
data.RD = 0;
data.R0 = 0;
data.R1 = 0;
data.R2 = 0;
data.R4 = 0;
data.R5 = 0;
data.R7 = 0;
data.R8 = 0;
data.C3 = 0;
data.C6 = 0;
data.KBP = 0;
data.KLP1 = 0;
data.KLP2 = 0;

setappdata(fig_handle, 'metricdata', data);

set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C, 'String', data.C);
set(handles.K, 'String', data.K);
set(handles.RD, 'String', data.RD);
set(handles.R0, 'String', data.R0);
set(handles.R1, 'String', data.R1);
set(handles.R2, 'String', data.R2);
set(handles.R4, 'String', data.R4);
set(handles.R5, 'String', data.R5);
set(handles.R7, 'String', data.R7);
set(handles.R8, 'String', data.R8);
set(handles.C3, 'String', data.C3);
set(handles.C6, 'String', data.C6);
set(handles.KBP, 'String', data.KBP);
set(handles.KLP1, 'String', data.KLP1);
set(handles.KLP2, 'String', data.KLP2);

set(handles.yes, 'Value', 0);
set(handles.no, 'Value', 0);

set(handles.comments,'String','Please, fill in the input values.');

im=imread('iGP2.jpg');

set(handles.axes1,'HandleVisibility','ON'); 
axes(handles.axes1);
image(im);
axis equal; %sets the aspect ratio. (Show the image in its right ratio)
axis tight; %Sets the axis limits to the arrange of the data.
axis off; % Turn off all axis labeling 
set(handles.axes1,'HandleVisibility','OFF');  %After showed the image, let orgIm to be  
    
    

% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
initialize_gui(gcbf, handles);

% --- Executes on button press in graph.
function graph_Callback(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
K_bp = str2double(get(handles.KBP, 'String'));
K_lp2 = str2double(get(handles.KLP2, 'String'));
K_lp1 = str2double(get(handles.KLP1, 'String'));

if ((f_p~=0)&&(q_p~=0)&&(K_bp~=0)&&(K_lp1~=0)&&(K_lp2~=0))
    
    w_p=2*pi*f_p;
    figure;
    freqs([-(K_bp*(w_p/q_p)) 0],[1 w_p/q_p w_p^2]);
    hold on
    freqs([K_lp1*(w_p^2)],[1 w_p/q_p w_p^2]);
    hold on
    freqs([-(K_lp2*(w_p^2))],[1 w_p/q_p w_p^2]);
    hold on

else
    set(handles.comments, 'String', 'Impossible open the plot. Maybe, you have entered wrong input values.');
end;


% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;

% --- Executes during object creation, after setting all properties.
function R0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function R0_Callback(hObject, eventdata, handles)
% hObject    handle to R0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R0 as text
%        str2double(get(hObject,'String')) returns contents of R0 as a double


% --- Executes during object creation, after setting all properties.
function RD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function RD_Callback(hObject, eventdata, handles)
% hObject    handle to RD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

RD = str2double(get(hObject, 'String'));
if isnan(RD)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.RD = RD;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of RD as text
%        str2double(get(hObject,'String')) returns contents of RD as a double


% --- Executes during object creation, after setting all properties.
function C3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function C3_Callback(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C3 as text
%        str2double(get(hObject,'String')) returns contents of C3 as a double


% --- Executes during object creation, after setting all properties.
function fp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

function fp_Callback(hObject, eventdata, handles)
% hObject    handle to fp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fp = str2double(get(hObject, 'String'));
if isnan(fp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.fp = fp;
setappdata(gcbf, 'metricdata', data);

% Hints: get(hObject,'String') returns contents of fp as text
%        str2double(get(hObject,'String')) returns contents of fp as a double


% --- Executes during object creation, after setting all properties.
function C6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function C6_Callback(hObject, eventdata, handles)
% hObject    handle to C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C6 as text
%        str2double(get(hObject,'String')) returns contents of C6 as a double


% --- Executes during object creation, after setting all properties.
function KBP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function KBP_Callback(hObject, eventdata, handles)
% hObject    handle to KBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KBP as text
%        str2double(get(hObject,'String')) returns contents of KBP as a double


% --- Executes during object creation, after setting all properties.
function KLP1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KLP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function KLP1_Callback(hObject, eventdata, handles)
% hObject    handle to KLP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KLP1 as text
%        str2double(get(hObject,'String')) returns contents of KLP1 as a double


% --- Executes during object creation, after setting all properties.
function KLP2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to KLP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
usewhitebg = 1;
if usewhitebg
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function KLP2_Callback(hObject, eventdata, handles)
% hObject    handle to KLP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of KLP2 as text
%        str2double(get(hObject,'String')) returns contents of KLP2 as a double


% --- Executes on button press in yes.
function yes_Callback(hObject, eventdata, handles)
% hObject    handle to yes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of yes

set(handles.yes, 'Value', 1);
set(handles.no, 'Value', 0);


% --- Executes on button press in no.
function no_Callback(hObject, eventdata, handles)
% hObject    handle to no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of no
set(handles.yes, 'Value', 0);
set(handles.no, 'Value', 1);


% --- Executes on button press in multisim.
function multisim_Callback(hObject, eventdata, handles)
% hObject    handle to multisim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', ' You have created a Multisim file : temp.cir. Open this file with Multisim to use the filter ');

fid=fopen('temp.cir', 'w');
fprintf(fid, '');
fclose(fid);

%copy-paste
a=textread('GP2.cir','%s','delimiter', '');

%new values
R1=(get(handles.R1, 'String'));
R2=(get(handles.R2, 'String'));
R4=(get(handles.R4, 'String'));
R5=(get(handles.R5, 'String'));
R7=(get(handles.R7, 'String'));
R8=(get(handles.R8, 'String'));
C3=(get(handles.C3, 'String'));
C6=(get(handles.C6, 'String'));


temp=char(a(4));
new=temp(1:8);
a{4}=[new R1];

temp=char(a(5));
new=temp(1:8);
a{5}=[new R2];

temp=char(a(6));
new=temp(1:8);
a{6}=[new R4];

temp=char(a(7));
new=temp(1:8);
a{7}=[new R5];

temp=char(a(8));
new=temp(1:8);
a{8}=[new R7];

temp=char(a(9));
new=temp(1:8);
a{9}=[new R8];

temp=char(a(10));
new=temp(1:8);
a{10}=[new C3];

temp=char(a(11));
new=temp(1:8);
a{11}=[new C6];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;


