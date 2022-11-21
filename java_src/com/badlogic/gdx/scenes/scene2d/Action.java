package com.badlogic.gdx.scenes.scene2d;

import com.badlogic.gdx.utils.Null;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public abstract class Action implements Pool.Poolable {

    /* renamed from: a */
    public Actor f5617a;

    /* renamed from: b */
    public Actor f5618b;
    @Null

    /* renamed from: d */
    public Pool f5619d;

    public abstract boolean act(float f);

    public Actor getActor() {
        return this.f5617a;
    }

    @Null
    public Pool getPool() {
        return this.f5619d;
    }

    public Actor getTarget() {
        return this.f5618b;
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        this.f5617a = null;
        this.f5618b = null;
        this.f5619d = null;
        restart();
    }

    public void restart() {
    }

    public void setPool(@Null Pool pool) {
        this.f5619d = pool;
    }

    public void setTarget(Actor actor) {
        this.f5618b = actor;
    }

    public void setActor(Actor actor) {
        Pool pool;
        this.f5617a = actor;
        if (this.f5618b == null) {
            setTarget(actor);
        }
        if (actor == null && (pool = this.f5619d) != null) {
            pool.free(this);
            this.f5619d = null;
        }
    }

    public String toString() {
        String name = getClass().getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf != -1) {
            name = name.substring(lastIndexOf + 1);
        }
        if (name.endsWith("Action")) {
            return name.substring(0, name.length() - 6);
        }
        return name;
    }
}
