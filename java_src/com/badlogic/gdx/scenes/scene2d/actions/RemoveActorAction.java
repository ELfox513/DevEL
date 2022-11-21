package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class RemoveActorAction extends Action {

    /* renamed from: k */
    public boolean f5740k;

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        this.f5740k = false;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        if (!this.f5740k) {
            this.f5740k = true;
            this.f5618b.remove();
        }
        return true;
    }
}
