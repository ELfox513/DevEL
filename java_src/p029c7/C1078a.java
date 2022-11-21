package p029c7;

import java.util.Locale;
/* renamed from: c7.a */
/* loaded from: classes2.dex */
public class C1078a {

    /* renamed from: c */
    public static volatile C1078a f2980c;

    /* renamed from: a */
    public final C1080c f2981a;

    /* renamed from: b */
    public boolean f2982b;

    public C1078a(C1080c c1080c) {
        this.f2982b = false;
        this.f2981a = c1080c == null ? C1080c.m24627c() : c1080c;
    }

    /* renamed from: h */
    public void m24636h(boolean z) {
        this.f2982b = z;
    }

    /* renamed from: e */
    public static C1078a m24639e() {
        if (f2980c == null) {
            synchronized (C1078a.class) {
                if (f2980c == null) {
                    f2980c = new C1078a();
                }
            }
        }
        return f2980c;
    }

    /* renamed from: a */
    public void m24643a(String str) {
        if (this.f2982b) {
            this.f2981a.m24629a(str);
        }
    }

    /* renamed from: b */
    public void m24642b(String str, Object... objArr) {
        if (this.f2982b) {
            this.f2981a.m24629a(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    /* renamed from: c */
    public void m24641c(String str) {
        if (this.f2982b) {
            this.f2981a.m24628b(str);
        }
    }

    /* renamed from: d */
    public void m24640d(String str, Object... objArr) {
        if (this.f2982b) {
            this.f2981a.m24628b(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    /* renamed from: f */
    public void m24638f(String str) {
        if (this.f2982b) {
            this.f2981a.m24626d(str);
        }
    }

    /* renamed from: g */
    public void m24637g(String str, Object... objArr) {
        if (this.f2982b) {
            this.f2981a.m24626d(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    /* renamed from: i */
    public void m24635i(String str) {
        if (this.f2982b) {
            this.f2981a.m24625e(str);
        }
    }

    /* renamed from: j */
    public void m24634j(String str, Object... objArr) {
        if (this.f2982b) {
            this.f2981a.m24625e(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public C1078a() {
        this(null);
    }
}
