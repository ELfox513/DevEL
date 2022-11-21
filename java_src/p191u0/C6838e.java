package p191u0;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p190u.C6830j;
import p199v.C6949c;
/* renamed from: u0.e */
/* loaded from: classes.dex */
public class C6838e {
    /* renamed from: a */
    public static Animator m3279a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return m3278b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator m3278b(android.content.Context r18, android.content.res.Resources r19, android.content.res.Resources.Theme r20, org.xmlpull.v1.XmlPullParser r21, android.util.AttributeSet r22, android.animation.AnimatorSet r23, int r24, float r25) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p191u0.C6838e.m3278b(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: d */
    public static void m3276d(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* renamed from: h */
    public static boolean m3272h(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: j */
    public static Animator m3270j(Context context, Resources resources, Resources.Theme theme, int i) {
        return m3269k(context, resources, theme, i, 1.0f);
    }

    /* renamed from: o */
    public static PropertyValuesHolder m3265o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) {
        int size;
        PropertyValuesHolder propertyValuesHolder = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            } else if (xmlPullParser.getName().equals("keyframe")) {
                if (i == 4) {
                    i = m3273g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m3267m = m3267m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i, xmlPullParser);
                if (m3267m != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(m3267m);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), m3277c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, m3277c(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i2 = 0; i2 < size; i2++) {
                Keyframe keyframe3 = keyframeArr[i2];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i2 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i3 = size - 1;
                        if (i2 == i3) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i4 = i2;
                            for (int i5 = i2 + 1; i5 < i3 && keyframeArr[i5].getFraction() < 0.0f; i5++) {
                                i4 = i5;
                            }
                            m3276d(keyframeArr, keyframeArr[i4 + 1].getFraction() - keyframeArr[i2 - 1].getFraction(), i2, i4);
                        }
                    }
                }
            }
            propertyValuesHolder = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i == 3) {
                propertyValuesHolder.setEvaluator(C6840f.m3259a());
            }
        }
        return propertyValuesHolder;
    }

    /* renamed from: u0.e$a */
    /* loaded from: classes.dex */
    public static class C6839a implements TypeEvaluator<C6949c.C6951b[]> {

        /* renamed from: a */
        public C6949c.C6951b[] f35586a;

        @Override // android.animation.TypeEvaluator
        /* renamed from: a */
        public C6949c.C6951b[] evaluate(float f, C6949c.C6951b[] c6951bArr, C6949c.C6951b[] c6951bArr2) {
            if (C6949c.m2948b(c6951bArr, c6951bArr2)) {
                if (!C6949c.m2948b(this.f35586a, c6951bArr)) {
                    this.f35586a = C6949c.m2944f(c6951bArr);
                }
                for (int i = 0; i < c6951bArr.length; i++) {
                    this.f35586a[i].m2936d(c6951bArr[i], c6951bArr2[i], f);
                }
                return this.f35586a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* renamed from: g */
    public static int m3273g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        boolean z;
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35570j);
        int i = 0;
        TypedValue m3287l = C6830j.m3287l(m3288k, xmlPullParser, "value", 0);
        if (m3287l != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && m3272h(m3287l.type)) {
            i = 3;
        }
        m3288k.recycle();
        return i;
    }

    /* renamed from: i */
    public static Animator m3271i(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return AnimatorInflater.loadAnimator(context, i);
        }
        return m3270j(context, context.getResources(), context.getTheme(), i);
    }

    /* renamed from: k */
    public static Animator m3269k(Context context, Resources resources, Resources.Theme theme, int i, float f) {
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = resources.getAnimation(i);
                    return m3279a(context, resources, theme, xmlResourceParser, f);
                } catch (XmlPullParserException e) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    notFoundException.initCause(e);
                    throw notFoundException;
                }
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    /* renamed from: l */
    public static ValueAnimator m3268l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35567g);
        TypedArray m3288k2 = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35571k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        m3263q(valueAnimator, m3288k, m3288k2, f, xmlPullParser);
        int m3291h = C6830j.m3291h(m3288k, xmlPullParser, "interpolator", 0, 0);
        if (m3291h > 0) {
            valueAnimator.setInterpolator(C6837d.m3280b(context, m3291h));
        }
        m3288k.recycle();
        if (m3288k2 != null) {
            m3288k2.recycle();
        }
        return valueAnimator;
    }

    /* renamed from: m */
    public static Keyframe m3267m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        boolean z;
        Keyframe ofInt;
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35570j);
        float m3293f = C6830j.m3293f(m3288k, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue m3287l = C6830j.m3287l(m3288k, xmlPullParser, "value", 0);
        if (m3287l != null) {
            z = true;
        } else {
            z = false;
        }
        if (i == 4) {
            if (z && m3272h(m3287l.type)) {
                i = 3;
            } else {
                i = 0;
            }
        }
        if (z) {
            if (i != 0) {
                if (i != 1 && i != 3) {
                    ofInt = null;
                } else {
                    ofInt = Keyframe.ofInt(m3293f, C6830j.m3292g(m3288k, xmlPullParser, "value", 0, 0));
                }
            } else {
                ofInt = Keyframe.ofFloat(m3293f, C6830j.m3293f(m3288k, xmlPullParser, "value", 0, 0.0f));
            }
        } else if (i == 0) {
            ofInt = Keyframe.ofFloat(m3293f);
        } else {
            ofInt = Keyframe.ofInt(m3293f);
        }
        int m3291h = C6830j.m3291h(m3288k, xmlPullParser, "interpolator", 1, 0);
        if (m3291h > 0) {
            ofInt.setInterpolator(C6837d.m3280b(context, m3291h));
        }
        m3288k.recycle();
        return ofInt;
    }

    /* renamed from: n */
    public static ObjectAnimator m3266n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m3268l(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* renamed from: p */
    public static PropertyValuesHolder[] m3264p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        int i;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35569i);
                    String m3290i = C6830j.m3290i(m3288k, xmlPullParser, "propertyName", 3);
                    int m3292g = C6830j.m3292g(m3288k, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder m3265o = m3265o(context, resources, theme, xmlPullParser, m3290i, m3292g);
                    if (m3265o == null) {
                        m3265o = m3275e(m3288k, m3292g, 0, 1, m3290i);
                    }
                    if (m3265o != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(m3265o);
                    }
                    m3288k.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i = 0; i < size; i++) {
                propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList.get(i);
            }
        }
        return propertyValuesHolderArr;
    }

    /* renamed from: q */
    public static void m3263q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long m3292g = C6830j.m3292g(typedArray, xmlPullParser, "duration", 1, 300);
        long m3292g2 = C6830j.m3292g(typedArray, xmlPullParser, "startOffset", 2, 0);
        int m3292g3 = C6830j.m3292g(typedArray, xmlPullParser, "valueType", 7, 4);
        if (C6830j.m3289j(xmlPullParser, "valueFrom") && C6830j.m3289j(xmlPullParser, "valueTo")) {
            if (m3292g3 == 4) {
                m3292g3 = m3274f(typedArray, 5, 6);
            }
            PropertyValuesHolder m3275e = m3275e(typedArray, m3292g3, 5, 6, "");
            if (m3275e != null) {
                valueAnimator.setValues(m3275e);
            }
        }
        valueAnimator.setDuration(m3292g);
        valueAnimator.setStartDelay(m3292g2);
        valueAnimator.setRepeatCount(C6830j.m3292g(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C6830j.m3292g(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m3262r(valueAnimator, typedArray2, m3292g3, f, xmlPullParser);
        }
    }

    /* renamed from: r */
    public static void m3262r(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String m3290i = C6830j.m3290i(typedArray, xmlPullParser, "pathData", 1);
        if (m3290i != null) {
            String m3290i2 = C6830j.m3290i(typedArray, xmlPullParser, "propertyXName", 2);
            String m3290i3 = C6830j.m3290i(typedArray, xmlPullParser, "propertyYName", 3);
            if (i != 2) {
            }
            if (m3290i2 == null && m3290i3 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            m3261s(C6949c.m2945e(m3290i), objectAnimator, f * 0.5f, m3290i2, m3290i3);
            return;
        }
        objectAnimator.setPropertyName(C6830j.m3290i(typedArray, xmlPullParser, "propertyName", 0));
    }

    /* renamed from: s */
    public static void m3261s(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        PropertyValuesHolder propertyValuesHolder;
        PropertyValuesHolder propertyValuesHolder2;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f2 = 0.0f;
        arrayList.add(Float.valueOf(0.0f));
        float f3 = 0.0f;
        do {
            f3 += pathMeasure.getLength();
            arrayList.add(Float.valueOf(f3));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (f3 / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f4 = f3 / (min - 1);
        int i = 0;
        int i2 = 0;
        while (true) {
            propertyValuesHolder = null;
            if (i >= min) {
                break;
            }
            pathMeasure2.getPosTan(f2 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i] = fArr3[0];
            fArr2[i] = fArr3[1];
            f2 += f4;
            int i3 = i2 + 1;
            if (i3 < arrayList.size() && f2 > ((Float) arrayList.get(i3)).floatValue()) {
                pathMeasure2.nextContour();
                i2 = i3;
            }
            i++;
        }
        if (str != null) {
            propertyValuesHolder2 = PropertyValuesHolder.ofFloat(str, fArr);
        } else {
            propertyValuesHolder2 = null;
        }
        if (str2 != null) {
            propertyValuesHolder = PropertyValuesHolder.ofFloat(str2, fArr2);
        }
        if (propertyValuesHolder2 == null) {
            objectAnimator.setValues(propertyValuesHolder);
        } else if (propertyValuesHolder == null) {
            objectAnimator.setValues(propertyValuesHolder2);
        } else {
            objectAnimator.setValues(propertyValuesHolder2, propertyValuesHolder);
        }
    }

    /* renamed from: c */
    public static Keyframe m3277c(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    /* renamed from: e */
    public static PropertyValuesHolder m3275e(TypedArray typedArray, int i, int i2, int i3, String str) {
        boolean z;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        C6840f c6840f;
        int i6;
        int i7;
        int i8;
        float f;
        PropertyValuesHolder ofFloat;
        float f2;
        float f3;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i2);
        if (peekValue != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i4 = peekValue.type;
        } else {
            i4 = 0;
        }
        TypedValue peekValue2 = typedArray.peekValue(i3);
        if (peekValue2 != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            i5 = peekValue2.type;
        } else {
            i5 = 0;
        }
        if (i == 4) {
            if ((z && m3272h(i4)) || (z2 && m3272h(i5))) {
                i = 3;
            } else {
                i = 0;
            }
        }
        if (i == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        PropertyValuesHolder propertyValuesHolder = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            C6949c.C6951b[] m2946d = C6949c.m2946d(string);
            C6949c.C6951b[] m2946d2 = C6949c.m2946d(string2);
            if (m2946d == null && m2946d2 == null) {
                return null;
            }
            if (m2946d != null) {
                C6839a c6839a = new C6839a();
                if (m2946d2 != null) {
                    if (C6949c.m2948b(m2946d, m2946d2)) {
                        ofObject = PropertyValuesHolder.ofObject(str, c6839a, m2946d, m2946d2);
                    } else {
                        throw new InflateException(" Can't morph from " + string + " to " + string2);
                    }
                } else {
                    ofObject = PropertyValuesHolder.ofObject(str, c6839a, m2946d);
                }
                return ofObject;
            } else if (m2946d2 == null) {
                return null;
            } else {
                return PropertyValuesHolder.ofObject(str, new C6839a(), m2946d2);
            }
        }
        if (i == 3) {
            c6840f = C6840f.m3259a();
        } else {
            c6840f = null;
        }
        if (z3) {
            if (z) {
                if (i4 == 5) {
                    f2 = typedArray.getDimension(i2, 0.0f);
                } else {
                    f2 = typedArray.getFloat(i2, 0.0f);
                }
                if (z2) {
                    if (i5 == 5) {
                        f3 = typedArray.getDimension(i3, 0.0f);
                    } else {
                        f3 = typedArray.getFloat(i3, 0.0f);
                    }
                    ofFloat = PropertyValuesHolder.ofFloat(str, f2, f3);
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, f2);
                }
            } else {
                if (i5 == 5) {
                    f = typedArray.getDimension(i3, 0.0f);
                } else {
                    f = typedArray.getFloat(i3, 0.0f);
                }
                ofFloat = PropertyValuesHolder.ofFloat(str, f);
            }
            propertyValuesHolder = ofFloat;
        } else if (z) {
            if (i4 == 5) {
                i7 = (int) typedArray.getDimension(i2, 0.0f);
            } else if (m3272h(i4)) {
                i7 = typedArray.getColor(i2, 0);
            } else {
                i7 = typedArray.getInt(i2, 0);
            }
            if (z2) {
                if (i5 == 5) {
                    i8 = (int) typedArray.getDimension(i3, 0.0f);
                } else if (m3272h(i5)) {
                    i8 = typedArray.getColor(i3, 0);
                } else {
                    i8 = typedArray.getInt(i3, 0);
                }
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i7, i8);
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i7);
            }
        } else if (z2) {
            if (i5 == 5) {
                i6 = (int) typedArray.getDimension(i3, 0.0f);
            } else if (m3272h(i5)) {
                i6 = typedArray.getColor(i3, 0);
            } else {
                i6 = typedArray.getInt(i3, 0);
            }
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i6);
        }
        if (propertyValuesHolder != null && c6840f != null) {
            propertyValuesHolder.setEvaluator(c6840f);
            return propertyValuesHolder;
        }
        return propertyValuesHolder;
    }

    /* renamed from: f */
    public static int m3274f(TypedArray typedArray, int i, int i2) {
        boolean z;
        int i3;
        int i4;
        TypedValue peekValue = typedArray.peekValue(i);
        boolean z2 = true;
        if (peekValue != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i3 = peekValue.type;
        } else {
            i3 = 0;
        }
        TypedValue peekValue2 = typedArray.peekValue(i2);
        if (peekValue2 == null) {
            z2 = false;
        }
        if (z2) {
            i4 = peekValue2.type;
        } else {
            i4 = 0;
        }
        if ((!z || !m3272h(i3)) && (!z2 || !m3272h(i4))) {
            return 0;
        }
        return 3;
    }
}
