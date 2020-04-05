%Licence: GNU General Public License version 2 (GPLv2)

%% Create Gui #############################################################
function GC_GUI()
hfigure = struct;
hfigure.h_fig = 400;
hfigure.w_fig = 1000;
set(0,'units','pixels');
pix_screen = get(0,'screensize');
hfigure.figure = uifigure('units','pixel','position',...
    [(pix_screen(3)-hfigure.w_fig)/2 (pix_screen(4)-hfigure.h_fig)/2 hfigure.w_fig hfigure.h_fig],...
    'Resize','off','Name','GC GUI');
set(hfigure.figure, 'MenuBar', 'none');
set(hfigure.figure, 'ToolBar', 'none');

% Data panel ##############################################################
xoffset = 5;
yoffset = 100;
uipanel(hfigure.figure,'Title','Data','FontSize',12,'units','pixel','Position',[xoffset yoffset 300 300]);

tmpwidth = 140;
tmpheight = 255;
hfigure.listbox_samplelist = uilistbox(hfigure.figure,...
                     'position',[xoffset+10 yoffset+10 tmpwidth tmpheight+10],...
                     'fontsize',12,...
                     'Items',{},...
                     'ValueChangedFcn',{@listbox_samplelist_Callback});
                 
ii = 0;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','ID',...
          'HorizontalAlignment', 'right');
hfigure.edit_ID = uieditfield(hfigure.figure,'text',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value','',...
          'Enable','off',...
          'HorizontalAlignment', 'left');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','Date',...
          'HorizontalAlignment', 'right');
hfigure.edit_date = uieditfield(hfigure.figure,'text',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value','',...
          'Enable','off',...
          'HorizontalAlignment', 'left');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','Area',...
          'HorizontalAlignment', 'right');
hfigure.edit_area = uieditfield(hfigure.figure,'numeric',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value',0,...
          'HorizontalAlignment', 'left','ValueDisplayFormat','%.2f cm\x00B2');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','Descr.',...
          'HorizontalAlignment', 'right');
hfigure.edit_desc =uieditfield(hfigure.figure,'text',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'value','',...
          'HorizontalAlignment', 'left');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','U2RHE',...
          'HorizontalAlignment', 'right');
hfigure.edit_U2RHE = uieditfield(hfigure.figure,'numeric',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value',0,...
          'HorizontalAlignment', 'left','ValueDisplayFormat','%.3f V');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 60 20],...
          'fontsize',12,...
          'Text','GC offset',...
          'HorizontalAlignment', 'right');
hfigure.edit_GCoffset = uieditfield(hfigure.figure,'numeric',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value',0,...
          'HorizontalAlignment', 'left','ValueDisplayFormat','%.0f min');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','GC int.',...
          'HorizontalAlignment', 'right');
hfigure.edit_GCinttime = uieditfield(hfigure.figure,'numeric',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value',0,...
          'HorizontalAlignment', 'left','ValueDisplayFormat','%.0f min');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','Ru',...
          'HorizontalAlignment', 'right');
hfigure.edit_Ru = uieditfield(hfigure.figure,'numeric',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value',0,...
          'HorizontalAlignment', 'left','ValueDisplayFormat','%.2f \x03A9');      
ii = ii+1;
uilabel(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+5 yoffset+10+tmpheight-10-ii*25 50 20],...
          'fontsize',12,...
          'Text','Comp.',...
          'HorizontalAlignment', 'right');
hfigure.edit_compensation = uieditfield(hfigure.figure,'numeric',...
          'position',[xoffset+10+tmpwidth+10+60 yoffset+10+tmpheight-10-ii*25 70 20],...
          'fontsize',12,...
          'Value',0,...
          'HorizontalAlignment', 'left');      
ii = ii+1;
hfigure.checkbox_GCbinning = uicheckbox(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+10 yoffset+10+tmpheight-10-ii*25 120 20],...
          'fontsize',12,...
          'Text','Continuous flow');
ii = ii+1;
hfigure.checkbox_GCandEC = uicheckbox(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+10 yoffset+10+tmpheight-10-ii*25 100 20],...
          'fontsize',12,...
          'Text','GC & EC');

uilabel(hfigure.figure,...
          'position',[xoffset yoffset-20 300 20],...
          'fontsize',12,...
          'Text','Current working directory:',...
          'HorizontalAlignment', 'center','Fontcolor','red');

