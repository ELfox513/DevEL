package p190u;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p154q.C5380c;
/* renamed from: u.e */
/* loaded from: classes.dex */
public final class C6816e {
    /* renamed from: d */
    public static Shader.TileMode m3322d(int i) {
        if (i != 1) {
            if (i != 2) {
                return Shader.TileMode.CLAMP;
            }
            return Shader.TileMode.MIRROR;
        }
        return Shader.TileMode.REPEAT;
    }

    /* renamed from: a */
    public static C6817a m3325a(C6817a c6817a, int i, int i2, boolean z, int i3) {
        if (c6817a != null) {
            return c6817a;
        }
        if (z) {
            return new C6817a(i, i3, i2);
        }
        return new C6817a(i, i2);
    }

    /* renamed from: b */
    public static Shader m3324b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C5380c.f20071y);
            float m3293f = C6830j.m3293f(m3288k, xmlPullParser, "startX", C5380c.f20040H, 0.0f);
            float m3293f2 = C6830j.m3293f(m3288k, xmlPullParser, "startY", C5380c.f20041I, 0.0f);
            float m3293f3 = C6830j.m3293f(m3288k, xmlPullParser, "endX", C5380c.f20042J, 0.0f);
            float m3293f4 = C6830j.m3293f(m3288k, xmlPullParser, "endY", C5380c.f20043K, 0.0f);
            float m3293f5 = C6830j.m3293f(m3288k, xmlPullParser, "centerX", C5380c.f20035C, 0.0f);
            float m3293f6 = C6830j.m3293f(m3288k, xmlPullParser, "centerY", C5380c.f20036D, 0.0f);
            int m3292g = C6830j.m3292g(m3288k, xmlPullParser, "type", C5380c.f20034B, 0);
            int m3297b = C6830j.m3297b(m3288k, xmlPullParser, "startColor", C5380c.f20072z, 0);
            boolean m3289j = C6830j.m3289j(xmlPullParser, "centerColor");
            int m3297b2 = C6830j.m3297b(m3288k, xmlPullParser, "centerColor", C5380c.f20039G, 0);
            int m3297b3 = C6830j.m3297b(m3288k, xmlPullParser, "endColor", C5380c.f20033A, 0);
            int m3292g2 = C6830j.m3292g(m3288k, xmlPullParser, "tileMode", C5380c.f20038F, 0);
            float m3293f7 = C6830j.m3293f(m3288k, xmlPullParser, "gradientRadius", C5380c.f20037E, 0.0f);
            m3288k.recycle();
            C6817a m3325a = m3325a(m3323c(resources, xmlPullParser, attributeSet, theme), m3297b, m3297b3, m3289j, m3297b2);
            if (m3292g != 1) {
                if (m3292g != 2) {
                    return new LinearGradient(m3293f, m3293f2, m3293f3, m3293f4, m3325a.f35545a, m3325a.f35546b, m3322d(m3292g2));
                }
                return new SweepGradient(m3293f5, m3293f6, m3325a.f35545a, m3325a.f35546b);
            } else if (m3293f7 > 0.0f) {
                return new RadialGradient(m3293f5, m3293f6, m3293f7, m3325a.f35545a, m3325a.f35546b, m3322d(m3292g2));
            } else {
                throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
            }
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0080, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r10.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p190u.C6816e.C6817a m3323c(android.content.res.Resources r9, org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.content.res.Resources.Theme r12) {
        /*
            int r0 = r10.getDepth()
            r1 = 1
            int r0 = r0 + r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 20
            r2.<init>(r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r3)
        L12:
            int r3 = r10.next()
            if (r3 == r1) goto L81
            int r5 = r10.getDepth()
            if (r5 >= r0) goto L21
            r6 = 3
            if (r3 == r6) goto L81
        L21:
            r6 = 2
            if (r3 == r6) goto L25
            goto L12
        L25:
            if (r5 > r0) goto L12
            java.lang.String r3 = r10.getName()
            java.lang.String r5 = "item"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L34
            goto L12
        L34:
            int[] r3 = p154q.C5380c.f20044L
            android.content.res.TypedArray r3 = p190u.C6830j.m3288k(r9, r12, r11, r3)
            int r5 = p154q.C5380c.f20045M
            boolean r6 = r3.hasValue(r5)
            int r7 = p154q.C5380c.f20046N
            boolean r8 = r3.hasValue(r7)
            if (r6 == 0) goto L66
            if (r8 == 0) goto L66
            r6 = 0
            int r5 = r3.getColor(r5, r6)
            r6 = 0
            float r6 = r3.getFloat(r7, r6)
            r3.recycle()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r5)
            r4.add(r3)
            java.lang.Float r3 = java.lang.Float.valueOf(r6)
            r2.add(r3)
            goto L12
        L66:
            org.xmlpull.v1.XmlPullParserException r9 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r10 = r10.getPositionDescription()
            r11.append(r10)
            java.lang.String r10 = ": <item> tag requires a 'color' attribute and a 'offset' attribute!"
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            r9.<init>(r10)
            throw r9
        L81:
            int r9 = r4.size()
            if (r9 <= 0) goto L8d
            u.e$a r9 = new u.e$a
            r9.<init>(r4, r2)
            return r9
        L8d:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p190u.C6816e.m3323c(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):u.e$a");
    }

    /* renamed from: u.e$a */
    /* loaded from: classes.dex */
    public static final class C6817a {

        /* renamed from: a */
        public final int[] f35545a;

        /* renamed from: b */
        public final float[] f35546b;

        public C6817a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f35545a = new int[size];
            this.f35546b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f35545a[i] = list.get(i).intValue();
                this.f35546b[i] = list2.get(i).floatValue();
            }
        }

        public C6817a(int i, int i2) {
            this.f35545a = new int[]{i, i2};
            this.f35546b = new float[]{0.0f, 1.0f};
        }

        public C6817a(int i, int i2, int i3) {
            this.f35545a = new int[]{i, i2, i3};
            this.f35546b = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
