package com.prineside.tdi2.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes2.dex */
public class DrawUtils {

    /* renamed from: a */
    public static final float f15073a = Color.WHITE.toFloatBits();

    /* renamed from: b */
    public static final float[] f15074b = new float[20];

    /* renamed from: c */
    public static float[] f15075c = new float[0];

    /* renamed from: d */
    public static final Vector2 f15076d = new Vector2();

    public static void bakeVertices(float[] fArr, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17 = f + f3;
        float f18 = f2 + f4;
        float f19 = -f3;
        float f20 = -f4;
        float f21 = f5 - f3;
        float f22 = f6 - f4;
        if (f7 != 1.0f || f8 != 1.0f) {
            f19 *= f7;
            f20 *= f8;
            f21 *= f7;
            f22 *= f8;
        }
        if (f9 != 0.0f) {
            float cosDeg = MathUtils.cosDeg(f9);
            float sinDeg = MathUtils.sinDeg(f9);
            float f23 = cosDeg * f19;
            f11 = f23 - (sinDeg * f20);
            float f24 = f19 * sinDeg;
            float f25 = (f20 * cosDeg) + f24;
            float f26 = sinDeg * f22;
            f10 = f23 - f26;
            float f27 = f22 * cosDeg;
            f14 = f24 + f27;
            float f28 = (cosDeg * f21) - f26;
            float f29 = f27 + (sinDeg * f21);
            f13 = f29 - (f14 - f25);
            f16 = (f28 - f10) + f11;
            f21 = f28;
            f12 = f25;
            f15 = f29;
        } else {
            f10 = f19;
            f11 = f10;
            f12 = f20;
            f13 = f12;
            f14 = f22;
            f15 = f14;
            f16 = f21;
        }
        float f30 = f11 + f17;
        float f31 = f12 + f18;
        float f32 = f10 + f17;
        float f33 = f14 + f18;
        float f34 = f21 + f17;
        float f35 = f15 + f18;
        float f36 = f16 + f17;
        float f37 = f13 + f18;
        float u = textureRegion.getU();
        float v2 = textureRegion.getV2();
        float u2 = textureRegion.getU2();
        float v = textureRegion.getV();
        float f38 = Color.WHITE_FLOAT_BITS;
        fArr[0] = f30;
        fArr[1] = f31;
        fArr[2] = f38;
        fArr[3] = u;
        fArr[4] = v2;
        fArr[5] = f32;
        fArr[6] = f33;
        fArr[7] = f38;
        fArr[8] = u;
        fArr[9] = v;
        fArr[10] = f34;
        fArr[11] = f35;
        fArr[12] = f38;
        fArr[13] = u2;
        fArr[14] = v;
        fArr[15] = f36;
        fArr[16] = f37;
        fArr[17] = f38;
        fArr[18] = u2;
        fArr[19] = v2;
    }

    public static void drawFontToCache(SpriteCache spriteCache, CharSequence charSequence, BitmapFont bitmapFont, float f, float f2, float f3, float f4, int i, boolean z) {
        drawFontToCache(spriteCache, charSequence, bitmapFont, f, f2, f3, f4, i, z, 1.0f);
    }

    public static void texturedLine(SpriteBatch spriteBatch, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5) {
        float f6 = f15073a;
        texturedLine(spriteBatch, textureRegion, f, f2, f3, f4, f5, f6, f6);
    }

