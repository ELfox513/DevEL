package com.badlogic.gdx.backends.android;

import android.media.AudioTrack;
import com.badlogic.gdx.audio.AudioDevice;
/* loaded from: classes.dex */
class AndroidAudioDevice implements AudioDevice {

    /* renamed from: a */
    public final AudioTrack f3593a;

    /* renamed from: b */
    public short[] f3594b = new short[1024];

    /* renamed from: d */
    public final boolean f3595d;

    /* renamed from: k */
    public final int f3596k;

    @Override // com.badlogic.gdx.audio.AudioDevice
    public int getLatency() {
        return this.f3596k;
    }

    @Override // com.badlogic.gdx.audio.AudioDevice
    public boolean isMono() {
        return this.f3595d;
    }

    @Override // com.badlogic.gdx.audio.AudioDevice
    public void pause() {
        if (this.f3593a.getPlayState() == 3) {
            this.f3593a.pause();
        }
    }

    @Override // com.badlogic.gdx.audio.AudioDevice
    public void resume() {
        if (this.f3593a.getPlayState() == 2) {
            this.f3593a.play();
        }
    }

    @Override // com.badlogic.gdx.audio.AudioDevice
    public void setVolume(float f) {
        this.f3593a.setStereoVolume(f, f);
    }

    @Override // com.badlogic.gdx.audio.AudioDevice
    public void writeSamples(short[] sArr, int i, int i2) {
        int write = this.f3593a.write(sArr, i, i2);
        while (write != i2) {
            write += this.f3593a.write(sArr, i + write, i2 - write);
        }
    }

    @Override // com.badlogic.gdx.audio.AudioDevice, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f3593a.stop();
        this.f3593a.release();
    }

    public AndroidAudioDevice(int i, boolean z) {
        int i2;
        int i3;
        this.f3595d = z;
        if (z) {
            i2 = 4;
        } else {
            i2 = 12;
        }
        int minBufferSize = AudioTrack.getMinBufferSize(i, i2, 2);
        if (z) {
            i3 = 4;
        } else {
            i3 = 12;
        }
        AudioTrack audioTrack = new AudioTrack(3, i, i3, 2, minBufferSize, 1);
        this.f3593a = audioTrack;
        audioTrack.play();
        this.f3596k = minBufferSize / (z ? 1 : 2);
    }

    @Override // com.badlogic.gdx.audio.AudioDevice
    public void writeSamples(float[] fArr, int i, int i2) {
        if (this.f3594b.length < fArr.length) {
            this.f3594b = new short[fArr.length];
        }
        int i3 = i + i2;
        int i4 = 0;
        while (i < i3) {
            float f = fArr[i];
            if (f > 1.0f) {
                f = 1.0f;
            }
            if (f < -1.0f) {
                f = -1.0f;
            }
            this.f3594b[i4] = (short) (f * 32767.0f);
            i++;
            i4++;
        }
        int write = this.f3593a.write(this.f3594b, 0, i2);
        while (write != i2) {
            write += this.f3593a.write(this.f3594b, write, i2 - write);
        }
    }
}
