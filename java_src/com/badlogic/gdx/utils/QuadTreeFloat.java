package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.utils.Pool;
import java.util.Arrays;
/* loaded from: classes.dex */
public class QuadTreeFloat implements Pool.Poolable {
    public static final int DISTSQR = 3;
    public static final int VALUE = 0;

    /* renamed from: X */
    public static final int f6706X = 1;

    /* renamed from: Y */
    public static final int f6707Y = 2;

    /* renamed from: a */
    public static final Pool<QuadTreeFloat> f6708a = new Pool(128, 4096) { // from class: com.badlogic.gdx.utils.QuadTreeFloat.1
        @Override // com.badlogic.gdx.utils.Pool
        public Object newObject() {
            return new QuadTreeFloat();
        }
    };
    public int count;
    public int depth;
    public float height;
    public final int maxDepth;
    public final int maxValues;
    @Null

    /* renamed from: ne */
    public QuadTreeFloat f6709ne;
    @Null

    /* renamed from: nw */
    public QuadTreeFloat f6710nw;
    @Null

    /* renamed from: se */
    public QuadTreeFloat f6711se;
    @Null

    /* renamed from: sw */
    public QuadTreeFloat f6712sw;
    public float[] values;
    public float width;

    /* renamed from: x */
    public float f6713x;

    /* renamed from: y */
    public float f6714y;

    public QuadTreeFloat() {
        this(16, 8);
    }

    /* renamed from: c */
    public int m23552c() {
        return this.count + 30;
    }

    /* renamed from: e */
    public final void m23550e(float f, float f2, float f3, float f4, float f5, float f6, FloatArray floatArray) {
        float f7 = this.f6713x;
        if (f7 < f4 + f6 && f7 + this.width > f4) {
            float f8 = this.f6714y;
            if (f8 < f5 + f6 && f8 + this.height > f5) {
                int i = this.count;
                if (i != -1) {
                    float[] fArr = this.values;
                    for (int i2 = 1; i2 < i; i2 += 3) {
                        float f9 = fArr[i2];
                        float f10 = fArr[i2 + 1];
                        float f11 = f9 - f;
                        float f12 = f10 - f2;
                        float f13 = (f11 * f11) + (f12 * f12);
                        if (f13 <= f3) {
                            floatArray.add(fArr[i2 - 1]);
                            floatArray.add(f9);
                            floatArray.add(f10);
                            floatArray.add(f13);
                        }
                    }
                    return;
                }
                QuadTreeFloat quadTreeFloat = this.f6710nw;
                if (quadTreeFloat != null) {
                    quadTreeFloat.m23550e(f, f2, f3, f4, f5, f6, floatArray);
                }
                QuadTreeFloat quadTreeFloat2 = this.f6712sw;
                if (quadTreeFloat2 != null) {
                    quadTreeFloat2.m23550e(f, f2, f3, f4, f5, f6, floatArray);
                }
                QuadTreeFloat quadTreeFloat3 = this.f6709ne;
                if (quadTreeFloat3 != null) {
                    quadTreeFloat3.m23550e(f, f2, f3, f4, f5, f6, floatArray);
                }
                QuadTreeFloat quadTreeFloat4 = this.f6711se;
                if (quadTreeFloat4 != null) {
                    quadTreeFloat4.m23550e(f, f2, f3, f4, f5, f6, floatArray);
                }
            }
        }
    }

    public void query(float f, float f2, float f3, FloatArray floatArray) {
        m23550e(f, f2, f3 * f3, f - f3, f2 - f3, f3 * 2.0f, floatArray);
    }

    public QuadTreeFloat(int i, int i2) {
        int i3 = i * 3;
        this.maxValues = i3;
        this.maxDepth = i2;
        this.values = new float[i3];
    }

