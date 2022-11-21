package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class TimeScaleAction extends DelegateAction {

    /* renamed from: p */
    public float f5771p;

    public float getScale() {
        return this.f5771p;
    }

    public void setScale(float f) {
        this.f5771p = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction
    /* renamed from: a */
    public boolean mo23847a(float f) {
        Action action = this.f5716k;
        if (action == null) {
            return true;
        }
        return action.act(f * this.f5771p);
    }
}
