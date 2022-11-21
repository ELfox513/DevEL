package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.EventListener;
/* loaded from: classes.dex */
public class RemoveListenerAction extends Action {

    /* renamed from: k */
    public EventListener f5741k;

    /* renamed from: p */
    public boolean f5742p;

    public boolean getCapture() {
        return this.f5742p;
    }

    public EventListener getListener() {
        return this.f5741k;
    }

    public void setCapture(boolean z) {
        this.f5742p = z;
    }

    public void setListener(EventListener eventListener) {
        this.f5741k = eventListener;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        if (this.f5742p) {
            this.f5618b.removeCaptureListener(this.f5741k);
            return true;
        }
        this.f5618b.removeListener(this.f5741k);
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5741k = null;
    }
}
