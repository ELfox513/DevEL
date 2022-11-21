package com.prineside.tdi2;

import com.badlogic.gdx.utils.Disposable;
import com.prineside.tdi2.utils.REGS;
@REGS(classOnly = true)
/* loaded from: classes2.dex */
public abstract class GameSystem extends Registrable implements Disposable {
    public abstract boolean affectsGameState();

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public int getFastStateHash() {
        return 0;
    }

    public abstract String getSystemName();

    public void postSetup() {
    }

    public void postStateRestore() {
    }

    public boolean profileUpdate() {
        return true;
    }

    public void setup() {
    }

    public void update(float f) {
    }
}
