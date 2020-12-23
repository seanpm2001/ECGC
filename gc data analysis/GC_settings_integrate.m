%Licence: GNU General Public License version 2 (GPLv2)
% individual settings for GC, peak windows, calibration factors, etc.

% --- Peak specific settings ---
% e.g. GCset(settingnum).CH(channelnum).peak(peaknum).
% curvature > 0: relative to actual curvature
% curvature < 0: absolute curvature
% subpeak: which peak(area) to subtract from current peak(area)
% subpeakCH: channel of 'subpeak' peak
% subpeakf: scaling factor for area subtraction (useful for MS detector)
% n: charge for FE calculation
% offset, factor: ppm = measarea*factor + offset (calibration factors)
% start, end: define peak window
% BGpoints: optional (default is 10), # of node points for BG calculation

% --- GC specific settings ---
% e.g. GCset(settingnum).
% type: to select the correct loader (SRI or Agilent)
% name: unique name for current setting, e.g. different calibration dates

% --- Channel specific settings ---
% e.g. GCset(settingnum).CH(channelnum).
% name: name of channel, e.g. name of channel data file (MSD, TIC, TCDA,
%       FIDB for Agilent), or substring of filename for SRI
% RT_cutoff: channel saturation threshold

% --- not functional ---
% RT_shift: % 0 .. disable time shift correction, 1 .. enable time shift correction
% RT_offset:
% RT_edge_start:
% RT_edge_center:

%% ########################################################################
GCset(1).type = 'SRI'; % to select the correct loader
GCset(1).name = 'SRI GC FastLoop 19/11'; % for naming it in loader, different names for different calibration etc
GCset(1).CH(1).name = 'FID';
GCset(1).CH(2).name = 'TCD';

% settings to automatically align different spectra
GCset(1).CH(1).RT_shift = 0;
GCset(1).CH(1).RT_offset = 1.37;
GCset(1).CH(1).RT_edge_start = 1.25;
GCset(1).CH(1).RT_edge_center = 1.7;
GCset(1).CH(1).RT_cutoff = 4100;

GCset(1).CH(2).RT_shift = 0;
GCset(1).CH(2).RT_offset = 1.37;
GCset(1).CH(2).RT_edge_start = 1.25;
GCset(1).CH(2).RT_edge_center = 1.7;
GCset(1).CH(2).RT_cutoff = 4100;

% used for exporting to XLS and TXT
GCset(1).idCO.peak = 1;
GCset(1).idCO.CH = 1;
GCset(1).idCH4.peak = 2;
GCset(1).idCH4.CH = 1;
GCset(1).idC2H4.peak = 3;
GCset(1).idC2H4.CH = 1;
GCset(1).idC2H6.peak = 4;
GCset(1).idC2H6.CH = 1;
GCset(1).idCO2nd.peak = 1;
GCset(1).idCO2nd.CH = 1;
GCset(1).idCH42nd.peak = 2;
GCset(1).idCH42nd.CH = 1;
GCset(1).idH2.peak = 1;
GCset(1).idH2.CH = 2;
GCset(1).idO2.peak = 2;
GCset(1).idO2.CH = 2;

% ### FID #################################################################
ii = 1;
GCset(1).CH(1).peak(ii).name = "CO";
GCset(1).CH(1).peak(ii).start = 0.4;
GCset(1).CH(1).peak(ii).end = 1.2;
GCset(1).CH(1).peak(ii).curvature = 0.02;
GCset(1).CH(1).peak(ii).offset = 0.0;
GCset(1).CH(1).peak(ii).factor = 2.757850684;
GCset(1).CH(1).peak(ii).n = 2;
GCset(1).CH(1).peak(ii).subpeak = 2;
GCset(1).CH(1).peak(ii).subpeakCH = 1;
GCset(1).CH(1).peak(ii).subpeakf = 1;

ii = 2;
GCset(1).CH(1).peak(ii).name = "CH4";
GCset(1).CH(1).peak(ii).start = 0.85;
GCset(1).CH(1).peak(ii).end = 1.2;
GCset(1).CH(1).peak(ii).curvature = 0.02;
GCset(1).CH(1).peak(ii).offset = 0.0;
GCset(1).CH(1).peak(ii).factor = 2.922806834;
GCset(1).CH(1).peak(ii).n = 8;
GCset(1).CH(1).peak(ii).subpeak = 0;
GCset(1).CH(1).peak(ii).subpeakCH = 0;
GCset(1).CH(1).peak(ii).subpeakf = 1;

ii = 3;
GCset(1).CH(1).peak(ii).name = "C2H4";
GCset(1).CH(1).peak(ii).start = 2.4;
GCset(1).CH(1).peak(ii).end = 3.4;
GCset(1).CH(1).peak(ii).curvature = 0.000001;
GCset(1).CH(1).peak(ii).offset = 0.0;
GCset(1).CH(1).peak(ii).factor = 1.330678609;
GCset(1).CH(1).peak(ii).n = 12;
GCset(1).CH(1).peak(ii).subpeak = 0;
GCset(1).CH(1).peak(ii).subpeakCH = 0;
GCset(1).CH(1).peak(ii).subpeakf = 1;

ii = 4;
GCset(1).CH(1).peak(ii).name = "C2H6";
GCset(1).CH(1).peak(ii).start = 3.4;
GCset(1).CH(1).peak(ii).end = 4.8;
GCset(1).CH(1).peak(ii).curvature = 0.000001;
GCset(1).CH(1).peak(ii).offset = 0.0;
GCset(1).CH(1).peak(ii).factor = 1.390701495;
GCset(1).CH(1).peak(ii).n = 14;
GCset(1).CH(1).peak(ii).subpeak = 0;
GCset(1).CH(1).peak(ii).subpeakCH = 0;
GCset(1).CH(1).peak(ii).subpeakf = 1;

