package com.badlogic.gdx.graphics.glutils;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes.dex */
public class ShapeRenderer implements Disposable {

    /* renamed from: a */
    public final ImmediateModeRenderer f5114a;

    /* renamed from: b */
    public boolean f5115b;

    /* renamed from: d */
    public final Matrix4 f5116d;

    /* renamed from: k */
    public final Matrix4 f5117k;

    /* renamed from: p */
    public final Matrix4 f5118p;

    /* renamed from: q */
    public final Vector2 f5119q;

    /* renamed from: r */
    public final Color f5120r;

    /* renamed from: s */
    public ShapeType f5121s;

    /* renamed from: t */
    public boolean f5122t;

    /* renamed from: u */
    public float f5123u;

    public ShapeRenderer() {
        this(5000);
    }

    public void arc(float f, float f2, float f3, float f4, float f5) {
        arc(f, f2, f3, f4, f5, Math.max(1, (int) (((float) Math.cbrt(f3)) * 6.0f * (f5 / 360.0f))));
    }

    public void begin() {
        if (this.f5122t) {
            begin(ShapeType.Line);
            return;
        }
        throw new IllegalStateException("autoShapeType must be true to use this method.");
    }

    public void box(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = -f6;
        float floatBits = this.f5120r.toFloatBits();
        ShapeType shapeType = this.f5121s;
        ShapeType shapeType2 = ShapeType.Line;
        if (shapeType == shapeType2) {
            m23997a(shapeType2, ShapeType.Filled, 24);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, f3);
            this.f5114a.color(floatBits);
            float f8 = f4 + f;
            this.f5114a.vertex(f8, f2, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f2, f3);
            this.f5114a.color(floatBits);
            float f9 = f7 + f3;
            this.f5114a.vertex(f8, f2, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f2, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, f3);
            this.f5114a.color(floatBits);
            float f10 = f5 + f2;
            this.f5114a.vertex(f, f10, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f10, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f10, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f10, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f10, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f10, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f10, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f10, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f10, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f2, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f10, f3);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f2, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f8, f10, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, f9);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f10, f9);
            return;
        }
        m23997a(shapeType2, ShapeType.Filled, 36);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f3);
        this.f5114a.color(floatBits);
        float f11 = f4 + f;
        this.f5114a.vertex(f11, f2, f3);
        this.f5114a.color(floatBits);
        float f12 = f5 + f2;
        this.f5114a.vertex(f11, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f3);
        this.f5114a.color(floatBits);
        float f13 = f7 + f3;
        this.f5114a.vertex(f11, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f2, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f2, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f12, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f2, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f13);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f11, f2, f3);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, f3);
    }

    public void circle(float f, float f2, float f3) {
        circle(f, f2, f3, Math.max(1, (int) (((float) Math.cbrt(f3)) * 6.0f)));
    }

    public void cone(float f, float f2, float f3, float f4, float f5) {
        cone(f, f2, f3, f4, f5, Math.max(1, (int) (((float) Math.sqrt(f4)) * 4.0f)));
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f5114a.dispose();
    }

    public void ellipse(float f, float f2, float f3, float f4) {
        ellipse(f, f2, f3, f4, Math.max(1, (int) (((float) Math.cbrt(Math.max(f3 * 0.5f, 0.5f * f4))) * 12.0f)));
    }

    public Color getColor() {
        return this.f5120r;
    }

    public ShapeType getCurrentType() {
        return this.f5121s;
    }

    public Matrix4 getProjectionMatrix() {
        return this.f5116d;
    }

    public ImmediateModeRenderer getRenderer() {
        return this.f5114a;
    }

    public Matrix4 getTransformMatrix() {
        return this.f5117k;
    }

    public boolean isDrawing() {
        return this.f5121s != null;
    }

    public final void line(float f, float f2, float f3, float f4, float f5, float f6) {
        Color color = this.f5120r;
        line(f, f2, f3, f4, f5, f6, color, color);
    }

    public void polygon(float[] fArr, int i, int i2) {
        float f;
        float f2;
        if (i2 >= 6) {
            if (i2 % 2 == 0) {
                m23997a(ShapeType.Line, null, i2);
                float floatBits = this.f5120r.toFloatBits();
                float f3 = fArr[0];
                float f4 = fArr[1];
                int i3 = i + i2;
                while (i < i3) {
                    float f5 = fArr[i];
                    float f6 = fArr[i + 1];
                    int i4 = i + 2;
                    if (i4 >= i2) {
                        f = f3;
                        f2 = f4;
                    } else {
                        f = fArr[i4];
                        f2 = fArr[i + 3];
                    }
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f5, f6, 0.0f);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, 0.0f);
                    i = i4;
                }
                return;
            }
            throw new IllegalArgumentException("Polygons must have an even number of vertices.");
        }
        throw new IllegalArgumentException("Polygons must contain at least 3 points.");
    }

    public void polyline(float[] fArr, int i, int i2) {
        if (i2 >= 4) {
            if (i2 % 2 == 0) {
                m23997a(ShapeType.Line, null, i2);
                float floatBits = this.f5120r.toFloatBits();
                int i3 = (i2 + i) - 2;
                while (i < i3) {
                    float f = fArr[i];
                    float f2 = fArr[i + 1];
                    int i4 = i + 2;
                    float f3 = fArr[i4];
                    float f4 = fArr[i + 3];
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, 0.0f);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f3, f4, 0.0f);
                    i = i4;
                }
                return;
            }
            throw new IllegalArgumentException("Polylines must have an even number of vertices.");
        }
        throw new IllegalArgumentException("Polylines must contain at least 2 points.");
    }

    public void rect(float f, float f2, float f3, float f4) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 8);
        float floatBits = this.f5120r.toFloatBits();
        if (this.f5121s == shapeType) {
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, 0.0f);
            this.f5114a.color(floatBits);
            float f5 = f3 + f;
            this.f5114a.vertex(f5, f2, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f5, f2, 0.0f);
            this.f5114a.color(floatBits);
            float f6 = f4 + f2;
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f6, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f6, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, 0.0f);
            return;
        }
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, 0.0f);
        this.f5114a.color(floatBits);
        float f7 = f3 + f;
        this.f5114a.vertex(f7, f2, 0.0f);
        this.f5114a.color(floatBits);
        float f8 = f4 + f2;
        this.f5114a.vertex(f7, f8, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f7, f8, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f8, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, 0.0f);
    }

    public void rectLine(float f, float f2, float f3, float f4, float f5) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 8);
        float floatBits = this.f5120r.toFloatBits();
        Vector2 nor = this.f5119q.set(f4 - f2, f - f3).nor();
        float f6 = f5 * 0.5f;
        float f7 = nor.f5527x * f6;
        float f8 = nor.f5528y * f6;
        if (this.f5121s == shapeType) {
            this.f5114a.color(floatBits);
            float f9 = f + f7;
            float f10 = f2 + f8;
            this.f5114a.vertex(f9, f10, 0.0f);
            this.f5114a.color(floatBits);
            float f11 = f - f7;
            float f12 = f2 - f8;
            this.f5114a.vertex(f11, f12, 0.0f);
            this.f5114a.color(floatBits);
            float f13 = f3 + f7;
            float f14 = f4 + f8;
            this.f5114a.vertex(f13, f14, 0.0f);
            this.f5114a.color(floatBits);
            float f15 = f3 - f7;
            float f16 = f4 - f8;
            this.f5114a.vertex(f15, f16, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f13, f14, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f9, f10, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f15, f16, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f11, f12, 0.0f);
            return;
        }
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f + f7, f2 + f8, 0.0f);
        this.f5114a.color(floatBits);
        float f17 = f - f7;
        float f18 = f2 - f8;
        this.f5114a.vertex(f17, f18, 0.0f);
        this.f5114a.color(floatBits);
        float f19 = f3 + f7;
        float f20 = f4 + f8;
        this.f5114a.vertex(f19, f20, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f3 - f7, f4 - f8, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f19, f20, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f17, f18, 0.0f);
    }

    public void setAutoShapeType(boolean z) {
        this.f5122t = z;
    }

    public void setColor(Color color) {
        this.f5120r.set(color);
    }

    public void triangle(float f, float f2, float f3, float f4, float f5, float f6) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 6);
        float floatBits = this.f5120r.toFloatBits();
        if (this.f5121s == shapeType) {
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f3, f4, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f3, f4, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f, f2, 0.0f);
            return;
        }
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f, f2, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f3, f4, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f5, f6, 0.0f);
    }

    public void updateMatrices() {
        this.f5115b = true;
    }

    /* renamed from: x */
    public void m23996x(float f, float f2, float f3) {
        float f4 = f - f3;
        float f5 = f2 - f3;
        float f6 = f + f3;
        float f7 = f2 + f3;
        line(f4, f5, f6, f7);
        line(f4, f7, f6, f5);
    }

    /* loaded from: classes.dex */
    public enum ShapeType {
        Point(0),
        Line(1),
        Filled(4);
        

        /* renamed from: a */
        public final int f5125a;

        public int getGlType() {
            return this.f5125a;
        }

        ShapeType(int i) {
            this.f5125a = i;
        }
    }

    public ShapeRenderer(int i) {
        this(i, null);
    }

    /* renamed from: a */
    public final void m23997a(ShapeType shapeType, ShapeType shapeType2, int i) {
        ShapeType shapeType3 = this.f5121s;
        if (shapeType3 != null) {
            if (shapeType3 != shapeType && shapeType3 != shapeType2) {
                if (!this.f5122t) {
                    if (shapeType2 == null) {
                        throw new IllegalStateException("Must call begin(ShapeType." + shapeType + ").");
                    }
                    throw new IllegalStateException("Must call begin(ShapeType." + shapeType + ") or begin(ShapeType." + shapeType2 + ").");
                }
                end();
                begin(shapeType);
                return;
            } else if (this.f5115b) {
                end();
                begin(shapeType3);
                return;
            } else if (this.f5114a.getMaxVertices() - this.f5114a.getNumVertices() < i) {
                ShapeType shapeType4 = this.f5121s;
                end();
                begin(shapeType4);
                return;
            } else {
                return;
            }
        }
        throw new IllegalStateException("begin must be called first.");
    }

    public void arc(float f, float f2, float f3, float f4, float f5, int i) {
        if (i > 0) {
            float floatBits = this.f5120r.toFloatBits();
            float f6 = ((f5 / 360.0f) * 6.2831855f) / i;
            float cos = MathUtils.cos(f6);
            float sin = MathUtils.sin(f6);
            float f7 = f4 * 0.017453292f;
            float cos2 = MathUtils.cos(f7) * f3;
            float sin2 = f3 * MathUtils.sin(f7);
            ShapeType shapeType = this.f5121s;
            ShapeType shapeType2 = ShapeType.Line;
            int i2 = 0;
            if (shapeType == shapeType2) {
                m23997a(shapeType2, ShapeType.Filled, (i * 2) + 2);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f, f2, 0.0f);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f + cos2, f2 + sin2, 0.0f);
                while (i2 < i) {
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + cos2, f2 + sin2, 0.0f);
                    float f8 = (cos * cos2) - (sin * sin2);
                    sin2 = (sin2 * cos) + (cos2 * sin);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f8, f2 + sin2, 0.0f);
                    i2++;
                    cos2 = f8;
                }
                this.f5114a.color(floatBits);
                this.f5114a.vertex(cos2 + f, sin2 + f2, 0.0f);
            } else {
                m23997a(shapeType2, ShapeType.Filled, (i * 3) + 3);
                while (i2 < i) {
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, 0.0f);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + cos2, f2 + sin2, 0.0f);
                    float f9 = (cos * cos2) - (sin * sin2);
                    sin2 = (sin2 * cos) + (cos2 * sin);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f9, f2 + sin2, 0.0f);
                    i2++;
                    cos2 = f9;
                }
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f, f2, 0.0f);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(cos2 + f, sin2 + f2, 0.0f);
            }
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f + 0.0f, f2 + 0.0f, 0.0f);
            return;
        }
        throw new IllegalArgumentException("segments must be > 0.");
    }

    public void circle(float f, float f2, float f3, int i) {
        if (i > 0) {
            float floatBits = this.f5120r.toFloatBits();
            float f4 = 6.2831855f / i;
            float cos = MathUtils.cos(f4);
            float sin = MathUtils.sin(f4);
            ShapeType shapeType = this.f5121s;
            ShapeType shapeType2 = ShapeType.Line;
            int i2 = 0;
            if (shapeType == shapeType2) {
                m23997a(shapeType2, ShapeType.Filled, (i * 2) + 2);
                float f5 = f3;
                float f6 = 0.0f;
                while (i2 < i) {
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f5, f2 + f6, 0.0f);
                    float f7 = (cos * f5) - (sin * f6);
                    f6 = (f6 * cos) + (f5 * sin);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f7, f2 + f6, 0.0f);
                    i2++;
                    f5 = f7;
                }
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f5 + f, f6 + f2, 0.0f);
            } else {
                m23997a(shapeType2, ShapeType.Filled, (i * 3) + 3);
                int i3 = i - 1;
                float f8 = f3;
                float f9 = 0.0f;
                while (i2 < i3) {
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, 0.0f);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f8, f2 + f9, 0.0f);
                    float f10 = (cos * f8) - (sin * f9);
                    f9 = (f9 * cos) + (f8 * sin);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f10, f2 + f9, 0.0f);
                    i2++;
                    f8 = f10;
                }
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f, f2, 0.0f);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f8 + f, f9 + f2, 0.0f);
            }
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f + f3, f2 + 0.0f, 0.0f);
            return;
        }
        throw new IllegalArgumentException("segments must be > 0.");
    }

    public void cone(float f, float f2, float f3, float f4, float f5, int i) {
        float f6;
        float f7;
        if (i > 0) {
            ShapeType shapeType = ShapeType.Line;
            m23997a(shapeType, ShapeType.Filled, (i * 4) + 2);
            float floatBits = this.f5120r.toFloatBits();
            float f8 = 6.2831855f / i;
            float cos = MathUtils.cos(f8);
            float sin = MathUtils.sin(f8);
            int i2 = 0;
            if (this.f5121s == shapeType) {
                f6 = f4;
                f7 = 0.0f;
                while (i2 < i) {
                    this.f5114a.color(floatBits);
                    float f9 = f + f6;
                    float f10 = f2 + f7;
                    this.f5114a.vertex(f9, f10, f3);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, f3 + f5);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f9, f10, f3);
                    float f11 = (cos * f6) - (sin * f7);
                    f7 = (f7 * cos) + (f6 * sin);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f + f11, f2 + f7, f3);
                    i2++;
                    f6 = f11;
                }
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f + f6, f2 + f7, f3);
            } else {
                int i3 = i - 1;
                f6 = f4;
                f7 = 0.0f;
                while (i2 < i3) {
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, f3);
                    this.f5114a.color(floatBits);
                    float f12 = f + f6;
                    float f13 = f2 + f7;
                    this.f5114a.vertex(f12, f13, f3);
                    float f14 = (cos * f6) - (sin * f7);
                    f7 = (f7 * cos) + (f6 * sin);
                    this.f5114a.color(floatBits);
                    float f15 = f + f14;
                    float f16 = f2 + f7;
                    this.f5114a.vertex(f15, f16, f3);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f12, f13, f3);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f15, f16, f3);
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(f, f2, f3 + f5);
                    i2++;
                    f6 = f14;
                }
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f, f2, f3);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f + f6, f2 + f7, f3);
            }
            this.f5114a.color(floatBits);
            float f17 = f + f4;
            float f18 = 0.0f + f2;
            this.f5114a.vertex(f17, f18, f3);
            if (this.f5121s != ShapeType.Line) {
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f6 + f, f7 + f2, f3);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f17, f18, f3);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f, f2, f3 + f5);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("segments must be > 0.");
    }

    public void curve(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i) {
        m23997a(ShapeType.Line, null, (i * 2) + 2);
        float floatBits = this.f5120r.toFloatBits();
        float f9 = 1.0f / i;
        float f10 = f9 * f9;
        float f11 = f10 * f9;
        float f12 = f9 * 3.0f;
        float f13 = f10 * 3.0f;
        float f14 = f10 * 6.0f;
        float f15 = 6.0f * f11;
        float f16 = (f - (f3 * 2.0f)) + f5;
        float f17 = (f2 - (2.0f * f4)) + f6;
        float f18 = (((f3 - f5) * 3.0f) - f) + f7;
        float f19 = (((f4 - f6) * 3.0f) - f2) + f8;
        float f20 = ((f3 - f) * f12) + (f16 * f13) + (f18 * f11);
        float f21 = ((f4 - f2) * f12) + (f13 * f17) + (f11 * f19);
        float f22 = f18 * f15;
        float f23 = (f16 * f14) + f22;
        float f24 = f19 * f15;
        float f25 = (f17 * f14) + f24;
        float f26 = f2;
        int i2 = i;
        float f27 = f;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f27, f26, 0.0f);
                f27 += f20;
                f26 += f21;
                f20 += f23;
                f21 += f25;
                f23 += f22;
                f25 += f24;
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f27, f26, 0.0f);
                i2 = i3;
            } else {
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f27, f26, 0.0f);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f7, f8, 0.0f);
                return;
            }
        }
    }

    public void ellipse(float f, float f2, float f3, float f4, int i) {
        if (i > 0) {
            ShapeType shapeType = ShapeType.Line;
            m23997a(shapeType, ShapeType.Filled, i * 3);
            float floatBits = this.f5120r.toFloatBits();
            float f5 = 6.2831855f / i;
            float f6 = f + (f3 / 2.0f);
            float f7 = f2 + (f4 / 2.0f);
            int i2 = 0;
            if (this.f5121s == shapeType) {
                while (i2 < i) {
                    this.f5114a.color(floatBits);
                    float f8 = f3 * 0.5f;
                    float f9 = i2 * f5;
                    float f10 = f4 * 0.5f;
                    this.f5114a.vertex((MathUtils.cos(f9) * f8) + f6, (MathUtils.sin(f9) * f10) + f7, 0.0f);
                    this.f5114a.color(floatBits);
                    i2++;
                    float f11 = i2 * f5;
                    this.f5114a.vertex((f8 * MathUtils.cos(f11)) + f6, (f10 * MathUtils.sin(f11)) + f7, 0.0f);
                }
                return;
            }
            while (i2 < i) {
                this.f5114a.color(floatBits);
                float f12 = f3 * 0.5f;
                float f13 = i2 * f5;
                float f14 = f4 * 0.5f;
                this.f5114a.vertex((MathUtils.cos(f13) * f12) + f6, (MathUtils.sin(f13) * f14) + f7, 0.0f);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f6, f7, 0.0f);
                this.f5114a.color(floatBits);
                i2++;
                float f15 = i2 * f5;
                this.f5114a.vertex((f12 * MathUtils.cos(f15)) + f6, (f14 * MathUtils.sin(f15)) + f7, 0.0f);
            }
            return;
        }
        throw new IllegalArgumentException("segments must be > 0.");
    }

    public void end() {
        this.f5114a.end();
        this.f5121s = null;
    }

    public void flush() {
        ShapeType shapeType = this.f5121s;
        if (shapeType == null) {
            return;
        }
        end();
        begin(shapeType);
    }

    public void identity() {
        this.f5117k.idt();
        this.f5115b = true;
    }

    public final void line(Vector3 vector3, Vector3 vector32) {
        float f = vector3.f5533x;
        float f2 = vector3.f5534y;
        float f3 = vector3.f5535z;
        float f4 = vector32.f5533x;
        float f5 = vector32.f5534y;
        float f6 = vector32.f5535z;
        Color color = this.f5120r;
        line(f, f2, f3, f4, f5, f6, color, color);
    }

    public void point(float f, float f2, float f3) {
        ShapeType shapeType = this.f5121s;
        if (shapeType == ShapeType.Line) {
            float f4 = this.f5123u * 0.5f;
            line(f - f4, f2 - f4, f3, f + f4, f2 + f4, f3);
        } else if (shapeType == ShapeType.Filled) {
            float f5 = this.f5123u;
            float f6 = 0.5f * f5;
            box(f - f6, f2 - f6, f3 - f6, f5, f5, f5);
        } else {
            m23997a(ShapeType.Point, null, 1);
            this.f5114a.color(this.f5120r);
            this.f5114a.vertex(f, f2, f3);
        }
    }

    public void rotate(float f, float f2, float f3, float f4) {
        this.f5117k.rotate(f, f2, f3, f4);
        this.f5115b = true;
    }

    public void scale(float f, float f2, float f3) {
        this.f5117k.scale(f, f2, f3);
        this.f5115b = true;
    }

    public void set(ShapeType shapeType) {
        ShapeType shapeType2 = this.f5121s;
        if (shapeType2 == shapeType) {
            return;
        }
        if (shapeType2 != null) {
            if (this.f5122t) {
                end();
                begin(shapeType);
                return;
            }
            throw new IllegalStateException("autoShapeType must be enabled.");
        }
        throw new IllegalStateException("begin must be called first.");
    }

    public void setColor(float f, float f2, float f3, float f4) {
        this.f5120r.set(f, f2, f3, f4);
    }

    public void setProjectionMatrix(Matrix4 matrix4) {
        this.f5116d.set(matrix4);
        this.f5115b = true;
    }

    public void setTransformMatrix(Matrix4 matrix4) {
        this.f5117k.set(matrix4);
        this.f5115b = true;
    }

    public void translate(float f, float f2, float f3) {
        this.f5117k.translate(f, f2, f3);
        this.f5115b = true;
    }

    public ShapeRenderer(int i, ShaderProgram shaderProgram) {
        this.f5115b = false;
        Matrix4 matrix4 = new Matrix4();
        this.f5116d = matrix4;
        this.f5117k = new Matrix4();
        this.f5118p = new Matrix4();
        this.f5119q = new Vector2();
        this.f5120r = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        this.f5123u = 0.75f;
        if (shaderProgram == null) {
            this.f5114a = new ImmediateModeRenderer20(i, false, true, 0);
        } else {
            this.f5114a = new ImmediateModeRenderer20(i, false, true, 0, shaderProgram);
        }
        matrix4.setToOrtho2D(0.0f, 0.0f, Gdx.graphics.getWidth(), Gdx.graphics.getHeight());
        this.f5115b = true;
    }

    public final void line(float f, float f2, float f3, float f4) {
        Color color = this.f5120r;
        line(f, f2, 0.0f, f3, f4, 0.0f, color, color);
    }

    /* renamed from: x */
    public void m23995x(Vector2 vector2, float f) {
        m23996x(vector2.f5527x, vector2.f5528y, f);
    }

    public void begin(ShapeType shapeType) {
        if (this.f5121s == null) {
            this.f5121s = shapeType;
            if (this.f5115b) {
                this.f5118p.set(this.f5116d);
                Matrix4.mul(this.f5118p.val, this.f5117k.val);
                this.f5115b = false;
            }
            this.f5114a.begin(this.f5118p, this.f5121s.getGlType());
            return;
        }
        throw new IllegalStateException("Call end() before beginning a new shape batch.");
    }

    public final void line(Vector2 vector2, Vector2 vector22) {
        float f = vector2.f5527x;
        float f2 = vector2.f5528y;
        float f3 = vector22.f5527x;
        float f4 = vector22.f5528y;
        Color color = this.f5120r;
        line(f, f2, 0.0f, f3, f4, 0.0f, color, color);
    }

    public final void line(float f, float f2, float f3, float f4, Color color, Color color2) {
        line(f, f2, 0.0f, f3, f4, 0.0f, color, color2);
    }

    public void line(float f, float f2, float f3, float f4, float f5, float f6, Color color, Color color2) {
        if (this.f5121s == ShapeType.Filled) {
            rectLine(f, f2, f4, f5, this.f5123u, color, color2);
            return;
        }
        m23997a(ShapeType.Line, null, 2);
        this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        this.f5114a.vertex(f, f2, f3);
        this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
        this.f5114a.vertex(f4, f5, f6);
    }

    public void polyline(float[] fArr) {
        polyline(fArr, 0, fArr.length);
    }

    public void polygon(float[] fArr) {
        polygon(fArr, 0, fArr.length);
    }

    public void ellipse(float f, float f2, float f3, float f4, float f5) {
        ellipse(f, f2, f3, f4, f5, Math.max(1, (int) (((float) Math.cbrt(Math.max(f3 * 0.5f, 0.5f * f4))) * 12.0f)));
    }

    public void ellipse(float f, float f2, float f3, float f4, float f5, int i) {
        if (i > 0) {
            ShapeType shapeType = ShapeType.Line;
            m23997a(shapeType, ShapeType.Filled, i * 3);
            float floatBits = this.f5120r.toFloatBits();
            float f6 = 6.2831855f / i;
            float f7 = (3.1415927f * f5) / 180.0f;
            float sin = MathUtils.sin(f7);
            float cos = MathUtils.cos(f7);
            float f8 = f + (f3 / 2.0f);
            float f9 = f2 + (f4 / 2.0f);
            float f10 = 0.5f;
            float f11 = f3 * 0.5f;
            int i2 = 0;
            if (this.f5121s == shapeType) {
                float f12 = f11;
                float f13 = 0.0f;
                while (i2 < i) {
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(((cos * f12) + f8) - (sin * f13), (f12 * sin) + f9 + (f13 * cos), 0.0f);
                    i2++;
                    float f14 = i2 * f6;
                    float cos2 = MathUtils.cos(f14) * f11;
                    float sin2 = MathUtils.sin(f14) * f4 * f10;
                    this.f5114a.color(floatBits);
                    this.f5114a.vertex(((cos * cos2) + f8) - (sin * sin2), f9 + (sin * cos2) + (cos * sin2), 0.0f);
                    f10 = 0.5f;
                    f13 = sin2;
                    f12 = cos2;
                }
                return;
            }
            float f15 = f11;
            float f16 = 0.0f;
            while (i2 < i) {
                this.f5114a.color(floatBits);
                this.f5114a.vertex(((cos * f15) + f8) - (sin * f16), (f15 * sin) + f9 + (f16 * cos), 0.0f);
                this.f5114a.color(floatBits);
                this.f5114a.vertex(f8, f9, 0.0f);
                i2++;
                float f17 = i2 * f6;
                float cos3 = MathUtils.cos(f17) * f11;
                float sin3 = MathUtils.sin(f17) * f4 * 0.5f;
                this.f5114a.color(floatBits);
                this.f5114a.vertex(((cos * cos3) + f8) - (sin * sin3), f9 + (sin * cos3) + (cos * sin3), 0.0f);
                f16 = sin3;
                f15 = cos3;
            }
            return;
        }
        throw new IllegalArgumentException("segments must be > 0.");
    }

    public void triangle(float f, float f2, float f3, float f4, float f5, float f6, Color color, Color color2, Color color3) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 6);
        if (this.f5121s == shapeType) {
            this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            this.f5114a.vertex(f, f2, 0.0f);
            this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
            this.f5114a.vertex(f3, f4, 0.0f);
            this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
            this.f5114a.vertex(f3, f4, 0.0f);
            this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            this.f5114a.vertex(f, f2, 0.0f);
            return;
        }
        this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        this.f5114a.vertex(f, f2, 0.0f);
        this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
        this.f5114a.vertex(f3, f4, 0.0f);
        this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
        this.f5114a.vertex(f5, f6, 0.0f);
    }

    public void rect(float f, float f2, float f3, float f4, Color color, Color color2, Color color3, Color color4) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 8);
        if (this.f5121s == shapeType) {
            this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            this.f5114a.vertex(f, f2, 0.0f);
            this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
            float f5 = f3 + f;
            this.f5114a.vertex(f5, f2, 0.0f);
            this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
            this.f5114a.vertex(f5, f2, 0.0f);
            this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
            float f6 = f4 + f2;
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
            this.f5114a.vertex(f5, f6, 0.0f);
            this.f5114a.color(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a);
            this.f5114a.vertex(f, f6, 0.0f);
            this.f5114a.color(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a);
            this.f5114a.vertex(f, f6, 0.0f);
            this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            this.f5114a.vertex(f, f2, 0.0f);
            return;
        }
        this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        this.f5114a.vertex(f, f2, 0.0f);
        this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
        float f7 = f3 + f;
        this.f5114a.vertex(f7, f2, 0.0f);
        this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
        float f8 = f4 + f2;
        this.f5114a.vertex(f7, f8, 0.0f);
        this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
        this.f5114a.vertex(f7, f8, 0.0f);
        this.f5114a.color(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a);
        this.f5114a.vertex(f, f8, 0.0f);
        this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        this.f5114a.vertex(f, f2, 0.0f);
    }

    public void rectLine(float f, float f2, float f3, float f4, float f5, Color color, Color color2) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 8);
        float floatBits = color.toFloatBits();
        float floatBits2 = color2.toFloatBits();
        Vector2 nor = this.f5119q.set(f4 - f2, f - f3).nor();
        float f6 = f5 * 0.5f;
        float f7 = nor.f5527x * f6;
        float f8 = nor.f5528y * f6;
        if (this.f5121s == shapeType) {
            this.f5114a.color(floatBits);
            float f9 = f + f7;
            float f10 = f2 + f8;
            this.f5114a.vertex(f9, f10, 0.0f);
            this.f5114a.color(floatBits);
            float f11 = f - f7;
            float f12 = f2 - f8;
            this.f5114a.vertex(f11, f12, 0.0f);
            this.f5114a.color(floatBits2);
            float f13 = f3 + f7;
            float f14 = f4 + f8;
            this.f5114a.vertex(f13, f14, 0.0f);
            this.f5114a.color(floatBits2);
            float f15 = f3 - f7;
            float f16 = f4 - f8;
            this.f5114a.vertex(f15, f16, 0.0f);
            this.f5114a.color(floatBits2);
            this.f5114a.vertex(f13, f14, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f9, f10, 0.0f);
            this.f5114a.color(floatBits2);
            this.f5114a.vertex(f15, f16, 0.0f);
            this.f5114a.color(floatBits);
            this.f5114a.vertex(f11, f12, 0.0f);
            return;
        }
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f + f7, f2 + f8, 0.0f);
        this.f5114a.color(floatBits);
        float f17 = f - f7;
        float f18 = f2 - f8;
        this.f5114a.vertex(f17, f18, 0.0f);
        this.f5114a.color(floatBits2);
        float f19 = f3 + f7;
        float f20 = f4 + f8;
        this.f5114a.vertex(f19, f20, 0.0f);
        this.f5114a.color(floatBits2);
        this.f5114a.vertex(f3 - f7, f4 - f8, 0.0f);
        this.f5114a.color(floatBits2);
        this.f5114a.vertex(f19, f20, 0.0f);
        this.f5114a.color(floatBits);
        this.f5114a.vertex(f17, f18, 0.0f);
    }

    public void rect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        Color color = this.f5120r;
        rect(f, f2, f3, f4, f5, f6, f7, f8, f9, color, color, color, color);
    }

    public void rect(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, Color color, Color color2, Color color3, Color color4) {
        ShapeType shapeType = ShapeType.Line;
        m23997a(shapeType, ShapeType.Filled, 8);
        float cosDeg = MathUtils.cosDeg(f9);
        float sinDeg = MathUtils.sinDeg(f9);
        float f10 = -f3;
        float f11 = -f4;
        float f12 = f5 - f3;
        float f13 = f6 - f4;
        if (f7 != 1.0f || f8 != 1.0f) {
            f10 *= f7;
            f11 *= f8;
            f12 *= f7;
            f13 *= f8;
        }
        float f14 = f + f3;
        float f15 = f2 + f4;
        float f16 = sinDeg * f11;
        float f17 = ((cosDeg * f10) - f16) + f14;
        float f18 = f11 * cosDeg;
        float f19 = (f10 * sinDeg) + f18 + f15;
        float f20 = cosDeg * f12;
        float f21 = (f20 - f16) + f14;
        float f22 = f12 * sinDeg;
        float f23 = f18 + f22 + f15;
        float f24 = (f20 - (sinDeg * f13)) + f14;
        float f25 = f22 + (cosDeg * f13) + f15;
        float f26 = (f24 - f21) + f17;
        float f27 = f25 - (f23 - f19);
        if (this.f5121s == shapeType) {
            this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            this.f5114a.vertex(f17, f19, 0.0f);
            this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
            this.f5114a.vertex(f21, f23, 0.0f);
            this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
            this.f5114a.vertex(f21, f23, 0.0f);
            this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
            this.f5114a.vertex(f24, f25, 0.0f);
            this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
            this.f5114a.vertex(f24, f25, 0.0f);
            this.f5114a.color(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a);
            this.f5114a.vertex(f26, f27, 0.0f);
            this.f5114a.color(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a);
            this.f5114a.vertex(f26, f27, 0.0f);
            this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
            this.f5114a.vertex(f17, f19, 0.0f);
            return;
        }
        this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        this.f5114a.vertex(f17, f19, 0.0f);
        this.f5114a.color(color2.f3892r, color2.f3891g, color2.f3890b, color2.f3889a);
        this.f5114a.vertex(f21, f23, 0.0f);
        this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
        this.f5114a.vertex(f24, f25, 0.0f);
        this.f5114a.color(color3.f3892r, color3.f3891g, color3.f3890b, color3.f3889a);
        this.f5114a.vertex(f24, f25, 0.0f);
        this.f5114a.color(color4.f3892r, color4.f3891g, color4.f3890b, color4.f3889a);
        this.f5114a.vertex(f26, f27, 0.0f);
        this.f5114a.color(color.f3892r, color.f3891g, color.f3890b, color.f3889a);
        this.f5114a.vertex(f17, f19, 0.0f);
    }

    public void rectLine(Vector2 vector2, Vector2 vector22, float f) {
        rectLine(vector2.f5527x, vector2.f5528y, vector22.f5527x, vector22.f5528y, f);
    }
}