hfigure.text_CWD = uilabel(hfigure.figure,...
          'position',[xoffset yoffset-20-25 300 20],...
          'fontsize',12,...
          'Text','',...
          'HorizontalAlignment', 'center','Fontcolor','black');
      
uilabel(hfigure.figure,...
          'position',[xoffset yoffset-20-2*25 300 20],...
          'fontsize',12,...
          'Text','Current selected settings:',...
          'HorizontalAlignment', 'center','Fontcolor','red');
      
hfigure.text_settingfile = uilabel(hfigure.figure,...
          'position',[xoffset yoffset-20-3*25 300 20],...
          'fontsize',12,...
          'Text','',...
          'HorizontalAlignment', 'center','Fontcolor','black');

% Peak panel ##############################################################
xoffset = xoffset+5+300;
yoffset = 100;
uipanel(hfigure.figure,'Title','Peaks','FontSize',12,'units','pixel','Position',[310 100 170 300]);

tmpwidth = 150;
tmpheight = 190;
hfigure.listbox_peaklist = uilistbox(hfigure.figure,...
                     'position',[xoffset+10 yoffset+10 tmpwidth tmpheight],...
                     'fontsize',12,...
                     'Items',{},...
                     'ValueChangedFcn',{@listbox_peaklist_Callback},'Multiselect','on');
                 
ii=0;
hfigure.checkbox_plotpeaks = uicheckbox(hfigure.figure,...
          'position',[xoffset+10 yoffset+10+tmpheight+70-15-ii*25 120 20],...
          'fontsize',12,...
          'Text','Plot peaks');
ii=1;
hfigure.checkbox_plotselpeak = uicheckbox(hfigure.figure,...
          'position',[xoffset+10 yoffset+10+tmpheight+70-15-ii*25 150 20],...
          'fontsize',12,...
          'Text','Plot selected peak',...
          'ValueChangedFcn',{@checkbox_plotselpeak_Callback});
ii=2;
hfigure.popupmenu_BG = uidropdown(hfigure.figure,...
          'position',[xoffset+10 yoffset+10+tmpheight+70-15-ii*25 150 20],...
          'Enable','off',...
          'ValueChangedFcn',{@popupmenu_BG_Callback});
 
      
% Buttons #################################################################
ii=0;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@changesettingfile},...
          'Text','(1) Select settings');
ii=1;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_changeCWD_Callback},...
          'Text','(2) Select directory');
ii=2;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_newEntry_Callback},...
          'Text','(3) New Entry');
ii=3;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_calc_Callback},...
          'Text','(4) Calculate');
ii=4;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_delete_Callback},...
          'Text','Delete Entry (tmp)');
ii=5;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_saveentry_Callback},...
          'Text','Save Edit (tmp)');
ii=6;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_savetodisk_Callback},...
          'Text','Save edit to disk');
ii=7;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_loadlist_Callback},...
          'Text','Reload Sample List');
ii=8;
uibutton(hfigure.figure,...
          'position',[xoffset+10+tmpwidth+15 yoffset+10+tmpheight+70-5-2-ii*25 110 20],...
          'fontsize',12,...
          'ButtonPushedFcn',{@pushbutton_help_Callback},...
          'Text','Help');

uilabel(hfigure.figure,...
          'position',[xoffset yoffset-20-5-40 300 60],...
          'fontsize',12,...
          'Text',sprintf('� 2017-2020 Matthias H. Richter v200402a\nMatthias.H.Richter@gmail.com'),...
          'HorizontalAlignment', 'center','Fontcolor','black');      

hfigure.ax1 =  uiaxes(hfigure.figure);
set(hfigure.ax1,'position', [650 70+(hfigure.h_fig-100)/2 300 (hfigure.h_fig-100)/2]);
hfigure.ax2 =  uiaxes(hfigure.figure);
set(hfigure.ax2,'position', [650 35 300 (hfigure.h_fig-100)/2]);
hfigure.figtitle = uilabel(hfigure.figure,...
          'position',[650 hfigure.h_fig-26 300 28],...
          'fontsize',10,...
          'Text','',...
          'HorizontalAlignment', 'center','Fontcolor','black','BackgroundColor','white');

guidata(hfigure.figure,hfigure);
GC_GUI_init(hfigure);


