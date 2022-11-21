package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum FieldPersistence implements ModifierContributor.ForField {
    PLAIN(0),
    TRANSIENT(128);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 128;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isTransient() {
        return (this.mask & 128) != 0;
    }

    FieldPersistence(int i) {
        this.mask = i;
    }
}
