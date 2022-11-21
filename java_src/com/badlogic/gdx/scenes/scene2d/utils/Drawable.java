package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.g2d.Batch;
/* loaded from: classes.dex */
public interface Drawable {
    void draw(Batch batch, float f, float f2, float f3, float f4);

    float getBottomHeight();

    float getLeftWidth();

    float getMinHeight();

    float getMinWidth();

    float getRightWidth();

    float getTopHeight();

    void setBottomHeight(float f);

    void setLeftWidth(float f);

    void setMinHeight(float f);

    void setMinWidth(float f);

    void setRightWidth(float f);

    void setTopHeight(float f);
}
