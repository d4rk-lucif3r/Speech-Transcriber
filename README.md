
# Transcriptaur

Transcriptaur is a Speech to Text Transcriber based on [Mozilla's DeepSpeech Model](https://github.com/mozilla/DeepSpeech). It has been trained on 3 datasets using Transfer Learning:

1) [Common Voice English](https://commonvoice.mozilla.org/en/datasets)
2) [LibriSpeech ASR Corpus](https://www.openslr.org/12/)
3) [Indic TTS Dataset by IITM](https://www.iitm.ac.in/donlab/tts/database.php)


## Installation
	
	pip install -r requirements.txt

## Usage

	./transcribe.sh -m {path to model} -s {path to scorer} -a {path to audio to be transcribed}

## Ex: 
	./transcribe.sh -m models/cv_trained.pbmm -s models/cv_scorer.scorer -a audio/0000.wav

## Note: Download Scorer from [here](https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.scorer)