    /* renamed from: a */
    public final void m23554a(float f, float f2, float f3) {
        QuadTreeFloat quadTreeFloat;
        float f4 = this.width / 2.0f;
        float f5 = this.height / 2.0f;
        float f6 = this.f6713x;
        if (f2 < f6 + f4) {
            float f7 = this.f6714y;
            if (f3 < f7 + f5) {
                quadTreeFloat = this.f6712sw;
                if (quadTreeFloat == null) {
                    quadTreeFloat = m23551d(f6, f7, f4, f5, this.depth + 1);
                    this.f6712sw = quadTreeFloat;
                }
            } else {
                quadTreeFloat = this.f6710nw;
                if (quadTreeFloat == null) {
                    quadTreeFloat = m23551d(f6, f7 + f5, f4, f5, this.depth + 1);
                    this.f6710nw = quadTreeFloat;
                }
            }
        } else {
            float f8 = this.f6714y;
            if (f3 < f8 + f5) {
                quadTreeFloat = this.f6711se;
                if (quadTreeFloat == null) {
                    quadTreeFloat = m23551d(f6 + f4, f8, f4, f5, this.depth + 1);
                    this.f6711se = quadTreeFloat;
                }
            } else {
                quadTreeFloat = this.f6709ne;
                if (quadTreeFloat == null) {
                    quadTreeFloat = m23551d(f6 + f4, f8 + f5, f4, f5, this.depth + 1);
                    this.f6709ne = quadTreeFloat;
                }
            }
        }
        quadTreeFloat.add(f, f2, f3);
    }

    public void add(float f, float f2, float f3) {
        int i = this.count;
        if (i == -1) {
            m23554a(f, f2, f3);
            return;
        }
        if (this.depth < this.maxDepth) {
            if (i == this.maxValues) {
                m23549f(f, f2, f3);
                return;
            }
        } else {
            float[] fArr = this.values;
            if (i == fArr.length) {
                this.values = Arrays.copyOf(fArr, m23552c());
            }
        }
        float[] fArr2 = this.values;
        fArr2[i] = f;
        fArr2[i + 1] = f2;
        fArr2[i + 2] = f3;
        this.count += 3;
    }

    /* renamed from: b */
    public final void m23553b(float f, float f2, FloatArray floatArray) {
        float f3 = this.f6713x;
        if (f3 < f && f3 + this.width > f) {
            float f4 = this.f6714y;
            if (f4 < f2 && f4 + this.height > f2) {
                int i = this.count;
                if (i != -1) {
                    float first = floatArray.first();
                    float f5 = floatArray.get(1);
                    float f6 = floatArray.get(2);
                    float f7 = floatArray.get(3);
                    float[] fArr = this.values;
                    for (int i2 = 1; i2 < i; i2 += 3) {
                        float f8 = fArr[i2];
                        float f9 = fArr[i2 + 1];
                        float f10 = f8 - f;
                        float f11 = f9 - f2;
                        float f12 = (f10 * f10) + (f11 * f11);
                        if (f12 < f7) {
                            first = fArr[i2 - 1];
                            f5 = f8;
                            f6 = f9;
                            f7 = f12;
                        }
                    }
                    floatArray.set(0, first);
                    floatArray.set(1, f5);
                    floatArray.set(2, f6);
                    floatArray.set(3, f7);
                    return;
                }
                QuadTreeFloat quadTreeFloat = this.f6710nw;
                if (quadTreeFloat != null) {
                    quadTreeFloat.m23553b(f, f2, floatArray);
                }
                QuadTreeFloat quadTreeFloat2 = this.f6712sw;
                if (quadTreeFloat2 != null) {
                    quadTreeFloat2.m23553b(f, f2, floatArray);
                }
                QuadTreeFloat quadTreeFloat3 = this.f6709ne;
                if (quadTreeFloat3 != null) {
                    quadTreeFloat3.m23553b(f, f2, floatArray);
                }
                QuadTreeFloat quadTreeFloat4 = this.f6711se;
                if (quadTreeFloat4 != null) {
                    quadTreeFloat4.m23553b(f, f2, floatArray);
                }
            }
        }
    }

    /* renamed from: d */
    public final QuadTreeFloat m23551d(float f, float f2, float f3, float f4, int i) {
        QuadTreeFloat obtain = f6708a.obtain();
        obtain.f6713x = f;
        obtain.f6714y = f2;
        obtain.width = f3;
        obtain.height = f4;
        obtain.depth = i;
        return obtain;
    }

    /* renamed from: f */
    public final void m23549f(float f, float f2, float f3) {
        float[] fArr = this.values;
        for (int i = 0; i < this.maxValues; i += 3) {
            m23554a(fArr[i], fArr[i + 1], fArr[i + 2]);
        }
        this.count = -1;
        m23554a(f, f2, f3);
    }

