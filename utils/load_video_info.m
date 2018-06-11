function [seq, ground_truth] = load_video_info(video_path, UAV_cnt)

seq.init_rect=[];
for No=1:length(UAV_cnt)
	ground_truth = dlmread([video_path,'/groundtruth_rect_',num2str(UAV_cnt(No)),'.txt']);
	seq.init_rect = [seq.init_rect;ground_truth(1,:)];
seq.format = 'otb';
seq.len = size(ground_truth, 1);

img_path = [video_path '/img/'];

if exist([img_path num2str(1, '%04i.png')], 'file'),
    img_files = num2str((1:seq.len)', [img_path '%04i.png']);
elseif exist([img_path num2str(1, '%04i.jpg')], 'file'),
    img_files = num2str((1:seq.len)', [img_path '%04i.jpg']);
elseif exist([img_path num2str(1, '%04i.bmp')], 'file'),
    img_files = num2str((1:seq.len)', [img_path '%04i.bmp']);
else
    error('No image files to load.')
end

seq.s_frames = cellstr(img_files);

end

