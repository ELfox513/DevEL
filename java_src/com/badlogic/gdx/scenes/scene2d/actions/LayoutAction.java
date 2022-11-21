package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.utils.Layout;
import com.badlogic.gdx.utils.GdxRuntimeException;
/* loaded from: classes.dex */
public class LayoutAction extends Action {

    /* renamed from: k */
    public boolean f5728k;

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        ((Layout) this.f5618b).setLayoutEnabled(this.f5728k);
        return true;
    }

    public boolean isEnabled() {
        return this.f5728k;
    }

    public void setLayoutEnabled(boolean z) {
        this.f5728k = z;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void setTarget(Actor actor) {
        if (actor != null && !(actor instanceof Layout)) {
            throw new GdxRuntimeException("Actor must implement layout: " + actor);
        }
        super.setTarget(actor);
    }
}
