package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Texture;
/* loaded from: classes.dex */
public interface PolygonBatch extends Batch {
    void draw(Texture texture, float[] fArr, int i, int i2, short[] sArr, int i3, int i4);

    void draw(PolygonRegion polygonRegion, float f, float f2);

    void draw(PolygonRegion polygonRegion, float f, float f2, float f3, float f4);

    void draw(PolygonRegion polygonRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9);
}
