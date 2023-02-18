function varargout = LPNHPNMQ(varargin)

format long e;


% LPNHPNMQ M-file for LPNHPNMQ.fig
%      LPNHPNMQ, by itself, creates a new LPNHPNMQ or raises the existing
%      singleton*.
%
%      H = LPNHPNMQ returns the handle to a new LPNHPNMQ or the handle to
%      the existing singleton*.
%
%      LPNHPNMQ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LPNHPNMQ.M with the given input arguments.
%
%      LPNHPNMQ('Property','Value',...) creates a new LPNHPNMQ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LPNHPNMQ_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LPNHPNMQ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LPNHPNMQ

% Last Modified by GUIDE v2.5 13-Apr-2006 18:02:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LPNHPNMQ_OpeningFcn, ...
                   'gui_OutputFcn',  @LPNHPNMQ_OutputFcn, ...
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


% --- Executes just before LPNHPNMQ is made visible.
function LPNHPNMQ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LPNHPNMQ (see VARARGIN)

% Choose default command line output for LPNHPNMQ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

if strcmp(get(hObject,'Visible'),'off')
    initialize_gui(hObject, handles);
end


% UIWAIT makes LPNHPNMQ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LPNHPNMQ_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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
function R6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R6 (see GCBO)
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




function R6_Callback(hObject, eventdata, handles)
% hObject    handle to R6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R6 as text
%        str2double(get(hObject,'String')) returns contents of R6 as a double


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.comments, 'String', '');

data = getappdata(gcbf, 'metricdata');
f_z=data.fz;
f_p=data.fp;
q_p=data.qp;
C3=data.C3;
C4=data.C4;
Kin=data.Kin;
R9=data.R9;
%P=data.P;
val_R1=zeros(1,length(0.1:0.01:0.3));
val_R2=zeros(1,length(0.1:0.01:0.3));
val_R5=zeros(1,length(0.1:0.01:0.3));
val_R6=zeros(1,length(0.1:0.01:0.3));
val_R7=zeros(1,length(0.1:0.01:0.3));
val_R8=zeros(1,length(0.1:0.01:0.3));
val_GSP=zeros(1,length(0.1:0.01:0.3));
ind=1;


if f_p - f_z == 0
        set(handles.comments,'string','No bandreject, because (f_p - f_z)= 0');
else
    
    X=(1+sign(f_p - f_z))/2;
    for(P=0.1:0.01:0.3)
        w_p=2*pi*f_p;
        w_z=2*pi*f_z;
        G=C3/(2*P)*w_p/q_p*(sqrt(1+4*q_p^2*P*(1+C4/C3))-1);
        K0=(1+P)/(1+(1+C4/C3)*w_z^2*(C3^2/G^2));

        if (Kin==0 | 1-Kin/K0<=0)

            K=K0;
            R1=1/G;
            R2=1e90;
        else
            R1=K0/(G*Kin);
            K=Kin;
            R2=1/(G*(1-Kin/K0));
        end;

        R6=G*(1+P)*(1-X/K)/(C3*C4*(w_z^2-w_p^2));
        R5=1/(C3*C4*w_p^2/G+P/R6);
        GSP=(1+P)/2*(  abs( 1-q_p/w_p*( G/C3+(C3+C4)*(R5+R6)/(C3*C4*R5*R6) )  )+q_p*abs( 1-G*(R5+R6)/(w_p^2*C3*C4*R5*R6)  )  );

        if R9==0
            R9=1e4;
        end;
        R7=P*R9/K;
        R8=P*R9/(1-K);
        val_R1(ind)=R1;
        val_R2(ind)=R2;
        val_R5(ind)=R5;
        val_R6(ind)=R6;
        val_R7(ind)=R7;
        val_R8(ind)=R8;
        val_GSP(ind)=GSP;

        ind=ind+1;

    end
    [val_min,pos_min]=min(val_GSP);
    GSP=val_GSP(pos_min);
    R1=val_R1(pos_min);
    R2=val_R2(pos_min);
    R5=val_R5(pos_min);
    R6=val_R6(pos_min);
    R7=val_R7(pos_min);
    R8=val_R8(pos_min);

    set(handles.R1, 'string', R1);
    set(handles.R2, 'String', R2);
    set(handles.R5, 'String', R5);
    set(handles.R6, 'String', R6);
    set(handles.R7, 'String', R7);
    set(handles.R8, 'String', R8);
    set(handles.K, 'String', K);
    set(handles.GSP, 'String', GSP);
end;






% --- Executes on button press in mainmenu.
function mainmenu_Callback(hObject, eventdata, handles)
% hObject    handle to mainmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;

