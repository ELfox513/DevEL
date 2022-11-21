package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Affine2;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.prineside.tdi2.tiles.CoreTile;
/* loaded from: classes.dex */
public class CpuSpriteBatch extends SpriteBatch {

    /* renamed from: F */
    public final Matrix4 f4019F;

    /* renamed from: G */
    public final Affine2 f4020G;

    /* renamed from: H */
    public boolean f4021H;

    /* renamed from: I */
    public boolean f4022I;

    /* renamed from: J */
    public final Affine2 f4023J;

    public CpuSpriteBatch() {
        this(CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
    }

    /* renamed from: d */
    public static boolean m24241d(Matrix4 matrix4, Matrix4 matrix42) {
        if (matrix4 == matrix42) {
            return true;
        }
        float[] fArr = matrix4.val;
        float f = fArr[0];
        float[] fArr2 = matrix42.val;
        return f == fArr2[0] && fArr[1] == fArr2[1] && fArr[4] == fArr2[4] && fArr[5] == fArr2[5] && fArr[12] == fArr2[12] && fArr[13] == fArr2[13];
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (!this.f4021H) {
            super.draw(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, i, i2, i3, i4, z, z2);
        } else {
            m24239f(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, i, i2, i3, i4, z, z2);
        }
    }

    /* renamed from: f */
    public final void m24239f(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        float width = 1.0f / texture.getWidth();
        float height = 1.0f / texture.getHeight();
        m24234k(texture, f, f2, f3, f4, f5, f6, f7, f8, f9, i * width, (i2 + i4) * height, width * (i + i3), height * i2, z, z2);
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public Matrix4 getTransformMatrix() {
        return this.f4021H ? this.f4019F : super.getTransformMatrix();
    }

    /* renamed from: h */
    public final void m24237h(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        m24234k(textureRegion.f4354a, f, f2, f3, f4, f5, f6, f7, f8, f9, textureRegion.f4355b, textureRegion.f4358e, textureRegion.f4357d, textureRegion.f4356c, false, false);
    }

    /* renamed from: i */
    public final void m24236i(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, boolean z) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        if (this.f4290r) {
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == this.f4285b.length) {
                super.flush();
            }
            float f21 = f + f3;
            float f22 = f2 + f4;
            float f23 = -f3;
            float f24 = -f4;
            float f25 = f5 - f3;
            float f26 = f6 - f4;
            if (f7 != 1.0f || f8 != 1.0f) {
                f23 *= f7;
                f24 *= f8;
                f25 *= f7;
                f26 *= f8;
            }
            if (f9 != 0.0f) {
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(f9);
                float f27 = cosDeg * f23;
                f11 = f27 - (sinDeg * f24);
                float f28 = f23 * sinDeg;
                float f29 = (f24 * cosDeg) + f28;
                float f30 = sinDeg * f26;
                f10 = f27 - f30;
                float f31 = f26 * cosDeg;
                f14 = f28 + f31;
                float f32 = (cosDeg * f25) - f30;
                float f33 = f31 + (sinDeg * f25);
                f13 = f33 - (f14 - f29);
                f16 = (f32 - f10) + f11;
                f25 = f32;
                f12 = f29;
                f15 = f33;
            } else {
                f10 = f23;
                f11 = f10;
                f12 = f24;
                f13 = f12;
                f14 = f26;
                f15 = f14;
                f16 = f25;
            }
            float f34 = f11 + f21;
            float f35 = f12 + f22;
            float f36 = f10 + f21;
            float f37 = f14 + f22;
            float f38 = f25 + f21;
            float f39 = f15 + f22;
            float f40 = f16 + f21;
            float f41 = f13 + f22;
            if (z) {
                f17 = textureRegion.f4357d;
                f18 = textureRegion.f4358e;
                f19 = textureRegion.f4355b;
                f20 = textureRegion.f4356c;
            } else {
                f17 = textureRegion.f4355b;
                f18 = textureRegion.f4356c;
                f19 = textureRegion.f4357d;
                f20 = textureRegion.f4358e;
            }
            float f42 = f20;
            float f43 = f18;
            float f44 = f19;
            float f45 = f17;
            Affine2 affine2 = this.f4020G;
            float[] fArr = this.f4285b;
            int i = this.f4286d;
            float f46 = affine2.m00;
            float f47 = f20;
            float f48 = affine2.m01;
            float f49 = affine2.m02;
            fArr[i + 0] = (f46 * f34) + (f48 * f35) + f49;
            float f50 = affine2.m10;
            float f51 = affine2.m11;
            float f52 = affine2.m12;
            fArr[i + 1] = (f34 * f50) + (f35 * f51) + f52;
            float f53 = this.f4283E;
            fArr[i + 2] = f53;
            fArr[i + 3] = f45;
            fArr[i + 4] = f43;
            fArr[i + 5] = (f46 * f36) + (f48 * f37) + f49;
            fArr[i + 6] = (f36 * f50) + (f37 * f51) + f52;
            fArr[i + 7] = f53;
            fArr[i + 8] = f44;
            fArr[i + 9] = f43;
            fArr[i + 10] = (f46 * f38) + (f48 * f39) + f49;
            fArr[i + 11] = (f50 * f38) + (f51 * f39) + f52;
            fArr[i + 12] = f53;
            fArr[i + 13] = f44;
            fArr[i + 14] = f47;
            fArr[i + 15] = (f46 * f40) + (f48 * f41) + f49;
            fArr[i + 16] = (f50 * f40) + (f51 * f41) + f52;
            fArr[i + 17] = f53;
            fArr[i + 18] = f45;
            fArr[i + 19] = f42;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("CpuSpriteBatch.begin must be called before draw.");
    }

    /* renamed from: k */
    public final void m24234k(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, boolean z, boolean z2) {
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        if (this.f4290r) {
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == this.f4285b.length) {
                super.flush();
            }
            float f25 = f + f3;
            float f26 = f2 + f4;
            float f27 = -f3;
            float f28 = -f4;
            float f29 = f5 - f3;
            float f30 = f6 - f4;
            if (f7 != 1.0f || f8 != 1.0f) {
                f27 *= f7;
                f28 *= f8;
                f29 *= f7;
                f30 *= f8;
            }
            if (f9 != 0.0f) {
                float cosDeg = MathUtils.cosDeg(f9);
                float sinDeg = MathUtils.sinDeg(f9);
                float f31 = cosDeg * f27;
                f15 = f31 - (sinDeg * f28);
                float f32 = f27 * sinDeg;
                float f33 = (f28 * cosDeg) + f32;
                float f34 = sinDeg * f30;
                f14 = f31 - f34;
                float f35 = f30 * cosDeg;
                f18 = f32 + f35;
                float f36 = (cosDeg * f29) - f34;
                float f37 = f35 + (sinDeg * f29);
                f17 = f37 - (f18 - f33);
                f20 = (f36 - f14) + f15;
                f29 = f36;
                f16 = f33;
                f19 = f37;
            } else {
                f14 = f27;
                f15 = f14;
                f16 = f28;
                f17 = f16;
                f18 = f30;
                f19 = f18;
                f20 = f29;
            }
            float f38 = f15 + f25;
            float f39 = f16 + f26;
            float f40 = f14 + f25;
            float f41 = f18 + f26;
            float f42 = f29 + f25;
            float f43 = f19 + f26;
            float f44 = f20 + f25;
            float f45 = f17 + f26;
            if (z) {
                f22 = f10;
                f21 = f12;
            } else {
                f21 = f10;
                f22 = f12;
            }
            if (z2) {
                f24 = f11;
                f23 = f13;
            } else {
                f23 = f11;
                f24 = f13;
            }
            Affine2 affine2 = this.f4020G;
            float[] fArr = this.f4285b;
            int i = this.f4286d;
            float f46 = affine2.m00;
            float f47 = affine2.m01;
            float f48 = f22;
            float f49 = affine2.m02;
            fArr[i + 0] = (f46 * f38) + (f47 * f39) + f49;
            float f50 = affine2.m10;
            float f51 = affine2.m11;
            float f52 = (f38 * f50) + (f39 * f51);
            float f53 = affine2.m12;
            fArr[i + 1] = f52 + f53;
            float f54 = this.f4283E;
            fArr[i + 2] = f54;
            fArr[i + 3] = f21;
            fArr[i + 4] = f23;
            fArr[i + 5] = (f46 * f40) + (f47 * f41) + f49;
            fArr[i + 6] = (f40 * f50) + (f41 * f51) + f53;
            fArr[i + 7] = f54;
            fArr[i + 8] = f21;
            fArr[i + 9] = f24;
            fArr[i + 10] = (f46 * f42) + (f47 * f43) + f49;
            fArr[i + 11] = (f50 * f42) + (f51 * f43) + f53;
            fArr[i + 12] = f54;
            fArr[i + 13] = f48;
            fArr[i + 14] = f24;
            fArr[i + 15] = (f46 * f44) + (f47 * f45) + f49;
            fArr[i + 16] = (f50 * f44) + (f51 * f45) + f53;
            fArr[i + 17] = f54;
            fArr[i + 18] = f48;
            fArr[i + 19] = f23;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("CpuSpriteBatch.begin must be called before draw.");
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void setTransformMatrix(Matrix4 matrix4) {
        Matrix4 transformMatrix = super.getTransformMatrix();
        if (m24241d(transformMatrix, matrix4)) {
            this.f4021H = false;
        } else if (isDrawing()) {
            this.f4019F.setAsAffine(matrix4);
            this.f4021H = true;
            if (this.f4022I) {
                this.f4020G.set(matrix4);
                return;
            }
            this.f4023J.set(matrix4);
            this.f4020G.set(transformMatrix).inv().mul(this.f4023J);
        } else {
            transformMatrix.setAsAffine(matrix4);
            this.f4022I = m24240e(transformMatrix);
        }
    }

    public CpuSpriteBatch(int i) {
        this(i, null);
    }

    /* renamed from: g */
    public final void m24238g(Texture texture, float[] fArr, int i, int i2) {
        if (this.f4290r) {
            if (texture != this.f4287k) {
                m24185b(texture);
            }
            Affine2 affine2 = this.f4020G;
            int min = Math.min(this.f4285b.length - this.f4286d, i2);
            do {
                i2 -= min;
                while (min > 0) {
                    float f = fArr[i];
                    float f2 = fArr[i + 1];
                    float[] fArr2 = this.f4285b;
                    int i3 = this.f4286d;
                    fArr2[i3] = (affine2.m00 * f) + (affine2.m01 * f2) + affine2.m02;
                    fArr2[i3 + 1] = (affine2.m10 * f) + (affine2.m11 * f2) + affine2.m12;
                    fArr2[i3 + 2] = fArr[i + 2];
                    fArr2[i3 + 3] = fArr[i + 3];
                    fArr2[i3 + 4] = fArr[i + 4];
                    this.f4286d = i3 + 5;
                    i += 5;
                    min -= 5;
                }
                if (i2 > 0) {
                    super.flush();
                    min = Math.min(this.f4285b.length, i2);
                    continue;
                }
            } while (i2 > 0);
            return;
        }
        throw new IllegalStateException("CpuSpriteBatch.begin must be called before draw.");
    }

    /* renamed from: j */
    public final void m24235j(TextureRegion textureRegion, float f, float f2, Affine2 affine2) {
        if (this.f4290r) {
            Texture texture = textureRegion.f4354a;
            if (texture != this.f4287k) {
                m24185b(texture);
            } else if (this.f4286d == this.f4285b.length) {
                super.flush();
            }
            float f3 = affine2.m02;
            float f4 = affine2.m12;
            float f5 = affine2.m01;
            float f6 = (f5 * f2) + f3;
            float f7 = affine2.m11;
            float f8 = (f7 * f2) + f4;
            float f9 = affine2.m00;
            float f10 = (f9 * f) + (f5 * f2) + f3;
            float f11 = affine2.m10;
            float f12 = (f11 * f) + (f7 * f2) + f4;
            float f13 = (f9 * f) + f3;
            float f14 = (f11 * f) + f4;
            float f15 = textureRegion.f4355b;
            float f16 = textureRegion.f4358e;
            float f17 = textureRegion.f4357d;
            float f18 = textureRegion.f4356c;
            Affine2 affine22 = this.f4020G;
            float[] fArr = this.f4285b;
            int i = this.f4286d;
            float f19 = affine22.m00;
            float f20 = affine22.m01;
            float f21 = affine22.m02;
            fArr[i + 0] = (f19 * f3) + (f20 * f4) + f21;
            float f22 = affine22.m10;
            float f23 = affine22.m11;
            float f24 = (f3 * f22) + (f4 * f23);
            float f25 = affine22.m12;
            fArr[i + 1] = f24 + f25;
            float f26 = this.f4283E;
            fArr[i + 2] = f26;
            fArr[i + 3] = f15;
            fArr[i + 4] = f16;
            fArr[i + 5] = (f19 * f6) + (f20 * f8) + f21;
            fArr[i + 6] = (f6 * f22) + (f8 * f23) + f25;
            fArr[i + 7] = f26;
            fArr[i + 8] = f15;
            fArr[i + 9] = f18;
            fArr[i + 10] = (f19 * f10) + (f20 * f12) + f21;
            fArr[i + 11] = (f22 * f10) + (f23 * f12) + f25;
            fArr[i + 12] = f26;
            fArr[i + 13] = f17;
            fArr[i + 14] = f18;
            fArr[i + 15] = (f19 * f13) + (f20 * f14) + f21;
            fArr[i + 16] = (f22 * f13) + (f23 * f14) + f25;
            fArr[i + 17] = f26;
            fArr[i + 18] = f17;
            fArr[i + 19] = f16;
            this.f4286d = i + 20;
            return;
        }
        throw new IllegalStateException("CpuSpriteBatch.begin must be called before draw.");
    }

    public CpuSpriteBatch(int i, ShaderProgram shaderProgram) {
        super(i, shaderProgram);
        this.f4019F = new Matrix4();
        this.f4020G = new Affine2();
        this.f4022I = true;
        this.f4023J = new Affine2();
    }

    /* renamed from: c */
    public static boolean m24242c(Matrix4 matrix4, Affine2 affine2) {
        float[] values = matrix4.getValues();
        if (values[0] != affine2.m00 || values[1] != affine2.m10 || values[4] != affine2.m01 || values[5] != affine2.m11 || values[12] != affine2.m02 || values[13] != affine2.m12) {
            return false;
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m24240e(Matrix4 matrix4) {
        float[] values = matrix4.getValues();
        if (values[0] != 1.0f || values[1] != 0.0f || values[4] != 0.0f || values[5] != 1.0f || values[12] != 0.0f || values[13] != 0.0f) {
            return false;
        }
        return true;
    }

    public void flushAndSyncTransformMatrix() {
        flush();
        if (this.f4021H) {
            boolean m24240e = m24240e(this.f4019F);
            this.f4022I = m24240e;
            if (!m24240e && this.f4019F.det() == 0.0f) {
                throw new GdxRuntimeException("Transform matrix is singular, can't sync");
            }
            this.f4021H = false;
            super.setTransformMatrix(this.f4019F);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        if (!this.f4021H) {
            super.draw(texture, f, f2, f3, f4, i, i2, i3, i4, z, z2);
        } else {
            m24239f(texture, f, f2, 0.0f, 0.0f, f3, f4, 1.0f, 1.0f, 0.0f, i, i2, i3, i4, z, z2);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, int i, int i2, int i3, int i4) {
        if (!this.f4021H) {
            super.draw(texture, f, f2, i, i2, i3, i4);
        } else {
            m24239f(texture, f, f2, 0.0f, 0.0f, i3, i4, 1.0f, 1.0f, 0.0f, i, i2, i3, i4, false, false);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        if (!this.f4021H) {
            super.draw(texture, f, f2, f3, f4, f5, f6, f7, f8);
        } else {
            m24234k(texture, f, f2, 0.0f, 0.0f, f3, f4, 1.0f, 1.0f, 0.0f, f5, f6, f7, f8, false, false);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2) {
        if (!this.f4021H) {
            super.draw(texture, f, f2);
        } else {
            m24239f(texture, f, f2, 0.0f, 0.0f, texture.getWidth(), texture.getHeight(), 1.0f, 1.0f, 0.0f, 0, 1, 1, 0, false, false);
        }
    }

    public void setTransformMatrix(Affine2 affine2) {
        Matrix4 transformMatrix = super.getTransformMatrix();
        if (m24242c(transformMatrix, affine2)) {
            this.f4021H = false;
            return;
        }
        this.f4019F.setAsAffine(affine2);
        if (isDrawing()) {
            this.f4021H = true;
            if (this.f4022I) {
                this.f4020G.set(affine2);
                return;
            } else {
                this.f4020G.set(transformMatrix).inv().mul(affine2);
                return;
            }
        }
        transformMatrix.setAsAffine(affine2);
        this.f4022I = m24240e(transformMatrix);
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float f, float f2, float f3, float f4) {
        if (!this.f4021H) {
            super.draw(texture, f, f2, f3, f4);
        } else {
            m24239f(texture, f, f2, 0.0f, 0.0f, f3, f4, 1.0f, 1.0f, 0.0f, 0, 1, 1, 0, false, false);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2) {
        if (!this.f4021H) {
            super.draw(textureRegion, f, f2);
        } else {
            m24237h(textureRegion, f, f2, 0.0f, 0.0f, textureRegion.getRegionWidth(), textureRegion.getRegionHeight(), 1.0f, 1.0f, 0.0f);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4) {
        if (!this.f4021H) {
            super.draw(textureRegion, f, f2, f3, f4);
        } else {
            m24237h(textureRegion, f, f2, 0.0f, 0.0f, f3, f4, 1.0f, 1.0f, 0.0f);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        if (!this.f4021H) {
            super.draw(textureRegion, f, f2, f3, f4, f5, f6, f7, f8, f9);
        } else {
            m24237h(textureRegion, f, f2, f3, f4, f5, f6, f7, f8, f9);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, boolean z) {
        if (!this.f4021H) {
            super.draw(textureRegion, f, f2, f3, f4, f5, f6, f7, f8, f9, z);
        } else {
            m24236i(textureRegion, f, f2, f3, f4, f5, f6, f7, f8, f9, z);
        }
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(Texture texture, float[] fArr, int i, int i2) {
        if (i2 % 20 == 0) {
            if (!this.f4021H) {
                super.draw(texture, fArr, i, i2);
                return;
            } else {
                m24238g(texture, fArr, i, i2);
                return;
            }
        }
        throw new GdxRuntimeException("invalid vertex count");
    }

    @Override // com.badlogic.gdx.graphics.g2d.SpriteBatch, com.badlogic.gdx.graphics.g2d.Batch
    public void draw(TextureRegion textureRegion, float f, float f2, Affine2 affine2) {
        if (!this.f4021H) {
            super.draw(textureRegion, f, f2, affine2);
        } else {
            m24235j(textureRegion, f, f2, affine2);
        }
    }
}