% ### TCD #################################################################
ii = 1;
GCset(1).CH(2).peak(ii).name = "H2";
GCset(1).CH(2).peak(ii).start = 0.48;
GCset(1).CH(2).peak(ii).end = 0.68;
GCset(1).CH(2).peak(ii).curvature = 0.01;
GCset(1).CH(2).peak(ii).offset = 0.0;
GCset(1).CH(2).peak(ii).factor = 44.71900545;
GCset(1).CH(2).peak(ii).n = 2;
GCset(1).CH(2).peak(ii).subpeak = 0;
GCset(1).CH(2).peak(ii).subpeakCH = 0;
GCset(1).CH(2).peak(ii).subpeakf = 1;

ii = 2;
GCset(1).CH(2).peak(ii).name = "O2";
GCset(1).CH(2).peak(ii).start = 0.64;
GCset(1).CH(2).peak(ii).end = 0.9;
GCset(1).CH(2).peak(ii).curvature = 0.005;
GCset(1).CH(2).peak(ii).offset = 0.0;
GCset(1).CH(2).peak(ii).factor = 0.0;
GCset(1).CH(2).peak(ii).n = 0;
GCset(1).CH(2).peak(ii).subpeak = 0;
GCset(1).CH(2).peak(ii).subpeakCH = 0;
GCset(1).CH(2).peak(ii).subpeakf = 1;

%% ########################################################################
GCset(2).type = 'Agilent'; % to select the correct loader
GCset(2).name = 'Agilent GCMS V1'; % for naming it in loader, different names for different calibration etc
GCset(2).CH(1).name = 'TIC';
GCset(2).CH(2).name = 'TCDA';

GCset(2).CH(3).name = 'MSD';
GCset(2).CH(3).mz = 26;
GCset(2).CH(3).mzplus = 0.5;
GCset(2).CH(3).mzminus = 0.5;

GCset(2).CH(4).name = 'MSD';
GCset(2).CH(4).mz = 32;
GCset(2).CH(4).mzplus = 0.5;
GCset(2).CH(4).mzminus = 0.5;

GCset(2).CH(5).name = 'MSD';
GCset(2).CH(5).mz = 14;
GCset(2).CH(5).mzplus = 0.5;
GCset(2).CH(5).mzminus = 0.5;

GCset(2).CH(6).name = 'MSD';
GCset(2).CH(6).mz = 28;
GCset(2).CH(6).mzplus = 0.5;
GCset(2).CH(6).mzminus = 0.5;

GCset(2).CH(7).name = 'MSD';
GCset(2).CH(7).mz = 29;
GCset(2).CH(7).mzplus = 0.5;
GCset(2).CH(7).mzminus = 0.5;

GCset(2).CH(8).name = 'MSD';
GCset(2).CH(8).mz = 31;
GCset(2).CH(8).mzplus = 0.5;
GCset(2).CH(8).mzminus = 0.5;

GCset(2).CH(9).name = 'MSD';
GCset(2).CH(9).mz = 43;
GCset(2).CH(9).mzplus = 0.5;
GCset(2).CH(9).mzminus = 0.5;

GCset(2).CH(10).name = 'MSD';
GCset(2).CH(10).mz = 45;
GCset(2).CH(10).mzplus = 0.5;
GCset(2).CH(10).mzminus = 0.5;

GCset(2).CH(11).name = 'MSD';
GCset(2).CH(11).mz = 57;
GCset(2).CH(11).mzplus = 0.5;
GCset(2).CH(11).mzminus = 0.5;

GCset(2).CH(12).name = 'MSD';
GCset(2).CH(12).mz = 58;
GCset(2).CH(12).mzplus = 0.5;
GCset(2).CH(12).mzminus = 0.5;

for ii=1:length(GCset(2).CH)
    GCset(2).CH(ii).RT_shift = 0;
    GCset(2).CH(ii).RT_offset = 1.37;
    GCset(2).CH(ii).RT_edge_start = 1.25;
    GCset(2).CH(ii).RT_edge_center = 1.7;
    GCset(2).CH(ii).RT_cutoff = 1e12;
end

GCset(2).idCO.peak = 3;
GCset(2).idCO.CH = 2;
GCset(2).idCH4.peak = 4;
GCset(2).idCH4.CH = 2;

%GCset(2).idC2H4.peak = 5;
%GCset(2).idC2H4.CH = 2;
%GCset(2).idC2H6.peak = 6;
%GCset(2).idC2H6.CH = 2;

% GCset(2).idC2H4.peak = 3;
% GCset(2).idC2H4.CH = 1;
% GCset(2).idC2H6.peak = 4;
% GCset(2).idC2H6.CH = 1;

GCset(2).idC2H4.peak = 1;
GCset(2).idC2H4.CH = 3;
GCset(2).idC2H6.peak = 2;
GCset(2).idC2H6.CH = 3;

GCset(2).idCO2nd.peak = 1;
GCset(2).idCO2nd.CH = 1;
GCset(2).idCH42nd.peak = 2;
GCset(2).idCH42nd.CH = 1;
GCset(2).idH2.peak = 1;
GCset(2).idH2.CH = 2;
GCset(2).idO2.peak = 2;
GCset(2).idO2.CH = 2;

% MSD TIC #################################################################
ii = 1;
GCset(2).CH(1).peak(ii).name = "CO";
GCset(2).CH(1).peak(ii).start = 1.5;
GCset(2).CH(1).peak(ii).end = 2.15;
GCset(2).CH(1).peak(ii).curvature = 0.02;
GCset(2).CH(1).peak(ii).offset = 0.0;
GCset(2).CH(1).peak(ii).factor = 7.58444E-05;
GCset(2).CH(1).peak(ii).n = 2;
GCset(2).CH(1).peak(ii).subpeak = 2;
GCset(2).CH(1).peak(ii).subpeakCH = 1;
GCset(2).CH(1).peak(ii).subpeakf = 1;

