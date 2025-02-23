# Gentle
**Robust yet lenient forced-aligner built on Kaldi. A tool for aligning speech with text.**

## Getting Started

There are three ways to install Gentle.

1. Download the [pre-built Mac application](https://github.com/lowerquality/gentle/releases/latest). This package includes a GUI that will start the server and a browser. It only works on Mac OS.

2. Use the [Docker](https://www.docker.com/) image. Just run ```docker run -P lowerquality/gentle```. This works on all platforms supported by Docker.

3. Download the source code and run ```./install.sh```. Then run ```python3 serve.py``` to start the server. This works on Mac and Linux.

## Using Gentle

By default, the aligner listens at http://localhost:8765. That page has a graphical interface for transcribing audio, viewing results, and downloading data.

There is also a REST API so you can use Gentle in your programs. Here's an example of how to use the API with CURL:

```bash
curl -F "audio=@audio.mp3" -F "transcript=@words.txt" "http://localhost:8765/transcriptions?async=false"
```

If you've downloaded the source code you can also run the aligner as a command line program:

```bash
git clone --recurse-submodules https://github.com/muranava/gentle.git
cd gentle
./install.sh
python3 align.py audio.mp3 words.txt
```
If you need to install openfst, first 
```
cd ext/kaldi/tools/ 
```
then 
```
wget http://www.openfst.org/twiki/pub/FST/FstDownload/openfst-1.6.5.tar.gz 
```
after untar file
```
tar -xf openfst-1.6.5.tar.gz
```
next
```
cd openfst-1.6.5
```
and follow make instructions here - https://aghriss.github.io/posts/2018/01/01/OpenFSTubuntu.html

The default behaviour outputs the JSON to stdout.  See `python3 align.py --help` for options.
