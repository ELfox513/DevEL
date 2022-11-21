package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class VisibleAction extends Action {

    /* renamed from: k */
    public boolean f5773k;

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        this.f5618b.setVisible(this.f5773k);
        return true;
    }

    public boolean isVisible() {
        return this.f5773k;
    }

    public void setVisible(boolean z) {
        this.f5773k = z;
    }
}
