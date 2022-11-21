package p191u0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p145p.C5270a;
import p190u.C6809b;
import p190u.C6820h;
import p190u.C6830j;
import p199v.C6949c;
import p208w.C7089j;
/* renamed from: u0.i */
/* loaded from: classes.dex */
public class C6843i extends AbstractC6842h {

    /* renamed from: v */
    public static final PorterDuff.Mode f35591v = PorterDuff.Mode.SRC_IN;

    /* renamed from: b */
    public C6851h f35592b;

    /* renamed from: d */
    public PorterDuffColorFilter f35593d;

    /* renamed from: k */
    public ColorFilter f35594k;

    /* renamed from: p */
    public boolean f35595p;

    /* renamed from: q */
    public boolean f35596q;

    /* renamed from: r */
    public Drawable.ConstantState f35597r;

    /* renamed from: s */
    public final float[] f35598s;

    /* renamed from: t */
    public final Matrix f35599t;

    /* renamed from: u */
    public final Rect f35600u;

    /* renamed from: u0.i$b */
    /* loaded from: classes.dex */
    public static class C6845b extends AbstractC6849f {
        public C6845b() {
        }

        @Override // p191u0.C6843i.AbstractC6849f
        /* renamed from: c */
        public boolean mo3233c() {
            return true;
        }

        /* renamed from: f */
        public final void m3243f(TypedArray typedArray, XmlPullParser xmlPullParser) {
            String string = typedArray.getString(0);
            if (string != null) {
                this.f35627b = string;
            }
            String string2 = typedArray.getString(1);
            if (string2 != null) {
                this.f35626a = C6949c.m2946d(string2);
            }
            this.f35628c = C6830j.m3292g(typedArray, xmlPullParser, "fillType", 2, 0);
        }

        public C6845b(C6845b c6845b) {
            super(c6845b);
        }

