function varargout = RobotRRR(varargin)
% ROBOTRRR MATLAB code for RobotRRR.fig
%      ROBOTRRR, by itself, creates a new ROBOTRRR or raises the existing
%      singleton*.
%
%      H = ROBOTRRR returns the handle to a new ROBOTRRR or the handle to
%      the existing singleton*.
%
%      ROBOTRRR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTRRR.M with the given input arguments.
%
%      ROBOTRRR('Property','Value',...) creates a new ROBOTRRR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RobotRRR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RobotRRR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RobotRRR

% Last Modified by GUIDE v2.5 07-Apr-2022 10:02:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RobotRRR_OpeningFcn, ...
                   'gui_OutputFcn',  @RobotRRR_OutputFcn, ...
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


% --- Executes just before RobotRRR is made visible.
function RobotRRR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RobotRRR (see VARARGIN)

% Choose default command line output for RobotRRR
handles.output = hObject;
global a;
a = arduino('COM4','Uno')
t1 = 0;
t2 = 0;
t3 = 0;
handles.t1=t1;
handles.t2=t2;
handles.t3=t3;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
[T03]=RRR(t1,t2,t3);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RobotRRR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RobotRRR_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

t1 = get(hObject,'Value');
t2 =handles.t2;
t3 =handles.t3;
cla
[T03]=RRR(t1,t2,t3);
handles.t1 = t1;
handles.t2 = t2;
handles.t3 = t3;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
guidata(hObject,handles)



% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

t1 = handles.t1;
t2 =get(hObject,'Value');
t3 =handles.t3;
cla
[T03]=RRR(t1,t2,t3);
handles.t1 = t1;
handles.t2 = t2;
handles.t3 = t3;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
guidata(hObject,handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
t1 = handles.t1;
t2 = handles.t2;
t3 =get(hObject,'Value');
cla
[T03]=RRR(t1,t2,t3);
handles.t1 = t1;
handles.t2 = t2;    
handles.t3 = t3;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
guidata(hObject,handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a;
check_Box_Value = get(hObject,'Value');
while check_Box_Value==1
   check_Box_Value = get(hObject,'Value');
   t1=(360*readVoltage(a,'A0')/5)-180;
   t2=(360*readVoltage(a,'A1')/5)-180;
   t3=(360*readVoltage(a,'A2')/5)-180;
   cla
   [T03]=RRR(t1,t2,t3);
    handles.t1 = t1;
    handles.t2 = t2;    
    handles.t3 = t3;
    set(handles.slider1,'Value',t1)
    set(handles.slider2,'Value',t2)
    set(handles.slider3,'Value',t3)

    set(handles.text2,'String',t1)
    set(handles.text3,'String',t2)
    set(handles.text4,'String',t3)
       if check_Box_Value==0
        break
       end
end
    guidata(hObject,handles)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
