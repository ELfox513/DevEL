package p190u;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: u.j */
/* loaded from: classes.dex */
public class C6830j {
    /* renamed from: d */
    public static ColorStateList m3295d(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* renamed from: j */
    public static boolean m3289j(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* renamed from: k */
    public static TypedArray m3288k(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* renamed from: a */
    public static boolean m3298a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        if (!m3289j(xmlPullParser, str)) {
            return z;
        }
        return typedArray.getBoolean(i, z);
    }

    /* renamed from: b */
    public static int m3297b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (!m3289j(xmlPullParser, str)) {
            return i2;
        }
        return typedArray.getColor(i, i2);
    }

    /* renamed from: c */
    public static ColorStateList m3296c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (m3289j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 != 2) {
                if (i2 >= 28 && i2 <= 31) {
                    return m3295d(typedValue);
                }
                return C6808a.m3362d(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
        }
        return null;
    }

    /* renamed from: e */
    public static C6809b m3294e(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m3289j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return C6809b.m3356b(typedValue.data);
            }
            C6809b m3351g = C6809b.m3351g(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (m3351g != null) {
                return m3351g;
            }
        }
        return C6809b.m3356b(i2);
    }

    /* renamed from: f */
    public static float m3293f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        if (!m3289j(xmlPullParser, str)) {
            return f;
        }
        return typedArray.getFloat(i, f);
    }

    /* renamed from: g */
    public static int m3292g(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (!m3289j(xmlPullParser, str)) {
            return i2;
        }
        return typedArray.getInt(i, i2);
    }

    /* renamed from: h */
    public static int m3291h(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        if (!m3289j(xmlPullParser, str)) {
            return i2;
        }
        return typedArray.getResourceId(i, i2);
    }

    /* renamed from: i */
    public static String m3290i(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m3289j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.getString(i);
    }

    /* renamed from: l */
    public static TypedValue m3287l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (!m3289j(xmlPullParser, str)) {
            return null;
        }
        return typedArray.peekValue(i);
    }
}