        /* renamed from: e */
        public void m3244e(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            if (!C6830j.m3289j(xmlPullParser, "pathData")) {
                return;
            }
            TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35564d);
            m3243f(m3288k, xmlPullParser);
            m3288k.recycle();
        }
    }

    /* renamed from: u0.i$c */
    /* loaded from: classes.dex */
    public static class C6846c extends AbstractC6849f {

        /* renamed from: e */
        public int[] f35601e;

        /* renamed from: f */
        public C6809b f35602f;

        /* renamed from: g */
        public float f35603g;

        /* renamed from: h */
        public C6809b f35604h;

        /* renamed from: i */
        public float f35605i;

        /* renamed from: j */
        public float f35606j;

        /* renamed from: k */
        public float f35607k;

        /* renamed from: l */
        public float f35608l;

        /* renamed from: m */
        public float f35609m;

        /* renamed from: n */
        public Paint.Cap f35610n;

        /* renamed from: o */
        public Paint.Join f35611o;

        /* renamed from: p */
        public float f35612p;

        public C6846c() {
            this.f35603g = 0.0f;
            this.f35605i = 1.0f;
            this.f35606j = 1.0f;
            this.f35607k = 0.0f;
            this.f35608l = 1.0f;
            this.f35609m = 0.0f;
            this.f35610n = Paint.Cap.BUTT;
            this.f35611o = Paint.Join.MITER;
            this.f35612p = 4.0f;
        }

        @Override // p191u0.C6843i.AbstractC6848e
        /* renamed from: a */
        public boolean mo3235a() {
            return this.f35604h.m3349i() || this.f35602f.m3349i();
        }

        public float getFillAlpha() {
            return this.f35606j;
        }

        public int getFillColor() {
            return this.f35604h.m3353e();
        }

        public float getStrokeAlpha() {
            return this.f35605i;
        }

        public int getStrokeColor() {
            return this.f35602f.m3353e();
        }

        public float getStrokeWidth() {
            return this.f35603g;
        }

        public float getTrimPathEnd() {
            return this.f35608l;
        }

        public float getTrimPathOffset() {
            return this.f35609m;
        }

        public float getTrimPathStart() {
            return this.f35607k;
        }

        /* renamed from: h */
        public final void m3239h(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
            this.f35601e = null;
            if (!C6830j.m3289j(xmlPullParser, "pathData")) {
                return;
            }
            String string = typedArray.getString(0);
            if (string != null) {
                this.f35627b = string;
            }
            String string2 = typedArray.getString(2);
            if (string2 != null) {
                this.f35626a = C6949c.m2946d(string2);
            }
            this.f35604h = C6830j.m3294e(typedArray, xmlPullParser, theme, "fillColor", 1, 0);
            this.f35606j = C6830j.m3293f(typedArray, xmlPullParser, "fillAlpha", 12, this.f35606j);
            this.f35610n = m3242e(C6830j.m3292g(typedArray, xmlPullParser, "strokeLineCap", 8, -1), this.f35610n);
            this.f35611o = m3241f(C6830j.m3292g(typedArray, xmlPullParser, "strokeLineJoin", 9, -1), this.f35611o);
            this.f35612p = C6830j.m3293f(typedArray, xmlPullParser, "strokeMiterLimit", 10, this.f35612p);
            this.f35602f = C6830j.m3294e(typedArray, xmlPullParser, theme, "strokeColor", 3, 0);
            this.f35605i = C6830j.m3293f(typedArray, xmlPullParser, "strokeAlpha", 11, this.f35605i);
            this.f35603g = C6830j.m3293f(typedArray, xmlPullParser, "strokeWidth", 4, this.f35603g);
            this.f35608l = C6830j.m3293f(typedArray, xmlPullParser, "trimPathEnd", 6, this.f35608l);
            this.f35609m = C6830j.m3293f(typedArray, xmlPullParser, "trimPathOffset", 7, this.f35609m);
            this.f35607k = C6830j.m3293f(typedArray, xmlPullParser, "trimPathStart", 5, this.f35607k);
            this.f35628c = C6830j.m3292g(typedArray, xmlPullParser, "fillType", 13, this.f35628c);
        }

        public void setFillAlpha(float f) {
            this.f35606j = f;
        }

        public void setFillColor(int i) {
            this.f35604h.m3347k(i);
        }

        public void setStrokeAlpha(float f) {
            this.f35605i = f;
        }

        public void setStrokeColor(int i) {
            this.f35602f.m3347k(i);
        }

        public void setStrokeWidth(float f) {
            this.f35603g = f;
        }

        public void setTrimPathEnd(float f) {
            this.f35608l = f;
        }

        public void setTrimPathOffset(float f) {
            this.f35609m = f;
        }

        public void setTrimPathStart(float f) {
            this.f35607k = f;
        }

        @Override // p191u0.C6843i.AbstractC6848e
        /* renamed from: b */
        public boolean mo3234b(int[] iArr) {
            return this.f35602f.m3348j(iArr) | this.f35604h.m3348j(iArr);
        }

        /* renamed from: e */
        public final Paint.Cap m3242e(int i, Paint.Cap cap) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return cap;
                    }
                    return Paint.Cap.SQUARE;
                }
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }

        /* renamed from: f */
        public final Paint.Join m3241f(int i, Paint.Join join) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        return join;
                    }
                    return Paint.Join.BEVEL;
                }
                return Paint.Join.ROUND;
            }
            return Paint.Join.MITER;
        }

        /* renamed from: g */
        public void m3240g(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35563c);
            m3239h(m3288k, xmlPullParser, theme);
            m3288k.recycle();
        }

        public C6846c(C6846c c6846c) {
            super(c6846c);
            this.f35603g = 0.0f;
            this.f35605i = 1.0f;
            this.f35606j = 1.0f;
            this.f35607k = 0.0f;
            this.f35608l = 1.0f;
            this.f35609m = 0.0f;
            this.f35610n = Paint.Cap.BUTT;
            this.f35611o = Paint.Join.MITER;
            this.f35612p = 4.0f;
            this.f35601e = c6846c.f35601e;
            this.f35602f = c6846c.f35602f;
            this.f35603g = c6846c.f35603g;
            this.f35605i = c6846c.f35605i;
            this.f35604h = c6846c.f35604h;
            this.f35628c = c6846c.f35628c;
            this.f35606j = c6846c.f35606j;
            this.f35607k = c6846c.f35607k;
            this.f35608l = c6846c.f35608l;
            this.f35609m = c6846c.f35609m;
            this.f35610n = c6846c.f35610n;
            this.f35611o = c6846c.f35611o;
            this.f35612p = c6846c.f35612p;
        }
    }

    /* renamed from: u0.i$d */
    /* loaded from: classes.dex */
    public static class C6847d extends AbstractC6848e {

        /* renamed from: a */
        public final Matrix f35613a;

        /* renamed from: b */
        public final ArrayList<AbstractC6848e> f35614b;

        /* renamed from: c */
        public float f35615c;

        /* renamed from: d */
        public float f35616d;

        /* renamed from: e */
        public float f35617e;

        /* renamed from: f */
        public float f35618f;

        /* renamed from: g */
        public float f35619g;

        /* renamed from: h */
        public float f35620h;

        /* renamed from: i */
        public float f35621i;

        /* renamed from: j */
        public final Matrix f35622j;

        /* renamed from: k */
        public int f35623k;

        /* renamed from: l */
        public int[] f35624l;

        /* renamed from: m */
        public String f35625m;

        public C6847d(C6847d c6847d, C5270a<String, Object> c5270a) {
            super();
            AbstractC6849f c6845b;
            this.f35613a = new Matrix();
            this.f35614b = new ArrayList<>();
            this.f35615c = 0.0f;
            this.f35616d = 0.0f;
            this.f35617e = 0.0f;
            this.f35618f = 1.0f;
            this.f35619g = 1.0f;
            this.f35620h = 0.0f;
            this.f35621i = 0.0f;
            Matrix matrix = new Matrix();
            this.f35622j = matrix;
            this.f35625m = null;
            this.f35615c = c6847d.f35615c;
            this.f35616d = c6847d.f35616d;
            this.f35617e = c6847d.f35617e;
            this.f35618f = c6847d.f35618f;
            this.f35619g = c6847d.f35619g;
            this.f35620h = c6847d.f35620h;
            this.f35621i = c6847d.f35621i;
            this.f35624l = c6847d.f35624l;
            String str = c6847d.f35625m;
            this.f35625m = str;
            this.f35623k = c6847d.f35623k;
            if (str != null) {
                c5270a.put(str, this);
            }
            matrix.set(c6847d.f35622j);
            ArrayList<AbstractC6848e> arrayList = c6847d.f35614b;
            for (int i = 0; i < arrayList.size(); i++) {
                AbstractC6848e abstractC6848e = arrayList.get(i);
                if (abstractC6848e instanceof C6847d) {
                    this.f35614b.add(new C6847d((C6847d) abstractC6848e, c5270a));
                } else {
                    if (abstractC6848e instanceof C6846c) {
                        c6845b = new C6846c((C6846c) abstractC6848e);
                    } else if (abstractC6848e instanceof C6845b) {
                        c6845b = new C6845b((C6845b) abstractC6848e);
                    } else {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    this.f35614b.add(c6845b);
                    String str2 = c6845b.f35627b;
                    if (str2 != null) {
                        c5270a.put(str2, c6845b);
                    }
                }
            }
        }

        @Override // p191u0.C6843i.AbstractC6848e
        /* renamed from: a */
        public boolean mo3235a() {
            for (int i = 0; i < this.f35614b.size(); i++) {
                if (this.f35614b.get(i).mo3235a()) {
                    return true;
                }
            }
            return false;
        }

        @Override // p191u0.C6843i.AbstractC6848e
        /* renamed from: b */
        public boolean mo3234b(int[] iArr) {
            boolean z = false;
            for (int i = 0; i < this.f35614b.size(); i++) {
                z |= this.f35614b.get(i).mo3234b(iArr);
            }
            return z;
        }

        /* renamed from: e */
        public final void m3236e(TypedArray typedArray, XmlPullParser xmlPullParser) {
            this.f35624l = null;
            this.f35615c = C6830j.m3293f(typedArray, xmlPullParser, "rotation", 5, this.f35615c);
            this.f35616d = typedArray.getFloat(1, this.f35616d);
            this.f35617e = typedArray.getFloat(2, this.f35617e);
            this.f35618f = C6830j.m3293f(typedArray, xmlPullParser, "scaleX", 3, this.f35618f);
            this.f35619g = C6830j.m3293f(typedArray, xmlPullParser, "scaleY", 4, this.f35619g);
            this.f35620h = C6830j.m3293f(typedArray, xmlPullParser, "translateX", 6, this.f35620h);
            this.f35621i = C6830j.m3293f(typedArray, xmlPullParser, "translateY", 7, this.f35621i);
            String string = typedArray.getString(0);
            if (string != null) {
                this.f35625m = string;
            }
            m3237d();
        }

        public String getGroupName() {
            return this.f35625m;
        }

        public Matrix getLocalMatrix() {
            return this.f35622j;
        }

        public float getPivotX() {
            return this.f35616d;
        }

        public float getPivotY() {
            return this.f35617e;
        }

        public float getRotation() {
            return this.f35615c;
        }

        public float getScaleX() {
            return this.f35618f;
        }

        public float getScaleY() {
            return this.f35619g;
        }

        public float getTranslateX() {
            return this.f35620h;
        }

        public float getTranslateY() {
            return this.f35621i;
        }

        /* renamed from: c */
        public void m3238c(Resources resources, AttributeSet attributeSet, Resources.Theme theme, XmlPullParser xmlPullParser) {
            TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35562b);
            m3236e(m3288k, xmlPullParser);
            m3288k.recycle();
        }

        /* renamed from: d */
        public final void m3237d() {
            this.f35622j.reset();
            this.f35622j.postTranslate(-this.f35616d, -this.f35617e);
            this.f35622j.postScale(this.f35618f, this.f35619g);
            this.f35622j.postRotate(this.f35615c, 0.0f, 0.0f);
            this.f35622j.postTranslate(this.f35620h + this.f35616d, this.f35621i + this.f35617e);
        }

        public void setPivotX(float f) {
            if (f != this.f35616d) {
                this.f35616d = f;
                m3237d();
            }
        }

        public void setPivotY(float f) {
            if (f != this.f35617e) {
                this.f35617e = f;
                m3237d();
            }
        }

        public void setRotation(float f) {
            if (f != this.f35615c) {
                this.f35615c = f;
                m3237d();
            }
        }

        public void setScaleX(float f) {
            if (f != this.f35618f) {
                this.f35618f = f;
                m3237d();
            }
        }

        public void setScaleY(float f) {
            if (f != this.f35619g) {
                this.f35619g = f;
                m3237d();
            }
        }

        public void setTranslateX(float f) {
            if (f != this.f35620h) {
                this.f35620h = f;
                m3237d();
            }
        }

        public void setTranslateY(float f) {
            if (f != this.f35621i) {
                this.f35621i = f;
                m3237d();
            }
        }

        public C6847d() {
            super();
            this.f35613a = new Matrix();
            this.f35614b = new ArrayList<>();
            this.f35615c = 0.0f;
            this.f35616d = 0.0f;
            this.f35617e = 0.0f;
            this.f35618f = 1.0f;
            this.f35619g = 1.0f;
            this.f35620h = 0.0f;
            this.f35621i = 0.0f;
            this.f35622j = new Matrix();
            this.f35625m = null;
        }
    }

    /* renamed from: u0.i$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC6848e {
        public AbstractC6848e() {
        }

        /* renamed from: a */
        public boolean mo3235a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo3234b(int[] iArr) {
            return false;
        }
    }

    /* renamed from: u0.i$f */
    /* loaded from: classes.dex */
    public static abstract class AbstractC6849f extends AbstractC6848e {

        /* renamed from: a */
        public C6949c.C6951b[] f35626a;

        /* renamed from: b */
        public String f35627b;

        /* renamed from: c */
        public int f35628c;

        /* renamed from: d */
        public int f35629d;

        public AbstractC6849f() {
            super();
            this.f35626a = null;
            this.f35628c = 0;
        }

        /* renamed from: c */
        public boolean mo3233c() {
            return false;
        }

        public C6949c.C6951b[] getPathData() {
            return this.f35626a;
        }

        public String getPathName() {
            return this.f35627b;
        }

        public void setPathData(C6949c.C6951b[] c6951bArr) {
            if (!C6949c.m2948b(this.f35626a, c6951bArr)) {
                this.f35626a = C6949c.m2944f(c6951bArr);
            } else {
                C6949c.m2940j(this.f35626a, c6951bArr);
            }
        }

        /* renamed from: d */
        public void m3232d(Path path) {
            path.reset();
            C6949c.C6951b[] c6951bArr = this.f35626a;
            if (c6951bArr != null) {
                C6949c.C6951b.m2935e(c6951bArr, path);
            }
        }

        public AbstractC6849f(AbstractC6849f abstractC6849f) {
            super();
            this.f35626a = null;
            this.f35628c = 0;
            this.f35627b = abstractC6849f.f35627b;
            this.f35629d = abstractC6849f.f35629d;
            this.f35626a = C6949c.m2944f(abstractC6849f.f35626a);
        }
    }

    /* renamed from: u0.i$g */
    /* loaded from: classes.dex */
    public static class C6850g {

        /* renamed from: q */
        public static final Matrix f35630q = new Matrix();

        /* renamed from: a */
        public final Path f35631a;

        /* renamed from: b */
        public final Path f35632b;

        /* renamed from: c */
        public final Matrix f35633c;

        /* renamed from: d */
        public Paint f35634d;

        /* renamed from: e */
        public Paint f35635e;

        /* renamed from: f */
        public PathMeasure f35636f;

        /* renamed from: g */
        public int f35637g;

        /* renamed from: h */
        public final C6847d f35638h;

        /* renamed from: i */
        public float f35639i;

        /* renamed from: j */
        public float f35640j;

        /* renamed from: k */
        public float f35641k;

        /* renamed from: l */
        public float f35642l;

        /* renamed from: m */
        public int f35643m;

        /* renamed from: n */
        public String f35644n;

        /* renamed from: o */
        public Boolean f35645o;

        /* renamed from: p */
        public final C5270a<String, Object> f35646p;

        public C6850g() {
            this.f35633c = new Matrix();
            this.f35639i = 0.0f;
            this.f35640j = 0.0f;
            this.f35641k = 0.0f;
            this.f35642l = 0.0f;
            this.f35643m = 255;
            this.f35644n = null;
            this.f35645o = null;
            this.f35646p = new C5270a<>();
            this.f35638h = new C6847d();
            this.f35631a = new Path();
            this.f35632b = new Path();
        }

        /* renamed from: a */
        public static float m3231a(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        /* renamed from: b */
        public void m3230b(Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            m3229c(this.f35638h, f35630q, canvas, i, i2, colorFilter);
        }

        /* renamed from: d */
        public final void m3228d(C6847d c6847d, AbstractC6849f abstractC6849f, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            Path.FillType fillType;
            Path.FillType fillType2;
            float f = i / this.f35641k;
            float f2 = i2 / this.f35642l;
            float min = Math.min(f, f2);
            Matrix matrix = c6847d.f35613a;
            this.f35633c.set(matrix);
            this.f35633c.postScale(f, f2);
            float m3227e = m3227e(matrix);
            if (m3227e == 0.0f) {
                return;
            }
            abstractC6849f.m3232d(this.f35631a);
            Path path = this.f35631a;
            this.f35632b.reset();
            if (abstractC6849f.mo3233c()) {
                Path path2 = this.f35632b;
                if (abstractC6849f.f35628c == 0) {
                    fillType2 = Path.FillType.WINDING;
                } else {
                    fillType2 = Path.FillType.EVEN_ODD;
                }
                path2.setFillType(fillType2);
                this.f35632b.addPath(path, this.f35633c);
                canvas.clipPath(this.f35632b);
                return;
            }
            C6846c c6846c = (C6846c) abstractC6849f;
            float f3 = c6846c.f35607k;
            if (f3 != 0.0f || c6846c.f35608l != 1.0f) {
                float f4 = c6846c.f35609m;
                float f5 = (f3 + f4) % 1.0f;
                float f6 = (c6846c.f35608l + f4) % 1.0f;
                if (this.f35636f == null) {
                    this.f35636f = new PathMeasure();
                }
                this.f35636f.setPath(this.f35631a, false);
                float length = this.f35636f.getLength();
                float f7 = f5 * length;
                float f8 = f6 * length;
                path.reset();
                if (f7 > f8) {
                    this.f35636f.getSegment(f7, length, path, true);
                    this.f35636f.getSegment(0.0f, f8, path, true);
                } else {
                    this.f35636f.getSegment(f7, f8, path, true);
                }
                path.rLineTo(0.0f, 0.0f);
            }
            this.f35632b.addPath(path, this.f35633c);
            if (c6846c.f35604h.m3346l()) {
                C6809b c6809b = c6846c.f35604h;
                if (this.f35635e == null) {
                    Paint paint = new Paint(1);
                    this.f35635e = paint;
                    paint.setStyle(Paint.Style.FILL);
                }
                Paint paint2 = this.f35635e;
                if (c6809b.m3350h()) {
                    Shader m3352f = c6809b.m3352f();
                    m3352f.setLocalMatrix(this.f35633c);
                    paint2.setShader(m3352f);
                    paint2.setAlpha(Math.round(c6846c.f35606j * 255.0f));
                } else {
                    paint2.setShader(null);
                    paint2.setAlpha(255);
                    paint2.setColor(C6843i.m3254a(c6809b.m3353e(), c6846c.f35606j));
                }
                paint2.setColorFilter(colorFilter);
                Path path3 = this.f35632b;
                if (c6846c.f35628c == 0) {
                    fillType = Path.FillType.WINDING;
                } else {
                    fillType = Path.FillType.EVEN_ODD;
                }
                path3.setFillType(fillType);
                canvas.drawPath(this.f35632b, paint2);
            }
            if (c6846c.f35602f.m3346l()) {
                C6809b c6809b2 = c6846c.f35602f;
                if (this.f35634d == null) {
                    Paint paint3 = new Paint(1);
                    this.f35634d = paint3;
                    paint3.setStyle(Paint.Style.STROKE);
                }
                Paint paint4 = this.f35634d;
                Paint.Join join = c6846c.f35611o;
                if (join != null) {
                    paint4.setStrokeJoin(join);
                }
                Paint.Cap cap = c6846c.f35610n;
                if (cap != null) {
                    paint4.setStrokeCap(cap);
                }
                paint4.setStrokeMiter(c6846c.f35612p);
                if (c6809b2.m3350h()) {
                    Shader m3352f2 = c6809b2.m3352f();
                    m3352f2.setLocalMatrix(this.f35633c);
                    paint4.setShader(m3352f2);
                    paint4.setAlpha(Math.round(c6846c.f35605i * 255.0f));
                } else {
                    paint4.setShader(null);
                    paint4.setAlpha(255);
                    paint4.setColor(C6843i.m3254a(c6809b2.m3353e(), c6846c.f35605i));
                }
                paint4.setColorFilter(colorFilter);
                paint4.setStrokeWidth(c6846c.f35603g * min * m3227e);
                canvas.drawPath(this.f35632b, paint4);
            }
        }

        /* renamed from: e */
        public final float m3227e(Matrix matrix) {
            float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
            matrix.mapVectors(fArr);
            float m3231a = m3231a(fArr[0], fArr[1], fArr[2], fArr[3]);
            float max = Math.max((float) Math.hypot(fArr[0], fArr[1]), (float) Math.hypot(fArr[2], fArr[3]));
            if (max <= 0.0f) {
                return 0.0f;
            }
            return Math.abs(m3231a) / max;
        }

        /* renamed from: g */
        public boolean m3225g(int[] iArr) {
            return this.f35638h.mo3234b(iArr);
        }

        public float getAlpha() {
            return getRootAlpha() / 255.0f;
        }

        public int getRootAlpha() {
            return this.f35643m;
        }

        public void setAlpha(float f) {
            setRootAlpha((int) (f * 255.0f));
        }

        public void setRootAlpha(int i) {
            this.f35643m = i;
        }

        /* renamed from: c */
        public final void m3229c(C6847d c6847d, Matrix matrix, Canvas canvas, int i, int i2, ColorFilter colorFilter) {
            c6847d.f35613a.set(matrix);
            c6847d.f35613a.preConcat(c6847d.f35622j);
            canvas.save();
            for (int i3 = 0; i3 < c6847d.f35614b.size(); i3++) {
                AbstractC6848e abstractC6848e = c6847d.f35614b.get(i3);
                if (abstractC6848e instanceof C6847d) {
                    m3229c((C6847d) abstractC6848e, c6847d.f35613a, canvas, i, i2, colorFilter);
                } else if (abstractC6848e instanceof AbstractC6849f) {
                    m3228d(c6847d, (AbstractC6849f) abstractC6848e, canvas, i, i2, colorFilter);
                }
            }
            canvas.restore();
        }

        /* renamed from: f */
        public boolean m3226f() {
            if (this.f35645o == null) {
                this.f35645o = Boolean.valueOf(this.f35638h.mo3235a());
            }
            return this.f35645o.booleanValue();
        }

        public C6850g(C6850g c6850g) {
            this.f35633c = new Matrix();
            this.f35639i = 0.0f;
            this.f35640j = 0.0f;
            this.f35641k = 0.0f;
            this.f35642l = 0.0f;
            this.f35643m = 255;
            this.f35644n = null;
            this.f35645o = null;
            C5270a<String, Object> c5270a = new C5270a<>();
            this.f35646p = c5270a;
            this.f35638h = new C6847d(c6850g.f35638h, c5270a);
            this.f35631a = new Path(c6850g.f35631a);
            this.f35632b = new Path(c6850g.f35632b);
            this.f35639i = c6850g.f35639i;
            this.f35640j = c6850g.f35640j;
            this.f35641k = c6850g.f35641k;
            this.f35642l = c6850g.f35642l;
            this.f35637g = c6850g.f35637g;
            this.f35643m = c6850g.f35643m;
            this.f35644n = c6850g.f35644n;
            String str = c6850g.f35644n;
            if (str != null) {
                c5270a.put(str, this);
            }
            this.f35645o = c6850g.f35645o;
        }
    }

    /* renamed from: u0.i$h */
    /* loaded from: classes.dex */
    public static class C6851h extends Drawable.ConstantState {

        /* renamed from: a */
        public int f35647a;

        /* renamed from: b */
        public C6850g f35648b;

        /* renamed from: c */
        public ColorStateList f35649c;

        /* renamed from: d */
        public PorterDuff.Mode f35650d;

        /* renamed from: e */
        public boolean f35651e;

        /* renamed from: f */
        public Bitmap f35652f;

        /* renamed from: g */
        public ColorStateList f35653g;

        /* renamed from: h */
        public PorterDuff.Mode f35654h;

        /* renamed from: i */
        public int f35655i;

        /* renamed from: j */
        public boolean f35656j;

        /* renamed from: k */
        public boolean f35657k;

        /* renamed from: l */
        public Paint f35658l;

        public C6851h(C6851h c6851h) {
            this.f35649c = null;
            this.f35650d = C6843i.f35591v;
            if (c6851h != null) {
                this.f35647a = c6851h.f35647a;
                C6850g c6850g = new C6850g(c6851h.f35648b);
                this.f35648b = c6850g;
                if (c6851h.f35648b.f35635e != null) {
                    c6850g.f35635e = new Paint(c6851h.f35648b.f35635e);
                }
                if (c6851h.f35648b.f35634d != null) {
                    this.f35648b.f35634d = new Paint(c6851h.f35648b.f35634d);
                }
                this.f35649c = c6851h.f35649c;
                this.f35650d = c6851h.f35650d;
                this.f35651e = c6851h.f35651e;
            }
        }

        /* renamed from: f */
        public boolean m3219f() {
            return this.f35648b.getRootAlpha() < 255;
        }

        /* renamed from: g */
        public boolean m3218g() {
            return this.f35648b.m3226f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f35647a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C6843i(this);
        }

        /* renamed from: a */
        public boolean m3224a(int i, int i2) {
            if (i == this.f35652f.getWidth() && i2 == this.f35652f.getHeight()) {
                return true;
            }
            return false;
        }

        /* renamed from: b */
        public boolean m3223b() {
            if (!this.f35657k && this.f35653g == this.f35649c && this.f35654h == this.f35650d && this.f35656j == this.f35651e && this.f35655i == this.f35648b.getRootAlpha()) {
                return true;
            }
            return false;
        }

        /* renamed from: c */
        public void m3222c(int i, int i2) {
            if (this.f35652f == null || !m3224a(i, i2)) {
                this.f35652f = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                this.f35657k = true;
            }
        }

        /* renamed from: h */
        public boolean m3217h(int[] iArr) {
            boolean m3225g = this.f35648b.m3225g(iArr);
            this.f35657k |= m3225g;
            return m3225g;
        }

        /* renamed from: i */
        public void m3216i() {
            this.f35653g = this.f35649c;
            this.f35654h = this.f35650d;
            this.f35655i = this.f35648b.getRootAlpha();
            this.f35656j = this.f35651e;
            this.f35657k = false;
        }

        /* renamed from: j */
        public void m3215j(int i, int i2) {
            this.f35652f.eraseColor(0);
            this.f35648b.m3230b(new Canvas(this.f35652f), i, i2, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C6843i(this);
        }

        /* renamed from: d */
        public void m3221d(Canvas canvas, ColorFilter colorFilter, Rect rect) {
            canvas.drawBitmap(this.f35652f, (Rect) null, rect, m3220e(colorFilter));
        }

        /* renamed from: e */
        public Paint m3220e(ColorFilter colorFilter) {
            if (!m3219f() && colorFilter == null) {
                return null;
            }
            if (this.f35658l == null) {
                Paint paint = new Paint();
                this.f35658l = paint;
                paint.setFilterBitmap(true);
            }
            this.f35658l.setAlpha(this.f35648b.getRootAlpha());
            this.f35658l.setColorFilter(colorFilter);
            return this.f35658l;
        }

        public C6851h() {
            this.f35649c = null;
            this.f35650d = C6843i.f35591v;
            this.f35648b = new C6850g();
        }
    }

    public C6843i() {
        this.f35596q = true;
        this.f35598s = new float[9];
        this.f35599t = new Matrix();
        this.f35600u = new Rect();
        this.f35592b = new C6851h();
    }

    /* renamed from: a */
    public static int m3254a(int i, float f) {
        return (i & 16777215) | (((int) (Color.alpha(i) * f)) << 24);
    }

    /* renamed from: g */
    public static PorterDuff.Mode m3248g(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i != 5) {
                if (i != 9) {
                    switch (i) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    /* renamed from: d */
    public Object m3251d(String str) {
        return this.f35592b.f35648b.f35646p.get(str);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    /* renamed from: h */
    public void m3247h(boolean z) {
        this.f35596q = z;
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // p191u0.AbstractC6842h, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    /* renamed from: u0.i$i */
    /* loaded from: classes.dex */
    public static class C6852i extends Drawable.ConstantState {

        /* renamed from: a */
        public final Drawable.ConstantState f35659a;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            boolean canApplyTheme;
            canApplyTheme = this.f35659a.canApplyTheme();
            return canApplyTheme;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f35659a.getChangingConfigurations();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C6843i c6843i = new C6843i();
            c6843i.f35590a = (VectorDrawable) this.f35659a.newDrawable();
            return c6843i;
        }

        public C6852i(Drawable.ConstantState constantState) {
            this.f35659a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            C6843i c6843i = new C6843i();
            c6843i.f35590a = (VectorDrawable) this.f35659a.newDrawable(resources);
            return c6843i;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            Drawable newDrawable;
            C6843i c6843i = new C6843i();
            newDrawable = this.f35659a.newDrawable(resources, theme);
            c6843i.f35590a = (VectorDrawable) newDrawable;
            return c6843i;
        }
    }

    /* renamed from: b */
    public static C6843i m3253b(Resources resources, int i, Resources.Theme theme) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            C6843i c6843i = new C6843i();
            c6843i.f35590a = C6820h.m3314d(resources, i, theme);
            c6843i.f35597r = new C6852i(c6843i.f35590a.getConstantState());
            return c6843i;
        }
        try {
            XmlResourceParser xml = resources.getXml(i);
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            while (true) {
                next = xml.next();
                if (next == 2 || next == 1) {
                    break;
                }
            }
            if (next == 2) {
                return m3252c(resources, xml, asAttributeSet, theme);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e) {
            Log.e("VectorDrawableCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("VectorDrawableCompat", "parser error", e2);
            return null;
        }
    }

    /* renamed from: c */
    public static C6843i m3252c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C6843i c6843i = new C6843i();
        c6843i.inflate(resources, xmlPullParser, attributeSet, theme);
        return c6843i;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2555b(drawable);
            return false;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        copyBounds(this.f35600u);
        if (this.f35600u.width() > 0 && this.f35600u.height() > 0) {
            ColorFilter colorFilter = this.f35594k;
            if (colorFilter == null) {
                colorFilter = this.f35593d;
            }
            canvas.getMatrix(this.f35599t);
            this.f35599t.getValues(this.f35598s);
            float abs = Math.abs(this.f35598s[0]);
            float abs2 = Math.abs(this.f35598s[4]);
            float abs3 = Math.abs(this.f35598s[1]);
            float abs4 = Math.abs(this.f35598s[3]);
            if (abs3 != 0.0f || abs4 != 0.0f) {
                abs = 1.0f;
                abs2 = 1.0f;
            }
            int min = Math.min(2048, (int) (this.f35600u.width() * abs));
            int min2 = Math.min(2048, (int) (this.f35600u.height() * abs2));
            if (min > 0 && min2 > 0) {
                int save = canvas.save();
                Rect rect = this.f35600u;
                canvas.translate(rect.left, rect.top);
                if (m3249f()) {
                    canvas.translate(this.f35600u.width(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                }
                this.f35600u.offsetTo(0, 0);
                this.f35592b.m3222c(min, min2);
                if (!this.f35596q) {
                    this.f35592b.m3215j(min, min2);
                } else if (!this.f35592b.m3223b()) {
                    this.f35592b.m3215j(min, min2);
                    this.f35592b.m3216i();
                }
                this.f35592b.m3221d(canvas, colorFilter, this.f35600u);
                canvas.restoreToCount(save);
            }
        }
    }

    /* renamed from: e */
    public final void m3250e(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        C6851h c6851h = this.f35592b;
        C6850g c6850g = c6851h.f35648b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(c6850g.f35638h);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z = true;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                C6847d c6847d = (C6847d) arrayDeque.peek();
                if ("path".equals(name)) {
                    C6846c c6846c = new C6846c();
                    c6846c.m3240g(resources, attributeSet, theme, xmlPullParser);
                    c6847d.f35614b.add(c6846c);
                    if (c6846c.getPathName() != null) {
                        c6850g.f35646p.put(c6846c.getPathName(), c6846c);
                    }
                    z = false;
                    c6851h.f35647a = c6846c.f35629d | c6851h.f35647a;
                } else if ("clip-path".equals(name)) {
                    C6845b c6845b = new C6845b();
                    c6845b.m3244e(resources, attributeSet, theme, xmlPullParser);
                    c6847d.f35614b.add(c6845b);
                    if (c6845b.getPathName() != null) {
                        c6850g.f35646p.put(c6845b.getPathName(), c6845b);
                    }
                    c6851h.f35647a = c6845b.f35629d | c6851h.f35647a;
                } else if ("group".equals(name)) {
                    C6847d c6847d2 = new C6847d();
                    c6847d2.m3238c(resources, attributeSet, theme, xmlPullParser);
                    c6847d.f35614b.add(c6847d2);
                    arrayDeque.push(c6847d2);
                    if (c6847d2.getGroupName() != null) {
                        c6850g.f35646p.put(c6847d2.getGroupName(), c6847d2);
                    }
                    c6851h.f35647a = c6847d2.f35623k | c6851h.f35647a;
                }
            } else if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                arrayDeque.pop();
            }
            eventType = xmlPullParser.next();
        }
        if (!z) {
            return;
        }
        throw new XmlPullParserException("no path defined");
    }

    /* renamed from: f */
    public final boolean m3249f() {
        if (Build.VERSION.SDK_INT < 17 || !isAutoMirrored() || C7089j.m2552e(this) != 1) {
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2554c(drawable);
        }
        return this.f35592b.f35648b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        return super.getChangingConfigurations() | this.f35592b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2553d(drawable);
        }
        return this.f35594k;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f35590a != null && Build.VERSION.SDK_INT >= 24) {
            return new C6852i(this.f35590a.getConstantState());
        }
        this.f35592b.f35647a = getChangingConfigurations();
        return this.f35592b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return (int) this.f35592b.f35648b.f35640j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return (int) this.f35592b.f35648b.f35639i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    /* renamed from: i */
    public final void m3246i(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme) {
        C6851h c6851h = this.f35592b;
        C6850g c6850g = c6851h.f35648b;
        c6851h.f35650d = m3248g(C6830j.m3292g(typedArray, xmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
        ColorStateList m3296c = C6830j.m3296c(typedArray, xmlPullParser, theme, "tint", 1);
        if (m3296c != null) {
            c6851h.f35649c = m3296c;
        }
        c6851h.f35651e = C6830j.m3298a(typedArray, xmlPullParser, "autoMirrored", 5, c6851h.f35651e);
        c6850g.f35641k = C6830j.m3293f(typedArray, xmlPullParser, "viewportWidth", 7, c6850g.f35641k);
        float m3293f = C6830j.m3293f(typedArray, xmlPullParser, "viewportHeight", 8, c6850g.f35642l);
        c6850g.f35642l = m3293f;
        if (c6850g.f35641k > 0.0f) {
            if (m3293f > 0.0f) {
                c6850g.f35639i = typedArray.getDimension(3, c6850g.f35639i);
                float dimension = typedArray.getDimension(2, c6850g.f35640j);
                c6850g.f35640j = dimension;
                if (c6850g.f35639i > 0.0f) {
                    if (dimension > 0.0f) {
                        c6850g.setAlpha(C6830j.m3293f(typedArray, xmlPullParser, "alpha", 4, c6850g.getAlpha()));
                        String string = typedArray.getString(0);
                        if (string != null) {
                            c6850g.f35644n = string;
                            c6850g.f35646p.put(string, c6850g);
                            return;
                        }
                        return;
                    }
                    throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires height > 0");
                }
                throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires width > 0");
            }
            throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        throw new XmlPullParserException(typedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return C7089j.m2550g(drawable);
        }
        return this.f35592b.f35651e;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C6851h c6851h;
        ColorStateList colorStateList;
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful() && ((c6851h = this.f35592b) == null || (!c6851h.m3218g() && ((colorStateList = this.f35592b.f35649c) == null || !colorStateList.isStateful())))) {
            return false;
        }
        return true;
    }

    /* renamed from: j */
    public PorterDuffColorFilter m3245j(PorterDuffColorFilter porterDuffColorFilter, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList != null && mode != null) {
            return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f35595p && super.mutate() == this) {
            this.f35592b = new C6851h(this.f35592b);
            this.f35595p = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        boolean z = false;
        C6851h c6851h = this.f35592b;
        ColorStateList colorStateList = c6851h.f35649c;
        if (colorStateList != null && (mode = c6851h.f35650d) != null) {
            this.f35593d = m3245j(this.f35593d, colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        if (c6851h.m3218g() && c6851h.m3217h(iArr)) {
            invalidateSelf();
            return true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f35592b.f35648b.getRootAlpha() != i) {
            this.f35592b.f35648b.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2548i(drawable, z);
        } else {
            this.f35592b.f35651e = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
            return;
        }
        this.f35594k = colorFilter;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTint(int i) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2544m(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2543n(drawable, colorStateList);
            return;
        }
        C6851h c6851h = this.f35592b;
        if (c6851h.f35649c != colorStateList) {
            c6851h.f35649c = colorStateList;
            this.f35593d = m3245j(this.f35593d, colorStateList, c6851h.f35650d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, p208w.InterfaceC7096q
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2542o(drawable, mode);
            return;
        }
        C6851h c6851h = this.f35592b;
        if (c6851h.f35650d != mode) {
            c6851h.f35650d = mode;
            this.f35593d = m3245j(this.f35593d, c6851h.f35649c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        Drawable drawable = this.f35590a;
        if (drawable != null) {
            C7089j.m2551f(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C6851h c6851h = this.f35592b;
        c6851h.f35648b = new C6850g();
        TypedArray m3288k = C6830j.m3288k(resources, theme, attributeSet, C6831a.f35561a);
        m3246i(m3288k, xmlPullParser, theme);
        m3288k.recycle();
        c6851h.f35647a = getChangingConfigurations();
        c6851h.f35657k = true;
        m3250e(resources, xmlPullParser, attributeSet, theme);
        this.f35593d = m3245j(this.f35593d, c6851h.f35649c, c6851h.f35650d);
    }

    public C6843i(C6851h c6851h) {
        this.f35596q = true;
        this.f35598s = new float[9];
        this.f35599t = new Matrix();
        this.f35600u = new Rect();
        this.f35592b = c6851h;
        this.f35593d = m3245j(this.f35593d, c6851h.f35649c, c6851h.f35650d);
    }
}
