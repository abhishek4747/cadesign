function varargout = square(varargin)
% SQUARE MATLAB code for square.fig
%      SQUARE, by itself, creates a new SQUARE or raises the existing
%      singleton*.
%
%      H = SQUARE returns the handle to a new SQUARE or the handle to
%      the existing singleton*.
%
%      SQUARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SQUARE.M with the given input arguments.
%
%      SQUARE('Property','Value',...) creates a new SQUARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before square_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to square_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help square

% Last Modified by GUIDE v2.5 19-Nov-2014 14:43:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @square_OpeningFcn, ...
                   'gui_OutputFcn',  @square_OutputFcn, ...
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


% --- Executes just before square is made visible.
function square_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to square (see VARARGIN)

% Choose default command line output for square
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes square wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = square_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

axes(handles.axes1);
points = [1 1 1; -1 1 1; -1 -1 1; 1 -1 1; 1 1 1];
s=1;
theta=0;
p=points*rot(theta*pi/180)*scale2(s);
plot(p(:,1), p(:,2));
axis([-30 30 -30 30]);
axis square;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
s=get(hObject,'Value');
theta=get(handles.slider3,'Value');
points = [1 1 1; -1 1 1; -1 -1 1; 1 -1 1; 1 1 1];
p=points*rot(theta*pi/180)*scale2(s);
plot(p(:,1), p(:,2));
axis([-30 30 -30 30]);
axis square;
set(handles.edit1,'string',s)

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'value',1);
set(hObject,'max',20);
set(hObject,'min',0);


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
theta=get(hObject,'Value');
s=get(handles.slider1,'Value');
points = [1 1 1; -1 1 1; -1 -1 1; 1 -1 1; 1 1 1];
p=points*rot(theta*pi/180)*scale2(s);
plot(p(:,1), p(:,2));
axis([-30 30 -30 30]);
axis square;
set(handles.edit2,'string',theta)

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'value',0);
set(hObject,'max',360);
set(hObject,'min',0);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
s=str2double(get(hObject,'String'));
set(handles.slider1,'value',s)
theta=get(handles.slider3,'Value');
points = [1 1 1; -1 1 1; -1 -1 1; 1 -1 1; 1 1 1];
p=points*rot(theta*pi/180)*scale2(s);
plot(p(:,1), p(:,2));
axis([-30 30 -30 30]);
axis square;

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'string',1);


function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
theta=str2double(get(hObject,'String'));
set(handles.slider3,'value',theta)
s=get(handles.slider1,'Value');
points = [1 1 1; -1 1 1; -1 -1 1; 1 -1 1; 1 1 1];
p=points*rot(theta*pi/180)*scale2(s);
plot(p(:,1), p(:,2));
axis([-30 30 -30 30]);
axis square;

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'string',0);
