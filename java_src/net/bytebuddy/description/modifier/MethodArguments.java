package net.bytebuddy.description.modifier;

import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum MethodArguments implements ModifierContributor.ForMethod {
    PLAIN(0),
    VARARGS(128);
    
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

    public boolean isVarArgs() {
        return this == VARARGS;
    }

    MethodArguments(int i) {
        this.mask = i;
    }
}
