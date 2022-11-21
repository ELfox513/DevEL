package p001a0;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import p022c0.C1024g;
/* renamed from: a0.f */
/* loaded from: classes.dex */
public class C0018f {

    /* renamed from: a0.f$c */
    /* loaded from: classes.dex */
    public static class C0021c {
        /* renamed from: a */
        public void mo2926a(int i) {
            throw null;
        }

        /* renamed from: b */
        public void mo2925b(Typeface typeface) {
            throw null;
        }
    }

    /* renamed from: a0.f$a */
    /* loaded from: classes.dex */
    public static class C0019a {

        /* renamed from: a */
        public final int f32a;

        /* renamed from: b */
        public final C0020b[] f33b;

        /* renamed from: a */
        public static C0019a m27811a(int i, C0020b[] c0020bArr) {
            return new C0019a(i, c0020bArr);
        }

        /* renamed from: b */
        public C0020b[] m27810b() {
            return this.f33b;
        }

        /* renamed from: c */
        public int m27809c() {
            return this.f32a;
        }

        @Deprecated
        public C0019a(int i, C0020b[] c0020bArr) {
            this.f32a = i;
            this.f33b = c0020bArr;
        }
    }

    /* renamed from: a0.f$b */
    /* loaded from: classes.dex */
    public static class C0020b {

        /* renamed from: a */
        public final Uri f34a;

        /* renamed from: b */
        public final int f35b;

        /* renamed from: c */
        public final int f36c;

        /* renamed from: d */
        public final boolean f37d;

        /* renamed from: e */
        public final int f38e;

        /* renamed from: a */
        public static C0020b m27808a(Uri uri, int i, int i2, boolean z, int i3) {
            return new C0020b(uri, i, i2, z, i3);
        }

        /* renamed from: b */
        public int m27807b() {
            return this.f38e;
        }

        /* renamed from: c */
        public int m27806c() {
            return this.f35b;
        }

        /* renamed from: d */
        public Uri m27805d() {
            return this.f34a;
        }

        /* renamed from: e */
        public int m27804e() {
            return this.f36c;
        }

        /* renamed from: f */
        public boolean m27803f() {
            return this.f37d;
        }

        @Deprecated
        public C0020b(Uri uri, int i, int i2, boolean z, int i3) {
            this.f34a = (Uri) C1024g.m24809b(uri);
            this.f35b = i;
            this.f36c = i2;
            this.f37d = z;
            this.f38e = i3;
        }
    }

    /* renamed from: a */
    public static Typeface m27812a(Context context, C0011d c0011d, int i, boolean z, int i2, Handler handler, C0021c c0021c) {
        C0005a c0005a = new C0005a(c0021c, handler);
        if (z) {
            return C0012e.m27818e(context, c0011d, c0005a, i, i2);
        }
        return C0012e.m27819d(context, c0011d, i, null, c0005a);
    }
}
