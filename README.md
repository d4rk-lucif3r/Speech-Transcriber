
# Speech-Transcriber
Speech to Text Transcriber

## Installation
	
	pip install -r requirements.txt

## Usage

	./transcribe.sh -m {path to model} -s {path to scorer} -a {path to audio to be transcribed}

Ex: 
    
    
	transcribe.sh -m models/cv_trained.pbmm -s models/cv_scorer.scorer -a audio/0000.wav