ii = 2;
GCset(2).CH(1).peak(ii).name = "CH4";
GCset(2).CH(1).peak(ii).start = 1.8;
GCset(2).CH(1).peak(ii).end = 2.15;
GCset(2).CH(1).peak(ii).curvature = 0.02;
GCset(2).CH(1).peak(ii).offset = 0.0;
GCset(2).CH(1).peak(ii).factor = 0.000181735;
GCset(2).CH(1).peak(ii).n = 8;
GCset(2).CH(1).peak(ii).subpeak = 0;
GCset(2).CH(1).peak(ii).subpeakCH = 0;
GCset(2).CH(1).peak(ii).subpeakf = 1;

ii = 3;
GCset(2).CH(1).peak(ii).name = "C2H4";
GCset(2).CH(1).peak(ii).start = 3.1;
GCset(2).CH(1).peak(ii).end = 3.8;
GCset(2).CH(1).peak(ii).curvature = 0.000001;
GCset(2).CH(1).peak(ii).offset = 0.0;
GCset(2).CH(1).peak(ii).factor = 5.2812E-05;
GCset(2).CH(1).peak(ii).n = 12;
GCset(2).CH(1).peak(ii).subpeak = 0;
GCset(2).CH(1).peak(ii).subpeakCH = 0;
GCset(2).CH(1).peak(ii).subpeakf = 1;

ii = 4;
GCset(2).CH(1).peak(ii).name = "C2H6";
GCset(2).CH(1).peak(ii).start = 3.9;
GCset(2).CH(1).peak(ii).end = 4.8;
GCset(2).CH(1).peak(ii).curvature = 0.000001;
GCset(2).CH(1).peak(ii).offset = 0.0;
GCset(2).CH(1).peak(ii).factor = 2.74434E-05;
GCset(2).CH(1).peak(ii).n = 14;
GCset(2).CH(1).peak(ii).subpeak = 0;
GCset(2).CH(1).peak(ii).subpeakCH = 0;
GCset(2).CH(1).peak(ii).subpeakf = 1;

% TCD #####################################################################
ii = 1;
GCset(2).CH(2).peak(ii).name = "H2";
GCset(2).CH(2).peak(ii).start = 1.3;
GCset(2).CH(2).peak(ii).end = 1.6;
GCset(2).CH(2).peak(ii).curvature = 0.005;
GCset(2).CH(2).peak(ii).offset = 0.0;
GCset(2).CH(2).peak(ii).factor = 0.001586151;
GCset(2).CH(2).peak(ii).n = 2;
GCset(2).CH(2).peak(ii).subpeak = 0;
GCset(2).CH(2).peak(ii).subpeakCH = 0;
GCset(2).CH(2).peak(ii).subpeakf = 1;

ii = 2;
GCset(2).CH(2).peak(ii).name = "O2"; %N2
GCset(2).CH(2).peak(ii).start = 1.9;
GCset(2).CH(2).peak(ii).end = 2.3;
GCset(2).CH(2).peak(ii).curvature = 0.005;
GCset(2).CH(2).peak(ii).offset = 0.0;
GCset(2).CH(2).peak(ii).factor = 0.0;
GCset(2).CH(2).peak(ii).n = 0;
GCset(2).CH(2).peak(ii).subpeak = 0;
GCset(2).CH(2).peak(ii).subpeakCH = 0;
GCset(2).CH(2).peak(ii).subpeakf = 1;

ii = 3;
GCset(2).CH(2).peak(ii).name = "CO";
GCset(2).CH(2).peak(ii).start = 2.2;
GCset(2).CH(2).peak(ii).end = 2.9;
GCset(2).CH(2).peak(ii).curvature = 0.005; % curvature of BG
GCset(2).CH(2).peak(ii).offset = 0.0;
GCset(2).CH(2).peak(ii).factor = 0.014355958;
GCset(2).CH(2).peak(ii).n = 2; % number of electrons
GCset(2).CH(2).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(2).peak(ii).subpeakCH = 0;
GCset(2).CH(2).peak(ii).subpeakf = 1;

ii = 4;
GCset(2).CH(2).peak(ii).name = "CH4";
GCset(2).CH(2).peak(ii).start = 4;
GCset(2).CH(2).peak(ii).end = 6.6;
GCset(2).CH(2).peak(ii).curvature = 0.005;
GCset(2).CH(2).peak(ii).offset = 0.0;
GCset(2).CH(2).peak(ii).factor = 0.004037316;
GCset(2).CH(2).peak(ii).n = 8;
GCset(2).CH(2).peak(ii).subpeak = 0;
GCset(2).CH(2).peak(ii).subpeakCH = 0;
GCset(2).CH(2).peak(ii).subpeakf = 1;

ii = 5;
GCset(2).CH(2).peak(ii).name = "C2H4";
GCset(2).CH(2).peak(ii).start = 15;
GCset(2).CH(2).peak(ii).end = 17.5;
GCset(2).CH(2).peak(ii).curvature = 0.01;
GCset(2).CH(2).peak(ii).offset = 0.0;
GCset(2).CH(2).peak(ii).factor = 0.004865479;
GCset(2).CH(2).peak(ii).n = 12;
GCset(2).CH(2).peak(ii).subpeak = 0;
GCset(2).CH(2).peak(ii).subpeakCH = 0;
GCset(2).CH(2).peak(ii).subpeakf = 1;

