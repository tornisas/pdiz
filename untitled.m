function varargout = untitled(varargin)
%Gvidas Rimeikis PS-9 untitled 10variantas

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


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


% --- Executes on selection change in asis_popupmenu.
function asis_popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to asis_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns asis_popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from asis_popupmenu


% --- Executes during object creation, after setting all properties.
function asis_popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to asis_popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
   
end
    set(hObject, 'String', {'Y aðis', 'Z aðis'});
    



% --- Executes on button press in Sudaryti_pushbutton.
function Sudaryti_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Sudaryti_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1 = str2double(get(handles.x1_edit, 'string'));
x2 = str2double(get(handles.x2_edit, 'string'));
x3 = str2double(get(handles.x3_edit, 'string'));
b = str2double(get(handles.x5_edit, 'string')); %b reiksme
k = str2double(get(handles.x6_edit, 'string')); %k reiksme
x=x1:x2:x3;
sk = numel(x);
[t,y]=size(x);
for  a = x1:x2:x3
    for i = 1:sk
y(i) = log(20+(abs(k*i))-b*(i*i)*sin(k*i));
    end
end
menu = get(handles.asis_popupmenu,'value');
axes(handles.axes2);
if menu == 1
plot(x,y);
xlabel('x');
ylabel('y');
guidata(hObject,handles);
warning('off','all')
elseif menu == 2
plot3(x,y,x);
xlabel('x');
ylabel('y');
zlabel('z');
guidata(hObject,handles);
warning('off','all')
end
    

% --- Executes on button press in Baigti_pushbutton.
function Baigti_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to Baigti_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all force


function x1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1_edit as text
%        str2double(get(hObject,'String')) returns contents of x1_edit as a double

% --- Executes during object creation, after setting all properties.
function x1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2_edit as text
%        str2double(get(hObject,'String')) returns contents of x2_edit as a double

% --- Executes during object creation, after setting all properties.
function x2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x3_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x3_edit as text
%        str2double(get(hObject,'String')) returns contents of x3_edit as a double



% --- Executes during object creation, after setting all properties.
function x3_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x3_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x4_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x4_edit as text
%        str2double(get(hObject,'String')) returns contents of x4_edit as a double


% --- Executes during object creation, after setting all properties.
function x4_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x4_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x5_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x5_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x5_edit as text
%        str2double(get(hObject,'String')) returns contents of x5_edit as a double


% --- Executes during object creation, after setting all properties.
function x5_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x5_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x6_edit_Callback(hObject, eventdata, handles)
% hObject    handle to x6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x6_edit as text
%        str2double(get(hObject,'String')) returns contents of x6_edit as a double


% --- Executes during object creation, after setting all properties.
function x6_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x6_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end