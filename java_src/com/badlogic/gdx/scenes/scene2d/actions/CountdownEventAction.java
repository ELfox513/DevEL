package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Event;
/* loaded from: classes.dex */
public class CountdownEventAction<T extends Event> extends EventAction<T> {

    /* renamed from: s */
    public int f5712s;

    /* renamed from: t */
    public int f5713t;

    @Override // com.badlogic.gdx.scenes.scene2d.actions.EventAction
    public boolean handle(T t) {
        int i = this.f5713t + 1;
        this.f5713t = i;
        if (i >= this.f5712s) {
            return true;
        }
        return false;
    }

    public CountdownEventAction(Class<? extends T> cls, int i) {
        super(cls);
        this.f5712s = i;
    }
}