% --- Executes during object creation, after setting all properties.
function fz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fz (see GCBO)
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




function fz_Callback(hObject, eventdata, handles)
% hObject    handle to fz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fz as text
%        str2double(get(hObject,'String')) returns contents of fz as a double

fz = str2double(get(hObject, 'String'));
if isnan(fz)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.fz = fz;
setappdata(gcbf, 'metricdata', data);



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

C3 = str2double(get(hObject, 'String'));
if isnan(C3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.C3 = C3;
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
f_z=data.fz;
K=str2double(get(handles.K, 'String'));

if ((f_p~=0)&&(q_p~=0)&&(K~=0))
    w_p=2*pi*f_p;
    w_z=2*pi*f_z;
    figure;
    freqs(K*[1 0 w_z^2],[1 w_p/q_p w_p^2]);
else
    set(handles.comments, 'String', 'Impossible open the plot. Maybe, you have entered wrong input values.');
end;

% --- Executes during object creation, after setting all properties.
function Kin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kin (see GCBO)
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




function Kin_Callback(hObject, eventdata, handles)
% hObject    handle to Kin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kin as text
%        str2double(get(hObject,'String')) returns contents of Kin as a double


Kin = str2double(get(hObject, 'String'));
if isnan(Kin)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.Kin = Kin;
setappdata(gcbf, 'metricdata', data);


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
function R9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to R9 (see GCBO)
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




function R9_Callback(hObject, eventdata, handles)
% hObject    handle to R9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of R9 as text
%        str2double(get(hObject,'String')) returns contents of R9 as a double


R9 = str2double(get(hObject, 'String'));
if isnan(R9)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.R9 = R9;
setappdata(gcbf, 'metricdata', data);


% --- Executes during object creation, after setting all properties.
function P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
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




function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P as text
%        str2double(get(hObject,'String')) returns contents of P as a double

P = str2double(get(hObject, 'String'));
if isnan(P)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

data = getappdata(gcbf, 'metricdata');
data.P = P;
setappdata(gcbf, 'metricdata', data);



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


function initialize_gui(fig_handle, handles)
data.fz = 0;
data.fp = 0;
data.qp = 0;
data.C3= 0;
data.C4 = 0;
data.Kin = 0;
data.R9 = 0;
data.P = 0;
setappdata(fig_handle, 'metricdata', data);

set(handles.fz, 'String', data.fz);
set(handles.fp, 'String', data.fp);
set(handles.qp, 'String', data.qp);
set(handles.C3, 'String', data.C3);
set(handles.C4, 'String', data.C4);
set(handles.Kin, 'String', data.Kin);
set(handles.R9, 'String', data.R9);
set(handles.P, 'String', data.P);
set(handles.R1, 'String', 0);
set(handles.R2, 'String', 0);
set(handles.R5, 'String', 0);
set(handles.R6, 'String', 0);
set(handles.R7, 'String', 0);
set(handles.R8, 'String', 0);
set(handles.K, 'String', 0);
set(handles.GSP, 'String', 0);

set(handles.comments,'String','Please, fill in the input values.');

im=imread('iLPN-HPN-MQ.jpg');

set(handles.axes1,'HandleVisibility','ON'); 
axes(handles.axes1);
image(im);
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
a=textread('LPNHPNMQ.cir','%s','delimiter', '');

%new values
R1=(get(handles.R1, 'String'));
R2=(get(handles.R2, 'String'));
R5=(get(handles.R5, 'String'));
R6=(get(handles.R6, 'String'));
R7=(get(handles.R7, 'String'));
R8=(get(handles.R8, 'String'));
R9=(get(handles.R9, 'String'));
C4=(get(handles.C4, 'String'));
C3=(get(handles.C3, 'String'));

temp=char(a(4));
new=temp(1:8);
a{4}=[new R1];

temp=char(a(5));
new=temp(1:8);
a{5}=[new R2];

temp=char(a(6));
new=temp(1:8);
a{6}=[new R5];

temp=char(a(7));
new=temp(1:8);
a{7}=[new R6];

temp=char(a(8));
new=temp(1:8);
a{8}=[new R7];

temp=char(a(9));
new=temp(1:8);
a{9}=[new R8];

temp=char(a(10));
new=temp(1:8);
a{10}=[new R9];

temp=char(a(11));
new=temp(1:8);
a{11}=[new C3];

temp=char(a(12));
new=temp(1:8);
a{12}=[new C4];

a=char(a);
diary temp.cir;
disp(a);
diary off;
clc;