ii = 6;
GCset(2).CH(2).peak(ii).name = "C2H6";
GCset(2).CH(2).peak(ii).start = 17.5;
GCset(2).CH(2).peak(ii).end = 20;
GCset(2).CH(2).peak(ii).curvature = 0.005;
GCset(2).CH(2).peak(ii).offset = 0.0;
GCset(2).CH(2).peak(ii).factor = 0.004031598;
GCset(2).CH(2).peak(ii).n = 14;
GCset(2).CH(2).peak(ii).subpeak = 0;
GCset(2).CH(2).peak(ii).subpeakCH = 0;
GCset(2).CH(2).peak(ii).subpeakf = 1;

% MSD mz 26 ###############################################################
ii = 1;
GCset(2).CH(3).peak(ii).name = "C2H4(mz=26)";
GCset(2).CH(3).peak(ii).start = 3.1;
GCset(2).CH(3).peak(ii).end = 3.8;
GCset(2).CH(3).peak(ii).curvature = -0.01;
GCset(2).CH(3).peak(ii).offset = 0.0;
GCset(2).CH(3).peak(ii).factor = 0.000207504;
GCset(2).CH(3).peak(ii).n = 12;
GCset(2).CH(3).peak(ii).subpeak = 0;
GCset(2).CH(3).peak(ii).subpeakCH = 0;
GCset(2).CH(3).peak(ii).subpeakf = 1;

ii = 2;
GCset(2).CH(3).peak(ii).name = "C2H6(mz=26)";
GCset(2).CH(3).peak(ii).start = 3.9;
GCset(2).CH(3).peak(ii).end = 4.8;
GCset(2).CH(3).peak(ii).curvature = -0.01;%-0.002;
GCset(2).CH(3).peak(ii).offset = 0.0;
GCset(2).CH(3).peak(ii).factor = 0.000230562;
GCset(2).CH(3).peak(ii).n = 14;
GCset(2).CH(3).peak(ii).subpeak = 0;
GCset(2).CH(3).peak(ii).subpeakCH = 0;
GCset(2).CH(3).peak(ii).subpeakf = 1;

% MSD mz 32 ###############################################################
ii = 1;
GCset(2).CH(4).peak(ii).name = "O2(mz=32)";
GCset(2).CH(4).peak(ii).start = 1.5;
GCset(2).CH(4).peak(ii).end = 2.15;
GCset(2).CH(4).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(4).peak(ii).offset = 0.0;
GCset(2).CH(4).peak(ii).factor = 1;
GCset(2).CH(4).peak(ii).n = 0; % number of electrons
GCset(2).CH(4).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(4).peak(ii).subpeakCH = 0;
GCset(2).CH(4).peak(ii).subpeakf = 1;

% MSD mz 14 ###############################################################
ii = 1;
GCset(2).CH(5).peak(ii).name = "N2(mz=14)";
GCset(2).CH(5).peak(ii).start = 1.5;
GCset(2).CH(5).peak(ii).end = 2.15;
GCset(2).CH(5).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(5).peak(ii).offset = 0.0;
GCset(2).CH(5).peak(ii).factor = 1;
GCset(2).CH(5).peak(ii).n = 0; % number of electrons
GCset(2).CH(5).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(5).peak(ii).subpeakCH = 0;
GCset(2).CH(5).peak(ii).subpeakf = 1;

% MSD mz 28 ###############################################################
ii = 1;
GCset(2).CH(6).peak(ii).name = "CO(mz=28)";
GCset(2).CH(6).peak(ii).start = 1.5;
GCset(2).CH(6).peak(ii).end = 2.15;
GCset(2).CH(6).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(6).peak(ii).offset = 0.0;
GCset(2).CH(6).peak(ii).factor = 1;
GCset(2).CH(6).peak(ii).n = 2; % number of electrons
GCset(2).CH(6).peak(ii).subpeak = 1; % subtract area from that peak
GCset(2).CH(6).peak(ii).subpeakCH = 5;
GCset(2).CH(6).peak(ii).subpeakf = 9999/1379; % ratio mz=28 to mz=14 for N2, https://webbook.nist.gov/cgi/cbook.cgi?ID=C7727379&Units=SI&Mask=200#Mass-Spec

% MSD mz 29 ###############################################################
jj = 7;
ii = 1;
GCset(2).CH(jj).peak(ii).name = "Ethanal(mz=29)"; % Acetaldehyde
GCset(2).CH(jj).peak(ii).start = 12.16-3;
GCset(2).CH(jj).peak(ii).end = 12.16+3;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 10; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;

% MSD mz 31 ###############################################################
jj = 8;
ii = 1;
GCset(2).CH(jj).peak(ii).name = "Methanol(mz=31)";
GCset(2).CH(jj).peak(ii).start = 11.03-3;
GCset(2).CH(jj).peak(ii).end = 11.03+3;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 6; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;

ii = 2;
GCset(2).CH(jj).peak(ii).name = "Ethanol(mz=31)";
GCset(2).CH(jj).peak(ii).start = 14.85-3;
GCset(2).CH(jj).peak(ii).end = 14.85+3;
GCset(2).CH(jj).peak(ii).curvature = -0.0000001; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 12; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;

