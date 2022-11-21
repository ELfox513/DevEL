package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Touchable;
/* loaded from: classes.dex */
public class TouchableAction extends Action {

    /* renamed from: k */
    public Touchable f5772k;

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        this.f5618b.setTouchable(this.f5772k);
        return true;
    }

    public Touchable getTouchable() {
        return this.f5772k;
    }

    public void setTouchable(Touchable touchable) {
        this.f5772k = touchable;
    }
}
