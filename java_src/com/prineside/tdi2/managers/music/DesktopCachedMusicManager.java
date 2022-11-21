package com.prineside.tdi2.managers.music;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.audio.Music;
import com.prineside.tdi2.ibxm.Module;
import com.prineside.tdi2.managers.MusicManager;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = MusicManager.Serializer.class)
/* loaded from: classes2.dex */
public class DesktopCachedMusicManager extends CachedMusicManager {

    /* renamed from: J */
    public Music f10286J;

    /* renamed from: K */
    public Music f10287K;

    @Override // com.prineside.tdi2.managers.music.CachedMusicManager
    public void playCachedMusic(Module module, float f) {
        String str;
        if (module.restartPos != 0) {
            str = CachedMusicManager.m21434q(module, false);
        } else {
            str = null;
        }
        String m21434q = CachedMusicManager.m21434q(module, true);
        if (str == null) {
            Music newMusic = Gdx.audio.newMusic(Gdx.files.local(m21434q));
            this.f10287K = newMusic;
            newMusic.setVolume(f * m21576c());
            this.f10287K.setLooping(true);
            this.f10287K.play();
            return;
        }
        Music newMusic2 = Gdx.audio.newMusic(Gdx.files.local(str));
        this.f10286J = newMusic2;
        newMusic2.setVolume(m21576c() * f);
        Music newMusic3 = Gdx.audio.newMusic(Gdx.files.local(m21434q));
        this.f10287K = newMusic3;
        newMusic3.setVolume(f * m21576c());
        this.f10286J.setOnCompletionListener(new Music.OnCompletionListener() { // from class: com.prineside.tdi2.managers.music.DesktopCachedMusicManager.1
            @Override // com.badlogic.gdx.audio.Music.OnCompletionListener
            public void onCompletion(Music music) {
                DesktopCachedMusicManager.this.f10286J.stop();
                DesktopCachedMusicManager.this.f10286J.dispose();
                DesktopCachedMusicManager.this.f10286J = null;
                DesktopCachedMusicManager.this.f10287K.setLooping(true);
                DesktopCachedMusicManager.this.f10287K.play();
            }
        });
        this.f10287K.play();
        this.f10287K.pause();
        this.f10286J.play();
    }

    @Override // com.prineside.tdi2.managers.MusicManager
    public void setBackendVolume(float f) {
        Music music = this.f10286J;
        if (music != null) {
            music.setVolume(m21576c() * f);
        }
        Music music2 = this.f10287K;
        if (music2 != null) {
            music2.setVolume(f * m21576c());
        }
    }

    @Override // com.prineside.tdi2.managers.music.CachedMusicManager, com.prineside.tdi2.managers.MusicManager
    public void stopMusic() {
        Music music = this.f10286J;
        if (music != null) {
            music.stop();
            this.f10286J.dispose();
            this.f10286J = null;
        }
        Music music2 = this.f10287K;
        if (music2 != null) {
            music2.stop();
            this.f10287K.dispose();
            this.f10287K = null;
        }
        super.stopMusic();
    }
}
