package com.badlogic.gdx.backends.android;

import android.media.AudioManager;
import android.media.SoundPool;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.utils.IntArray;
/* loaded from: classes.dex */
final class AndroidSound implements Sound {

    /* renamed from: a */
    public final SoundPool f3741a;

    /* renamed from: b */
    public final AudioManager f3742b;

    /* renamed from: d */
    public final int f3743d;

    /* renamed from: k */
    public final IntArray f3744k = new IntArray(8);

    @Override // com.badlogic.gdx.audio.Sound, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f3741a.unload(this.f3743d);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop() {
        return loop(1.0f);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void pause() {
        this.f3741a.autoPause();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play() {
        return play(1.0f);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void resume() {
        this.f3741a.autoResume();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setLooping(long j, boolean z) {
        int i;
        int i2 = (int) j;
        this.f3741a.pause(i2);
        SoundPool soundPool = this.f3741a;
        if (z) {
            i = -1;
        } else {
            i = 0;
        }
        soundPool.setLoop(i2, i);
        if (z) {
            this.f3741a.setPriority(i2, 2);
        } else {
            this.f3741a.setPriority(i2, 1);
        }
        this.f3741a.resume(i2);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setPitch(long j, float f) {
        this.f3741a.setRate((int) j, f);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setVolume(long j, float f) {
        this.f3741a.setVolume((int) j, f, f);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void stop() {
        int i = this.f3744k.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3741a.stop(this.f3744k.get(i2));
        }
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop(float f) {
        IntArray intArray = this.f3744k;
        if (intArray.size == 8) {
            intArray.pop();
        }
        int play = this.f3741a.play(this.f3743d, f, f, 2, -1, 1.0f);
        if (play == 0) {
            return -1L;
        }
        this.f3744k.insert(0, play);
        return play;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void pause(long j) {
        this.f3741a.pause((int) j);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play(float f) {
        IntArray intArray = this.f3744k;
        if (intArray.size == 8) {
            intArray.pop();
        }
        int play = this.f3741a.play(this.f3743d, f, f, 1, 0, 1.0f);
        if (play == 0) {
            return -1L;
        }
        this.f3744k.insert(0, play);
        return play;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void resume(long j) {
        this.f3741a.resume((int) j);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setPan(long j, float f, float f2) {
        float f3;
        if (f < 0.0f) {
            f3 = (1.0f - Math.abs(f)) * f2;
        } else if (f > 0.0f) {
            f3 = f2;
            f2 = (1.0f - Math.abs(f)) * f2;
        } else {
            f3 = f2;
        }
        this.f3741a.setVolume((int) j, f2, f3);
    }

    public AndroidSound(SoundPool soundPool, AudioManager audioManager, int i) {
        this.f3741a = soundPool;
        this.f3742b = audioManager;
        this.f3743d = i;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void stop(long j) {
        this.f3741a.stop((int) j);
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop(float f, float f2, float f3) {
        float f4;
        float f5;
        IntArray intArray = this.f3744k;
        if (intArray.size == 8) {
            intArray.pop();
        }
        if (f3 < 0.0f) {
            f4 = f;
            f5 = (1.0f - Math.abs(f3)) * f;
        } else if (f3 > 0.0f) {
            f5 = f;
            f4 = (1.0f - Math.abs(f3)) * f;
        } else {
            f4 = f;
            f5 = f4;
        }
        int play = this.f3741a.play(this.f3743d, f4, f5, 2, -1, f2);
        if (play == 0) {
            return -1L;
        }
        this.f3744k.insert(0, play);
        return play;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play(float f, float f2, float f3) {
        float f4;
        float f5;
        IntArray intArray = this.f3744k;
        if (intArray.size == 8) {
            intArray.pop();
        }
        if (f3 < 0.0f) {
            f4 = f;
            f5 = (1.0f - Math.abs(f3)) * f;
        } else if (f3 > 0.0f) {
            f5 = f;
            f4 = (1.0f - Math.abs(f3)) * f;
        } else {
            f4 = f;
            f5 = f4;
        }
        int play = this.f3741a.play(this.f3743d, f4, f5, 1, 0, f2);
        if (play == 0) {
            return -1L;
        }
        this.f3744k.insert(0, play);
        return play;
    }
}
