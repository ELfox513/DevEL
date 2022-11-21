package p120m1;

import p015b2.C0437f;
import p218x1.C7212d0;
import p218x1.C7214e0;
/* renamed from: m1.x */
/* loaded from: classes.dex */
public final class C4621x extends C0437f {
    public C4621x(int i) {
        super(i);
    }

    /* renamed from: x */
    public C4622a m15919x(int i) {
        return (C4622a) get0(i);
    }

    /* renamed from: z */
    public void m15918z(int i, C7214e0 c7214e0, C7214e0 c7214e02, C7212d0 c7212d0, int i2) {
        set0(i, new C4622a(c7214e0, c7214e02, c7212d0, i2));
    }

    /* renamed from: m1.x$a */
    /* loaded from: classes.dex */
    public static class C4622a {

        /* renamed from: a */
        public final C7214e0 f18663a;

        /* renamed from: b */
        public final C7214e0 f18664b;

        /* renamed from: c */
        public final C7212d0 f18665c;

        /* renamed from: d */
        public final int f18666d;

        /* renamed from: a */
        public int m15917a() {
            return this.f18666d;
        }

        /* renamed from: b */
        public C7214e0 m15916b() {
            return this.f18663a;
        }

        /* renamed from: c */
        public C7212d0 m15915c() {
            return this.f18665c;
        }

        /* renamed from: d */
        public C7214e0 m15914d() {
            return this.f18664b;
        }

        public C4622a(C7214e0 c7214e0, C7214e0 c7214e02, C7212d0 c7212d0, int i) {
            if (c7214e0 != null) {
                this.f18663a = c7214e0;
                this.f18664b = c7214e02;
                this.f18665c = c7212d0;
                this.f18666d = i;
                return;
            }
            throw new NullPointerException("innerClass == null");
        }
    }
}
