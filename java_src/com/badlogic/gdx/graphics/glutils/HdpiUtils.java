package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
/* loaded from: classes.dex */
public class HdpiUtils {

    /* renamed from: a */
    public static HdpiMode f5017a = HdpiMode.Logical;

    public static void setMode(HdpiMode hdpiMode) {
        f5017a = hdpiMode;
    }

    public static int toBackBufferX(int i) {
        return (int) ((i * Gdx.graphics.getBackBufferWidth()) / Gdx.graphics.getWidth());
    }

    public static int toBackBufferY(int i) {
        return (int) ((i * Gdx.graphics.getBackBufferHeight()) / Gdx.graphics.getHeight());
    }

    public static int toLogicalX(int i) {
        return (int) ((i * Gdx.graphics.getWidth()) / Gdx.graphics.getBackBufferWidth());
    }

    public static int toLogicalY(int i) {
        return (int) ((i * Gdx.graphics.getHeight()) / Gdx.graphics.getBackBufferHeight());
    }

    public static void glScissor(int i, int i2, int i3, int i4) {
        if (f5017a == HdpiMode.Logical && (Gdx.graphics.getWidth() != Gdx.graphics.getBackBufferWidth() || Gdx.graphics.getHeight() != Gdx.graphics.getBackBufferHeight())) {
            Gdx.f3119gl.glScissor(toBackBufferX(i), toBackBufferY(i2), toBackBufferX(i3), toBackBufferY(i4));
        } else {
            Gdx.f3119gl.glScissor(i, i2, i3, i4);
        }
    }

    public static void glViewport(int i, int i2, int i3, int i4) {
        if (f5017a == HdpiMode.Logical && (Gdx.graphics.getWidth() != Gdx.graphics.getBackBufferWidth() || Gdx.graphics.getHeight() != Gdx.graphics.getBackBufferHeight())) {
            Gdx.f3119gl.glViewport(toBackBufferX(i), toBackBufferY(i2), toBackBufferX(i3), toBackBufferY(i4));
        } else {
            Gdx.f3119gl.glViewport(i, i2, i3, i4);
        }
    }
}
