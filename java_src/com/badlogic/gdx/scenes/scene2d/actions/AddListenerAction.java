package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.EventListener;
/* loaded from: classes.dex */
public class AddListenerAction extends Action {

    /* renamed from: k */
    public EventListener f5700k;

    /* renamed from: p */
    public boolean f5701p;

    public boolean getCapture() {
        return this.f5701p;
    }

    public EventListener getListener() {
        return this.f5700k;
    }

    public void setCapture(boolean z) {
        this.f5701p = z;
    }

    public void setListener(EventListener eventListener) {
        this.f5700k = eventListener;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        if (this.f5701p) {
            this.f5618b.addCaptureListener(this.f5700k);
            return true;
        }
        this.f5618b.addListener(this.f5700k);
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5700k = null;
    }
}
