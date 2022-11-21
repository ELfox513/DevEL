package com.badlogic.gdx.graphics.g3d.decals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.NumberUtils;
/* loaded from: classes.dex */
public class Decal {

    /* renamed from: C1 */
    public static final int f4405C1 = 3;

    /* renamed from: C2 */
    public static final int f4406C2 = 9;

    /* renamed from: C3 */
    public static final int f4407C3 = 15;

    /* renamed from: C4 */
    public static final int f4408C4 = 21;
    public static final int SIZE = 24;

    /* renamed from: U1 */
    public static final int f4409U1 = 4;

    /* renamed from: U2 */
    public static final int f4410U2 = 10;

    /* renamed from: U3 */
    public static final int f4411U3 = 16;

    /* renamed from: U4 */
    public static final int f4412U4 = 22;

    /* renamed from: V1 */
    public static final int f4413V1 = 5;

    /* renamed from: V2 */
    public static final int f4414V2 = 11;

    /* renamed from: V3 */
    public static final int f4415V3 = 17;

    /* renamed from: V4 */
    public static final int f4416V4 = 23;

    /* renamed from: X1 */
    public static final int f4417X1 = 0;

    /* renamed from: X2 */
    public static final int f4418X2 = 6;

    /* renamed from: X3 */
    public static final int f4419X3 = 12;

    /* renamed from: X4 */
    public static final int f4420X4 = 18;

    /* renamed from: Y1 */
    public static final int f4421Y1 = 1;

    /* renamed from: Y2 */
    public static final int f4422Y2 = 7;

    /* renamed from: Y3 */
    public static final int f4423Y3 = 13;

    /* renamed from: Y4 */
    public static final int f4424Y4 = 19;

    /* renamed from: Z1 */
    public static final int f4425Z1 = 2;

    /* renamed from: Z2 */
    public static final int f4426Z2 = 8;

    /* renamed from: Z3 */
    public static final int f4427Z3 = 14;

    /* renamed from: Z4 */
    public static final int f4428Z4 = 20;

    /* renamed from: i */
    public static Vector3 f4429i = new Vector3();

    /* renamed from: j */
    public static Vector3 f4430j = new Vector3();

    /* renamed from: k */
    public static final Vector3 f4431k = new Vector3();

    /* renamed from: l */
    public static Quaternion f4432l = new Quaternion(0.0f, 0.0f, 0.0f, 0.0f);

    /* renamed from: a */
    public float[] f4433a;

    /* renamed from: b */
    public Vector3 f4434b;

    /* renamed from: c */
    public Quaternion f4435c;

    /* renamed from: d */
    public Vector2 f4436d;

    /* renamed from: e */
    public Color f4437e;

    /* renamed from: f */
    public Vector2 f4438f;

    /* renamed from: g */
    public DecalMaterial f4439g;

    /* renamed from: h */
    public boolean f4440h;
    public Vector2 transformationOffset;
    public int value;

    public Decal() {
        this.f4433a = new float[24];
        this.f4434b = new Vector3();
        this.f4435c = new Quaternion();
        this.f4436d = new Vector2(1.0f, 1.0f);
        this.f4437e = new Color();
        this.transformationOffset = null;
        this.f4438f = new Vector2();
        this.f4440h = false;
        this.f4439g = new DecalMaterial();
    }

    public static Decal newDecal(TextureRegion textureRegion) {
        return newDecal(textureRegion.getRegionWidth(), textureRegion.getRegionHeight(), textureRegion, -1, -1);
    }

    public Color getColor() {
        return this.f4437e;
    }

    public float getHeight() {
        return this.f4438f.f5528y;
    }

    public DecalMaterial getMaterial() {
        return this.f4439g;
    }

    public Vector3 getPosition() {
        return this.f4434b;
    }

    public Quaternion getRotation() {
        return this.f4435c;
    }

    public float getScaleX() {
        return this.f4436d.f5527x;
    }

    public float getScaleY() {
        return this.f4436d.f5528y;
    }

    public TextureRegion getTextureRegion() {
        return this.f4439g.f4448a;
    }

    public float getWidth() {
        return this.f4438f.f5527x;
    }

    public float getX() {
        return this.f4434b.f5533x;
    }

    public float getY() {
        return this.f4434b.f5534y;
    }

