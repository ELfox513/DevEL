package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class RemoveAction extends Action {

    /* renamed from: k */
    public Action f5739k;

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        this.f5618b.removeAction(this.f5739k);
        return true;
    }

    public Action getAction() {
        return this.f5739k;
    }

    public void setAction(Action action) {
        this.f5739k = action;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5739k = null;
    }
}
