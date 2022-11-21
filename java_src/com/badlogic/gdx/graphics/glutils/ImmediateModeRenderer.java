package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Matrix4;
/* loaded from: classes.dex */
public interface ImmediateModeRenderer {
    void begin(Matrix4 matrix4, int i);

    void color(float f);

    void color(float f, float f2, float f3, float f4);

    void color(Color color);

    void dispose();

    void end();

    void flush();

    int getMaxVertices();

    int getNumVertices();

    void normal(float f, float f2, float f3);

    void texCoord(float f, float f2);

    void vertex(float f, float f2, float f3);
}
