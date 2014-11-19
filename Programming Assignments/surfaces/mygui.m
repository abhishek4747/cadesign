function varargout = mygui(varargin)
% MYGUI MATLAB code for mygui.fig
%      MYGUI, by itself, creates a new MYGUI or raises the existing
%      singleton*.
%
%      H = MYGUI returns the handle to a new MYGUI or the handle to
%      the existing singleton*.
%
%      MYGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MYGUI.M with the given input arguments.
%
%      MYGUI('Property','Value',...) creates a new MYGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mygui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mygui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mygui

% Last Modified by GUIDE v2.5 19-Nov-2014 11:31:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mygui_OpeningFcn, ...
                   'gui_OutputFcn',  @mygui_OutputFcn, ...
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


% --- Executes just before mygui is made visible.
function mygui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mygui (see VARARGIN)

% Choose default command line output for mygui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mygui wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(gcf, 'Toolbar', 'figure')
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);


% --- Outputs from this function are returned to the command line.
function varargout = mygui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
guidata(hObject,handles)
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

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
A = 1;
B = 2;
C = 0.5;
D = 0.4;
E = 0.5;
F = 0.6;
G = 7;
H = 8;
I = 9;
J = -100;
isovalue = 0;
set(handles.edit1,'string',A);
set(handles.edit2,'string',B);
set(handles.edit3,'string',C);
set(handles.edit4,'string',D);
set(handles.edit5,'string',E);
set(handles.edit6,'string',F);
set(handles.edit7,'string',G);
set(handles.edit8,'string',H);
set(handles.edit9,'string',I);
set(handles.edit10,'string',J);
set(handles.edit11,'string',isovalue);
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

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



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
A = str2double(get(handles.edit1,'String'));
B = str2double(get(handles.edit2,'String'));
C = str2double(get(handles.edit3,'String'));
D = str2double(get(handles.edit4,'String'));
E = str2double(get(handles.edit5,'String'));
F = str2double(get(handles.edit6,'String'));
G = str2double(get(handles.edit7,'String'));
H = str2double(get(handles.edit8,'String'));
I = str2double(get(handles.edit9,'String'));
J = str2double(get(handles.edit10,'String'));
isovalue = str2double(get(handles.edit11,'String'));
h = findobj(gcf,'type','patch');
delete(h);
quadricSurface(A,B,C,D,E,F,G,H,I,J,isovalue);

% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
