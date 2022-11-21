package com.badlogic.gdx.math;
/* loaded from: classes.dex */
public abstract class Interpolation {
    public static final Bounce bounce;
    public static final BounceIn bounceIn;
    public static final BounceOut bounceOut;
    public static final Interpolation circle;
    public static final Interpolation circleIn;
    public static final Interpolation circleOut;
    public static final Elastic elastic;
    public static final ElasticIn elasticIn;
    public static final ElasticOut elasticOut;
    public static final Exp exp10;
    public static final ExpIn exp10In;
    public static final ExpOut exp10Out;
    public static final Exp exp5;
    public static final ExpIn exp5In;
    public static final ExpOut exp5Out;
    public static final Interpolation fade;
    public static final PowOut fastSlow;
    public static final Pow pow2;
    public static final PowIn pow2In;
    public static final Interpolation pow2InInverse;
    public static final PowOut pow2Out;
    public static final Interpolation pow2OutInverse;
    public static final Pow pow3;
    public static final PowIn pow3In;
    public static final Interpolation pow3InInverse;
    public static final PowOut pow3Out;
    public static final Interpolation pow3OutInverse;
    public static final Pow pow4;
    public static final PowIn pow4In;
    public static final PowOut pow4Out;
    public static final Pow pow5;
    public static final PowIn pow5In;
    public static final PowOut pow5Out;
    public static final Interpolation sine;
    public static final Interpolation sineIn;
    public static final Interpolation sineOut;
    public static final PowIn slowFast;
    public static final Interpolation smoother;
    public static final Swing swing;
    public static final SwingIn swingIn;
    public static final SwingOut swingOut;
    public static final Interpolation linear = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.1
        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return f;
        }
    };
    public static final Interpolation smooth = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.2
        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return f * f * (3.0f - (f * 2.0f));
        }
    };
    public static final Interpolation smooth2 = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.3
        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            float f2 = f * f * (3.0f - (f * 2.0f));
            return f2 * f2 * (3.0f - (f2 * 2.0f));
        }
    };

    /* loaded from: classes.dex */
    public static class Bounce extends BounceOut {
        public Bounce(float[] fArr, float[] fArr2) {
            super(fArr, fArr2);
        }

        public Bounce(int i) {
            super(i);
        }

        /* renamed from: a */
        public final float m23923a(float f) {
            float f2 = this.f5416a[0];
            float f3 = (f2 / 2.0f) + f;
            if (f3 < f2) {
                return (f3 / (f2 / 2.0f)) - 1.0f;
            }
            return super.apply(f);
        }

        @Override // com.badlogic.gdx.math.Interpolation.BounceOut, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f <= 0.5f) {
                return (1.0f - m23923a(1.0f - (f * 2.0f))) / 2.0f;
            }
            return (m23923a((f * 2.0f) - 1.0f) / 2.0f) + 0.5f;
        }
    }

    /* loaded from: classes.dex */
    public static class BounceIn extends BounceOut {
        public BounceIn(float[] fArr, float[] fArr2) {
            super(fArr, fArr2);
        }

        @Override // com.badlogic.gdx.math.Interpolation.BounceOut, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return 1.0f - super.apply(1.0f - f);
        }

        public BounceIn(int i) {
            super(i);
        }
    }

    /* loaded from: classes.dex */
    public static class BounceOut extends Interpolation {

        /* renamed from: a */
        public final float[] f5416a;

        /* renamed from: b */
        public final float[] f5417b;

        public BounceOut(float[] fArr, float[] fArr2) {
            if (fArr.length == fArr2.length) {
                this.f5416a = fArr;
                this.f5417b = fArr2;
                return;
            }
            throw new IllegalArgumentException("Must be the same number of widths and heights.");
        }

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f == 1.0f) {
                return 1.0f;
            }
            float[] fArr = this.f5416a;
            int i = 0;
            float f2 = f + (fArr[0] / 2.0f);
            int length = fArr.length;
            float f3 = 0.0f;
            float f4 = 0.0f;
            while (true) {
                if (i >= length) {
                    break;
                }
                f4 = this.f5416a[i];
                if (f2 <= f4) {
                    f3 = this.f5417b[i];
                    break;
                }
                f2 -= f4;
                i++;
            }
            float f5 = f2 / f4;
            float f6 = (4.0f / f4) * f3 * f5;
            return 1.0f - ((f6 - (f5 * f6)) * f4);
        }

        public BounceOut(int i) {
            if (i >= 2 && i <= 5) {
                float[] fArr = new float[i];
                this.f5416a = fArr;
                float[] fArr2 = new float[i];
                this.f5417b = fArr2;
                fArr2[0] = 1.0f;
                if (i == 2) {
                    fArr[0] = 0.6f;
                    fArr[1] = 0.4f;
                    fArr2[1] = 0.33f;
                } else if (i == 3) {
                    fArr[0] = 0.4f;
                    fArr[1] = 0.4f;
                    fArr[2] = 0.2f;
                    fArr2[1] = 0.33f;
                    fArr2[2] = 0.1f;
                } else if (i == 4) {
                    fArr[0] = 0.34f;
                    fArr[1] = 0.34f;
                    fArr[2] = 0.2f;
                    fArr[3] = 0.15f;
                    fArr2[1] = 0.26f;
                    fArr2[2] = 0.11f;
                    fArr2[3] = 0.03f;
                } else if (i == 5) {
                    fArr[0] = 0.3f;
                    fArr[1] = 0.3f;
                    fArr[2] = 0.2f;
                    fArr[3] = 0.1f;
                    fArr[4] = 0.1f;
                    fArr2[1] = 0.45f;
                    fArr2[2] = 0.3f;
                    fArr2[3] = 0.15f;
                    fArr2[4] = 0.06f;
                }
                fArr[0] = fArr[0] * 2.0f;
                return;
            }
            throw new IllegalArgumentException("bounces cannot be < 2 or > 5: " + i);
        }
    }

    /* loaded from: classes.dex */
    public static class Elastic extends Interpolation {

        /* renamed from: a */
        public final float f5418a;

        /* renamed from: b */
        public final float f5419b;

        /* renamed from: c */
        public final float f5420c;

        /* renamed from: d */
        public final float f5421d;

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f <= 0.5f) {
                float f2 = f * 2.0f;
                return ((((float) Math.pow(this.f5418a, this.f5419b * (f2 - 1.0f))) * MathUtils.sin(f2 * this.f5421d)) * this.f5420c) / 2.0f;
            }
            float f3 = (1.0f - f) * 2.0f;
            return 1.0f - (((((float) Math.pow(this.f5418a, this.f5419b * (f3 - 1.0f))) * MathUtils.sin(f3 * this.f5421d)) * this.f5420c) / 2.0f);
        }

        public Elastic(float f, float f2, int i, float f3) {
            int i2;
            this.f5418a = f;
            this.f5419b = f2;
            this.f5420c = f3;
            float f4 = i * 3.1415927f;
            if (i % 2 == 0) {
                i2 = 1;
            } else {
                i2 = -1;
            }
            this.f5421d = f4 * i2;
        }
    }

    /* loaded from: classes.dex */
    public static class ElasticIn extends Elastic {
        public ElasticIn(float f, float f2, int i, float f3) {
            super(f, f2, i, f3);
        }

        @Override // com.badlogic.gdx.math.Interpolation.Elastic, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f >= 0.99d) {
                return 1.0f;
            }
            return ((float) Math.pow(this.f5418a, this.f5419b * (f - 1.0f))) * MathUtils.sin(f * this.f5421d) * this.f5420c;
        }
    }

    /* loaded from: classes.dex */
    public static class ElasticOut extends Elastic {
        public ElasticOut(float f, float f2, int i, float f3) {
            super(f, f2, i, f3);
        }

        @Override // com.badlogic.gdx.math.Interpolation.Elastic, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f == 0.0f) {
                return 0.0f;
            }
            float f2 = 1.0f - f;
            return 1.0f - ((((float) Math.pow(this.f5418a, this.f5419b * (f2 - 1.0f))) * MathUtils.sin(f2 * this.f5421d)) * this.f5420c);
        }
    }

    /* loaded from: classes.dex */
    public static class Exp extends Interpolation {

        /* renamed from: a */
        public final float f5422a;

        /* renamed from: b */
        public final float f5423b;

        /* renamed from: c */
        public final float f5424c;

        /* renamed from: d */
        public final float f5425d;

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            float pow;
            if (f <= 0.5f) {
                pow = (((float) Math.pow(this.f5422a, this.f5423b * ((f * 2.0f) - 1.0f))) - this.f5424c) * this.f5425d;
            } else {
                pow = 2.0f - ((((float) Math.pow(this.f5422a, (-this.f5423b) * ((f * 2.0f) - 1.0f))) - this.f5424c) * this.f5425d);
            }
            return pow / 2.0f;
        }

        public Exp(float f, float f2) {
            this.f5422a = f;
            this.f5423b = f2;
            float pow = (float) Math.pow(f, -f2);
            this.f5424c = pow;
            this.f5425d = 1.0f / (1.0f - pow);
        }
    }

    /* loaded from: classes.dex */
    public static class ExpIn extends Exp {
        public ExpIn(float f, float f2) {
            super(f, f2);
        }

        @Override // com.badlogic.gdx.math.Interpolation.Exp, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return (((float) Math.pow(this.f5422a, this.f5423b * (f - 1.0f))) - this.f5424c) * this.f5425d;
        }
    }

    /* loaded from: classes.dex */
    public static class ExpOut extends Exp {
        public ExpOut(float f, float f2) {
            super(f, f2);
        }

        @Override // com.badlogic.gdx.math.Interpolation.Exp, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return 1.0f - ((((float) Math.pow(this.f5422a, (-this.f5423b) * f)) - this.f5424c) * this.f5425d);
        }
    }

    /* loaded from: classes.dex */
    public static class Pow extends Interpolation {

        /* renamed from: a */
        public final int f5426a;

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f <= 0.5f) {
                return ((float) Math.pow(f * 2.0f, this.f5426a)) / 2.0f;
            }
            float pow = (float) Math.pow((f - 1.0f) * 2.0f, this.f5426a);
            int i = 2;
            if (this.f5426a % 2 == 0) {
                i = -2;
            }
            return (pow / i) + 1.0f;
        }

        public Pow(int i) {
            this.f5426a = i;
        }
    }

    /* loaded from: classes.dex */
    public static class PowIn extends Pow {
        public PowIn(int i) {
            super(i);
        }

        @Override // com.badlogic.gdx.math.Interpolation.Pow, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return (float) Math.pow(f, this.f5426a);
        }
    }

    /* loaded from: classes.dex */
    public static class PowOut extends Pow {
        public PowOut(int i) {
            super(i);
        }

        @Override // com.badlogic.gdx.math.Interpolation.Pow, com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            return (((float) Math.pow(f - 1.0f, this.f5426a)) * (this.f5426a % 2 == 0 ? -1 : 1)) + 1.0f;
        }
    }

    /* loaded from: classes.dex */
    public static class Swing extends Interpolation {

        /* renamed from: a */
        public final float f5427a;

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            if (f <= 0.5f) {
                float f2 = f * 2.0f;
                float f3 = this.f5427a;
                return ((f2 * f2) * (((1.0f + f3) * f2) - f3)) / 2.0f;
            }
            float f4 = (f - 1.0f) * 2.0f;
            float f5 = this.f5427a;
            return (((f4 * f4) * (((f5 + 1.0f) * f4) + f5)) / 2.0f) + 1.0f;
        }

        public Swing(float f) {
            this.f5427a = f * 2.0f;
        }
    }

    public abstract float apply(float f);

    public float apply(float f, float f2, float f3) {
        return f + ((f2 - f) * apply(f3));
    }

    /* loaded from: classes.dex */
    public static class SwingIn extends Interpolation {

        /* renamed from: a */
        public final float f5428a;

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            float f2 = this.f5428a;
            return f * f * (((1.0f + f2) * f) - f2);
        }

        public SwingIn(float f) {
            this.f5428a = f;
        }
    }

    /* loaded from: classes.dex */
    public static class SwingOut extends Interpolation {

        /* renamed from: a */
        public final float f5429a;

        @Override // com.badlogic.gdx.math.Interpolation
        public float apply(float f) {
            float f2 = f - 1.0f;
            float f3 = this.f5429a;
            return (f2 * f2 * (((f3 + 1.0f) * f2) + f3)) + 1.0f;
        }

        public SwingOut(float f) {
            this.f5429a = f;
        }
    }

    static {
        Interpolation interpolation = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.4
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return f * f * f * ((f * ((6.0f * f) - 15.0f)) + 10.0f);
            }
        };
        smoother = interpolation;
        fade = interpolation;
        pow2 = new Pow(2);
        PowIn powIn = new PowIn(2);
        pow2In = powIn;
        slowFast = powIn;
        PowOut powOut = new PowOut(2);
        pow2Out = powOut;
        fastSlow = powOut;
        pow2InInverse = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.5
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                if (f < 1.0E-6f) {
                    return 0.0f;
                }
                return (float) Math.sqrt(f);
            }
        };
        pow2OutInverse = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.6
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                if (f < 1.0E-6f) {
                    return 0.0f;
                }
                if (f > 1.0f) {
                    return 1.0f;
                }
                return 1.0f - ((float) Math.sqrt(-(f - 1.0f)));
            }
        };
        pow3 = new Pow(3);
        pow3In = new PowIn(3);
        pow3Out = new PowOut(3);
        pow3InInverse = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.7
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return (float) Math.cbrt(f);
            }
        };
        pow3OutInverse = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.8
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return 1.0f - ((float) Math.cbrt(-(f - 1.0f)));
            }
        };
        pow4 = new Pow(4);
        pow4In = new PowIn(4);
        pow4Out = new PowOut(4);
        pow5 = new Pow(5);
        pow5In = new PowIn(5);
        pow5Out = new PowOut(5);
        sine = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.9
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return (1.0f - MathUtils.cos(f * 3.1415927f)) / 2.0f;
            }
        };
        sineIn = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.10
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return 1.0f - MathUtils.cos(f * 1.5707964f);
            }
        };
        sineOut = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.11
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return MathUtils.sin(f * 1.5707964f);
            }
        };
        exp10 = new Exp(2.0f, 10.0f);
        exp10In = new ExpIn(2.0f, 10.0f);
        exp10Out = new ExpOut(2.0f, 10.0f);
        exp5 = new Exp(2.0f, 5.0f);
        exp5In = new ExpIn(2.0f, 5.0f);
        exp5Out = new ExpOut(2.0f, 5.0f);
        circle = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.12
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                if (f <= 0.5f) {
                    float f2 = f * 2.0f;
                    return (1.0f - ((float) Math.sqrt(1.0f - (f2 * f2)))) / 2.0f;
                }
                float f3 = (f - 1.0f) * 2.0f;
                return (((float) Math.sqrt(1.0f - (f3 * f3))) + 1.0f) / 2.0f;
            }
        };
        circleIn = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.13
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                return 1.0f - ((float) Math.sqrt(1.0f - (f * f)));
            }
        };
        circleOut = new Interpolation() { // from class: com.badlogic.gdx.math.Interpolation.14
            @Override // com.badlogic.gdx.math.Interpolation
            public float apply(float f) {
                float f2 = f - 1.0f;
                return (float) Math.sqrt(1.0f - (f2 * f2));
            }
        };
        elastic = new Elastic(2.0f, 10.0f, 7, 1.0f);
        elasticIn = new ElasticIn(2.0f, 10.0f, 6, 1.0f);
        elasticOut = new ElasticOut(2.0f, 10.0f, 7, 1.0f);
        swing = new Swing(1.5f);
        swingIn = new SwingIn(2.0f);
        swingOut = new SwingOut(2.0f);
        bounce = new Bounce(4);
        bounceIn = new BounceIn(4);
        bounceOut = new BounceOut(4);
    }
}
