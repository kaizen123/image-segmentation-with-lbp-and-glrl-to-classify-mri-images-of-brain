function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 31-Jul-2019 11:04:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(~, ~, ~)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(~, ~, ~)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(~, ~, ~)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(~, ~, ~)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(~, ~, ~)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(~, ~, ~)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(~, ~, ~)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(~, ~, ~)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(~, ~, ~)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(~, ~, ~)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, ~, handles)
[handles.file1,f1] = uigetfile('*.jpg');
handles.fullFileName1 = fullfile(f1, handles.file1);
guidata(hObject, handles);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, ~, handles)
[handles.file2,f2] = uigetfile('*.jpg');
handles.fullFileName2 = fullfile(f2, handles.file2);
guidata(hObject, handles);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, ~, handles)
[handles.file3,f3] = uigetfile('*.jpg');
handles.fullFileName3 = fullfile(f3, handles.file3);
guidata(hObject, handles);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, ~, handles)
[handles.file4,f4] = uigetfile('*.jpg');
handles.fullFileName4 = fullfile(f4, handles.file4);
guidata(hObject, handles);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(~, ~, ~)
% axes(hObject);
% imshow(handles.k4);
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
a = get(handles.uibuttongroup2,'SelectedObject');
b = get(a,'String');
c = get(handles.uibuttongroup1,'SelectedObject');
d = get(c,'String');
e = [];
kk = [];
if b=="LBP+TAMURA"
    e = data1();
    [Fcoarseness,Fcontrast,Fdirection,handles.k4] = datah1(string(handles.fullFileName1),string(handles.fullFileName2),string(handles.fullFileName3),string(handles.fullFileName4));
    kk = [Fcoarseness,Fcontrast,Fdirection];
    handles.text6.String = "FEATURES:" + newline + "COARSENESS:" + Fcoarseness + newline + "CONTRAST:" + Fcontrast + newline + "DIRECTION:" + Fdirection;
    imshow(handles.k4);
end
if b=="GLRL"
    e = data2();
    [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE,handles.k4] = datah2(string(handles.fullFileName1),string(handles.fullFileName2),string(handles.fullFileName3),string(handles.fullFileName4));
    kk = [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE];
    handles.text6.String = "FEATURES:" + newline + "SRE:" + SRE + newline + "LRE:" + LRE + newline + "GLN:" + GLN + newline + "RP:" + RP + newline + "RLN:" + RLN + newline + "LGRE:" + LGRE + newline + "HGRE:" + HGRE + newline + "SRLGE:" + SRLGE + newline + "SRHGE:" + SRHGE + newline + "LRLGE:" + LRLGE + newline + "LRHGE:" + LRHGE;
    imshow(handles.k4);
end
if b=="SHAPE BASED FEATURES"
    e = data3();
    [MajorAxisLength,MinorAxisLength,Eccentricity,Circularity,EquivDiameter,handles.k4] = datah3(string(handles.fullFileName1),string(handles.fullFileName2),string(handles.fullFileName3),string(handles.fullFileName4));
    kk = [MajorAxisLength,MinorAxisLength,Eccentricity,Circularity,EquivDiameter];
    handles.text6.String = "FEATURES:" + newline + "MajorAxisLength:" + MajorAxisLength + newline + "MinorAxisLength:" + MinorAxisLength + newline + "Eccentricity:" + Eccentricity + newline + "Circularity:" + Circularity + newline + "EquivDiameter:" + EquivDiameter;
    imshow(handles.k4);
end
if b=="LBP+GLRL"
    e = data4();
    [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE,handles.k4] = datah4(string(handles.fullFileName1),string(handles.fullFileName2),string(handles.fullFileName3),string(handles.fullFileName4));
    kk = [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE];
    handles.text6.String = "FEATURES:" + newline + "SRE:" + SRE + newline + "LRE:" + LRE + newline + "GLN:" + GLN + newline + "RP:" + RP + newline + "RLN:" + RLN + newline + "LGRE:" + LGRE + newline + "HGRE:" + HGRE + newline + "SRLGE:" + SRLGE + newline + "SRHGE:" + SRHGE + newline + "LRLGE:" + LRLGE + newline + "LRHGE:" + LRHGE;
    imshow(handles.k4);
end
if b=="LBP+GLRL+GLCM"
    e = data5();
    [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE,con,cor,energy,hom,handles.k4] = datah5(string(handles.fullFileName1),string(handles.fullFileName2),string(handles.fullFileName3),string(handles.fullFileName4));
    kk = [SRE,LRE,GLN,RP,RLN,LGRE,HGRE,SRLGE,SRHGE,LRLGE,LRHGE,con,cor,energy,hom];
    handles.text6.String = "FEATURES:" + newline + "SRE:" + SRE + newline + "LRE:" + LRE + newline + "GLN:" + GLN + newline + "RP:" + RP + newline + "RLN:" + RLN + newline + "LGRE:" + LGRE + newline + "HGRE:" + HGRE + newline + "SRLGE:" + SRLGE + newline + "SRHGE:" + SRHGE + newline + "LRLGE:" + LRLGE + newline + "LRHGE:" + LRHGE + newline + "contrast:" + con + newline + "correlation:" + cor + newline + "energy:" + energy + newline + "hom:" + hom;
    imshow(handles.k4);
end
if d=="SVM"
    f = svm1(e,kk);
    disp(f);
    handles.text5.String = "RESULTS:" + newline + string(f);
end
if d=="SVM(RBF KERNEL)"
    f = svm2(e,kk);
    disp(f);
    handles.text5.String = "RESULTS:" + newline + string(f);
end
if d=="KNN"
    f = knn1(e,kk);
    disp(f);
    handles.text5.String = "RESULTS:" + newline + string(f);
end
if d=="ENSEMBLE(SVM+KNN+NB)"
    f = ensemble1(e,kk);
    disp(f);
    handles.text5.String = "RESULTS:" + newline + string(f);
end
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
