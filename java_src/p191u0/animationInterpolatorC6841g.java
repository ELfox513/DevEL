package p191u0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import org.xmlpull.v1.XmlPullParser;
import p190u.C6830j;
import p199v.C6949c;
/* renamed from: u0.g  reason: invalid class name */
/* loaded from: classes.dex */
public class animationInterpolatorC6841g implements Interpolator {

    /* renamed from: a */
    public float[] f35588a;

    /* renamed from: b */
    public float[] f35589b;

    public animationInterpolatorC6841g(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f35588a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f35588a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f35588a;
        float f2 = fArr[length];
        float f3 = fArr[i];
        float f4 = f2 - f3;
        if (f4 == 0.0f) {
            return this.f35589b[i];
        }
        float[] fArr2 = this.f35589b;
        float f5 = fArr2[i];
        return f5 + (((f - f3) / f4) * (fArr2[length] - f5));
    }

    public animationInterpolatorC6841g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35572l);
        m3255d(m3288k, xmlPullParser);
        m3288k.recycle();
    }

    /* renamed from: a */
    public final void m3258a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m3257b(path);
    }

    /* renamed from: b */
    public final void m3257b(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f35588a = new float[min];
            this.f35589b = new float[min];
            float[] fArr = new float[2];
            for (int i2 = 0; i2 < min; i2++) {
                pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
                this.f35588a[i2] = fArr[0];
                this.f35589b[i2] = fArr[1];
            }
            if (Math.abs(this.f35588a[0]) <= 1.0E-5d && Math.abs(this.f35589b[0]) <= 1.0E-5d) {
                int i3 = min - 1;
                if (Math.abs(this.f35588a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f35589b[i3] - 1.0f) <= 1.0E-5d) {
                    float f = 0.0f;
                    int i4 = 0;
                    while (i < min) {
                        float[] fArr2 = this.f35588a;
                        int i5 = i4 + 1;
                        float f2 = fArr2[i4];
                        if (f2 >= f) {
                            fArr2[i] = f2;
                            i++;
                            f = f2;
                            i4 = i5;
                        } else {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
                        }
                    }
                    if (!pathMeasure.nextContour()) {
                        return;
                    }
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("The Path must start at (0,0) and end at (1,1) start: ");
            sb.append(this.f35588a[0]);
            sb.append(",");
            sb.append(this.f35589b[0]);
            sb.append(" end:");
            int i6 = min - 1;
            sb.append(this.f35588a[i6]);
            sb.append(",");
            sb.append(this.f35589b[i6]);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length " + length);
    }

    /* renamed from: c */
    public final void m3256c(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m3257b(path);
    }

    /* renamed from: d */
    public final void m3255d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (C6830j.m3289j(xmlPullParser, "pathData")) {
            String m3290i = C6830j.m3290i(typedArray, xmlPullParser, "pathData", 4);
            Path m2945e = C6949c.m2945e(m3290i);
            if (m2945e != null) {
                m3257b(m2945e);
                return;
            }
            throw new InflateException("The path is null, which is created from " + m3290i);
        } else if (C6830j.m3289j(xmlPullParser, "controlX1")) {
            if (C6830j.m3289j(xmlPullParser, "controlY1")) {
                float m3293f = C6830j.m3293f(typedArray, xmlPullParser, "controlX1", 0, 0.0f);
                float m3293f2 = C6830j.m3293f(typedArray, xmlPullParser, "controlY1", 1, 0.0f);
                boolean m3289j = C6830j.m3289j(xmlPullParser, "controlX2");
                if (m3289j == C6830j.m3289j(xmlPullParser, "controlY2")) {
                    if (!m3289j) {
                        m3256c(m3293f, m3293f2);
                        return;
                    } else {
                        m3258a(m3293f, m3293f2, C6830j.m3293f(typedArray, xmlPullParser, "controlX2", 2, 0.0f), C6830j.m3293f(typedArray, xmlPullParser, "controlY2", 3, 0.0f));
                        return;
                    }
                }
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        } else {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
    }
}
