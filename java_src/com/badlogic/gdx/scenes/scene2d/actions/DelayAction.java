package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class DelayAction extends DelegateAction {

    /* renamed from: p */
    public float f5714p;

    /* renamed from: q */
    public float f5715q;

    public DelayAction() {
    }

    public void finish() {
        this.f5715q = this.f5714p;
    }

    public float getDuration() {
        return this.f5714p;
    }

    public float getTime() {
        return this.f5715q;
    }

    public void setDuration(float f) {
        this.f5714p = f;
    }

    public void setTime(float f) {
        this.f5715q = f;
    }

    public DelayAction(float f) {
        this.f5714p = f;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction
    /* renamed from: a */
    public boolean mo23847a(float f) {
        float f2 = this.f5715q;
        float f3 = this.f5714p;
        if (f2 < f3) {
            float f4 = f2 + f;
            this.f5715q = f4;
            if (f4 < f3) {
                return false;
            }
            f = f4 - f3;
        }
        Action action = this.f5716k;
        if (action == null) {
            return true;
        }
        return action.act(f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction, com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        super.restart();
        this.f5715q = 0.0f;
    }
}