ii = 3;
GCset(2).CH(jj).peak(ii).name = "1-Propanol(mz=31)";
GCset(2).CH(jj).peak(ii).start = 19.22-3;
GCset(2).CH(jj).peak(ii).end = 19.22+3;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 18; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;
% MSD mz 43 ###############################################################
jj = 9;
ii = 1;
GCset(2).CH(jj).peak(ii).name = "Acetone(mz=43)";
GCset(2).CH(jj).peak(ii).start = 16.98-3;
GCset(2).CH(jj).peak(ii).end = 16.98+3;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 16; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;
% MSD mz 45 ###############################################################
jj = 10;
ii = 1;
GCset(2).CH(jj).peak(ii).name = "2-Propanol(mz=45)";
GCset(2).CH(jj).peak(ii).start = 17.51-3;
GCset(2).CH(jj).peak(ii).end = 17.51+3;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 18; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;
% MSD mz 57 ###############################################################
jj = 11;
ii = 1;
GCset(2).CH(jj).peak(ii).name = "AllylAlcohol(mz=57)";
GCset(2).CH(jj).peak(ii).start = 18.52-1.5;
GCset(2).CH(jj).peak(ii).end = 18.52+1.5;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 16; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;
% MSD mz 58 ###############################################################
jj = 12;
ii = 1;
GCset(2).CH(jj).peak(ii).name = "Propanal(mz=58)";%Propionaldeyde
GCset(2).CH(jj).peak(ii).start = 16.58-3;
GCset(2).CH(jj).peak(ii).end = 16.58+3;
GCset(2).CH(jj).peak(ii).curvature = -0.01; % curvature of BG
GCset(2).CH(jj).peak(ii).offset = 0.0;
GCset(2).CH(jj).peak(ii).factor = 1;
GCset(2).CH(jj).peak(ii).n = 16; % number of electrons
GCset(2).CH(jj).peak(ii).subpeak = 0; % subtract area from that peak
GCset(2).CH(jj).peak(ii).subpeakCH = 0;
GCset(2).CH(jj).peak(ii).subpeakf = 1;

%% ########################################################################
GCset(3).type = 'SRI'; % to select the correct loader
GCset(3).name = 'SRI GC FastLoop 20/06'; % for naming it in loader, different names for different calibration etc
GCset(3).CH(1).name = 'FID';
GCset(3).CH(2).name = 'TCD';

% settings to automatically align different spectra
for ii=1:length(GCset(2).CH)
    GCset(3).CH(ii).RT_shift = 0;
    GCset(3).CH(ii).RT_offset = 1.37;
    GCset(3).CH(ii).RT_edge_start = 1.25;
    GCset(3).CH(ii).RT_edge_center = 1.7;
    GCset(3).CH(ii).RT_cutoff = 4100;
end

% used for exporting to XLS and TXT
GCset(3).idCO.peak = 1;
GCset(3).idCO.CH = 1;
GCset(3).idCH4.peak = 2;
GCset(3).idCH4.CH = 1;
GCset(3).idC2H4.peak = 3;
GCset(3).idC2H4.CH = 1;
GCset(3).idC2H6.peak = 4;
GCset(3).idC2H6.CH = 1;
GCset(3).idCO2nd.peak = 1;
GCset(3).idCO2nd.CH = 1;
GCset(3).idCH42nd.peak = 2;
GCset(3).idCH42nd.CH = 1;
GCset(3).idH2.peak = 1;
GCset(3).idH2.CH = 2;
GCset(3).idO2.peak = 2;
GCset(3).idO2.CH = 2;

% ### FID #################################################################
ii = 1;
GCset(3).CH(1).peak(ii).name = "CO";
GCset(3).CH(1).peak(ii).start = 0.4;
GCset(3).CH(1).peak(ii).end = 1.2;
GCset(3).CH(1).peak(ii).curvature = 0.02;
GCset(3).CH(1).peak(ii).offset = 0.0;
GCset(3).CH(1).peak(ii).factor = 2.924026855;
GCset(3).CH(1).peak(ii).n = 2;
GCset(3).CH(1).peak(ii).subpeak = 2;
GCset(3).CH(1).peak(ii).subpeakCH = 1;
GCset(3).CH(1).peak(ii).subpeakf = 1;

ii = 2;
GCset(3).CH(1).peak(ii).name = "CH4";
GCset(3).CH(1).peak(ii).start = 0.85;
GCset(3).CH(1).peak(ii).end = 1.2;
GCset(3).CH(1).peak(ii).curvature = 0.02;
GCset(3).CH(1).peak(ii).offset = 0.0;
GCset(3).CH(1).peak(ii).factor = 3.317064485;
GCset(3).CH(1).peak(ii).n = 8;
GCset(3).CH(1).peak(ii).subpeak = 0;
GCset(3).CH(1).peak(ii).subpeakCH = 0;
GCset(3).CH(1).peak(ii).subpeakf = 1;

ii = 3;
GCset(3).CH(1).peak(ii).name = "C2H4";
GCset(3).CH(1).peak(ii).start = 2.4;
GCset(3).CH(1).peak(ii).end = 3.4;
GCset(3).CH(1).peak(ii).curvature = 0.000001;
GCset(3).CH(1).peak(ii).offset = 0.0;
GCset(3).CH(1).peak(ii).factor = 1.550603268;
GCset(3).CH(1).peak(ii).n = 12;
GCset(3).CH(1).peak(ii).subpeak = 0;
GCset(3).CH(1).peak(ii).subpeakCH = 0;
GCset(3).CH(1).peak(ii).subpeakf = 1;

ii = 4;
GCset(3).CH(1).peak(ii).name = "C2H6";
GCset(3).CH(1).peak(ii).start = 3.4;
GCset(3).CH(1).peak(ii).end = 4.8;
GCset(3).CH(1).peak(ii).curvature = 0.000001;
GCset(3).CH(1).peak(ii).offset = 0.0;
GCset(3).CH(1).peak(ii).factor = 1.398718445;
GCset(3).CH(1).peak(ii).n = 14;
GCset(3).CH(1).peak(ii).subpeak = 0;
GCset(3).CH(1).peak(ii).subpeakCH = 0;
GCset(3).CH(1).peak(ii).subpeakf = 1;

% ### TCD #################################################################
ii = 1;
GCset(3).CH(2).peak(ii).name = "H2";
GCset(3).CH(2).peak(ii).start = 0.48;
GCset(3).CH(2).peak(ii).end = 0.68;
GCset(3).CH(2).peak(ii).curvature = 0.01;
GCset(3).CH(2).peak(ii).offset = 0.0;
GCset(3).CH(2).peak(ii).factor = 47.3992403;
GCset(3).CH(2).peak(ii).n = 2;
GCset(3).CH(2).peak(ii).subpeak = 0;
GCset(3).CH(2).peak(ii).subpeakCH = 0;
GCset(3).CH(2).peak(ii).subpeakf = 1;

