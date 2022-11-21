package com.badlogic.gdx.backends.android;

import android.media.AudioRecord;
import com.badlogic.gdx.audio.AudioRecorder;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class AndroidAudioRecorder implements AudioRecorder {

    /* renamed from: a */
    public AudioRecord f3597a;

    @Override // com.badlogic.gdx.audio.AudioRecorder
    public void read(short[] sArr, int i, int i2) {
        int i3 = 0;
        while (i3 != i2) {
            i3 += this.f3597a.read(sArr, i + i3, i2 - i3);
        }
    }

    @Override // com.badlogic.gdx.audio.AudioRecorder, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f3597a.stop();
        this.f3597a.release();
    }

    public AndroidAudioRecorder(int i, boolean z) {
        int i2;
        if (z) {
            i2 = 16;
        } else {
            i2 = 12;
        }
        AudioRecord audioRecord = new AudioRecord(1, i, i2, 2, AudioRecord.getMinBufferSize(i, i2, 2));
        this.f3597a = audioRecord;
        if (audioRecord.getState() == 1) {
            this.f3597a.startRecording();
            return;
        }
        throw new GdxRuntimeException("Unable to initialize AudioRecorder.\nDo you have the RECORD_AUDIO permission?");
    }
}
