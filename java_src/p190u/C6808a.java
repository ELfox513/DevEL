package p190u;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p154q.C5378a;
import p154q.C5380c;
/* renamed from: u.a */
/* loaded from: classes.dex */
public final class C6808a {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f35530a = new ThreadLocal<>();

    /* renamed from: g */
    public static int m3359g(int i, float f) {
        return (i & 16777215) | (Math.round(Color.alpha(i) * f) << 24);
    }

    /* renamed from: c */
    public static TypedValue m3363c() {
        ThreadLocal<TypedValue> threadLocal = f35530a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            TypedValue typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
            return typedValue2;
        }
        return typedValue;
    }

    /* renamed from: e */
    public static ColorStateList m3361e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int depth;
        int color;
        int i = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] iArr = new int[20];
        int[] iArr2 = new int[20];
        int i2 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == i || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray m3358h = m3358h(resources, theme, attributeSet, C5380c.f20048b);
                int i3 = C5380c.f20049c;
                int resourceId = m3358h.getResourceId(i3, -1);
                if (resourceId != -1 && !m3360f(resources, resourceId)) {
                    try {
                        color = m3365a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                    } catch (Exception unused) {
                        color = m3358h.getColor(C5380c.f20049c, -65281);
                    }
                } else {
                    color = m3358h.getColor(i3, -65281);
                }
                float f = 1.0f;
                int i4 = C5380c.f20050d;
                if (m3358h.hasValue(i4)) {
                    f = m3358h.getFloat(i4, 1.0f);
                } else {
                    int i5 = C5380c.f20051e;
                    if (m3358h.hasValue(i5)) {
                        f = m3358h.getFloat(i5, 1.0f);
                    }
                }
                m3358h.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i6 = 0;
                for (int i7 = 0; i7 < attributeCount; i7++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i7);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != C5378a.f19987a) {
                        int i8 = i6 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i7, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i6] = attributeNameResource;
                        i6 = i8;
                    }
                }
                int[] trimStateSet = StateSet.trimStateSet(iArr3, i6);
                iArr2 = C6818f.m3321a(iArr2, i2, m3359g(color, f));
                iArr = (int[][]) C6818f.m3320b(iArr, i2, trimStateSet);
                i2++;
            }
            i = 1;
        }
        int[] iArr4 = new int[i2];
        int[][] iArr5 = new int[i2];
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        System.arraycopy(iArr, 0, iArr5, 0, i2);
        return new ColorStateList(iArr5, iArr4);
    }

    /* renamed from: h */
    public static TypedArray m3358h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    public static ColorStateList m3365a(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m3364b(resources, xmlPullParser, asAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* renamed from: b */
    public static ColorStateList m3364b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return m3361e(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* renamed from: d */
    public static ColorStateList m3362d(Resources resources, int i, Resources.Theme theme) {
        try {
            return m3365a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    /* renamed from: f */
    public static boolean m3360f(Resources resources, int i) {
        TypedValue m3363c = m3363c();
        resources.getValue(i, m3363c, true);
        int i2 = m3363c.type;
        if (i2 >= 28 && i2 <= 31) {
            return true;
        }
        return false;
    }
}
