package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class SequenceAction extends ParallelAction {

    /* renamed from: q */
    public int f5758q;

    public SequenceAction() {
    }

    public SequenceAction(Action action) {
        addAction(action);
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.ParallelAction, com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        if (this.f5758q >= this.f5736k.size) {
            return true;
        }
        Pool pool = getPool();
        setPool(null);
        try {
            if (this.f5736k.get(this.f5758q).act(f)) {
                if (this.f5617a == null) {
                    return true;
                }
                int i = this.f5758q + 1;
                this.f5758q = i;
                if (i >= this.f5736k.size) {
                    return true;
                }
            }
            return false;
        } finally {
            setPool(pool);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.ParallelAction, com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        super.restart();
        this.f5758q = 0;
    }

    public SequenceAction(Action action, Action action2) {
        addAction(action);
        addAction(action2);
    }

    public SequenceAction(Action action, Action action2, Action action3) {
        addAction(action);
        addAction(action2);
        addAction(action3);
    }

    public SequenceAction(Action action, Action action2, Action action3, Action action4) {
        addAction(action);
        addAction(action2);
        addAction(action3);
        addAction(action4);
    }

    public SequenceAction(Action action, Action action2, Action action3, Action action4, Action action5) {
        addAction(action);
        addAction(action2);
        addAction(action3);
        addAction(action4);
        addAction(action5);
    }
}
