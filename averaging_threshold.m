function averaging_threshold(subNo)
%------------------------------------------
% SCRIPT HEADER
%------------------------------------------
try
    %---------------------
    % variable configuration:
    [Prepair, Stimuli] = config(subNo);
    %---------------------
    % folder and ptb setup:
    [Pointers, Response] = setup(subNo, Prepair);
    %---------------------
    % call practice procedure
    PARENT_practiceLoop(Pointers, Stimuli, Response, Prepair);
    %---------------------
    % call staircasing procedure 
    threshold = PARENT_staircaseMain(subNo, Pointers, Response, Prepair, Stimuli); % 1.5; 1.045; 0.85; 1.32
    %threshold = 1.7;
    %noisecentering(Stimuli, Pointers);
    %---------------------
    % call main experimental procedure  
    PARENT_trialLoop(Pointers, Stimuli, Response, Prepair, threshold);       
	%---------------------
    % clean up:
    cleanup();
    %---------------------
catch ME
    disp( getReport(ME,'extended') );
    cleanup();    % clean up:
end
%------------------------------------------