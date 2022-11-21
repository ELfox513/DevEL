package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum FieldManifestation implements ModifierContributor.ForField {
    PLAIN(0),
    FINAL(16),
    VOLATILE(64);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 80;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isFinal() {
        return (this.mask & 16) != 0;
    }

    public boolean isPlain() {
        return (isFinal() || isVolatile()) ? false : true;
    }

    public boolean isVolatile() {
        return (this.mask & 64) != 0;
    }

    FieldManifestation(int i) {
        this.mask = i;
    }
}
