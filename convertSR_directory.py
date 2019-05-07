import os
import librosa

for (root, dirs, files) in os.walk("."):
    for filename in files:
        if filename.endswith(".wav"):
            new_file = os.path.join(root, filename)
            y, s = librosa.load(new_file, 8000)
            librosa.output.write_wav(new_file, y, 8000)
