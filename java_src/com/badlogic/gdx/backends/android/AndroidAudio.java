package com.badlogic.gdx.backends.android;

import com.badlogic.gdx.Audio;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public interface AndroidAudio extends Audio, Disposable {
    void notifyMusicDisposed(AndroidMusic androidMusic);

    void pause();

    void resume();
}
