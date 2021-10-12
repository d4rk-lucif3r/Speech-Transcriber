
# Speech-Transcriber
Speech to Text Transcriber

## Installation
	
	pip install -r requirements.txt

## Usage

	./transcribe.sh -m {path to model} -s {path to scorer} -a {path to audio to be transcribed}

## Note: Download Scorer from [here](https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer)

Ex: 
    
    
	transcribe.sh -m models/cv_trained.pbmm -s models/cv_scorer.scorer -a audio/0000.wav
