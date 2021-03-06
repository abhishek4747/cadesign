function varargout = cubic_gui(varargin)
% CUBIC_GUI MATLAB code for cubic_gui.fig
%      CUBIC_GUI, by itself, creates a new CUBIC_GUI or raises the existing
%      singleton*.
%
%      H = CUBIC_GUI returns the handle to a new CUBIC_GUI or the handle to
%      the existing singleton*.
%
%      CUBIC_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CUBIC_GUI.M with the given input arguments.
%
%      CUBIC_GUI('Property','Value',...) creates a new CUBIC_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cubic_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cubic_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cubic_gui

% Last Modified by GUIDE v2.5 19-Nov-2014 15:50:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cubic_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @cubic_gui_OutputFcn, ...
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


% --- Executes just before cubic_gui is made visible.
function cubic_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cubic_gui (see VARARGIN)

% Choose default command line output for cubic_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
generate_curve(handles);

% UIWAIT makes cubic_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cubic_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function numeric_Callback(hObject, eventdata, handles)
% hObject    handle to p1x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1x as text
%        str2double(get(hObject,'String')) returns contents of p1x as a double
    str=get(hObject,'String');
    if isempty(str2double(str))
        set(hObject,'string','0');
        %warndlg('Input must be numerical');
    end
    generate_curve(handles)

function generate_curve(handles)
    %disp(handles)
    p1 = [str2double(get(handles.p1x,'String')); str2double(get(handles.p1y,'String'))];
    p1_ = [str2double(get(handles.p1_x,'String')); str2double(get(handles.p1_y,'String'))];
    p2 = [str2double(get(handles.p2x,'String')); str2double(get(handles.p2y,'String'))];
    p2_ = [str2double(get(handles.p2_x,'String')); str2double(get(handles.p2_y,'String'))];
    
    t2 = str2double(get(handles.t2,'String'));
    t = 0:0.01:t2;
    
    B1 = p1;
    B2 = p1_;
    B3 = (3*(p2-p1)/t2^2 - 2*p1_/t2 - p2_/t2 );
    B4 = (2*(p1-p2)/t2^3 + p1_/t2^2 + p2_/t2^2);
    curv = B1*ones(1,length(t)) + B2*t + B3*(t.*t) + B4*(t.*t.*t);

    pl = plot(curv(1,:),curv(2,:));
    hold on;
    plot(p1(1),p1(2),'o');
    plot(p2(1),p2(2),'o');
    axis([-10 10 -10 10]);
    %axis([min()-10 max()+10 min()-10 max()+10]);
%     a = axis();
%     axis(2*a);
    hold off;
    set(handles.axes1,'buttonDownFcn',{@axes1_ButtonDownFcn,handles});
    %(h,e)(disp(get(gca,'currentpoint'))))
    


% --- Executes during object creation, after setting all properties.
function p1x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function p1y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function p1_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function p1_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function p2x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function p2y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function p2_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties
function p2_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1



% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p = get( handles.axes1, 'CurrentPoint' );
if (int32(get(handles.radiobutton1,'Value'))==1)
    set(handles.p1x,'string',p(1,1));
    set(handles.p1y,'string',p(1,2));
else
    set(handles.p2x,'string',p(1,1));
    set(handles.p2y,'string',p(1,2));
end
generate_curve(handles);



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
