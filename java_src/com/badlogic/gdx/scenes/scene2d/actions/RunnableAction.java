package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class RunnableAction extends Action {

    /* renamed from: k */
    public Runnable f5750k;

    /* renamed from: p */
    public boolean f5751p;

    public Runnable getRunnable() {
        return this.f5750k;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        this.f5751p = false;
    }

    public void setRunnable(Runnable runnable) {
        this.f5750k = runnable;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action
    public boolean act(float f) {
        if (!this.f5751p) {
            this.f5751p = true;
            run();
        }
        return true;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Action, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f5750k = null;
    }

    public void run() {
        Pool pool = getPool();
        setPool(null);
        try {
            this.f5750k.run();
        } finally {
            setPool(pool);
        }
    }
}
