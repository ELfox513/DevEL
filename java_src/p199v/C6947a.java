package p199v;

import android.graphics.Color;
/* renamed from: v.a */
/* loaded from: classes.dex */
public final class C6947a {

    /* renamed from: a */
    public static final ThreadLocal<double[]> f35820a = new ThreadLocal<>();

    /* renamed from: a */
    public static int m2958a(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    /* renamed from: c */
    public static int m2956c(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    /* renamed from: d */
    public static int m2955d(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }

    /* renamed from: b */
    public static int m2957b(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int m2958a = m2958a(alpha2, alpha);
        return Color.argb(m2958a, m2956c(Color.red(i), alpha2, Color.red(i2), alpha, m2958a), m2956c(Color.green(i), alpha2, Color.green(i2), alpha, m2958a), m2956c(Color.blue(i), alpha2, Color.blue(i2), alpha, m2958a));
    }
}
