package com.badlogic.gdx.backends.android;

import android.os.Handler;
import com.badlogic.gdx.audio.Sound;
/* loaded from: classes.dex */
public class AsynchronousSound implements Sound {

    /* renamed from: a */
    public final Sound f3754a;

    /* renamed from: b */
    public final Handler f3755b;

    @Override // com.badlogic.gdx.audio.Sound, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f3754a.dispose();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop() {
        this.f3755b.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AsynchronousSound.4
            @Override // java.lang.Runnable
            public void run() {
                AsynchronousSound.this.f3754a.loop();
            }
        });
        return 0L;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void pause() {
        this.f3754a.pause();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play() {
        this.f3755b.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AsynchronousSound.1
            @Override // java.lang.Runnable
            public void run() {
                AsynchronousSound.this.f3754a.play();
            }
        });
        return 0L;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void resume() {
        this.f3754a.resume();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setLooping(long j, boolean z) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setPan(long j, float f, float f2) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setPitch(long j, float f) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void setVolume(long j, float f) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void stop() {
        this.f3754a.stop();
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop(final float f) {
        this.f3755b.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AsynchronousSound.5
            @Override // java.lang.Runnable
            public void run() {
                AsynchronousSound.this.f3754a.loop(f);
            }
        });
        return 0L;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void pause(long j) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play(final float f) {
        this.f3755b.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AsynchronousSound.2
            @Override // java.lang.Runnable
            public void run() {
                AsynchronousSound.this.f3754a.play(f);
            }
        });
        return 0L;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void resume(long j) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    @Override // com.badlogic.gdx.audio.Sound
    public void stop(long j) {
        throw new UnsupportedOperationException("Asynchronous audio doesn't support sound id based operations.");
    }

    public AsynchronousSound(Sound sound, Handler handler) {
        this.f3754a = sound;
        this.f3755b = handler;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long loop(final float f, final float f2, final float f3) {
        this.f3755b.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AsynchronousSound.6
            @Override // java.lang.Runnable
            public void run() {
                AsynchronousSound.this.f3754a.loop(f, f2, f3);
            }
        });
        return 0L;
    }

    @Override // com.badlogic.gdx.audio.Sound
    public long play(final float f, final float f2, final float f3) {
        this.f3755b.post(new Runnable() { // from class: com.badlogic.gdx.backends.android.AsynchronousSound.3
            @Override // java.lang.Runnable
            public void run() {
                AsynchronousSound.this.f3754a.play(f, f2, f3);
            }
        });
        return 0L;
    }
}