%% helper functions #######################################################
function GC_GUI_init(hfigure)
hfigure.input = struct;
hfigure.result = struct;
hfigure.GC_usersetting = 'GC_settings'; % for default settings
hfigure = GC_init(hfigure);
hfigure = loadsamplelist(hfigure);
set(hfigure.text_CWD,'Text',hfigure.input.cwd);
set(hfigure.text_settingfile,'Text',hfigure.GC_usersetting);
BGtypes = {'linear', 'linear+fit', 'multi line'};
set(hfigure.popupmenu_BG,'Items',BGtypes);
hfigure.popupmenu_BG.ItemsData = [1 2 3];
set(hfigure.popupmenu_BG,'Value',3);
hfigure = update_GCcalib(hfigure);
hfigure = loadpeaklist(hfigure);
guidata(hfigure.figure,hfigure);


function hfigure = loadsamplelist(hfigure)
hfigure.input.samplelist = GC_load_samplelist();
if(isempty(hfigure.input.samplelist))
    data = {};
else
    data = table2cell(hfigure.input.samplelist(:,1))';
end
set(hfigure.listbox_samplelist,'Items',data);
set(hfigure.listbox_samplelist,'ItemsData',1:length(data));
update_boxes(get(hfigure.listbox_samplelist,'Value'), hfigure);
guidata(hfigure.figure,hfigure);


function hfigure = update_GCcalib(hfigure)
eval(hfigure.GC_usersetting);
hfigure.input.ch1name = ch1name;
hfigure.input.ch2name = ch2name;
hfigure.input.peakCH1 = peakCH1;
hfigure.input.peakCH2 = peakCH2;
hfigure.input.CO2_edge_start  = CO2_edge_start;
hfigure.input.CO2_edge_center = CO2_edge_center;
hfigure.input.CO2offset = CO2offset;
hfigure.input.CO2_cutoff = CO2_cutoff;
guidata(hfigure.figure,hfigure);


function hfigure = loadpeaklist(hfigure)
hfigure.input.checkplot = zeros(length(hfigure.input.peakCH1)+length(hfigure.input.peakCH2),1);
hfigure.input.intselBGtype = 3*ones(length(hfigure.input.peakCH1)+length(hfigure.input.peakCH2),1);
for ii = 1:length(hfigure.input.peakCH1)
   hfigure.input.peaklist(ii) = {sprintf('%s_%s',hfigure.input.ch1name,hfigure.input.peakCH1(ii).name)};
end
for ii = 1:length(hfigure.input.peakCH2)
   hfigure.input.peaklist(length(hfigure.input.peakCH1)+ii) = {sprintf('%s_%s',hfigure.input.ch2name,hfigure.input.peakCH2(ii).name)};
end
if(isempty(hfigure.input.peaklist))
    data = '';
else
    data = hfigure.input.peaklist';
end
set(hfigure.listbox_peaklist,'Items',data);
set(hfigure.listbox_peaklist,'ItemsData',1:length(data));
guidata(hfigure.figure,hfigure);
ids = get(hfigure.listbox_peaklist,'Value');
if(~isempty(ids))
    update_peakboxes(ids(1), hfigure);
end


function update_boxes(id, hfigure)
if(isempty(hfigure.input.samplelist) || isempty(id))
    set(hfigure.edit_ID, 'Value','');
    set(hfigure.edit_date, 'Value','');
    set(hfigure.edit_area, 'Value',0);
    set(hfigure.edit_desc, 'Value','');
    set(hfigure.edit_U2RHE, 'Value',0);
    set(hfigure.edit_GCoffset, 'Value',0);
    set(hfigure.edit_GCinttime, 'Value',0);
    set(hfigure.checkbox_GCbinning, 'Value',false);
    set(hfigure.checkbox_GCandEC, 'Value',false);
    set(hfigure.edit_Ru, 'Value',0);
    set(hfigure.edit_compensation, 'Value',0);
