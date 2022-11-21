package com.badlogic.gdx.audio;

import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public interface Music extends Disposable {

    /* loaded from: classes.dex */
    public interface OnCompletionListener {
        void onCompletion(Music music);
    }

    @Override // com.badlogic.gdx.utils.Disposable
    void dispose();

    float getPosition();

    float getVolume();

    boolean isLooping();

    boolean isPlaying();

    void pause();

    void play();

    void setLooping(boolean z);

    void setOnCompletionListener(OnCompletionListener onCompletionListener);

    void setPan(float f, float f2);

    void setPosition(float f);

    void setVolume(float f);

    void stop();
}
