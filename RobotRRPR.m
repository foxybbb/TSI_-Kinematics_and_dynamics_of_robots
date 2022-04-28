function varargout = RobotRRPR(varargin)
% ROBOTRRPR MATLAB code for RobotRRPR.fig
%      ROBOTRRPR, by itself, creates a new ROBOTRRPR or raises the existing
%      singleton*.
%
%      H = ROBOTRRPR returns the handle to a new ROBOTRRPR or the handle to
%      the existing singleton*.
%
%      ROBOTRRPR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTRRPR.M with the given input arguments.
%
%      ROBOTRRPR('Property','Value',...) creates a new ROBOTRRPR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RobotRRPR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RobotRRPR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RobotRRPR

% Last Modified by GUIDE v2.5 11-Apr-2022 22:38:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RobotRRPR_OpeningFcn, ...
                   'gui_OutputFcn',  @RobotRRPR_OutputFcn, ...
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


% --- Executes just before RobotRRPR is made visible.
function RobotRRPR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RobotRRPR (see VARARGIN)

% Choose default command line output for RobotRRPR
handles.output = hObject;
global a;
a = arduino('COM4','Uno')
t1 = 0;
t2 = 0;
d1 = 0;
t3 = 0;
handles.t1=t1;
handles.t2=t2;
handles.t3=t3;
handles.d1=d1;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
set(handles.text6,'String',d1)
   [T04]=SCARA(t1,t2,d1,t3)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RobotRRPR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RobotRRPR_OutputFcn(hObject, eventdata, handles) 
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
d1=handles.d1;
cla
[T04]=SCARA(t1,t2,d1,t3)
handles.t1 = t1;
handles.t2 = t2;
handles.t3 = t3;
handles.d1=d1;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
set(handles.text6,'String',d1)

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
d1=handles.d1;
cla
[T04]=SCARA(t1,t2,d1,t3)
handles.t1 = t1;
handles.t2 = t2;
handles.t3 = t3;
handles.d1=d1;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
set(handles.text6,'String',d1)
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
d1=handles.d1;
cla
[T04]=SCARA(t1,t2,d1,t3)
handles.t1 = t1;
handles.t2 = t2;
handles.t3 = t3;
handles.d1=d1;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
set(handles.text6,'String',d1)
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


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
t1 = handles.t1;
t2 = handles.t2;
t3 =handles.t3;
d1=get(hObject,'Value');
cla
[T04]=SCARA(t1,t2,d1,t3)
handles.t1 = t1;
handles.t2 = t2;
handles.t3 = t3;
handles.d1=d1;
set(handles.text2,'String',t1)
set(handles.text3,'String',t2)
set(handles.text4,'String',t3)
set(handles.text6,'String',d1)
guidata(hObject,handles)
% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
