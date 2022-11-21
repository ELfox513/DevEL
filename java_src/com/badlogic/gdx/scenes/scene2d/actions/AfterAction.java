package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class AfterAction extends DelegateAction {

    /* renamed from: p */
    public Array<Action> f5702p = new Array<>(false, 4);

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction
    /* renamed from: a */
    public boolean mo23847a(float f) {
        Array<Action> actions = this.f5618b.getActions();
        if (actions.size == 1) {
            this.f5702p.clear();
        }
        for (int i = this.f5702p.size - 1; i >= 0; i--) {
            if (actions.indexOf(this.f5702p.get(i), true) == -1) {
                this.f5702p.removeIndex(i);
            }
        }
        if (this.f5702p.size > 0) {
            return false;
        }
        return this.f5716k.act(f);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction, com.badlogic.gdx.scenes.scene2d.Action
    public void setTarget(Actor actor) {
        if (actor != null) {
            this.f5702p.addAll(actor.getActions());
        }
        super.setTarget(actor);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction, com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        super.restart();
        this.f5702p.clear();
    }
}
