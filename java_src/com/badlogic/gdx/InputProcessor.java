package com.badlogic.gdx;
/* loaded from: classes.dex */
public interface InputProcessor {
    boolean keyDown(int i);

    boolean keyTyped(char c);

    boolean keyUp(int i);

    boolean mouseMoved(int i, int i2);

    boolean scrolled(float f, float f2);

    boolean touchCancelled(int i, int i2, int i3, int i4);

    boolean touchDown(int i, int i2, int i3, int i4);

    boolean touchDragged(int i, int i2, int i3);

    boolean touchUp(int i, int i2, int i3, int i4);
}
