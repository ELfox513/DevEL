package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.p033ui.Widget;
import com.prineside.tdi2.Game;
/* renamed from: com.prineside.tdi2.ui.actors.QuadActor */
/* loaded from: classes2.dex */
public class QuadActor extends Widget {

    /* renamed from: I */
    public float[] f12668I = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};

    /* renamed from: J */
    public int[] f12669J = {255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255};

    /* renamed from: K */
    public float[] f12670K = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};

    /* renamed from: L */
    public TextureRegion f12671L;

    public QuadActor(float[] fArr, int[] iArr) {
        setVertices(fArr);
        setVertexColors(iArr);
    }

    public float[] getVertexPositions() {
        return this.f12668I;
    }

    public void setVertexColors(int[] iArr) {
        if (iArr.length == 16) {
            int[] iArr2 = this.f12669J;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            return;
        }
        throw new RuntimeException("colors must be an array of 16 ints, " + iArr.length + " passed");
    }

    public void setVertexPositions(float[] fArr) {
        float max = StrictMath.max(fArr[4], fArr[6]);
        float max2 = StrictMath.max(fArr[3], fArr[5]);
        setWidth(max);
        setHeight(max2);
        float[] fArr2 = new float[8];
        for (int i = 0; i < 4; i++) {
            int i2 = i * 2;
            fArr2[i2] = fArr[i2] / max;
            int i3 = i2 + 1;
            fArr2[i3] = fArr[i3] / max2;
        }
        setVertices(fArr2);
    }

    public void setVertices(float[] fArr) {
        if (fArr.length == 8) {
            float[] fArr2 = this.f12668I;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            TextureRegion textureRegion = getTextureRegion();
            float u = textureRegion.getU();
            float v = textureRegion.getV();
            float u2 = textureRegion.getU2();
            float v2 = textureRegion.getV2();
            float[] fArr3 = this.f12670K;
            fArr3[3] = u;
            fArr3[4] = v2;
            fArr3[8] = u;
            fArr3[9] = v;
            fArr3[13] = u2;
            fArr3[14] = v;
            fArr3[18] = u2;
            fArr3[19] = v2;
            return;
        }
        throw new RuntimeException("vertices must be an array of 8 floats, " + fArr.length + " passed");
    }

    @Override // com.badlogic.gdx.scenes.scene2d.p033ui.Widget, com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        super.validate();
        TextureRegion textureRegion = getTextureRegion();
        float x = getX();
        float y = getY();
        float width = getWidth();
        float height = getHeight();
        Color color = getColor();
        for (int i = 0; i < 4; i++) {
            float[] fArr = this.f12670K;
            int i2 = i * 5;
            float[] fArr2 = this.f12668I;
            int i3 = i * 2;
            fArr[i2] = (fArr2[i3] * width) + x;
            fArr[i2 + 1] = (fArr2[i3 + 1] * height) + y;
            int[] iArr = this.f12669J;
            int i4 = i * 4;
            fArr[i2 + 2] = Color.toFloatBits((int) (iArr[i4] * color.f3892r), (int) (iArr[i4 + 1] * color.f3891g), (int) (iArr[i4 + 2] * color.f3890b), (int) (iArr[i4 + 3] * f * color.f3889a));
        }
        batch.draw(textureRegion.getTexture(), this.f12670K, 0, 20);
    }

    public TextureRegion getTextureRegion() {
        if (this.f12671L == null) {
            setTextureRegion(Game.f8589i.assetManager.getBlankWhiteTextureRegion());
        }
        return this.f12671L;
    }

    public void setTextureRegion(TextureRegion textureRegion) {
        this.f12671L = textureRegion;
        setVertices(this.f12668I);
    }

    public void setVertexColors(Color color, Color color2, Color color3, Color color4) {
        int[] iArr = this.f12669J;
        iArr[0] = (int) (color.f3892r * 255.0f);
        iArr[1] = (int) (color.f3891g * 255.0f);
        iArr[2] = (int) (color.f3890b * 255.0f);
        iArr[3] = (int) (color.f3889a * 255.0f);
        iArr[4] = (int) (color2.f3892r * 255.0f);
        iArr[5] = (int) (color2.f3891g * 255.0f);
        iArr[6] = (int) (color2.f3890b * 255.0f);
        iArr[7] = (int) (color2.f3889a * 255.0f);
        iArr[8] = (int) (color3.f3892r * 255.0f);
        iArr[9] = (int) (color3.f3891g * 255.0f);
        iArr[10] = (int) (color3.f3890b * 255.0f);
        iArr[11] = (int) (color3.f3889a * 255.0f);
        iArr[12] = (int) (color4.f3892r * 255.0f);
        iArr[13] = (int) (color4.f3891g * 255.0f);
        iArr[14] = (int) (color4.f3890b * 255.0f);
        iArr[15] = (int) (color4.f3889a * 255.0f);
    }

    public QuadActor(float[] fArr, Color color) {
        setVertices(fArr);
        setVertexColors(color);
    }

    public QuadActor(Color color, float[] fArr) {
        setVertexPositions(fArr);
        setVertexColors(color);
    }

    public QuadActor(Color[] colorArr, float[] fArr) {
        setVertexPositions(fArr);
        setVertexColors(colorArr[0], colorArr[1], colorArr[2], colorArr[3]);
    }

    public void setVertexColors(Color color) {
        setVertexColors(color, color, color, color);
    }

    public QuadActor(float[] fArr, Color color, Color color2, Color color3, Color color4) {
        setVertices(fArr);
        setVertexColors(color, color2, color3, color4);
    }
}
