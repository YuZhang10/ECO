
% This demo script runs the ECO tracker with hand-crafted features on the
% included "Crossing" video.

% Add paths
setup_paths();

% Load video information
% video_path = 'sequences/Crossing';
video_path = 'D:/UAVTracking/ECO_testing_code/UAV/bad/0/';
% video_path = 'D:/UAVTracking/ECO_testing_code/UAV/good';
% video_path = 'D:/UAVTracking/ECO_testing_code/UAV/single';
[seq, ground_truth] = load_video_info(video_path);

% Run ECO
results = testing_ECO_HC(seq);
