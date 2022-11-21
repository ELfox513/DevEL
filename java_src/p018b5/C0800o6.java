package p018b5;

import android.content.Context;
import android.net.Uri;
/* renamed from: b5.o6 */
/* loaded from: classes2.dex */
public final class C0800o6 {

    /* renamed from: a */
    public final String f2080a;

    /* renamed from: b */
    public final Uri f2081b;

    /* renamed from: c */
    public final String f2082c;

    /* renamed from: d */
    public final String f2083d;

    /* renamed from: e */
    public final boolean f2084e;

    /* renamed from: f */
    public final boolean f2085f;

    /* renamed from: g */
    public final boolean f2086g;

    /* renamed from: h */
    public final boolean f2087h;

    /* renamed from: i */
    public final InterfaceC0919v6<Context, Boolean> f2088i;

    public C0800o6(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public C0800o6(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, InterfaceC0919v6<Context, Boolean> interfaceC0919v6) {
        this.f2080a = null;
        this.f2081b = uri;
        this.f2082c = "";
        this.f2083d = "";
        this.f2084e = z;
        this.f2085f = false;
        this.f2086g = false;
        this.f2087h = false;
        this.f2088i = null;
    }

    /* renamed from: a */
    public final C0800o6 m25558a() {
        if (this.f2082c.isEmpty()) {
            return new C0800o6(null, this.f2081b, this.f2082c, this.f2083d, true, false, false, false, null);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    /* renamed from: b */
    public final AbstractC0851r6<Double> m25557b(String str, double d) {
        return new C0766m6(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    /* renamed from: d */
    public final AbstractC0851r6<String> m25555d(String str, String str2) {
        return new C0783n6(this, str, str2, true);
    }

    /* renamed from: c */
    public final AbstractC0851r6<Long> m25556c(String str, long j) {
        return new C0732k6(this, str, Long.valueOf(j), true);
    }

    /* renamed from: e */
    public final AbstractC0851r6<Boolean> m25554e(String str, boolean z) {
        return new C0749l6(this, str, Boolean.valueOf(z), true);
    }
}