ii = 2;
GCset(3).CH(2).peak(ii).name = "O2";
GCset(3).CH(2).peak(ii).start = 0.64;
GCset(3).CH(2).peak(ii).end = 0.9;
GCset(3).CH(2).peak(ii).curvature = 0.005;
GCset(3).CH(2).peak(ii).offset = 0.0;
GCset(3).CH(2).peak(ii).factor = 0.0;
GCset(3).CH(2).peak(ii).n = 0;
GCset(3).CH(2).peak(ii).subpeak = 0;
GCset(3).CH(2).peak(ii).subpeakCH = 0;
GCset(3).CH(2).peak(ii).subpeakf = 1;

%% Agilent GC TCD FID
GCset(4).type = 'Agilent'; % to select the correct loader
GCset(4).name = 'Agilent GCTCDFID V1'; % for naming it in loader, different names for different calibration etc
GCset(4).CH(1).name = 'TCDA';
GCset(4).CH(2).name = 'FIDB';

GCset(4).CH(1).RT_shift = 1;
GCset(4).CH(1).RT_offset = 0;
GCset(4).CH(1).RT_edge_start = 2.5;
GCset(4).CH(1).RT_edge_center = 3.3;
GCset(4).CH(1).RT_cutoff = 1e12;

GCset(4).CH(2).RT_shift = 0;
GCset(4).CH(2).RT_offset = 0;
GCset(4).CH(2).RT_edge_start = 0;
GCset(4).CH(2).RT_edge_center = 0;
GCset(4).CH(2).RT_cutoff = 1e12;

GCset(4).idH2.peak = 1;
GCset(4).idH2.CH = 1;

GCset(4).idO2.peak = 2;
GCset(4).idO2.CH = 1;

GCset(4).idCO.peak = 3;
GCset(4).idCO.CH = 1;

GCset(4).idCH4.peak = 1;
GCset(4).idCH4.CH = 2;

GCset(4).idC2H4.peak = 2;
GCset(4).idC2H4.CH = 2;

GCset(4).idC2H6.peak = 3;
GCset(4).idC2H6.CH = 2;

GCset(4).idCO2nd.peak = 3;
GCset(4).idCO2nd.CH = 1;
GCset(4).idCH42nd.peak = 4;
GCset(4).idCH42nd.CH = 1;

% TCD #####################################################################
ii = 1;
GCset(4).CH(1).peak(ii).name = "H2";
GCset(4).CH(1).peak(ii).start = 1;
GCset(4).CH(1).peak(ii).end = 1.3;
GCset(4).CH(1).peak(ii).curvature = 0.005;
GCset(4).CH(1).peak(ii).offset = 0.0;
GCset(4).CH(1).peak(ii).factor = 0.000299065;
GCset(4).CH(1).peak(ii).n = 2;
GCset(4).CH(1).peak(ii).subpeak = 0;
GCset(4).CH(1).peak(ii).subpeakCH = 0;
GCset(4).CH(1).peak(ii).subpeakf = 1;

ii = 2;
GCset(4).CH(1).peak(ii).name = "O2"; %N2
GCset(4).CH(1).peak(ii).start = 1.3;
GCset(4).CH(1).peak(ii).end = 1.8;
GCset(4).CH(1).peak(ii).curvature = 0.005;
GCset(4).CH(1).peak(ii).offset = 0.0;
GCset(4).CH(1).peak(ii).factor = 0.0;
GCset(4).CH(1).peak(ii).n = 0;
GCset(4).CH(1).peak(ii).subpeak = 3;
GCset(4).CH(1).peak(ii).subpeakCH = 1;
GCset(4).CH(1).peak(ii).subpeakf = 1;

ii = 3;
GCset(4).CH(1).peak(ii).name = "CO";
GCset(4).CH(1).peak(ii).start = 1.5;
GCset(4).CH(1).peak(ii).end = 1.8;
GCset(4).CH(1).peak(ii).curvature = 0.005; % curvature of BG
GCset(4).CH(1).peak(ii).offset = 0.0;
GCset(4).CH(1).peak(ii).factor = 0.003105649;
GCset(4).CH(1).peak(ii).n = 2; % number of electrons
GCset(4).CH(1).peak(ii).subpeak = 0; % subtract area from that peak
GCset(4).CH(1).peak(ii).subpeakCH = 0;
GCset(4).CH(1).peak(ii).subpeakf = 1;

ii = 4;
GCset(4).CH(1).peak(ii).name = "CH4";
GCset(4).CH(1).peak(ii).start = 2.1;
GCset(4).CH(1).peak(ii).end = [2.6,-0.05];
GCset(4).CH(1).peak(ii).curvature = 0.01;
GCset(4).CH(1).peak(ii).offset = 0.0;
GCset(4).CH(1).peak(ii).factor = 0.000838436;
GCset(4).CH(1).peak(ii).n = 8;
GCset(4).CH(1).peak(ii).subpeak = 0;
GCset(4).CH(1).peak(ii).subpeakCH = 0;
GCset(4).CH(1).peak(ii).subpeakf = 1;

ii = 5;
GCset(4).CH(1).peak(ii).name = "C2H4";
GCset(4).CH(1).peak(ii).start = 6;
GCset(4).CH(1).peak(ii).end = 7.8;
GCset(4).CH(1).peak(ii).curvature = 0.01;
GCset(4).CH(1).peak(ii).offset = 0.0;
GCset(4).CH(1).peak(ii).factor = 0.00102994;
GCset(4).CH(1).peak(ii).n = 12;
GCset(4).CH(1).peak(ii).subpeak = 0;
GCset(4).CH(1).peak(ii).subpeakCH = 0;
GCset(4).CH(1).peak(ii).subpeakf = 1;