    /* renamed from: a */
    public static void m19853a(int i) {
        if (f15075c.length < i) {
            float[] fArr = new float[MathUtils.nextPowerOfTwo(i)];
            float[] fArr2 = f15075c;
            System.arraycopy(fArr2, 0, fArr, 0, fArr2.length);
            f15075c = fArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.badlogic.gdx.graphics.Mesh copyMesh(com.badlogic.gdx.graphics.Mesh r19, boolean r20, boolean r21, int[] r22) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.tdi2.utils.DrawUtils.copyMesh(com.badlogic.gdx.graphics.Mesh, boolean, boolean, int[]):com.badlogic.gdx.graphics.Mesh");
    }

    public static void drawFontToCache(SpriteCache spriteCache, CharSequence charSequence, BitmapFont bitmapFont, float f, float f2, float f3, float f4, int i, boolean z, float f5) {
        int i2;
        BitmapFontCache cache = bitmapFont.getCache();
        cache.clear();
        cache.addText(charSequence, f2, f3, f4, i, z);
        Array<TextureRegion> regions = bitmapFont.getRegions();
        int i3 = bitmapFont.getRegions().size;
        int i4 = 0;
        while (i4 < i3) {
            if (cache.getVertexCount(i4) > 0) {
                float[] vertices = cache.getVertices(i4);
                int vertexCount = cache.getVertexCount(i4);
                m19853a((int) (vertexCount * 1.51f));
                int i5 = 0;
                int i6 = 0;
                while (i5 < vertexCount) {
                    float f6 = vertices[i5];
                    float f7 = vertices[i5 + 1];
                    float f8 = vertices[i5 + 10];
                    float f9 = vertices[i5 + 6];
                    float f10 = vertices[i5 + 3];
                    float f11 = vertices[i5 + 4];
                    float f12 = vertices[i5 + 13];
                    float f13 = vertices[i5 + 14];
                    int i7 = i3;
                    System.arraycopy(vertices, i5, f15075c, i6, 15);
                    int i8 = i6 + 15;
                    float[] fArr = f15075c;
                    int i9 = i8 + 1;
                    fArr[i8] = f8;
                    fArr[i9] = f9;
                    int i10 = i9 + 1 + 1;
                    int i11 = i10 + 1;
                    fArr[i10] = f12;
                    int i12 = i11 + 1;
                    fArr[i11] = f13;
                    int i13 = i12 + 1;
                    fArr[i12] = f8;
                    fArr[i13] = f7;
                    int i14 = i13 + 1 + 1;
                    int i15 = i14 + 1;
                    fArr[i14] = f12;
                    int i16 = i15 + 1;
                    fArr[i15] = f11;
                    int i17 = i16 + 1;
                    fArr[i16] = f6;
                    fArr[i17] = f7;
                    int i18 = i17 + 1 + 1;
                    int i19 = i18 + 1;
                    fArr[i18] = f10;
                    i6 = i19 + 1;
                    fArr[i19] = f11;
                    i5 += 20;
                    i3 = i7;
                }
                i2 = i3;
                for (int i20 = 2; i20 < i6; i20 += 5) {
                    f15075c[i20] = f;
                }
                if (f5 != 1.0f) {
                    for (int i21 = 0; i21 < i6; i21 += 5) {
                        float[] fArr2 = f15075c;
                        fArr2[i21] = f2 + ((fArr2[i21] - f2) * f5);
                        int i22 = i21 + 1;
                        fArr2[i22] = f3 + ((fArr2[i22] - f3) * f5);
                    }
                }
                spriteCache.add(regions.get(i4).getTexture(), f15075c, 0, i6);
            } else {
                i2 = i3;
            }
            i4++;
            i3 = i2;
        }
    }

    public static Mesh mergeMeshes(Array<Mesh> array, Array<Matrix4> array2) {
        int i;
        int i2;
        if (array.size == 0) {
            return null;
        }
        VertexAttributes vertexAttributes = array.get(0).getVertexAttributes();
        int[] iArr = new int[vertexAttributes.size()];
        for (int i3 = 0; i3 < vertexAttributes.size(); i3++) {
            iArr[i3] = vertexAttributes.get(i3).usage;
        }
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = 1;
            if (i4 >= array.size) {
                break;
            }
            Mesh mesh = array.get(i4);
            if (mesh.getVertexAttributes().size() != vertexAttributes.size()) {
                array.set(i4, copyMesh(mesh, true, false, iArr));
            }
            i5 += (mesh.getNumVertices() * mesh.getVertexSize()) / 4;
            i6 += mesh.getNumIndices();
            i4++;
        }
        float[] fArr = new float[i5];
        short[] sArr = new short[i6];
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i7 < array.size) {
            Mesh mesh2 = array.get(i7);
            int numIndices = mesh2.getNumIndices();
            int numVertices = mesh2.getNumVertices();
            int vertexSize = mesh2.getVertexSize() / 4;
            int i11 = numVertices * vertexSize;
            VertexAttribute vertexAttribute = mesh2.getVertexAttribute(i);
            int i12 = vertexAttribute.offset / 4;
            int i13 = vertexAttribute.numComponents;
            mesh2.getIndices(sArr, i9);
            int i14 = i9;
            while (true) {
                i2 = i9 + numIndices;
                if (i14 < i2) {
                    sArr[i14] = (short) (sArr[i14] + i8);
                    i14++;
                }
            }
            mesh2.getVertices(0, i11, fArr, i10);
            Mesh.transform(array2.get(i7), fArr, vertexSize, i12, i13, i8, numVertices);
            i8 += numVertices;
            i10 += i11;
            i7++;
            i9 = i2;
            i = 1;
        }
        Mesh mesh3 = new Mesh(true, i8, i6, array.get(0).getVertexAttributes());
        mesh3.setVertices(fArr);
        mesh3.setIndices(sArr);
        return mesh3;
    }

    public static void texturedLine(SpriteBatch spriteBatch, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        float angleRad = f15076d.set(f3 - f, f4 - f2).angleRad() - 1.5707964f;
        texturedLine(spriteBatch, textureRegion, f, f2, f3, f4, f5, f5, angleRad, angleRad, f6, f7);
    }

    public static void texturedMultiLine(SpriteBatch spriteBatch, float f, TextureRegion textureRegion, float[] fArr) {
        int length = fArr.length / 3;
        if (length >= 2) {
            for (int i = 1; i < length; i++) {
                int i2 = (i - 1) * 3;
                int i3 = i * 3;
                texturedLine(spriteBatch, textureRegion, fArr[i2], fArr[i2 + 1], fArr[i3], fArr[i3 + 1], f, fArr[i2 + 2], fArr[i3 + 2]);
            }
            return;
        }
        throw new IllegalArgumentException("data array must contain at least 2 points (6 floats), " + fArr.length + " given");
    }

    public static void texturedLine(SpriteBatch spriteBatch, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        float u = textureRegion.getU();
        float u2 = textureRegion.getU2();
        float v = textureRegion.getV();
        float v2 = textureRegion.getV2();
        float f11 = f5 / 2.0f;
        float f12 = f6 / 2.0f;
        float[] fArr = f15074b;
        float f13 = f7 - 1.5707964f;
        fArr[0] = ((-PMath.sin(f13)) * f11) + f;
        fArr[1] = (PMath.cos(f13) * f11) + f2;
        fArr[2] = f9;
        fArr[3] = u2;
        fArr[4] = v2;
        float f14 = f7 + 1.5707964f;
        fArr[5] = ((-PMath.sin(f14)) * f11) + f;
        fArr[6] = f2 + (PMath.cos(f14) * f11);
        fArr[7] = f9;
        fArr[8] = u;
        fArr[9] = v2;
        float f15 = f8 + 1.5707964f;
        fArr[10] = f3 + ((-PMath.sin(f15)) * f12);
        fArr[11] = f4 + (PMath.cos(f15) * f12);
        fArr[12] = f10;
        fArr[13] = u;
        fArr[14] = v;
        float f16 = f8 - 1.5707964f;
        fArr[15] = f3 + ((-PMath.sin(f16)) * f12);
        fArr[16] = f4 + (PMath.cos(f16) * f12);
        fArr[17] = f10;
        fArr[18] = u2;
        fArr[19] = v;
        spriteBatch.draw(textureRegion.getTexture(), fArr, 0, 20);
    }

    public static void texturedLine(SpriteCache spriteCache, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7) {
        float angleRad = f15076d.set(f3 - f, f4 - f2).angleRad() - 1.5707964f;
        texturedLine(spriteCache, textureRegion, f, f2, f3, f4, f5, f5, angleRad, angleRad, f6, f7);
    }

    public static void texturedLine(SpriteCache spriteCache, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        float u = textureRegion.getU();
        float u2 = textureRegion.getU2();
        float v = textureRegion.getV();
        float v2 = textureRegion.getV2();
        float f11 = f5 / 2.0f;
        float f12 = f6 / 2.0f;
        float[] fArr = f15074b;
        float f13 = f7 - 1.5707964f;
        fArr[0] = ((-PMath.sin(f13)) * f11) + f;
        fArr[1] = (PMath.cos(f13) * f11) + f2;
        fArr[2] = f9;
        fArr[3] = u2;
        fArr[4] = v2;
        float f14 = f7 + 1.5707964f;
        fArr[5] = ((-PMath.sin(f14)) * f11) + f;
        fArr[6] = f2 + (PMath.cos(f14) * f11);
        fArr[7] = f9;
        fArr[8] = u;
        fArr[9] = v2;
        float f15 = f8 + 1.5707964f;
        fArr[10] = f3 + ((-PMath.sin(f15)) * f12);
        fArr[11] = f4 + (PMath.cos(f15) * f12);
        fArr[12] = f10;
        fArr[13] = u;
        fArr[14] = v;
        float f16 = f8 - 1.5707964f;
        fArr[15] = f3 + ((-PMath.sin(f16)) * f12);
        fArr[16] = f4 + (PMath.cos(f16) * f12);
        fArr[17] = f10;
        fArr[18] = u2;
        fArr[19] = v;
        spriteCache.add(textureRegion.getTexture(), fArr, 0, 20);
    }

    public static void texturedLine(SpriteBatch spriteBatch, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Color color, Color color2) {
        texturedLine(spriteBatch, textureRegion, f, f2, f3, f4, f5, f6, f7, f8, color.toFloatBits(), color2.toFloatBits());
    }

    public static void texturedLine(SpriteBatch spriteBatch, Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14) {
        float f15 = f9 / 2.0f;
        float f16 = f10 / 2.0f;
        float[] fArr = f15074b;
        float f17 = f11 - 1.5707964f;
        fArr[0] = ((-PMath.sin(f17)) * f15) + f5;
        fArr[1] = (PMath.cos(f17) * f15) + f6;
        fArr[2] = f13;
        fArr[3] = f3;
        fArr[4] = f4;
        float f18 = f12 - 1.5707964f;
        fArr[15] = f7 + ((-PMath.sin(f18)) * f16);
        fArr[16] = f8 + (PMath.cos(f18) * f16);
        fArr[17] = f14;
        fArr[18] = f3;
        fArr[19] = f2;
        float f19 = f11 + 1.5707964f;
        fArr[5] = ((-PMath.sin(f19)) * f15) + f5;
        fArr[6] = f6 + (PMath.cos(f19) * f15);
        fArr[7] = f13;
        fArr[8] = f;
        fArr[9] = f4;
        float f20 = f12 + 1.5707964f;
        fArr[10] = f7 + ((-PMath.sin(f20)) * f16);
        fArr[11] = f8 + (PMath.cos(f20) * f16);
        fArr[12] = f14;
        fArr[13] = f;
        fArr[14] = f2;
        spriteBatch.draw(texture, fArr, 0, 20);
    }

    public static void texturedLine(SpriteBatch spriteBatch, TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, Color color, Color color2) {
        float atan2 = MathUtils.atan2(f4 - f2, f3 - f) - 1.5707964f;
        texturedLine(spriteBatch, textureRegion, f, f2, f3, f4, f5, f6, atan2, atan2, color, color2);
    }
}
