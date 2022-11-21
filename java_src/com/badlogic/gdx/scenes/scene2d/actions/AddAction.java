package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class AddAction extends Action {

    /* renamed from: k */
    public Action f5699k;

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        this.f5618b.addAction(this.f5699k);
        return true;
    }

    public Action getAction() {
        return this.f5699k;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        Action action = this.f5699k;
        if (action != null) {
            action.restart();
        }
    }

    public void setAction(Action action) {
        this.f5699k = action;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5699k = null;
    }
}
