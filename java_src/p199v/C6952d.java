package p199v;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import p001a0.C0018f;
import p145p.C5276e;
import p190u.C6811d;
import p190u.C6820h;
@SuppressLint({"NewApi"})
/* renamed from: v.d */
/* loaded from: classes.dex */
public class C6952d {

    /* renamed from: a */
    public static final C6961l f35830a;

    /* renamed from: b */
    public static final C5276e<String, Typeface> f35831b;

    /* renamed from: v.d$a */
    /* loaded from: classes.dex */
    public static class C6953a extends C0018f.C0021c {

        /* renamed from: a */
        public C6820h.AbstractC6823c f35832a;

        @Override // p001a0.C0018f.C0021c
        /* renamed from: a */
        public void mo2926a(int i) {
            C6820h.AbstractC6823c abstractC6823c = this.f35832a;
            if (abstractC6823c != null) {
                abstractC6823c.mo3304d(i);
            }
        }

        @Override // p001a0.C0018f.C0021c
        /* renamed from: b */
        public void mo2925b(Typeface typeface) {
            C6820h.AbstractC6823c abstractC6823c = this.f35832a;
            if (abstractC6823c != null) {
                abstractC6823c.mo3303e(typeface);
            }
        }

        public C6953a(C6820h.AbstractC6823c abstractC6823c) {
            this.f35832a = abstractC6823c;
        }
    }

    /* renamed from: b */
    public static Typeface m2933b(Context context, CancellationSignal cancellationSignal, C0018f.C0020b[] c0020bArr, int i) {
        return f35830a.mo2897c(context, cancellationSignal, c0020bArr, i);
    }

    /* renamed from: c */
    public static Typeface m2932c(Context context, C6811d.InterfaceC6812a interfaceC6812a, Resources resources, int i, int i2, C6820h.AbstractC6823c abstractC6823c, Handler handler, boolean z) {
        Typeface mo2898b;
        boolean z2;
        int i3;
        if (interfaceC6812a instanceof C6811d.C6815d) {
            C6811d.C6815d c6815d = (C6811d.C6815d) interfaceC6812a;
            Typeface m2927h = m2927h(c6815d.m3327c());
            if (m2927h != null) {
                if (abstractC6823c != null) {
                    abstractC6823c.m3306b(m2927h, handler);
                }
                return m2927h;
            }
            if (!z ? abstractC6823c == null : c6815d.m3329a() == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z) {
                i3 = c6815d.m3326d();
            } else {
                i3 = -1;
            }
            mo2898b = C0018f.m27812a(context, c6815d.m3328b(), i2, z2, i3, C6820h.AbstractC6823c.m3305c(handler), new C6953a(abstractC6823c));
        } else {
            mo2898b = f35830a.mo2898b(context, (C6811d.C6813b) interfaceC6812a, resources, i2);
            if (abstractC6823c != null) {
                if (mo2898b != null) {
                    abstractC6823c.m3306b(mo2898b, handler);
                } else {
                    abstractC6823c.m3307a(-3, handler);
                }
            }
        }
        if (mo2898b != null) {
            f35831b.m13694d(m2930e(resources, i, i2), mo2898b);
        }
        return mo2898b;
    }

    /* renamed from: e */
    public static String m2930e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    /* renamed from: f */
    public static Typeface m2929f(Resources resources, int i, int i2) {
        return f35831b.m13695c(m2930e(resources, i, i2));
    }

    /* renamed from: h */
    public static Typeface m2927h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface create = Typeface.create(str, 0);
        Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
        if (create == null || create.equals(create2)) {
            return null;
        }
        return create;
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f35830a = new C6960k();
        } else if (i >= 28) {
            f35830a = new C6959j();
        } else if (i >= 26) {
            f35830a = new C6958i();
        } else if (i >= 24 && C6957h.m2915m()) {
            f35830a = new C6957h();
        } else if (i >= 21) {
            f35830a = new C6956g();
        } else {
            f35830a = new C6961l();
        }
        f35831b = new C5276e<>(16);
    }

    /* renamed from: a */
    public static Typeface m2934a(Context context, Typeface typeface, int i) {
        Typeface m2928g;
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21 && (m2928g = m2928g(context, typeface, i)) != null) {
                return m2928g;
            }
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* renamed from: d */
    public static Typeface m2931d(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo2895e = f35830a.mo2895e(context, resources, i, str, i2);
        if (mo2895e != null) {
            f35831b.m13694d(m2930e(resources, i, i2), mo2895e);
        }
        return mo2895e;
    }

    /* renamed from: g */
    public static Typeface m2928g(Context context, Typeface typeface, int i) {
        C6961l c6961l = f35830a;
        C6811d.C6813b m2891i = c6961l.m2891i(typeface);
        if (m2891i == null) {
            return null;
        }
        return c6961l.mo2898b(context, m2891i, context.getResources(), i);
    }
}
