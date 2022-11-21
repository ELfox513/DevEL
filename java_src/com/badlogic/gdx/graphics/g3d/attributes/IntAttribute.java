package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.g3d.Attribute;
/* loaded from: classes.dex */
public class IntAttribute extends Attribute {
    public int value;
    public static final String CullFaceAlias = "cullface";
    public static final long CullFace = Attribute.m24180d(CullFaceAlias);

    public IntAttribute(long j) {
        super(j);
    }

    public static IntAttribute createCullFace(int i) {
        return new IntAttribute(CullFace, i);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public Attribute copy() {
        return new IntAttribute(this.type, this.value);
    }

    public IntAttribute(long j, int i) {
        super(j);
        this.value = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        return j != j2 ? (int) (j - j2) : this.value - ((IntAttribute) attribute).value;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (super.hashCode() * 983) + this.value;
    }
}
