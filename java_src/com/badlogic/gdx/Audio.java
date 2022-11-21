package com.badlogic.gdx;

import com.badlogic.gdx.audio.AudioDevice;
import com.badlogic.gdx.audio.AudioRecorder;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
/* loaded from: classes.dex */
public interface Audio {
    AudioDevice newAudioDevice(int i, boolean z);

    AudioRecorder newAudioRecorder(int i, boolean z);

    Music newMusic(FileHandle fileHandle);

    Sound newSound(FileHandle fileHandle);
}
