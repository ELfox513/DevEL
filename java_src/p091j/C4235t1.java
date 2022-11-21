package p091j;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import p046e.C3335b;
import p190u.C6820h;
/* renamed from: j.t1 */
/* loaded from: classes.dex */
public class C4235t1 {

    /* renamed from: a */
    public final Context f18017a;

    /* renamed from: b */
    public final TypedArray f18018b;

    /* renamed from: c */
    public TypedValue f18019c;

    /* renamed from: s */
    public static C4235t1 m16968s(Context context, int i, int[] iArr) {
        return new C4235t1(context, context.obtainStyledAttributes(i, iArr));
    }

    /* renamed from: t */
    public static C4235t1 m16967t(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C4235t1(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* renamed from: a */
    public boolean m16986a(int i, boolean z) {
        return this.f18018b.getBoolean(i, z);
    }

    /* renamed from: b */
    public int m16985b(int i, int i2) {
        return this.f18018b.getColor(i, i2);
    }

    /* renamed from: d */
    public int m16983d(int i, int i2) {
        return this.f18018b.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: e */
    public int m16982e(int i, int i2) {
        return this.f18018b.getDimensionPixelSize(i, i2);
    }

    /* renamed from: h */
    public float m16979h(int i, float f) {
        return this.f18018b.getFloat(i, f);
    }

    /* renamed from: j */
    public int m16977j(int i, int i2) {
        return this.f18018b.getInt(i, i2);
    }

    /* renamed from: k */
    public int m16976k(int i, int i2) {
        return this.f18018b.getInteger(i, i2);
    }

    /* renamed from: l */
    public int m16975l(int i, int i2) {
        return this.f18018b.getLayoutDimension(i, i2);
    }

    /* renamed from: m */
    public int m16974m(int i, int i2) {
        return this.f18018b.getResourceId(i, i2);
    }

    /* renamed from: n */
    public String m16973n(int i) {
        return this.f18018b.getString(i);
    }

    /* renamed from: o */
    public CharSequence m16972o(int i) {
        return this.f18018b.getText(i);
    }

    /* renamed from: p */
    public CharSequence[] m16971p(int i) {
        return this.f18018b.getTextArray(i);
    }

    /* renamed from: q */
    public TypedArray m16970q() {
        return this.f18018b;
    }

    /* renamed from: r */
    public boolean m16969r(int i) {
        return this.f18018b.hasValue(i);
    }

    /* renamed from: v */
    public void m16965v() {
        this.f18018b.recycle();
    }

    /* renamed from: u */
    public static C4235t1 m16966u(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C4235t1(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* renamed from: c */
    public ColorStateList m16984c(int i) {
        int resourceId;
        ColorStateList m19102c;
        if (this.f18018b.hasValue(i) && (resourceId = this.f18018b.getResourceId(i, 0)) != 0 && (m19102c = C3335b.m19102c(this.f18017a, resourceId)) != null) {
            return m19102c;
        }
        return this.f18018b.getColorStateList(i);
    }

    /* renamed from: f */
    public Drawable m16981f(int i) {
        int resourceId;
        if (this.f18018b.hasValue(i) && (resourceId = this.f18018b.getResourceId(i, 0)) != 0) {
            return C3335b.m19101d(this.f18017a, resourceId);
        }
        return this.f18018b.getDrawable(i);
    }

    /* renamed from: g */
    public Drawable m16980g(int i) {
        int resourceId;
        if (this.f18018b.hasValue(i) && (resourceId = this.f18018b.getResourceId(i, 0)) != 0) {
            return C4188i.m17186b().m17184d(this.f18017a, resourceId, true);
        }
        return null;
    }

    /* renamed from: i */
    public Typeface m16978i(int i, int i2, C6820h.AbstractC6823c abstractC6823c) {
        int resourceId = this.f18018b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f18019c == null) {
            this.f18019c = new TypedValue();
        }
        return C6820h.m3313e(this.f18017a, resourceId, this.f18019c, i2, abstractC6823c);
    }

    public C4235t1(Context context, TypedArray typedArray) {
        this.f18017a = context;
        this.f18018b = typedArray;
    }
}
