package com.badlogic.gdx.backends.android;

import android.media.MediaPlayer;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import java.io.IOException;
/* loaded from: classes.dex */
public class AndroidMusic implements Music, MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    public final AndroidAudio f3730a;

    /* renamed from: b */
    public MediaPlayer f3731b;

    /* renamed from: d */
    public boolean f3732d = true;

    /* renamed from: k */
    public boolean f3733k = false;

    /* renamed from: p */
    public float f3734p = 1.0f;

    /* renamed from: q */
    public Music.OnCompletionListener f3735q = null;

    @Override // com.badlogic.gdx.audio.Music
    public float getVolume() {
        return this.f3734p;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setOnCompletionListener(Music.OnCompletionListener onCompletionListener) {
        this.f3735q = onCompletionListener;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.media.MediaPlayer, com.badlogic.gdx.audio.Music$OnCompletionListener] */
    @Override // com.badlogic.gdx.audio.Music, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        try {
            try {
                mediaPlayer.release();
            } catch (Throwable unused) {
                Gdx.app.log("AndroidMusic", "error while disposing AndroidMusic instance, non-fatal");
            }
        } finally {
            this.f3731b = null;
            this.f3735q = null;
            this.f3730a.notifyMusicDisposed(this);
        }
    }

    public float getDuration() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return 0.0f;
        }
        return mediaPlayer.getDuration() / 1000.0f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public float getPosition() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return 0.0f;
        }
        return mediaPlayer.getCurrentPosition() / 1000.0f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public boolean isLooping() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            return mediaPlayer.isLooping();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            return mediaPlayer.isPlaying();
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.f3735q != null) {
            Gdx.app.postRunnable(new Runnable() { // from class: com.badlogic.gdx.backends.android.AndroidMusic.1
                @Override // java.lang.Runnable
                public void run() {
                    AndroidMusic androidMusic = AndroidMusic.this;
                    Music.OnCompletionListener onCompletionListener = androidMusic.f3735q;
                    if (onCompletionListener != null) {
                        onCompletionListener.onCompletion(androidMusic);
                    }
                }
            });
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void pause() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (mediaPlayer.isPlaying()) {
                this.f3731b.pause();
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
        this.f3733k = false;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void play() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (!this.f3732d) {
                mediaPlayer.prepare();
                this.f3732d = true;
            }
            this.f3731b.start();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setLooping(boolean z) {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setLooping(z);
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setPan(float f, float f2) {
        float f3;
        float f4;
        if (this.f3731b == null) {
            return;
        }
        if (f < 0.0f) {
            f3 = (1.0f - Math.abs(f)) * f2;
            f4 = f2;
        } else if (f > 0.0f) {
            f4 = (1.0f - Math.abs(f)) * f2;
            f3 = f2;
        } else {
            f3 = f2;
            f4 = f3;
        }
        this.f3731b.setVolume(f4, f3);
        this.f3734p = f2;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setPosition(float f) {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (!this.f3732d) {
                mediaPlayer.prepare();
                this.f3732d = true;
            }
            this.f3731b.seekTo((int) (f * 1000.0f));
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setVolume(float f) {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(f, f);
        this.f3734p = f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void stop() {
        MediaPlayer mediaPlayer = this.f3731b;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.stop();
        this.f3732d = false;
    }

    public AndroidMusic(AndroidAudio androidAudio, MediaPlayer mediaPlayer) {
        this.f3730a = androidAudio;
        this.f3731b = mediaPlayer;
        mediaPlayer.setOnCompletionListener(this);
    }
}
