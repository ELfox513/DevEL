package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class DepthTestAttribute extends Attribute {
    public static final String Alias = "depthStencil";
    public static final long Type;

    /* renamed from: d */
    public static long f4395d;
    public int depthFunc;
    public boolean depthMask;
    public float depthRangeFar;
    public float depthRangeNear;

    public DepthTestAttribute() {
        this((int) GL20.GL_LEQUAL);
    }

    /* renamed from: is */
    public static final boolean m24157is(long j) {
        return (j & f4395d) != 0;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public Attribute copy() {
        return new DepthTestAttribute(this);
    }

    static {
        long m24180d = Attribute.m24180d(Alias);
        Type = m24180d;
        f4395d = m24180d;
    }

    public DepthTestAttribute(boolean z) {
        this(GL20.GL_LEQUAL, z);
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        if (j != j2) {
            return (int) (j - j2);
        }
        DepthTestAttribute depthTestAttribute = (DepthTestAttribute) attribute;
        int i = this.depthFunc;
        int i2 = depthTestAttribute.depthFunc;
        if (i != i2) {
            return i - i2;
        }
        boolean z = this.depthMask;
        if (z != depthTestAttribute.depthMask) {
            return z ? -1 : 1;
        } else if (!MathUtils.isEqual(this.depthRangeNear, depthTestAttribute.depthRangeNear)) {
            return this.depthRangeNear < depthTestAttribute.depthRangeNear ? -1 : 1;
        } else if (MathUtils.isEqual(this.depthRangeFar, depthTestAttribute.depthRangeFar)) {
            return 0;
        } else {
            return this.depthRangeFar < depthTestAttribute.depthRangeFar ? -1 : 1;
        }
    }

    public DepthTestAttribute(int i) {
        this(i, true);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (((((((super.hashCode() * 971) + this.depthFunc) * 971) + NumberUtils.floatToRawIntBits(this.depthRangeNear)) * 971) + NumberUtils.floatToRawIntBits(this.depthRangeFar)) * 971) + (this.depthMask ? 1 : 0);
    }

    public DepthTestAttribute(int i, boolean z) {
        this(i, 0.0f, 1.0f, z);
    }

    public DepthTestAttribute(int i, float f, float f2) {
        this(i, f, f2, true);
    }

    public DepthTestAttribute(int i, float f, float f2, boolean z) {
        this(Type, i, f, f2, z);
    }

    public DepthTestAttribute(long j, int i, float f, float f2, boolean z) {
        super(j);
        if (m24157is(j)) {
            this.depthFunc = i;
            this.depthRangeNear = f;
            this.depthRangeFar = f2;
            this.depthMask = z;
            return;
        }
        throw new GdxRuntimeException("Invalid type specified");
    }

    public DepthTestAttribute(DepthTestAttribute depthTestAttribute) {
        this(depthTestAttribute.type, depthTestAttribute.depthFunc, depthTestAttribute.depthRangeNear, depthTestAttribute.depthRangeFar, depthTestAttribute.depthMask);
    }
}
