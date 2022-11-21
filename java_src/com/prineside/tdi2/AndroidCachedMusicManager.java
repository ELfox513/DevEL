package com.prineside.tdi2;

import android.media.MediaPlayer;
import com.badlogic.gdx.Gdx;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.music.CachedMusicManager;
/* loaded from: classes2.dex */
public class AndroidCachedMusicManager extends CachedMusicManager {

    /* renamed from: J */
    public CachedAndroidMusic f8405J;

    /* renamed from: K */
    public CachedAndroidMusic f8406K;

    /* renamed from: L */
    public CachedAndroidMusic f8407L;

    /* renamed from: M */
    public float f8408M;

    /* renamed from: N */
    public final MediaPlayer.OnCompletionListener f8409N = new MediaPlayer.OnCompletionListener() { // from class: com.prineside.tdi2.AndroidCachedMusicManager.1
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            AndroidCachedMusicManager.this.f8406K.dispose();
            AndroidCachedMusicManager androidCachedMusicManager = AndroidCachedMusicManager.this;
            androidCachedMusicManager.f8406K = new CachedAndroidMusic(androidCachedMusicManager.f8407L.fileHandle);
            AndroidCachedMusicManager androidCachedMusicManager2 = AndroidCachedMusicManager.this;
            androidCachedMusicManager2.f8406K.player.setOnCompletionListener(androidCachedMusicManager2.f8409N);
            AndroidCachedMusicManager androidCachedMusicManager3 = AndroidCachedMusicManager.this;
            androidCachedMusicManager3.f8407L.player.setNextMediaPlayer(androidCachedMusicManager3.f8406K.player);
        }
    };

    /* renamed from: O */
    public final MediaPlayer.OnCompletionListener f8410O = new MediaPlayer.OnCompletionListener() { // from class: com.prineside.tdi2.AndroidCachedMusicManager.2
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            AndroidCachedMusicManager.this.f8407L.dispose();
            AndroidCachedMusicManager androidCachedMusicManager = AndroidCachedMusicManager.this;
            androidCachedMusicManager.f8407L = new CachedAndroidMusic(androidCachedMusicManager.f8406K.fileHandle);
            AndroidCachedMusicManager androidCachedMusicManager2 = AndroidCachedMusicManager.this;
            androidCachedMusicManager2.f8407L.player.setOnCompletionListener(androidCachedMusicManager2.f8410O);
            AndroidCachedMusicManager androidCachedMusicManager3 = AndroidCachedMusicManager.this;
            androidCachedMusicManager3.f8406K.player.setNextMediaPlayer(androidCachedMusicManager3.f8407L.player);
        }
    };

    @Override // com.prineside.tdi2.managers.music.CachedMusicManager
    public void playCachedMusic(Module module, float f) {
        String str;
        if (module.restartPos != 0) {
            str = CachedMusicManager.m21434q(module, false);
        } else {
            str = null;
        }
        String m21434q = CachedMusicManager.m21434q(module, true);
        this.f8406K = new CachedAndroidMusic(Gdx.files.local(m21434q));
        CachedAndroidMusic cachedAndroidMusic = new CachedAndroidMusic(Gdx.files.local(m21434q));
        this.f8407L = cachedAndroidMusic;
        this.f8406K.player.setNextMediaPlayer(cachedAndroidMusic.player);
        this.f8406K.player.setOnCompletionListener(this.f8409N);
        this.f8406K.setVolume(f);
        this.f8407L.setVolume(f);
        if (str == null) {
            this.f8406K.play();
            this.f8406K.setVolume(f);
            return;
        }
        CachedAndroidMusic cachedAndroidMusic2 = new CachedAndroidMusic(Gdx.files.local(str));
        this.f8405J = cachedAndroidMusic2;
        cachedAndroidMusic2.player.setNextMediaPlayer(this.f8406K.player);
        this.f8405J.play();
        this.f8405J.setVolume(f);
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public void setBackendVolume(float f) {
        CachedAndroidMusic cachedAndroidMusic = this.f8405J;
        if (cachedAndroidMusic != null) {
            cachedAndroidMusic.setVolume(f);
        }
        CachedAndroidMusic cachedAndroidMusic2 = this.f8406K;
        if (cachedAndroidMusic2 != null) {
            cachedAndroidMusic2.setVolume(f);
        }
        CachedAndroidMusic cachedAndroidMusic3 = this.f8407L;
        if (cachedAndroidMusic3 != null) {
            cachedAndroidMusic3.setVolume(f);
        }
        this.f8408M = f;
    }

    @Override // com.prineside.tdi2.managers.music.CachedMusicManager, com.prineside.tdi2.managers.MusicManager
    public void stopMusic() {
        CachedAndroidMusic cachedAndroidMusic = this.f8405J;
        if (cachedAndroidMusic != null) {
            cachedAndroidMusic.stop();
            this.f8405J.dispose();
            this.f8405J = null;
        }
        CachedAndroidMusic cachedAndroidMusic2 = this.f8406K;
        if (cachedAndroidMusic2 != null) {
            cachedAndroidMusic2.stop();
            this.f8406K.dispose();
            this.f8406K = null;
        }
        CachedAndroidMusic cachedAndroidMusic3 = this.f8407L;
        if (cachedAndroidMusic3 != null) {
            cachedAndroidMusic3.stop();
            this.f8407L.dispose();
            this.f8407L = null;
        }
        super.stopMusic();
    }
}
