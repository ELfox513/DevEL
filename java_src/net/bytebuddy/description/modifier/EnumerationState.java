package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum EnumerationState implements ModifierContributor.ForType, ModifierContributor.ForField {
    PLAIN(0),
    ENUMERATION(16384);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 16384;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isEnumeration() {
        return this == ENUMERATION;
    }

    EnumerationState(int i) {
        this.mask = i;
    }
}
