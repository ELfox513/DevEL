package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum SynchronizationState implements ModifierContributor.ForMethod {
    PLAIN(0),
    SYNCHRONIZED(32);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 32;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isSynchronized() {
        return this == SYNCHRONIZED;
    }

    SynchronizationState(int i) {
        this.mask = i;
    }
}
