package com.prineside.tdi2.utils;

import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.InputListener;
/* loaded from: classes2.dex */
public class InputVoid extends InputListener {
    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public boolean mouseMoved(InputEvent inputEvent, float f, float f2) {
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.InputListener
    public boolean touchDown(InputEvent inputEvent, float f, float f2, int i, int i2) {
        return true;
    }
}
