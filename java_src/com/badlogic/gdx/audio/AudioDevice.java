package com.badlogic.gdx.audio;

import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public interface AudioDevice extends Disposable {
    @Override // com.badlogic.gdx.utils.Disposable
    void dispose();

    int getLatency();

    boolean isMono();

    void pause();

    void resume();

    void setVolume(float f);

    void writeSamples(float[] fArr, int i, int i2);

    void writeSamples(short[] sArr, int i, int i2);
}
