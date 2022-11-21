package com.badlogic.gdx.backends.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Build;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.audio.AudioDevice;
import com.badlogic.gdx.audio.AudioRecorder;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.audio.Sound;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class DefaultAndroidAudio implements AndroidAudio {

    /* renamed from: a */
    public final SoundPool f3770a;

    /* renamed from: b */
    public final AudioManager f3771b;

    /* renamed from: d */
    public final List<AndroidMusic> f3772d = new ArrayList();

    @Override // com.badlogic.gdx.Audio
    public Music newMusic(FileHandle fileHandle) {
        if (this.f3770a != null) {
            AndroidFileHandle androidFileHandle = (AndroidFileHandle) fileHandle;
            MediaPlayer m24299a = m24299a();
            if (androidFileHandle.type() == Files.FileType.Internal) {
                try {
                    AssetFileDescriptor assetFileDescriptor = androidFileHandle.getAssetFileDescriptor();
                    m24299a.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                    assetFileDescriptor.close();
                    m24299a.prepare();
                    AndroidMusic androidMusic = new AndroidMusic(this, m24299a);
                    synchronized (this.f3772d) {
                        this.f3772d.add(androidMusic);
                    }
                    return androidMusic;
                } catch (Exception e) {
                    throw new GdxRuntimeException("Error loading audio file: " + fileHandle + "\nNote: Internal audio files must be placed in the assets directory.", e);
                }
            }
            try {
                m24299a.setDataSource(androidFileHandle.file().getPath());
                m24299a.prepare();
                AndroidMusic androidMusic2 = new AndroidMusic(this, m24299a);
                synchronized (this.f3772d) {
                    this.f3772d.add(androidMusic2);
                }
                return androidMusic2;
            } catch (Exception e2) {
                throw new GdxRuntimeException("Error loading audio file: " + fileHandle, e2);
            }
        }
        throw new GdxRuntimeException("Android audio is not enabled by the application config.");
    }

    /* renamed from: a */
    public MediaPlayer m24299a() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        if (Build.VERSION.SDK_INT <= 21) {
            mediaPlayer.setAudioStreamType(3);
        } else {
            mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).setUsage(14).build());
        }
        return mediaPlayer;
    }

    public void dispose() {
        if (this.f3770a == null) {
            return;
        }
        synchronized (this.f3772d) {
            Iterator it = new ArrayList(this.f3772d).iterator();
            while (it.hasNext()) {
                ((AndroidMusic) it.next()).dispose();
            }
        }
        this.f3770a.release();
    }

    @Override // com.badlogic.gdx.Audio
    public AudioDevice newAudioDevice(int i, boolean z) {
        if (this.f3770a != null) {
            return new AndroidAudioDevice(i, z);
        }
        throw new GdxRuntimeException("Android audio is not enabled by the application config.");
    }

    @Override // com.badlogic.gdx.Audio
    public AudioRecorder newAudioRecorder(int i, boolean z) {
        if (this.f3770a != null) {
            return new AndroidAudioRecorder(i, z);
        }
        throw new GdxRuntimeException("Android audio is not enabled by the application config.");
    }

    @Override // com.badlogic.gdx.Audio
    public Sound newSound(FileHandle fileHandle) {
        if (this.f3770a != null) {
            AndroidFileHandle androidFileHandle = (AndroidFileHandle) fileHandle;
            if (androidFileHandle.type() == Files.FileType.Internal) {
                try {
                    AssetFileDescriptor assetFileDescriptor = androidFileHandle.getAssetFileDescriptor();
                    SoundPool soundPool = this.f3770a;
                    AndroidSound androidSound = new AndroidSound(soundPool, this.f3771b, soundPool.load(assetFileDescriptor, 1));
                    assetFileDescriptor.close();
                    return androidSound;
                } catch (IOException e) {
                    throw new GdxRuntimeException("Error loading audio file: " + fileHandle + "\nNote: Internal audio files must be placed in the assets directory.", e);
                }
            }
            try {
                SoundPool soundPool2 = this.f3770a;
                return new AndroidSound(soundPool2, this.f3771b, soundPool2.load(androidFileHandle.file().getPath(), 1));
            } catch (Exception e2) {
                throw new GdxRuntimeException("Error loading audio file: " + fileHandle, e2);
            }
        }
        throw new GdxRuntimeException("Android audio is not enabled by the application config.");
    }

    @Override // com.badlogic.gdx.backends.android.AndroidAudio
    public void notifyMusicDisposed(AndroidMusic androidMusic) {
        synchronized (this.f3772d) {
            this.f3772d.remove(this);
        }
    }

    @Override // com.badlogic.gdx.backends.android.AndroidAudio
    public void pause() {
        if (this.f3770a == null) {
            return;
        }
        synchronized (this.f3772d) {
            for (AndroidMusic androidMusic : this.f3772d) {
                if (androidMusic.isPlaying()) {
                    androidMusic.pause();
                    androidMusic.f3733k = true;
                } else {
                    androidMusic.f3733k = false;
                }
            }
        }
        this.f3770a.autoPause();
    }

    @Override // com.badlogic.gdx.backends.android.AndroidAudio
    public void resume() {
        if (this.f3770a == null) {
            return;
        }
        synchronized (this.f3772d) {
            for (int i = 0; i < this.f3772d.size(); i++) {
                if (this.f3772d.get(i).f3733k) {
                    this.f3772d.get(i).play();
                }
            }
        }
        this.f3770a.autoResume();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [android.media.SoundPool$Builder] */
    public DefaultAndroidAudio(Context context, AndroidApplicationConfiguration androidApplicationConfiguration) {
        if (!androidApplicationConfiguration.disableAudio) {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f3770a = new Object() { // from class: android.media.SoundPool$Builder
                    static {
                        throw new NoClassDefFoundError();
                    }

                    public native /* synthetic */ SoundPool build();

                    public native /* synthetic */ SoundPool$Builder setAudioAttributes(AudioAttributes audioAttributes) throws IllegalArgumentException;

                    public native /* synthetic */ SoundPool$Builder setMaxStreams(int i) throws IllegalArgumentException;
                }.setAudioAttributes(new AudioAttributes.Builder().setUsage(14).setContentType(4).build()).setMaxStreams(androidApplicationConfiguration.maxSimultaneousSounds).build();
            } else {
                this.f3770a = new SoundPool(androidApplicationConfiguration.maxSimultaneousSounds, 3, 0);
            }
            this.f3771b = (AudioManager) context.getSystemService("audio");
            if (context instanceof Activity) {
                ((Activity) context).setVolumeControlStream(3);
                return;
            }
            return;
        }
        this.f3770a = null;
        this.f3771b = null;
    }

    public Music newMusic(FileDescriptor fileDescriptor) {
        if (this.f3770a != null) {
            MediaPlayer m24299a = m24299a();
            try {
                m24299a.setDataSource(fileDescriptor);
                m24299a.prepare();
                AndroidMusic androidMusic = new AndroidMusic(this, m24299a);
                synchronized (this.f3772d) {
                    this.f3772d.add(androidMusic);
                }
                return androidMusic;
            } catch (Exception e) {
                throw new GdxRuntimeException("Error loading audio from FileDescriptor", e);
            }
        }
        throw new GdxRuntimeException("Android audio is not enabled by the application config.");
    }
}
