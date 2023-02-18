function varargout = BPLQC(varargin)

format long e;
% BPLQC M-file for BPLQC.fig
%      BPLQC, by itself, creates a new BPLQC or raises the existing
%      singleton*.
%
%      H = BPLQC returns the handle to a new BPLQC or the handle to
%      the existing singleton*.
%
%      BPLQC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BPLQC.M with the given input arguments.
%
%      BPLQC('Property','Value',...) creates a new BPLQC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BPLQC_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BPLQC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BPLQC

% Last Modified by GUIDE v2.5 13-Apr-2006 14:35:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BPLQC_OpeningFcn, ...
                   'gui_OutputFcn',  @BPLQC_OutputFcn, ...
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


% --- Executes just before BPLQC is made visible.
function BPLQC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BPLQC (see VARARGIN)

% Choose default command line output for BPLQC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end

% UIWAIT makes BPLQC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BPLQC_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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
function R3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R3 (see GCBO)
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




function R3_Callback(hObject, eventdata, handles)
% hObject    handle to R3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R3 as text
%        str2double(get(hObject,'String')) returns contents of R3 as a double


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

% Hints: get(hObject,'String') returns contents of K as text
%        str2double(get(hObject,'String')) returns contents of K as a double


% --- Executes during object creation, after setting all properties.
function GSP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GSP (see GCBO)
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




function GSP_Callback(hObject, eventdata, handles)
% hObject    handle to GSP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GSP as text
%        str2double(get(hObject,'String')) returns contents of GSP as a double


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', '');

data = getappdata(gcbf, 'metricdata');
f_p=data.fp;
q_p=data.qp;
C11=data.C11;
C12=data.C12;
C4=data.C4;

if (1/(2*(q_p^2)))*((C11+C12)/C4)>=2
    
    C1=C11+C12;
    P=((C1/(2*(q_p^2)*C4))-1)+sqrt((((C1/(2*(q_p^2)*C4))-1)^2)-1);
    R2=1/(2*pi*f_p*sqrt(P*C1*C4));
    R3=P*R2;
    GSP=q_p*sqrt(C1/(P*C4));
    K=C11*GSP/C1;
    
    set(handles.R2, 'string', R2);
    set(handles.R3, 'String', R3);
    set(handles.K, 'String', K);
    set(handles.GSP, 'String', GSP);

else
 
    set(handles.comments,'string','C11 + C12 >= 4*(q_p^2)*C4');   
end





% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close;
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

% Hints: get(hObject,'String') returns contents of fp as text
%        str2double(get(hObject,'String')) returns contents of fp as a double
fp = str2double(get(hObject, 'String'));
if isnan(fp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.fp = fp;
setappdata(gcbf, 'metricdata', data);


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

% Hints: get(hObject,'String') returns contents of qp as text
%        str2double(get(hObject,'String')) returns contents of qp as a double
qp = str2double(get(hObject, 'String'));
if isnan(qp)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.qp = qp;
setappdata(gcbf, 'metricdata', data);


% --- Executes during object creation, after setting all properties.
function C11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C11 (see GCBO)
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




function C11_Callback(hObject, eventdata, handles)
% hObject    handle to C11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C11 as text
%        str2double(get(hObject,'String')) returns contents of C11 as a double

C11 = str2double(get(hObject, 'String'));
if isnan(C11)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C11 = C11;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function C12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C12 (see GCBO)
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




function C12_Callback(hObject, eventdata, handles)
% hObject    handle to C12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C12 as text
%        str2double(get(hObject,'String')) returns contents of C12 as a double

C12 = str2double(get(hObject, 'String'));
if isnan(C12)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C12 = C12;
setappdata(gcbf, 'metricdata', data);

% --- Executes during object creation, after setting all properties.
function C4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C4 (see GCBO)
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




function C4_Callback(hObject, eventdata, handles)
% hObject    handle to C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C4 as text
%        str2double(get(hObject,'String')) returns contents of C4 as a double
C4 = str2double(get(hObject, 'String'));
if isnan(C4)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C4 = C4;
setappdata(gcbf, 'metricdata', data);


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
K = str2double(get(handles.K, 'String'));

if ((f_p~=0)&&(q_p~=0)&&(K~=0))
    
    w_p=2*pi*f_p;
    figure;
    freqs([-K*w_p/q_p 0],[1 w_p/q_p w_p^2]);
    
else
    set(handles.comments, 'String', 'Impossible open the plot. Maybe, you have entered wrong input values.');
end;




function initialize_gui(fig_handle, handles)
data.fp = 2.1e3;
data.qp = 1.6;
data.C11 = 69e-9;
data.C12 = 15e-9;
data.C4 = 5.1e-9;
setappdata(fig_handle, 'metricdata', data);

set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C11, 'String', data.C11);
set(handles.C12, 'String', data.C12);
set(handles.C4, 'String', data.C4);
set(handles.R2, 'String', 0);
set(handles.R3, 'String', 0);
set(handles.K, 'String', 0);
set(handles.GSP, 'String', 0);

set(handles.comments,'String','Please, fill in the input values.');

im=imread('iBP-LQ-C.jpg');
%im=image_read('girl.bmp');

set(handles.axes1,'HandleVisibility','ON'); 
axes(handles.axes1);
%imagesc(im);
image(im);
%image('girl.bmp');
axis equal; %sets the aspect ratio. (Show the image in its right ratio)
axis tight; %Sets the axis limits to the arrange of the data.
axis off; % Turn off all axis labeling 
set(handles.axes1,'HandleVisibility','OFF');  %After showed the image, let orgIm to be    



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
a=textread('BPLQC.cir','%s','delimiter', '');

%new values
C11=(get(handles.C11, 'String'));
C12=(get(handles.C12, 'String'));
C4=(get(handles.C4, 'String'));
R2=(get(handles.R2, 'String'));
R3=(get(handles.R3, 'String'));

temp=char(a(3));
new=temp(1:8);
a{3}=[new C11];

temp=char(a(4));
new=temp(1:8);
a{4}=[new C12];

temp=char(a(5));
new=temp(1:8);
a{5}=[new R2];

temp=char(a(6));
new=temp(1:8);
a{6}=[new R3];

temp=char(a(7));
new=temp(1:8);
a{7}=[new C4];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;






