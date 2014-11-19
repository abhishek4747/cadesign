function varargout = bezierSurfaceGUI(varargin)
% BEZIERSURFACEGUI MATLAB code for bezierSurfaceGUI.fig
%      BEZIERSURFACEGUI, by itself, creates a new BEZIERSURFACEGUI or raises the existing
%      singleton*.
%
%      H = BEZIERSURFACEGUI returns the handle to a new BEZIERSURFACEGUI or the handle to
%      the existing singleton*.
%
%      BEZIERSURFACEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEZIERSURFACEGUI.M with the given input arguments.
%
%      BEZIERSURFACEGUI('Property','Value',...) creates a new BEZIERSURFACEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bezierSurfaceGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bezierSurfaceGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bezierSurfaceGUI

% Last Modified by GUIDE v2.5 19-Nov-2014 13:12:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bezierSurfaceGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @bezierSurfaceGUI_OutputFcn, ...
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


% --- Executes just before bezierSurfaceGUI is made visible.
function bezierSurfaceGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bezierSurfaceGUI (see VARARGIN)

% Choose default command line output for bezierSurfaceGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bezierSurfaceGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(gcf, 'Toolbar', 'figure')
N = str2num(get(handles.edit1,'String'));
set(handles.slider1,'value',N);
bezierSurface(N);

% --- Outputs from this function are returned to the command line.
function varargout = bezierSurfaceGUI_OutputFcn(hObject, eventdata, handles) 
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
N = int32(get(handles.slider1,'value'));
h = findobj(gcf,'type','surf');
delete(h);
bezierSurface(N);
set(handles.edit1,'String',N);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
set(hObject,'value',100);
set(hObject,'max',100);
set(hObject,'min',2);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
N = str2double(get(hObject,'String'));
h = findobj(gcf,'type','surf');
delete(h);
bezierSurface(N);
set(handles.slider1,'value',N);

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

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
N = 100;
h = findobj(gcf,'type','surf');
delete(h);
bezierSurface(N);
set(handles.edit1,'string',N);
set(handles.slider1,'value',N);