    public float getZ() {
        return this.f4434b.f5535z;
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f4437e.set(f, f2, f3, f4);
        int i = ((int) (f2 * 255.0f)) << 8;
        int i2 = (int) (f * 255.0f);
        float intToFloatColor = NumberUtils.intToFloatColor(i2 | i | (((int) (f3 * 255.0f)) << 16) | (((int) (f4 * 255.0f)) << 24));
        float[] fArr = this.f4433a;
        fArr[3] = intToFloatColor;
        fArr[9] = intToFloatColor;
        fArr[15] = intToFloatColor;
        fArr[21] = intToFloatColor;
    }

    public void setMaterial(DecalMaterial decalMaterial) {
        this.f4439g = decalMaterial;
    }

    public void setPosition(float f, float f2, float f3) {
        this.f4434b.set(f, f2, f3);
        this.f4440h = false;
    }

    public void setRotation(float f, float f2, float f3) {
        this.f4435c.setEulerAngles(f, f2, f3);
        this.f4440h = false;
    }

    public void setScale(float f, float f2) {
        this.f4436d.set(f, f2);
        this.f4440h = false;
    }

    public void translate(float f, float f2, float f3) {
        this.f4434b.add(f, f2, f3);
        this.f4440h = false;
    }

    public static Decal newDecal(TextureRegion textureRegion, boolean z) {
        return newDecal(textureRegion.getRegionWidth(), textureRegion.getRegionHeight(), textureRegion, z ? GL20.GL_SRC_ALPHA : -1, z ? GL20.GL_ONE_MINUS_SRC_ALPHA : -1);
    }

    /* renamed from: a */
    public void m24150a() {
        Vector2 vector2 = this.f4438f;
        float f = vector2.f5527x;
        float f2 = (-f) / 2.0f;
        float f3 = f + f2;
        float f4 = vector2.f5528y;
        float f5 = f4 / 2.0f;
        float f6 = f5 - f4;
        float[] fArr = this.f4433a;
        fArr[0] = f2;
        fArr[1] = f5;
        fArr[2] = 0.0f;
        fArr[6] = f3;
        fArr[7] = f5;
        fArr[8] = 0.0f;
        fArr[12] = f2;
        fArr[13] = f6;
        fArr[14] = 0.0f;
        fArr[18] = f3;
        fArr[19] = f6;
        fArr[20] = 0.0f;
        this.f4440h = false;
    }

