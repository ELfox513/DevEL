package com.badlogic.gdx.scenes.scene2d.actions;

import com.badlogic.gdx.scenes.scene2d.Action;
/* loaded from: classes.dex */
public class RepeatAction extends DelegateAction {
    public static final int FOREVER = -1;

    /* renamed from: p */
    public int f5743p;

    /* renamed from: q */
    public int f5744q;

    /* renamed from: r */
    public boolean f5745r;

    public void finish() {
        this.f5745r = true;
    }

    public int getCount() {
        return this.f5743p;
    }

    public void setCount(int i) {
        this.f5743p = i;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction
    /* renamed from: a */
    public boolean mo23847a(float f) {
        if (this.f5744q == this.f5743p) {
            return true;
        }
        if (this.f5716k.act(f)) {
            if (this.f5745r) {
                return true;
            }
            int i = this.f5743p;
            if (i > 0) {
                this.f5744q++;
            }
            if (this.f5744q == i) {
                return true;
            }
            Action action = this.f5716k;
            if (action != null) {
                action.restart();
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.badlogic.gdx.scenes.scene2d.actions.DelegateAction, com.badlogic.gdx.scenes.scene2d.Action
    public void restart() {
        super.restart();
        this.f5744q = 0;
        this.f5745r = false;
    }
}
