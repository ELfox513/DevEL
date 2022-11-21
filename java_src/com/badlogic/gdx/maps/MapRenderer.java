package com.badlogic.gdx.maps;

import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.math.Matrix4;
/* loaded from: classes.dex */
public interface MapRenderer {
    void render();

    void render(int[] iArr);

    void setView(OrthographicCamera orthographicCamera);

    void setView(Matrix4 matrix4, float f, float f2, float f3, float f4);
}