else
    set(hfigure.edit_ID, 'Value',char(table2cell(hfigure.input.samplelist(id,1))));
    set(hfigure.edit_date, 'Value',num2str(table2array(hfigure.input.samplelist(id,2))));
    set(hfigure.edit_area, 'Value',table2array(hfigure.input.samplelist(id,3)));
    set(hfigure.edit_desc, 'Value',char(table2cell(hfigure.input.samplelist(id,4))));
    set(hfigure.edit_U2RHE, 'Value',table2array(hfigure.input.samplelist(id,5)));
    set(hfigure.edit_GCoffset, 'Value',table2array(hfigure.input.samplelist(id,6)));
    set(hfigure.edit_GCinttime, 'Value',table2array(hfigure.input.samplelist(id,7)));
    if table2array(hfigure.input.samplelist(id,8))
        set(hfigure.checkbox_GCbinning, 'Value',true);
    else
        set(hfigure.checkbox_GCbinning, 'Value',false);
    end
    set(hfigure.edit_Ru, 'Value',table2array(hfigure.input.samplelist(id,9)));
    set(hfigure.edit_compensation, 'Value',table2array(hfigure.input.samplelist(id,10)));
    if table2array(hfigure.input.samplelist(id,11))
        set(hfigure.checkbox_GCandEC, 'Value',true);
    else
        set(hfigure.checkbox_GCandEC, 'Value',false);
    end
end


function update_peakboxes(id, hfigure)
set(hfigure.popupmenu_BG,'Value',hfigure.input.intselBGtype(id));
if hfigure.input.checkplot(id)
    set(hfigure.checkbox_plotselpeak,'Value',true);
else
    set(hfigure.checkbox_plotselpeak,'Value',false);
end


function changesettingfile(varargin)
hfigure = guidata(varargin{1});
file = uigetfile('./*.m','Select a File');
if(~file == 0)
    [~,name,~]= fileparts(file);
    set(hfigure.text_settingfile,'Text',name);
    hfigure.GC_usersetting = name;
    hfigure = update_GCcalib(hfigure);
    hfigure = loadpeaklist(hfigure);
    GC_GUI_init(hfigure);
end


function delete_entry(hfigure)
if(isempty(hfigure.input.samplelist))
else
    itemtodelete = get(hfigure.listbox_samplelist,'Value');
	hfigure.input.samplelist(itemtodelete,:) = [];
    if(size(hfigure.input.samplelist,1)>0)
        data = table2cell(hfigure.input.samplelist(:,1))';
        if ~(itemtodelete<=size(hfigure.input.samplelist,1) && itemtodelete>1)
            itemtodelete = 1;
        end
        set(hfigure.listbox_samplelist,'Value',itemtodelete);
    else
        data = {};
    end
    set(hfigure.listbox_samplelist,'Items',data);
    set(hfigure.listbox_samplelist,'ItemsData',1:length(data));
    update_boxes(get(hfigure.listbox_samplelist,'Value'), hfigure);
	guidata(hfigure.figure,hfigure); 
end


function save_entry(hfigure)
id = get(hfigure.listbox_samplelist,'Value');
hfigure.input.samplelist(id,1) = {get(hfigure.edit_ID, 'Value')};
hfigure.input.samplelist(id,2) = {str2double(get(hfigure.edit_date, 'Value'))};
hfigure.input.samplelist(id,3) = {get(hfigure.edit_area, 'Value')};
hfigure.input.samplelist(id,4) = {get(hfigure.edit_desc, 'Value')};
hfigure.input.samplelist(id,5) = {get(hfigure.edit_U2RHE, 'Value')};
hfigure.input.samplelist(id,6) = {get(hfigure.edit_GCoffset, 'Value')};
hfigure.input.samplelist(id,7) = {get(hfigure.edit_GCinttime, 'Value')};
if get(hfigure.checkbox_GCbinning, 'Value')
    hfigure.input.samplelist(id,8) = {1};
else
    hfigure.input.samplelist(id,8) = {0};
end
hfigure.input.samplelist(id,9) = {get(hfigure.edit_Ru, 'Value')};
hfigure.input.samplelist(id,10) = {get(hfigure.edit_compensation, 'Value')};
if get(hfigure.checkbox_GCandEC, 'Value')
    hfigure.input.samplelist(id,11) = {1};
else
    hfigure.input.samplelist(id,11) = {0};
end
guidata(hfigure.figure,hfigure);


function save_list_to_disk(hfigure)
sample_database = hfigure.input.samplelist;
save('sample_database.mat','sample_database');


