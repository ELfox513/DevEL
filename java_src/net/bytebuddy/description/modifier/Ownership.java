package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum Ownership implements ModifierContributor.ForField, ModifierContributor.ForMethod, ModifierContributor.ForType {
    MEMBER(0),
    STATIC(8);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 8;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == MEMBER;
    }

    public boolean isStatic() {
        return this == STATIC;
    }

    Ownership(int i) {
        this.mask = i;
    }
}
