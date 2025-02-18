#mkdir -p ../ActivitiNet/features/
#video_path=../ActivitiNet/Anet_videos_15fps_short256
#feature_path=../ActivitiNet/features/
#csv_folder=../ActivitiNet/features/

#video_path=/content/drive/MyDrive/Video/Datasets/ActivityNet_Processed_2024/videos/Anet_videos_15fps_short256
#feature_path=/content/drive/MyDrive/Video/Datasets/ActivityNet_Processed_2024/features
#csv_folder=/content/drive/MyDrive/Video/Datasets/ActivityNet_Processed_2024/features


video_path=../videos/pretrain_videos/
feature_path=../videos/pretrain_features/
csv_folder=../videos/pretrain_features/

#video_path=../Datasets/tvsum50_ver_1_1/ydata-tvsum50-v1_1/ydata-tvsum50-video/video
#feature_path=../Datasets/processed/tvsum
#csv_folder=../Datasets/processed/tvsum

mkdir -p $feature_path
mkdir -p $csv_folder

python extract_feature/slowfast/extract_feature/gather_video_paths.py \
--video_path $video_path \
--feature_path $feature_path \
--csv_folder $csv_folder

python extract_slowfast_features.py --csv $csv_folder/slowfast_info.csv \
    --batch_size 1 --num_decoding_thread 1 --clip_len 2