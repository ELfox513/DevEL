package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum SyntheticState implements ModifierContributor.ForType, ModifierContributor.ForMethod, ModifierContributor.ForField, ModifierContributor.ForParameter {
    PLAIN(0),
    SYNTHETIC(4096);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 4096;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isSynthetic() {
        return this == SYNTHETIC;
    }

    SyntheticState(int i) {
        this.mask = i;
    }
}
