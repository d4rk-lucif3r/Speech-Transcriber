
# Speech-Transcriber
Speech to Text Transcriber

## Installation
	
	pip install -r requirements.txt

## Usage

	./transcribe.sh -m {path to model} -s {path to scorer} -a {path to audio to be transcribed}

## Note: Download Scorer from [here](https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer)

Ex: 
    
    
	transcribe.sh -m models/cv_trained.pbmm -s models/cv_scorer.scorer -a audio/0000.wav
	
## Training of DeepSpeech

1) Clone DeepSpeech repo from [here](https://github.com/mozilla/DeepSpeech)
2) Download Checkpoints from [here](https://github.com/mozilla/DeepSpeech/releases/tag/v0.9.3)

	- Commands

		!python3 DeepSpeech.py --train_cudnn True --early_stop True --es_epochs 6 --n_hidden 2048 --epochs 30 \
			  --export_dir /content/models/ --checkpoint_dir /content/model_checkpoints/ \
			  --train_files /content/train.csv --dev_files /content/dev.csv --test_files /content/test.csv \
			  --learning_rate 0.0001 --train_batch_size 64 --test_batch_size 32 --dev_batch_size 32 --export_file_name 'ft_model' \
			  --augment reverb[p=0.2,delay=50.0~30.0,decay=10.0:2.0~1.0] \
			  --augment volume[p=0.2,dbfs=-10:-40] \
			  --augment pitch[p=0.2,pitch=1~0.2] \
			  --augment tempo[p=0.2,factor=1~0.5] 
