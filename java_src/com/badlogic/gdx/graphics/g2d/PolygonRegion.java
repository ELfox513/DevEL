package com.badlogic.gdx.graphics.g2d;
/* loaded from: classes.dex */
public class PolygonRegion {

    /* renamed from: a */
    public final float[] f4211a;

    /* renamed from: b */
    public final float[] f4212b;

    /* renamed from: c */
    public final short[] f4213c;

    /* renamed from: d */
    public final TextureRegion f4214d;

    public TextureRegion getRegion() {
        return this.f4214d;
    }

    public float[] getTextureCoords() {
        return this.f4211a;
    }

    public short[] getTriangles() {
        return this.f4213c;
    }

    public float[] getVertices() {
        return this.f4212b;
    }

    public PolygonRegion(TextureRegion textureRegion, float[] fArr, short[] sArr) {
        this.f4214d = textureRegion;
        this.f4212b = fArr;
        this.f4213c = sArr;
        float[] fArr2 = new float[fArr.length];
        this.f4211a = fArr2;
        float f = textureRegion.f4355b;
        float f2 = textureRegion.f4356c;
        float f3 = textureRegion.f4357d - f;
        float f4 = textureRegion.f4358e - f2;
        int i = textureRegion.f4359f;
        int i2 = textureRegion.f4360g;
        int length = fArr.length;
        for (int i3 = 0; i3 < length; i3 += 2) {
            fArr2[i3] = ((fArr[i3] / i) * f3) + f;
            int i4 = i3 + 1;
            fArr2[i4] = ((1.0f - (fArr[i4] / i2)) * f4) + f2;
        }
    }
}
