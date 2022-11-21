package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.utils.Disposable;
import java.nio.ShortBuffer;
/* loaded from: classes.dex */
public interface IndexData extends Disposable {
    void bind();

    @Override // com.badlogic.gdx.utils.Disposable
    void dispose();

    ShortBuffer getBuffer();

    int getNumIndices();

    int getNumMaxIndices();

    void invalidate();

    void setIndices(ShortBuffer shortBuffer);

    void setIndices(short[] sArr, int i, int i2);

    void unbind();

    void updateIndices(int i, short[] sArr, int i2, int i3);
}
