package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class BlendingAttribute extends Attribute {
    public static final String Alias = "blended";
    public static final long Type = Attribute.m24180d(Alias);
    public boolean blended;
    public int destFunction;
    public float opacity;
    public int sourceFunction;

    public BlendingAttribute() {
        this((BlendingAttribute) null);
    }

    /* renamed from: is */
    public static final boolean m24160is(long j) {
        return (Type & j) == j;
    }

    public BlendingAttribute(boolean z, int i, int i2, float f) {
        super(Type);
        this.blended = z;
        this.sourceFunction = i;
        this.destFunction = i2;
        this.opacity = f;
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        if (j != j2) {
            return (int) (j - j2);
        }
        BlendingAttribute blendingAttribute = (BlendingAttribute) attribute;
        boolean z = this.blended;
        if (z != blendingAttribute.blended) {
            return z ? 1 : -1;
        }
        int i = this.sourceFunction;
        int i2 = blendingAttribute.sourceFunction;
        if (i != i2) {
            return i - i2;
        }
        int i3 = this.destFunction;
        int i4 = blendingAttribute.destFunction;
        if (i3 != i4) {
            return i3 - i4;
        }
        if (MathUtils.isEqual(this.opacity, blendingAttribute.opacity)) {
            return 0;
        }
        return this.opacity < blendingAttribute.opacity ? 1 : -1;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public BlendingAttribute copy() {
        return new BlendingAttribute(this);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (((((((super.hashCode() * 947) + (this.blended ? 1 : 0)) * 947) + this.sourceFunction) * 947) + this.destFunction) * 947) + NumberUtils.floatToRawIntBits(this.opacity);
    }

    public BlendingAttribute(int i, int i2, float f) {
        this(true, i, i2, f);
    }

    public BlendingAttribute(int i, int i2) {
        this(i, i2, 1.0f);
    }

    public BlendingAttribute(boolean z, float f) {
        this(z, GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA, f);
    }

    public BlendingAttribute(float f) {
        this(true, f);
    }

    public BlendingAttribute(BlendingAttribute blendingAttribute) {
        this(blendingAttribute == null || blendingAttribute.blended, blendingAttribute == null ? GL20.GL_SRC_ALPHA : blendingAttribute.sourceFunction, blendingAttribute == null ? GL20.GL_ONE_MINUS_SRC_ALPHA : blendingAttribute.destFunction, blendingAttribute == null ? 1.0f : blendingAttribute.opacity);
    }
}
