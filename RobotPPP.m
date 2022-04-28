function varargout = RobotPPP(varargin)
% ROBOTPPP MATLAB code for RobotPPP.fig
%      ROBOTPPP, by itself, creates a new ROBOTPPP or raises the existing
%      singleton*.
%
%      H = ROBOTPPP returns the handle to a new ROBOTPPP or the handle to
%      the existing singleton*.
%
%      ROBOTPPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTPPP.M with the given input arguments.
%
%      ROBOTPPP('Property','Value',...) creates a new ROBOTPPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RobotPPP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RobotPPP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RobotPPP

% Last Modified by GUIDE v2.5 15-Mar-2022 09:36:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RobotPPP_OpeningFcn, ...
                   'gui_OutputFcn',  @RobotPPP_OutputFcn, ...
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


% --- Executes just before RobotPPP is made visible.
function RobotPPP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RobotPPP (see VARARGIN)

% Choose default command line output for RobotPPP
handles.output = hObject;
d1=0;
d2=0;
d3=0;
handles.d1=d1;
handles.d2=d2;
handles.d3=d3;
set(handles.text3,'String',d1)
set(handles.text5,'String',d2)
set(handles.text6,'String',d3)
[T03]=PPP(d1,d2,d3)
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RobotPPP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RobotPPP_OutputFcn(hObject, eventdata, handles) 
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

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
d1 = get(hObject,'Value');
d2=handles.d2;
d3=handles.d3;
cla
[T03]=PPP(d1,d2,d3)
handles.d1 = d1;
handles.d2 = d2;
handles.d3 = d3;
set(handles.text3,'String',d1)
set(handles.text5,'String',d2)
set(handles.text6,'String',d3)
guidata(hObject,handles)
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

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

d1 = handles.d1;
d2=get(hObject,'Value');
d3=handles.d3;
cla
[T03]=PPP(d1,d2,d3)
handles.d1 = d1;
handles.d2 = d2;
handles.d3 = d3;
set(handles.text3,'String',d1)
set(handles.text5,'String',d2)
set(handles.text6,'String',d3)


guidata(hObject,handles)
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

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
d1 = handles.d1;
d2=handles.d2;
d3=get(hObject,'Value');
cla
[T03]=PPP(d1,d2,d3)
handles.d1 = d1;
handles.d2 = d2;
handles.d3 = d3;
set(handles.text3,'String',d1)
set(handles.text5,'String',d2)
set(handles.text6,'String',d3)
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
