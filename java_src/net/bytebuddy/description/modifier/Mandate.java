package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum Mandate implements ModifierContributor.ForField, ModifierContributor.ForMethod, ModifierContributor.ForParameter {
    PLAIN(0),
    MANDATED(32768);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 32768;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isMandated() {
        return this == MANDATED;
    }

    Mandate(int i) {
        this.mask = i;
    }
}
