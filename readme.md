# SlowFast, CLIP, and BLIP Feature extractor
Using this project, you can easily extract video features from raw videos using SlowFast, CLIP, and BLIP pre-trained backbones. 

## Getting Started 

### Prerequisites
0. Clone this repo

```
git clone https://github.com/dpaul06/FeatureExtractor.git
cd FeatureExtractor
```

1. SlowFast checkpoint file 

Download [SLOWFAST_8x8_R50.pkl](https://drive.google.com/file/d/1V9yCiXS3WYtMQqfczVJab_4Wx8Z-1RAI/view?usp=sharing) (264MB), 
and save it under `./extract_feature/slowfast/checkpoints` directory.

2. Install dependencies.

This code requires Python 3.10, PyTorch, and a few other Python libraries. 
We recommend creating conda environment and installing all the dependencies as follows:
```bash
# install ffmpeg, i.e. - for Ubuntu
sudo apt install ffmpeg

# create conda env
conda create --name FeatureExtractor python=3.10
# activate env
conda actiavte FeatureExtractor
# install pytorch with CUDA 12.4
conda install pytorch torchvision torchaudio torchtext cudatoolkit pytorch-cuda=12.4 -c pytorch -c nvidia
# install all deoendencies
pip install -r requirements.txt
```

### Extracting Feature
To extract features, you need to update video directory and feaure directory in `extract_slowfast_features.sh`

```bash
video_path=../Videos/Test/
feature_path=../videos/Test/tf
csv_folder=../videos/Test/tf
```
then run the script like below and you are all done.. 😊 😊

```bash
./extract_slowfast_features.sh
```

## Acknowledgement
This code is based on [HERO_Video_Feature_Extractor](https://github.com/linjieli222/HERO_Video_Feature_Extractor), [moment-detr](https://github.com/jayleicn/moment_detr), and [LAVIS](https://github.com/salesforce/LAVIS)
