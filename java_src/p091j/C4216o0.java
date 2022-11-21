package p091j;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.StaticLayout$Builder;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
import p021c.C1017j;
import p038d0.C3218s0;
/* renamed from: j.o0 */
/* loaded from: classes.dex */
public class C4216o0 {

    /* renamed from: l */
    public static final RectF f17973l = new RectF();

    /* renamed from: m */
    public static ConcurrentHashMap<String, Method> f17974m = new ConcurrentHashMap<>();

    /* renamed from: n */
    public static ConcurrentHashMap<String, Field> f17975n = new ConcurrentHashMap<>();

    /* renamed from: a */
    public int f17976a = 0;

    /* renamed from: b */
    public boolean f17977b = false;

    /* renamed from: c */
    public float f17978c = -1.0f;

    /* renamed from: d */
    public float f17979d = -1.0f;

    /* renamed from: e */
    public float f17980e = -1.0f;

    /* renamed from: f */
    public int[] f17981f = new int[0];

    /* renamed from: g */
    public boolean f17982g = false;

    /* renamed from: h */
    public TextPaint f17983h;

    /* renamed from: i */
    public final TextView f17984i;

    /* renamed from: j */
    public final Context f17985j;

    /* renamed from: k */
    public final C4219c f17986k;

    /* renamed from: j.o0$a */
    /* loaded from: classes.dex */
    public static class C4217a extends C4219c {
        @Override // p091j.C4216o0.C4219c
        /* renamed from: a */
        public void mo17035a(StaticLayout$Builder staticLayout$Builder, TextView textView) {
            staticLayout$Builder.setTextDirection((TextDirectionHeuristic) C4216o0.m17047o(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* renamed from: j.o0$b */
    /* loaded from: classes.dex */
    public static class C4218b extends C4217a {
        @Override // p091j.C4216o0.C4217a, p091j.C4216o0.C4219c
        /* renamed from: a */
        public void mo17035a(StaticLayout$Builder staticLayout$Builder, TextView textView) {
            TextDirectionHeuristic textDirectionHeuristic;
            textDirectionHeuristic = textView.getTextDirectionHeuristic();
            staticLayout$Builder.setTextDirection(textDirectionHeuristic);
        }

        @Override // p091j.C4216o0.C4219c
        /* renamed from: b */
        public boolean mo17034b(TextView textView) {
            boolean isHorizontallyScrollable;
            isHorizontallyScrollable = textView.isHorizontallyScrollable();
            return isHorizontallyScrollable;
        }
    }

    /* renamed from: j.o0$c */
    /* loaded from: classes.dex */
    public static class C4219c {
        /* renamed from: a */
        public void mo17035a(StaticLayout$Builder staticLayout$Builder, TextView textView) {
        }

        /* renamed from: b */
        public boolean mo17034b(TextView textView) {
            return ((Boolean) C4216o0.m17047o(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    /* renamed from: A */
    public final boolean m17063A() {
        return !(this.f17984i instanceof C4198j);
    }

    /* renamed from: b */
    public final int[] m17060b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* renamed from: c */
    public final void m17059c() {
        this.f17976a = 0;
        this.f17979d = -1.0f;
        this.f17980e = -1.0f;
        this.f17978c = -1.0f;
        this.f17981f = new int[0];
        this.f17977b = false;
    }

    /* renamed from: h */
    public int m17054h() {
        return Math.round(this.f17980e);
    }

    /* renamed from: i */
    public int m17053i() {
        return Math.round(this.f17979d);
    }

    /* renamed from: j */
    public int m17052j() {
        return Math.round(this.f17978c);
    }

    /* renamed from: k */
    public int[] m17051k() {
        return this.f17981f;
    }

    /* renamed from: l */
    public int m17050l() {
        return this.f17976a;
    }

    /* renamed from: p */
    public boolean m17046p() {
        return m17063A() && this.f17976a != 0;
    }

    /* renamed from: m */
    public static Method m17049m(String str) {
        try {
            Method method = f17974m.get(str);
            if (method == null && (method = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                method.setAccessible(true);
                f17974m.put(str, method);
            }
            return method;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    /* renamed from: B */
    public final void m17062B(float f, float f2, float f3) {
        if (f > 0.0f) {
            if (f2 > f) {
                if (f3 > 0.0f) {
                    this.f17976a = 1;
                    this.f17979d = f;
                    this.f17980e = f2;
                    this.f17978c = f3;
                    this.f17982g = false;
                    return;
                }
                throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
            }
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
    }

    /* renamed from: d */
    public StaticLayout m17058d(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return m17057e(charSequence, alignment, i, i2);
        }
        return m17056f(charSequence, alignment, i);
    }

    /* renamed from: f */
    public final StaticLayout m17056f(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f17983h, i, alignment, this.f17984i.getLineSpacingMultiplier(), this.f17984i.getLineSpacingExtra(), this.f17984i.getIncludeFontPadding());
    }

    /* renamed from: g */
    public final int m17055g(RectF rectF) {
        int length = this.f17981f.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                if (m17036z(this.f17981f[i4], rectF)) {
                    int i5 = i4 + 1;
                    i3 = i2;
                    i2 = i5;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.f17981f[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    /* renamed from: n */
    public void m17048n(int i) {
        TextPaint textPaint = this.f17983h;
        if (textPaint == null) {
            this.f17983h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f17983h.set(this.f17984i.getPaint());
        this.f17983h.setTextSize(i);
    }

    /* renamed from: q */
    public void m17045q(AttributeSet attributeSet, int i) {
        float f;
        float f2;
        float f3;
        int resourceId;
        Context context = this.f17985j;
        int[] iArr = C1017j.f2832i0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView = this.f17984i;
        C3218s0.m19365F(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes, i, 0);
        int i2 = C1017j.f2857n0;
        if (obtainStyledAttributes.hasValue(i2)) {
            this.f17976a = obtainStyledAttributes.getInt(i2, 0);
        }
        int i3 = C1017j.f2852m0;
        if (obtainStyledAttributes.hasValue(i3)) {
            f = obtainStyledAttributes.getDimension(i3, -1.0f);
        } else {
            f = -1.0f;
        }
        int i4 = C1017j.f2842k0;
        if (obtainStyledAttributes.hasValue(i4)) {
            f2 = obtainStyledAttributes.getDimension(i4, -1.0f);
        } else {
            f2 = -1.0f;
        }
        int i5 = C1017j.f2837j0;
        if (obtainStyledAttributes.hasValue(i5)) {
            f3 = obtainStyledAttributes.getDimension(i5, -1.0f);
        } else {
            f3 = -1.0f;
        }
        int i6 = C1017j.f2847l0;
        if (obtainStyledAttributes.hasValue(i6) && (resourceId = obtainStyledAttributes.getResourceId(i6, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m17038x(obtainTypedArray);
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (m17063A()) {
            if (this.f17976a == 1) {
                if (!this.f17982g) {
                    DisplayMetrics displayMetrics = this.f17985j.getResources().getDisplayMetrics();
                    if (f2 == -1.0f) {
                        f2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    }
                    if (f3 == -1.0f) {
                        f3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                    }
                    if (f == -1.0f) {
                        f = 1.0f;
                    }
                    m17062B(f2, f3, f);
                }
                m17039w();
                return;
            }
            return;
        }
        this.f17976a = 0;
    }

    /* renamed from: u */
    public final void m17041u(float f) {
        boolean z;
        if (f != this.f17984i.getPaint().getTextSize()) {
            this.f17984i.getPaint().setTextSize(f);
            if (Build.VERSION.SDK_INT >= 18) {
                z = this.f17984i.isInLayout();
            } else {
                z = false;
            }
            if (this.f17984i.getLayout() != null) {
                this.f17977b = false;
                try {
                    Method m17049m = m17049m("nullLayouts");
                    if (m17049m != null) {
                        m17049m.invoke(this.f17984i, new Object[0]);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!z) {
                    this.f17984i.requestLayout();
                } else {
                    this.f17984i.forceLayout();
                }
                this.f17984i.invalidate();
            }
        }
    }

    /* renamed from: v */
    public void m17040v(int i, float f) {
        Resources resources;
        Context context = this.f17985j;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        m17041u(TypedValue.applyDimension(i, f, resources.getDisplayMetrics()));
    }

    /* renamed from: y */
    public final boolean m17037y() {
        boolean z;
        int[] iArr = this.f17981f;
        int length = iArr.length;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        this.f17982g = z;
        if (z) {
            this.f17976a = 1;
            this.f17979d = iArr[0];
            this.f17980e = iArr[length - 1];
            this.f17978c = -1.0f;
        }
        return z;
    }

    /* renamed from: z */
    public final boolean m17036z(int i, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f17984i.getText();
        TransformationMethod transformationMethod = this.f17984i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f17984i)) != null) {
            text = transformation;
        }
        int maxLines = this.f17984i.getMaxLines();
        m17048n(i);
        StaticLayout m17058d = m17058d(text, (Layout.Alignment) m17047o(this.f17984i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        if ((maxLines != -1 && (m17058d.getLineCount() > maxLines || m17058d.getLineEnd(m17058d.getLineCount() - 1) != text.length())) || m17058d.getHeight() > rectF.bottom) {
            return false;
        }
        return true;
    }

    public C4216o0(TextView textView) {
        this.f17984i = textView;
        this.f17985j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f17986k = new C4218b();
        } else if (i >= 23) {
            this.f17986k = new C4217a();
        } else {
            this.f17986k = new C4219c();
        }
    }

    /* renamed from: o */
    public static <T> T m17047o(Object obj, String str, T t) {
        try {
            return (T) m17049m(str).invoke(obj, new Object[0]);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
            return t;
        }
    }

    /* renamed from: a */
    public void m17061a() {
        int measuredWidth;
        if (!m17046p()) {
            return;
        }
        if (this.f17977b) {
            if (this.f17984i.getMeasuredHeight() > 0 && this.f17984i.getMeasuredWidth() > 0) {
                if (this.f17986k.mo17034b(this.f17984i)) {
                    measuredWidth = 1048576;
                } else {
                    measuredWidth = (this.f17984i.getMeasuredWidth() - this.f17984i.getTotalPaddingLeft()) - this.f17984i.getTotalPaddingRight();
                }
                int height = (this.f17984i.getHeight() - this.f17984i.getCompoundPaddingBottom()) - this.f17984i.getCompoundPaddingTop();
                if (measuredWidth > 0 && height > 0) {
                    RectF rectF = f17973l;
                    synchronized (rectF) {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float m17055g = m17055g(rectF);
                        if (m17055g != this.f17984i.getTextSize()) {
                            m17040v(0, m17055g);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        this.f17977b = true;
    }

    /* renamed from: e */
    public final StaticLayout m17057e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int breakStrategy;
        int hyphenationFrequency;
        StaticLayout$Builder obtain = StaticLayout$Builder.obtain(charSequence, 0, charSequence.length(), this.f17983h, i);
        StaticLayout$Builder includePad = obtain.setAlignment(alignment).setLineSpacing(this.f17984i.getLineSpacingExtra(), this.f17984i.getLineSpacingMultiplier()).setIncludePad(this.f17984i.getIncludeFontPadding());
        breakStrategy = this.f17984i.getBreakStrategy();
        StaticLayout$Builder breakStrategy2 = includePad.setBreakStrategy(breakStrategy);
        hyphenationFrequency = this.f17984i.getHyphenationFrequency();
        StaticLayout$Builder hyphenationFrequency2 = breakStrategy2.setHyphenationFrequency(hyphenationFrequency);
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency2.setMaxLines(i2);
        try {
            this.f17986k.mo17035a(obtain, this.f17984i);
        } catch (ClassCastException unused) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }

    /* renamed from: r */
    public void m17044r(int i, int i2, int i3, int i4) {
        if (m17063A()) {
            DisplayMetrics displayMetrics = this.f17985j.getResources().getDisplayMetrics();
            m17062B(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m17039w()) {
                m17061a();
            }
        }
    }

    /* renamed from: s */
    public void m17043s(int[] iArr, int i) {
        if (m17063A()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f17985j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArr2[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.f17981f = m17060b(iArr2);
                if (!m17037y()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f17982g = false;
            }
            if (m17039w()) {
                m17061a();
            }
        }
    }

    /* renamed from: t */
    public void m17042t(int i) {
        if (m17063A()) {
            if (i != 0) {
                if (i == 1) {
                    DisplayMetrics displayMetrics = this.f17985j.getResources().getDisplayMetrics();
                    m17062B(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
                    if (m17039w()) {
                        m17061a();
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
            m17059c();
        }
    }

    /* renamed from: w */
    public final boolean m17039w() {
        if (m17063A() && this.f17976a == 1) {
            if (!this.f17982g || this.f17981f.length == 0) {
                int floor = ((int) Math.floor((this.f17980e - this.f17979d) / this.f17978c)) + 1;
                int[] iArr = new int[floor];
                for (int i = 0; i < floor; i++) {
                    iArr[i] = Math.round(this.f17979d + (i * this.f17978c));
                }
                this.f17981f = m17060b(iArr);
            }
            this.f17977b = true;
        } else {
            this.f17977b = false;
        }
        return this.f17977b;
    }

    /* renamed from: x */
    public final void m17038x(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f17981f = m17060b(iArr);
            m17037y();
        }
    }
}