    /* renamed from: b */
    public void m24149b() {
        float f;
        float f2;
        Vector2 vector2 = this.transformationOffset;
        if (vector2 != null) {
            f = -vector2.f5527x;
            f2 = -vector2.f5528y;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        float[] fArr = this.f4433a;
        Vector2 vector22 = this.f4436d;
        float f3 = (fArr[0] + f) * vector22.f5527x;
        float f4 = (fArr[1] + f2) * vector22.f5528y;
        float f5 = fArr[2];
        Quaternion quaternion = this.f4435c;
        float f6 = quaternion.f5517w;
        float f7 = quaternion.f5519y;
        float f8 = quaternion.f5520z;
        fArr[0] = ((f6 * f3) + (f7 * f5)) - (f8 * f4);
        float f9 = quaternion.f5518x;
        fArr[1] = ((f6 * f4) + (f8 * f3)) - (f9 * f5);
        fArr[2] = ((f6 * f5) + (f9 * f4)) - (f7 * f3);
        float f10 = (((-f9) * f3) - (f7 * f4)) - (f8 * f5);
        quaternion.conjugate();
        float[] fArr2 = this.f4433a;
        float f11 = fArr2[0];
        float f12 = fArr2[1];
        float f13 = fArr2[2];
        Quaternion quaternion2 = this.f4435c;
        float f14 = quaternion2.f5518x;
        float f15 = quaternion2.f5517w;
        float f16 = quaternion2.f5520z;
        float f17 = quaternion2.f5519y;
        fArr2[0] = (((f10 * f14) + (f11 * f15)) + (f12 * f16)) - (f13 * f17);
        fArr2[1] = (((f10 * f17) + (f12 * f15)) + (f13 * f14)) - (f11 * f16);
        fArr2[2] = (((f10 * f16) + (f13 * f15)) + (f11 * f17)) - (f12 * f14);
        quaternion2.conjugate();
        float[] fArr3 = this.f4433a;
        float f18 = fArr3[0];
        Vector3 vector3 = this.f4434b;
        fArr3[0] = f18 + (vector3.f5533x - f);
        fArr3[1] = fArr3[1] + (vector3.f5534y - f2);
        fArr3[2] = fArr3[2] + vector3.f5535z;
        Vector2 vector23 = this.f4436d;
        float f19 = (fArr3[6] + f) * vector23.f5527x;
        float f20 = (fArr3[7] + f2) * vector23.f5528y;
        float f21 = fArr3[8];
        Quaternion quaternion3 = this.f4435c;
        float f22 = quaternion3.f5517w;
        float f23 = quaternion3.f5519y;
        float f24 = quaternion3.f5520z;
        fArr3[6] = ((f22 * f19) + (f23 * f21)) - (f24 * f20);
        float f25 = quaternion3.f5518x;
        fArr3[7] = ((f22 * f20) + (f24 * f19)) - (f25 * f21);
        fArr3[8] = ((f22 * f21) + (f25 * f20)) - (f23 * f19);
        float f26 = (((-f25) * f19) - (f23 * f20)) - (f24 * f21);
        quaternion3.conjugate();
        float[] fArr4 = this.f4433a;
        float f27 = fArr4[6];
        float f28 = fArr4[7];
        float f29 = fArr4[8];
        Quaternion quaternion4 = this.f4435c;
        float f30 = quaternion4.f5518x;
        float f31 = quaternion4.f5517w;
        float f32 = quaternion4.f5520z;
        float f33 = quaternion4.f5519y;
        fArr4[6] = (((f26 * f30) + (f27 * f31)) + (f28 * f32)) - (f29 * f33);
        fArr4[7] = (((f26 * f33) + (f28 * f31)) + (f29 * f30)) - (f27 * f32);
        fArr4[8] = (((f26 * f32) + (f29 * f31)) + (f27 * f33)) - (f28 * f30);
        quaternion4.conjugate();
        float[] fArr5 = this.f4433a;
        float f34 = fArr5[6];
        Vector3 vector32 = this.f4434b;
        fArr5[6] = f34 + (vector32.f5533x - f);
        fArr5[7] = fArr5[7] + (vector32.f5534y - f2);
        fArr5[8] = fArr5[8] + vector32.f5535z;
        Vector2 vector24 = this.f4436d;
        float f35 = (fArr5[12] + f) * vector24.f5527x;
        float f36 = (fArr5[13] + f2) * vector24.f5528y;
        float f37 = fArr5[14];
        Quaternion quaternion5 = this.f4435c;
        float f38 = quaternion5.f5517w;
        float f39 = quaternion5.f5519y;
        float f40 = quaternion5.f5520z;
        fArr5[12] = ((f38 * f35) + (f39 * f37)) - (f40 * f36);
        float f41 = quaternion5.f5518x;
        fArr5[13] = ((f38 * f36) + (f40 * f35)) - (f41 * f37);
        fArr5[14] = ((f38 * f37) + (f41 * f36)) - (f39 * f35);
        float f42 = (((-f41) * f35) - (f39 * f36)) - (f40 * f37);
        quaternion5.conjugate();
        float[] fArr6 = this.f4433a;
        float f43 = fArr6[12];
        float f44 = fArr6[13];
        float f45 = fArr6[14];
        Quaternion quaternion6 = this.f4435c;
        float f46 = quaternion6.f5518x;
        float f47 = quaternion6.f5517w;
        float f48 = quaternion6.f5520z;
        float f49 = quaternion6.f5519y;
        fArr6[12] = (((f42 * f46) + (f43 * f47)) + (f44 * f48)) - (f45 * f49);
        fArr6[13] = (((f42 * f49) + (f44 * f47)) + (f45 * f46)) - (f43 * f48);
        fArr6[14] = (((f42 * f48) + (f45 * f47)) + (f43 * f49)) - (f44 * f46);
        quaternion6.conjugate();
        float[] fArr7 = this.f4433a;
        float f50 = fArr7[12];
        Vector3 vector33 = this.f4434b;
        fArr7[12] = f50 + (vector33.f5533x - f);
        fArr7[13] = fArr7[13] + (vector33.f5534y - f2);
        fArr7[14] = fArr7[14] + vector33.f5535z;
        Vector2 vector25 = this.f4436d;
        float f51 = (fArr7[18] + f) * vector25.f5527x;
        float f52 = (fArr7[19] + f2) * vector25.f5528y;
        float f53 = fArr7[20];
        Quaternion quaternion7 = this.f4435c;
        float f54 = quaternion7.f5517w;
        float f55 = quaternion7.f5519y;
        float f56 = quaternion7.f5520z;
        fArr7[18] = ((f54 * f51) + (f55 * f53)) - (f56 * f52);
        float f57 = quaternion7.f5518x;
        fArr7[19] = ((f54 * f52) + (f56 * f51)) - (f57 * f53);
        fArr7[20] = ((f54 * f53) + (f57 * f52)) - (f55 * f51);
        float f58 = (((-f57) * f51) - (f55 * f52)) - (f56 * f53);
        quaternion7.conjugate();
        float[] fArr8 = this.f4433a;
        float f59 = fArr8[18];
        float f60 = fArr8[19];
        float f61 = fArr8[20];
        Quaternion quaternion8 = this.f4435c;
        float f62 = quaternion8.f5518x;
        float f63 = quaternion8.f5517w;
        float f64 = quaternion8.f5520z;
        float f65 = quaternion8.f5519y;
        fArr8[18] = (((f58 * f62) + (f59 * f63)) + (f60 * f64)) - (f61 * f65);
        fArr8[19] = (((f58 * f65) + (f60 * f63)) + (f61 * f62)) - (f59 * f64);
        fArr8[20] = (((f58 * f64) + (f61 * f63)) + (f59 * f65)) - (f60 * f62);
        quaternion8.conjugate();
        float[] fArr9 = this.f4433a;
        float f66 = fArr9[18];
        Vector3 vector34 = this.f4434b;
        fArr9[18] = f66 + (vector34.f5533x - f);
        fArr9[19] = fArr9[19] + (vector34.f5534y - f2);
        fArr9[20] = fArr9[20] + vector34.f5535z;
        this.f4440h = true;
    }

    /* renamed from: c */
    public void m24148c() {
        if (!this.f4440h) {
            m24150a();
            m24149b();
        }
    }

    /* renamed from: d */
    public void m24147d() {
        TextureRegion textureRegion = this.f4439g.f4448a;
        this.f4433a[4] = textureRegion.getU();
        this.f4433a[5] = textureRegion.getV();
        this.f4433a[10] = textureRegion.getU2();
        this.f4433a[11] = textureRegion.getV();
        this.f4433a[16] = textureRegion.getU();
        this.f4433a[17] = textureRegion.getV2();
        this.f4433a[22] = textureRegion.getU2();
        this.f4433a[23] = textureRegion.getV2();
    }

    public void lookAt(Vector3 vector3, Vector3 vector32) {
        Vector3 vector33 = f4431k;
        vector33.set(vector3).sub(this.f4434b).nor();
        setRotation(vector33, vector32);
    }

    public void rotateX(float f) {
        f4432l.set(Vector3.f5529X, f);
        this.f4435c.mul(f4432l);
        this.f4440h = false;
    }

    public void rotateY(float f) {
        f4432l.set(Vector3.f5530Y, f);
        this.f4435c.mul(f4432l);
        this.f4440h = false;
    }

    public void rotateZ(float f) {
        f4432l.set(Vector3.f5531Z, f);
        this.f4435c.mul(f4432l);
        this.f4440h = false;
    }

    public void setBlending(int i, int i2) {
        DecalMaterial decalMaterial = this.f4439g;
        decalMaterial.f4449b = i;
        decalMaterial.f4450c = i2;
    }

    public void setDimensions(float f, float f2) {
        this.f4438f.set(f, f2);
        this.f4440h = false;
    }

    public void setHeight(float f) {
        this.f4438f.f5528y = f;
        this.f4440h = false;
    }

    public void setPackedColor(float f) {
        Color.abgr8888ToColor(this.f4437e, f);
        float[] fArr = this.f4433a;
        fArr[3] = f;
        fArr[9] = f;
        fArr[15] = f;
        fArr[21] = f;
    }

    public void setRotationX(float f) {
        this.f4435c.set(Vector3.f5529X, f);
        this.f4440h = false;
    }

    public void setRotationY(float f) {
        this.f4435c.set(Vector3.f5530Y, f);
        this.f4440h = false;
    }

    public void setRotationZ(float f) {
        this.f4435c.set(Vector3.f5531Z, f);
        this.f4440h = false;
    }

    public void setScaleX(float f) {
        this.f4436d.f5527x = f;
        this.f4440h = false;
    }

    public void setScaleY(float f) {
        this.f4436d.f5528y = f;
        this.f4440h = false;
    }

    public void setTextureRegion(TextureRegion textureRegion) {
        this.f4439g.f4448a = textureRegion;
        m24147d();
    }

    public void setWidth(float f) {
        this.f4438f.f5527x = f;
        this.f4440h = false;
    }

    public void setX(float f) {
        this.f4434b.f5533x = f;
        this.f4440h = false;
    }

    public void setY(float f) {
        this.f4434b.f5534y = f;
        this.f4440h = false;
    }

    public void setZ(float f) {
        this.f4434b.f5535z = f;
        this.f4440h = false;
    }

    public void translateX(float f) {
        this.f4434b.f5533x += f;
        this.f4440h = false;
    }

    public void translateY(float f) {
        this.f4434b.f5534y += f;
        this.f4440h = false;
    }

    public void translateZ(float f) {
        this.f4434b.f5535z += f;
        this.f4440h = false;
    }

    public static Decal newDecal(float f, float f2, TextureRegion textureRegion) {
        return newDecal(f, f2, textureRegion, -1, -1);
    }

    public float[] getVertices() {
        m24148c();
        return this.f4433a;
    }

    public void setPosition(Vector3 vector3) {
        this.f4434b.set(vector3);
        this.f4440h = false;
    }

    public void setRotation(Vector3 vector3, Vector3 vector32) {
        f4429i.set(vector32).crs(vector3).nor();
        f4430j.set(vector3).crs(f4429i).nor();
        Quaternion quaternion = this.f4435c;
        Vector3 vector33 = f4429i;
        float f = vector33.f5533x;
        Vector3 vector34 = f4430j;
        quaternion.setFromAxes(f, vector34.f5533x, vector3.f5533x, vector33.f5534y, vector34.f5534y, vector3.f5534y, vector33.f5535z, vector34.f5535z, vector3.f5535z);
        this.f4440h = false;
    }

    public void setScale(float f) {
        this.f4436d.set(f, f);
        this.f4440h = false;
    }

    public void translate(Vector3 vector3) {
        this.f4434b.add(vector3);
        this.f4440h = false;
    }

    public static Decal newDecal(float f, float f2, TextureRegion textureRegion, boolean z) {
        return newDecal(f, f2, textureRegion, z ? GL20.GL_SRC_ALPHA : -1, z ? GL20.GL_ONE_MINUS_SRC_ALPHA : -1);
    }

    public static Decal newDecal(float f, float f2, TextureRegion textureRegion, int i, int i2) {
        Decal decal = new Decal();
        decal.setTextureRegion(textureRegion);
        decal.setBlending(i, i2);
        Vector2 vector2 = decal.f4438f;
        vector2.f5527x = f;
        vector2.f5528y = f2;
        decal.setColor(1.0f, 1.0f, 1.0f, 1.0f);
        return decal;
    }

    public void setColor(Color color) {
        this.f4437e.set(color);
        float floatBits = color.toFloatBits();
        float[] fArr = this.f4433a;
        fArr[3] = floatBits;
        fArr[9] = floatBits;
        fArr[15] = floatBits;
        fArr[21] = floatBits;
    }

    public void setRotation(Quaternion quaternion) {
        this.f4435c.set(quaternion);
        this.f4440h = false;
    }

    public Decal(DecalMaterial decalMaterial) {
        this.f4433a = new float[24];
        this.f4434b = new Vector3();
        this.f4435c = new Quaternion();
        this.f4436d = new Vector2(1.0f, 1.0f);
        this.f4437e = new Color();
        this.transformationOffset = null;
        this.f4438f = new Vector2();
        this.f4440h = false;
        this.f4439g = decalMaterial;
    }

    public static Decal newDecal(float f, float f2, TextureRegion textureRegion, int i, int i2, DecalMaterial decalMaterial) {
        Decal decal = new Decal(decalMaterial);
        decal.setTextureRegion(textureRegion);
        decal.setBlending(i, i2);
        Vector2 vector2 = decal.f4438f;
        vector2.f5527x = f;
        vector2.f5528y = f2;
        decal.setColor(1.0f, 1.0f, 1.0f, 1.0f);
        return decal;
    }
}
