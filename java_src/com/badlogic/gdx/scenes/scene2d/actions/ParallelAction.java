package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class ParallelAction extends Action {

    /* renamed from: k */
    public Array<Action> f5736k = new Array<>(4);

    /* renamed from: p */
    public boolean f5737p;

    public ParallelAction() {
    }

    public Array<Action> getActions() {
        return this.f5736k;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        this.f5737p = false;
        Array<Action> array = this.f5736k;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            array.get(i2).restart();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        if (this.f5737p) {
            return true;
        }
        this.f5737p = true;
        Pool pool = getPool();
        setPool(null);
        try {
            Array<Action> array = this.f5736k;
            int i = array.size;
            for (int i2 = 0; i2 < i && this.f5617a != null; i2++) {
                Action action = array.get(i2);
                if (action.getActor() != null && !action.act(f)) {
                    this.f5737p = false;
                }
                if (this.f5617a == null) {
                    return true;
                }
            }
            return this.f5737p;
        } finally {
            setPool(pool);
        }
    }

    public void addAction(Action action) {
        this.f5736k.add(action);
        Actor actor = this.f5617a;
        if (actor != null) {
            action.setActor(actor);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void setActor(Actor actor) {
        Array<Action> array = this.f5736k;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            array.get(i2).setActor(actor);
        }
        super.setActor(actor);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(super.toString());
        sb.append('(');
        Array<Action> array = this.f5736k;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(array.get(i2));
        }
        sb.append(')');
        return sb.toString();
    }

    public ParallelAction(Action action) {
        addAction(action);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5736k.clear();
    }

    public ParallelAction(Action action, Action action2) {
        addAction(action);
        addAction(action2);
    }

    public ParallelAction(Action action, Action action2, Action action3) {
        addAction(action);
        addAction(action2);
        addAction(action3);
    }

    public ParallelAction(Action action, Action action2, Action action3, Action action4) {
        addAction(action);
        addAction(action2);
        addAction(action3);
        addAction(action4);
    }

    public ParallelAction(Action action, Action action2, Action action3, Action action4, Action action5) {
        addAction(action);
        addAction(action2);
        addAction(action3);
        addAction(action4);
        addAction(action5);
    }
}