ii = 6;
GCset(4).CH(1).peak(ii).name = "C2H6";
GCset(4).CH(1).peak(ii).start = 7.6;
GCset(4).CH(1).peak(ii).end = 11;
GCset(4).CH(1).peak(ii).curvature = 0.005;
GCset(4).CH(1).peak(ii).offset = 0.0;
GCset(4).CH(1).peak(ii).factor = 0.000821963;
GCset(4).CH(1).peak(ii).n = 14;
GCset(4).CH(1).peak(ii).subpeak = 0;
GCset(4).CH(1).peak(ii).subpeakCH = 0;
GCset(4).CH(1).peak(ii).subpeakf = 1;

% FID #####################################################################
ii = 1;
GCset(4).CH(2).peak(ii).name = "CH4";
GCset(4).CH(2).peak(ii).start = 1.8;
GCset(4).CH(2).peak(ii).end = 2.9;
GCset(4).CH(2).peak(ii).curvature = 0.005;
GCset(4).CH(2).peak(ii).offset = 0.0;
GCset(4).CH(2).peak(ii).factor = 9.91725E-06;
GCset(4).CH(2).peak(ii).n = 8;
GCset(4).CH(2).peak(ii).subpeak = 0;
GCset(4).CH(2).peak(ii).subpeakCH = 0;
GCset(4).CH(2).peak(ii).subpeakf = 1;

ii = 2;
GCset(4).CH(2).peak(ii).name = "C2H4";
GCset(4).CH(2).peak(ii).start = 6;
GCset(4).CH(2).peak(ii).end = 7.8;
GCset(4).CH(2).peak(ii).curvature = 0.01;
GCset(4).CH(2).peak(ii).offset = 0.0;
GCset(4).CH(2).peak(ii).factor = 5.65585E-06;
GCset(4).CH(2).peak(ii).n = 12;
GCset(4).CH(2).peak(ii).subpeak = 0;
GCset(4).CH(2).peak(ii).subpeakCH = 0;
GCset(4).CH(2).peak(ii).subpeakf = 1;

ii = 3;
GCset(4).CH(2).peak(ii).name = "C2H6";
GCset(4).CH(2).peak(ii).start = 7.6;
GCset(4).CH(2).peak(ii).end = 11;
GCset(4).CH(2).peak(ii).curvature = 0.005;
GCset(4).CH(2).peak(ii).offset = 0.0;
GCset(4).CH(2).peak(ii).factor = 5.4487E-06;
GCset(4).CH(2).peak(ii).n = 14;
GCset(4).CH(2).peak(ii).subpeak = 0;
GCset(4).CH(2).peak(ii).subpeakCH = 0;
GCset(4).CH(2).peak(ii).subpeakf = 1;

%% ########################################################################
numsetting = 5;
GCset(numsetting).type = 'SRI';
GCset(numsetting).name = 'SRI GC Stanford 20/12';

GCset(numsetting).CH(1).name = 'FID';
GCset(numsetting).CH(1).RT_shift = 0;
GCset(numsetting).CH(1).RT_offset = 1.37;
GCset(numsetting).CH(1).RT_edge_start = 1.25;
GCset(numsetting).CH(1).RT_edge_center = 1.7;
GCset(numsetting).CH(1).RT_cutoff = 4100; 

GCset(numsetting).CH(2).name = 'TCD';
GCset(numsetting).CH(2).RT_shift = 0;
GCset(numsetting).CH(2).RT_offset = 1.37;
GCset(numsetting).CH(2).RT_edge_start = 1.25;
GCset(numsetting).CH(2).RT_edge_center = 1.7;
GCset(numsetting).CH(2).RT_cutoff = 4100;

% used for exporting to XLS and TXT
GCset(numsetting).idCO.peak = 1;
GCset(numsetting).idCO.CH = 1;
GCset(numsetting).idCH4.peak = 2;
GCset(numsetting).idCH4.CH = 1;
GCset(numsetting).idC2H4.peak = 3;
GCset(numsetting).idC2H4.CH = 1;
GCset(numsetting).idC2H6.peak = 4;
GCset(numsetting).idC2H6.CH = 1;
GCset(numsetting).idCO2nd.peak = 1;
GCset(numsetting).idCO2nd.CH = 1;
GCset(numsetting).idCH42nd.peak = 2;
GCset(numsetting).idCH42nd.CH = 1;
GCset(numsetting).idH2.peak = 1;
GCset(numsetting).idH2.CH = 2;
GCset(numsetting).idO2.peak = 2;
GCset(numsetting).idO2.CH = 2;

