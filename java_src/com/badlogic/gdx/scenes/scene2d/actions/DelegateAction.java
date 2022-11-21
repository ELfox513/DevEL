package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public abstract class DelegateAction extends Action {

    /* renamed from: k */
    public Action f5716k;

    /* renamed from: a */
    public abstract boolean mo23847a(float f);

    public Action getAction() {
        return this.f5716k;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        Action action = this.f5716k;
        if (action != null) {
            action.restart();
        }
    }

    public void setAction(Action action) {
        this.f5716k = action;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        if (this.f5716k == null) {
            str = "";
        } else {
            str = "(" + this.f5716k + ")";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void setActor(Actor actor) {
        Action action = this.f5716k;
        if (action != null) {
            action.setActor(actor);
        }
        super.setActor(actor);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void setTarget(Actor actor) {
        Action action = this.f5716k;
        if (action != null) {
            action.setTarget(actor);
        }
        super.setTarget(actor);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public final boolean act(float f) {
        Pool pool = getPool();
        setPool(null);
        try {
            return mo23847a(f);
        } finally {
            setPool(pool);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5716k = null;
    }
}
