package com.prineside.tdi2;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.backends.android.AndroidFileHandle;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.utils.REGS;
import java.io.IOException;
@REGS(serializer = MusicManager.Serializer.class)
/* loaded from: classes2.dex */
public class CachedAndroidMusic implements Music {
    public AndroidFileHandle fileHandle;
    public boolean isPrepared = true;
    public boolean wasPlaying = false;

    /* renamed from: a */
    public float f8477a = 1.0f;
    public MediaPlayer player = new MediaPlayer();

    @Override // com.badlogic.gdx.audio.Music
    public float getVolume() {
        return this.f8477a;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setLooping(boolean z) {
        this.player.setLooping(z);
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setOnCompletionListener(Music.OnCompletionListener onCompletionListener) {
    }

    @Override // com.badlogic.gdx.audio.Music, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            try {
                mediaPlayer.release();
            } finally {
                this.player = null;
            }
        } catch (Throwable unused) {
            Gdx.app.log("AndroidMusic", "error while disposing AndroidMusic instance, non-fatal");
        }
    }

    public float getDuration() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return 0.0f;
        }
        return mediaPlayer.getDuration() / 1000.0f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public float getPosition() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return 0.0f;
        }
        return mediaPlayer.getCurrentPosition() / 1000.0f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public boolean isLooping() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            return mediaPlayer.isLooping();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public boolean isPlaying() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return false;
        }
        try {
            return mediaPlayer.isPlaying();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void pause() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (mediaPlayer.isPlaying()) {
                this.player.pause();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.wasPlaying = false;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void play() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (mediaPlayer.isPlaying()) {
                return;
            }
            try {
                if (!this.isPrepared) {
                    this.player.prepare();
                    this.isPrepared = true;
                }
                this.player.start();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (IllegalStateException e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setPan(float f, float f2) {
        float f3;
        float f4;
        if (this.player == null) {
            return;
        }
        if (f < 0.0f) {
            f3 = (1.0f - StrictMath.abs(f)) * f2;
            f4 = f2;
        } else if (f > 0.0f) {
            f4 = (1.0f - StrictMath.abs(f)) * f2;
            f3 = f2;
        } else {
            f3 = f2;
            f4 = f3;
        }
        this.player.setVolume(f4, f3);
        this.f8477a = f2;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setPosition(float f) {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        try {
            if (!this.isPrepared) {
                mediaPlayer.prepare();
                this.isPrepared = true;
            }
            this.player.seekTo((int) (f * 1000.0f));
        } catch (IOException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.badlogic.gdx.audio.Music
    public void setVolume(float f) {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        mediaPlayer.setVolume(f, f);
        this.f8477a = f;
    }

    @Override // com.badlogic.gdx.audio.Music
    public void stop() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer == null) {
            return;
        }
        if (this.isPrepared) {
            mediaPlayer.seekTo(0);
        }
        this.player.stop();
        this.isPrepared = false;
    }

    public CachedAndroidMusic(FileHandle fileHandle) {
        this.fileHandle = (AndroidFileHandle) fileHandle;
        if (this.fileHandle.type() == Files.FileType.Internal) {
            try {
                AssetFileDescriptor assetFileDescriptor = this.fileHandle.getAssetFileDescriptor();
                this.player.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                assetFileDescriptor.close();
                this.player.prepare();
                return;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error loading audio file: " + this.fileHandle + "\nNote: Internal audio files must be placed in the assets directory.", e);
            }
        }
        try {
            this.player.setDataSource(this.fileHandle.file().getPath());
            this.player.prepare();
        } catch (Exception e2) {
            throw new GdxRuntimeException("Error loading audio file: " + this.fileHandle, e2);
        }
    }
}
