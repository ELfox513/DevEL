package net.bytebuddy.description.modifier;

import com.badlogic.gdx.graphics.GL20;
import net.bytebuddy.description.modifier.ModifierContributor;
/* loaded from: classes2.dex */
public enum TypeManifestation implements ModifierContributor.ForType {
    PLAIN(0),
    FINAL(16),
    ABSTRACT(1024),
    INTERFACE(1536),
    ANNOTATION(GL20.GL_NEAREST);
    
    private final int mask;

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getMask() {
        return this.mask;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public int getRange() {
        return 9744;
    }

    public boolean isAbstract() {
        return ((this.mask & 1024) == 0 || isInterface()) ? false : true;
    }

    public boolean isAnnotation() {
        return (this.mask & 8192) != 0;
    }

    @Override // net.bytebuddy.description.modifier.ModifierContributor
    public boolean isDefault() {
        return this == PLAIN;
    }

    public boolean isFinal() {
        return (this.mask & 16) != 0;
    }

    public boolean isInterface() {
        return (this.mask & 512) != 0;
    }

    TypeManifestation(int i) {
        this.mask = i;
    }
}