% ### FID #################################################################
ii = 1;
GCset(numsetting).CH(1).peak(ii).name = "MS_O2";
GCset(numsetting).CH(1).peak(ii).start = 0.1;
GCset(numsetting).CH(1).peak(ii).end = 1.3;
GCset(numsetting).CH(1).peak(ii).curvature = 0.02;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 0;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 2;
GCset(numsetting).CH(1).peak(ii).name = "MS_CH4";
GCset(numsetting).CH(1).peak(ii).start = 1.2;
GCset(numsetting).CH(1).peak(ii).end = 2.6;
GCset(numsetting).CH(1).peak(ii).curvature = 0.02;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 8;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 3;
GCset(numsetting).CH(1).peak(ii).name = "MS_CO";
GCset(numsetting).CH(1).peak(ii).start = 2.6;
GCset(numsetting).CH(1).peak(ii).end = 4.4;
GCset(numsetting).CH(1).peak(ii).curvature = 0.02;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 2;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 4;
GCset(numsetting).CH(1).peak(ii).name = "HD_CO";
GCset(numsetting).CH(1).peak(ii).start = 5.1;
GCset(numsetting).CH(1).peak(ii).end = 6.2;
GCset(numsetting).CH(1).peak(ii).curvature = 0.000001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 2;
GCset(numsetting).CH(1).peak(ii).subpeak = 5;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 1;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 5;
GCset(numsetting).CH(1).peak(ii).name = "HD_CH4";
GCset(numsetting).CH(1).peak(ii).start = 5.6;
GCset(numsetting).CH(1).peak(ii).end = 6.2;
GCset(numsetting).CH(1).peak(ii).curvature = 0.000001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 8;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 6;
GCset(numsetting).CH(1).peak(ii).name = "HD_CO2";
GCset(numsetting).CH(1).peak(ii).start = 6.1;
GCset(numsetting).CH(1).peak(ii).end = 7.0;
GCset(numsetting).CH(1).peak(ii).curvature = 0.000001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 0;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 7;
GCset(numsetting).CH(1).peak(ii).name = "HD_C2H4";
GCset(numsetting).CH(1).peak(ii).start = 6.9;
GCset(numsetting).CH(1).peak(ii).end = 7.7;
GCset(numsetting).CH(1).peak(ii).curvature = 0.0001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 12;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 8;
GCset(numsetting).CH(1).peak(ii).name = "HD_C2H6";
GCset(numsetting).CH(1).peak(ii).start = 7.7;
GCset(numsetting).CH(1).peak(ii).end = 8.6;
GCset(numsetting).CH(1).peak(ii).curvature = 0.0001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 14;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

ii = 9;
GCset(numsetting).CH(1).peak(ii).name = "HD_C3H8"; % Propane?
GCset(numsetting).CH(1).peak(ii).start = 10;
GCset(numsetting).CH(1).peak(ii).end = 11.4;
GCset(numsetting).CH(1).peak(ii).curvature = 0.001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 20;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;


ii = 10;
GCset(numsetting).CH(1).peak(ii).name = "HD_C3H6";  % Propylene?
GCset(numsetting).CH(1).peak(ii).start = 11.3;
GCset(numsetting).CH(1).peak(ii).end = 12.5;
GCset(numsetting).CH(1).peak(ii).curvature = 0.000001;
GCset(numsetting).CH(1).peak(ii).offset = 0.0;
GCset(numsetting).CH(1).peak(ii).factor = 0.0;
GCset(numsetting).CH(1).peak(ii).n = 18;
GCset(numsetting).CH(1).peak(ii).subpeak = 0;
GCset(numsetting).CH(1).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(1).peak(ii).subpeakf = 1;

% ### TCD #################################################################
ii = 1;
GCset(numsetting).CH(2).peak(ii).name = "MS_H2";
GCset(numsetting).CH(2).peak(ii).start = 0.50;
GCset(numsetting).CH(2).peak(ii).end = 0.8;
GCset(numsetting).CH(2).peak(ii).curvature = [0.15, 0.05];
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 2;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;
GCset(numsetting).CH(2).peak(ii).BGpoints = 15;


ii = 2;
GCset(numsetting).CH(2).peak(ii).name = "MS_O2";
GCset(numsetting).CH(2).peak(ii).start = 0.7;
GCset(numsetting).CH(2).peak(ii).end = 1.0;
GCset(numsetting).CH(2).peak(ii).curvature = 0.005;
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 0;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;

ii = 3;
GCset(numsetting).CH(2).peak(ii).name = "MS_N2";
GCset(numsetting).CH(2).peak(ii).start = 0.9;
GCset(numsetting).CH(2).peak(ii).end = 1.6;
GCset(numsetting).CH(2).peak(ii).curvature = 0.005;
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 0;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;

ii = 4;
GCset(numsetting).CH(2).peak(ii).name = "MS_CH4";
GCset(numsetting).CH(2).peak(ii).start = 1.5;
GCset(numsetting).CH(2).peak(ii).end = 2.6;
GCset(numsetting).CH(2).peak(ii).curvature = 0.005;
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 8;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;

ii = 5;
GCset(numsetting).CH(2).peak(ii).name = "MS_CO";
GCset(numsetting).CH(2).peak(ii).start = 2.6;
GCset(numsetting).CH(2).peak(ii).end = 4.3;
GCset(numsetting).CH(2).peak(ii).curvature = 0.005;
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 2;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;


ii = 6;
GCset(numsetting).CH(2).peak(ii).name = "HD_H2";
GCset(numsetting).CH(2).peak(ii).start = 5.1;
GCset(numsetting).CH(2).peak(ii).end = 5.37;
GCset(numsetting).CH(2).peak(ii).curvature = [0.002,0.001];
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 2;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;
GCset(numsetting).CH(2).peak(ii).BGpoints = 20;


ii = 7;
GCset(numsetting).CH(2).peak(ii).name = "HD_O2/N2/CO";
GCset(numsetting).CH(2).peak(ii).start = 5.3;
GCset(numsetting).CH(2).peak(ii).end = 5.7;
GCset(numsetting).CH(2).peak(ii).curvature = 0.005;
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 0;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;

ii = 8;
GCset(numsetting).CH(2).peak(ii).name = "HD_CH4";
GCset(numsetting).CH(2).peak(ii).start = 5.6;
GCset(numsetting).CH(2).peak(ii).end = 6.2;
GCset(numsetting).CH(2).peak(ii).curvature = 0.005;
GCset(numsetting).CH(2).peak(ii).offset = 0.0;
GCset(numsetting).CH(2).peak(ii).factor = 0.0;
GCset(numsetting).CH(2).peak(ii).n = 8;
GCset(numsetting).CH(2).peak(ii).subpeak = 0;
GCset(numsetting).CH(2).peak(ii).subpeakCH = 0;
GCset(numsetting).CH(2).peak(ii).subpeakf = 1;