    public void query(Rectangle rectangle, FloatArray floatArray) {
        float f = this.f6713x;
        float f2 = rectangle.f5523x;
        if (f >= rectangle.width + f2 || f + this.width <= f2) {
            return;
        }
        float f3 = this.f6714y;
        float f4 = rectangle.f5524y;
        if (f3 >= rectangle.height + f4 || f3 + this.height <= f4) {
            return;
        }
        int i = this.count;
        if (i != -1) {
            float[] fArr = this.values;
            for (int i2 = 1; i2 < i; i2 += 3) {
                float f5 = fArr[i2];
                float f6 = fArr[i2 + 1];
                if (rectangle.contains(f5, f6)) {
                    floatArray.add(fArr[i2 - 1]);
                    floatArray.add(f5);
                    floatArray.add(f6);
                }
            }
            return;
        }
        QuadTreeFloat quadTreeFloat = this.f6710nw;
        if (quadTreeFloat != null) {
            quadTreeFloat.query(rectangle, floatArray);
        }
        QuadTreeFloat quadTreeFloat2 = this.f6712sw;
        if (quadTreeFloat2 != null) {
            quadTreeFloat2.query(rectangle, floatArray);
        }
        QuadTreeFloat quadTreeFloat3 = this.f6709ne;
        if (quadTreeFloat3 != null) {
            quadTreeFloat3.query(rectangle, floatArray);
        }
        QuadTreeFloat quadTreeFloat4 = this.f6711se;
        if (quadTreeFloat4 != null) {
            quadTreeFloat4.query(rectangle, floatArray);
        }
    }

    @Override // com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        if (this.count == -1) {
            QuadTreeFloat quadTreeFloat = this.f6710nw;
            if (quadTreeFloat != null) {
                f6708a.free(quadTreeFloat);
                this.f6710nw = null;
            }
            QuadTreeFloat quadTreeFloat2 = this.f6712sw;
            if (quadTreeFloat2 != null) {
                f6708a.free(quadTreeFloat2);
                this.f6712sw = null;
            }
            QuadTreeFloat quadTreeFloat3 = this.f6709ne;
            if (quadTreeFloat3 != null) {
                f6708a.free(quadTreeFloat3);
                this.f6709ne = null;
            }
            QuadTreeFloat quadTreeFloat4 = this.f6711se;
            if (quadTreeFloat4 != null) {
                f6708a.free(quadTreeFloat4);
                this.f6711se = null;
            }
        }
        this.count = 0;
        int length = this.values.length;
        int i = this.maxValues;
        if (length > i) {
            this.values = new float[i];
        }
    }

    public void setBounds(float f, float f2, float f3, float f4) {
        this.f6713x = f;
        this.f6714y = f2;
        this.width = f3;
        this.height = f4;
    }

    public boolean nearest(float f, float f2, FloatArray floatArray) {
        boolean z;
        floatArray.clear();
        floatArray.add(0.0f);
        floatArray.add(0.0f);
        floatArray.add(0.0f);
        floatArray.add(Float.POSITIVE_INFINITY);
        m23553b(f, f2, floatArray);
        float first = floatArray.first();
        float f3 = floatArray.get(1);
        float f4 = floatArray.get(2);
        float f5 = floatArray.get(3);
        if (f5 != Float.POSITIVE_INFINITY) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            float max = Math.max(this.width, this.height);
            f5 = max * max;
        }
        floatArray.clear();
        query(f, f2, (float) Math.sqrt(f5), floatArray);
        int i = floatArray.size;
        for (int i2 = 3; i2 < i; i2 += 4) {
            float f6 = floatArray.get(i2);
            if (f6 < f5) {
                first = floatArray.get(i2 - 3);
                f3 = floatArray.get(i2 - 2);
                f4 = floatArray.get(i2 - 1);
                f5 = f6;
            }
        }
        if (!z && floatArray.isEmpty()) {
            return false;
        }
        floatArray.clear();
        floatArray.add(first);
        floatArray.add(f3);
        floatArray.add(f4);
        floatArray.add(f5);
        return true;
    }
}