function changeCWD(hfigure)
newFolder = uigetdir();
if(~newFolder == 0)
    cd(newFolder);
    hfigure.input.cwd = newFolder;
    set(hfigure.text_CWD,'Text',hfigure.input.cwd);
    loadsamplelist(hfigure); % data saved here already
    %guidata(hfigure.figure,hfigure);
end


function newEntry(hfigure)
try 
    ret = GC_new(hfigure,''); % prompt will be handled in the function
    if(~isempty(ret))
        hfigure.input.samplelist = [hfigure.input.samplelist; ret];

        data = table2cell(hfigure.input.samplelist(:,1))';
        set(hfigure.listbox_samplelist,'Items',data);
        set(hfigure.listbox_samplelist,'ItemsData',1:length(data));
        update_boxes(get(hfigure.listbox_samplelist,'Value'), hfigure);
        save_entry(hfigure);
        save_list_to_disk(hfigure);        
    end
    uialert(hfigure.figure,'Done.','Info',...
    'Icon','info');
catch ME
    uialert(hfigure.figure,'Matlab Error.','Error');
    rethrow(ME)
end


%% Callback functions #####################################################
function listbox_samplelist_Callback(varargin)
hfigure = guidata(varargin{1});
update_boxes(get(hfigure.listbox_samplelist,'Value'), hfigure);


function listbox_peaklist_Callback(varargin)
hfigure = guidata(varargin{1});
ids = get(hfigure.listbox_peaklist,'Value');
%for ii = 1:length(ids)
%   ids(ii) 
%end
update_peakboxes(ids(1), hfigure);


function checkbox_plotselpeak_Callback(varargin)
hfigure = guidata(varargin{1});
ids = get(hfigure.listbox_peaklist,'Value');
for ii = 1:length(ids)
    if get(hfigure.checkbox_plotselpeak,'Value')
        hfigure.input.checkplot(ids(ii)) = 1;
    else
        hfigure.input.checkplot(ids(ii)) = 0;
    end
end
guidata(hfigure.figure,hfigure);


function popupmenu_BG_Callback(varargin)
hfigure = guidata(varargin{1});
ids = get(hfigure.listbox_peaklist,'Value');
for ii = 1:length(ids)
	hfigure.input.intselBGtype(ids(ii)) = cell2mat({get(hfigure.popupmenu_BG,'Value')});
end
guidata(hfigure.figure,hfigure);


function pushbutton_help_Callback(varargin)
hfigure = guidata(varargin{1});
message = sprintf('%s \n %s \n %s \n %s \n %s \n %s \n %s',...
    '(1) Choose working directory (and settings).',...
    '(2) Add new dataset with New Entry.',...
	'(3) Press calculate.',...
    'Edits are not permanent if they are not first saved (Save edit (tmp) to enble them and later do disk.',...
    'If an entry is deleted its not deleted from the database on the disk until the database is saved to disk.',...
    'Reload button reloads database from disk.',...
    'See Tooltips for further information.');
uialert(hfigure.figure,message,'Help',...
'Icon','info');


function pushbutton_delete_Callback(varargin)
delete_entry(guidata(varargin{1}));


function pushbutton_loadlist_Callback(varargin)
loadsamplelist(guidata(varargin{1}));


function pushbutton_saveentry_Callback(varargin)
save_entry(guidata(varargin{1}));


function pushbutton_savetodisk_Callback(varargin)
save_list_to_disk(guidata(varargin{1}));


function pushbutton_changeCWD_Callback(varargin)
changeCWD(guidata(varargin{1}));


function pushbutton_newEntry_Callback(varargin)
newEntry(guidata(varargin{1}));


function pushbutton_calc_Callback(varargin)
hfigure = guidata(varargin{1});
if(~isempty(hfigure.input.samplelist))
    id = get(hfigure.listbox_samplelist,'Value');
    if(~isempty(id))
        if get(hfigure.checkbox_plotpeaks, 'Value')
            hfigure.input.plotpeaks = 1;
        else
            hfigure.input.plotpeaks = 0;
        end
        try 
            GC_main(hfigure);
            uialert(hfigure.figure,'Analysis complete.','Info',...
            'Icon','info');
        catch ME
            uialert(hfigure.figure,'Matlab Error in GC_main.','Error');
            rethrow(ME)
        end
    else
        uialert(hfigure.figure,'No data selected.','Error');
    end
end
