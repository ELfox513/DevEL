package com.badlogic.gdx.graphics.g3d.attributes;

import com.badlogic.gdx.graphics.g3d.Attribute;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class FloatAttribute extends Attribute {
    public float value;
    public static final String ShininessAlias = "shininess";
    public static final long Shininess = Attribute.m24180d(ShininessAlias);
    public static final String AlphaTestAlias = "alphaTest";
    public static final long AlphaTest = Attribute.m24180d(AlphaTestAlias);

    public FloatAttribute(long j) {
        super(j);
    }

    public static FloatAttribute createAlphaTest(float f) {
        return new FloatAttribute(AlphaTest, f);
    }

    public static FloatAttribute createShininess(float f) {
        return new FloatAttribute(Shininess, f);
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public Attribute copy() {
        return new FloatAttribute(this.type, this.value);
    }

    public FloatAttribute(long j, float f) {
        super(j);
        this.value = f;
    }

    @Override // java.lang.Comparable
    public int compareTo(Attribute attribute) {
        long j = this.type;
        long j2 = attribute.type;
        if (j != j2) {
            return (int) (j - j2);
        }
        float f = ((FloatAttribute) attribute).value;
        if (MathUtils.isEqual(this.value, f)) {
            return 0;
        }
        return this.value < f ? -1 : 1;
    }

    @Override // com.badlogic.gdx.graphics.g3d.Attribute
    public int hashCode() {
        return (super.hashCode() * 977) + NumberUtils.floatToRawIntBits(this.value);
    }
}
