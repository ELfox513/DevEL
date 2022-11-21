package p203v3;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p097j5.C4348j;
import p185t3.C6738d;
import p194u3.C6883a;
import p194u3.C6883a.InterfaceC6885b;
import p220x3.C7297q;
/* renamed from: v3.q */
/* loaded from: classes.dex */
public abstract class AbstractC7041q<A extends C6883a.InterfaceC6885b, ResultT> {

    /* renamed from: a */
    public final C6738d[] f36024a;

    /* renamed from: b */
    public final boolean f36025b;

    /* renamed from: c */
    public final int f36026c;

    /* renamed from: v3.q$a */
    /* loaded from: classes.dex */
    public static class C7042a<A extends C6883a.InterfaceC6885b, ResultT> {

        /* renamed from: a */
        public InterfaceC7029m<A, C4348j<ResultT>> f36027a;

        /* renamed from: c */
        public C6738d[] f36029c;

        /* renamed from: b */
        public boolean f36028b = true;

        /* renamed from: d */
        public int f36030d = 0;

        public /* synthetic */ C7042a(C7051u0 c7051u0) {
        }

        @RecentlyNonNull
        /* renamed from: b */
        public C7042a<A, ResultT> m2622b(@RecentlyNonNull InterfaceC7029m<A, C4348j<ResultT>> interfaceC7029m) {
            this.f36027a = interfaceC7029m;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: c */
        public C7042a<A, ResultT> m2621c(boolean z) {
            this.f36028b = z;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C7042a<A, ResultT> m2620d(@RecentlyNonNull C6738d... c6738dArr) {
            this.f36029c = c6738dArr;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C7042a<A, ResultT> m2619e(int i) {
            this.f36030d = i;
            return this;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public AbstractC7041q<A, ResultT> m2623a() {
            boolean z;
            if (this.f36027a != null) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1891b(z, "execute parameter required");
            return new C7053v0(this, this.f36029c, this.f36028b, this.f36030d);
        }
    }

    public AbstractC7041q(C6738d[] c6738dArr, boolean z, int i) {
        this.f36024a = c6738dArr;
        boolean z2 = false;
        if (c6738dArr != null && z) {
            z2 = true;
        }
        this.f36025b = z2;
        this.f36026c = i;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <A extends C6883a.InterfaceC6885b, ResultT> C7042a<A, ResultT> m2627a() {
        return new C7042a<>(null);
    }

    /* renamed from: b */
    public abstract void mo2588b(@RecentlyNonNull A a, @RecentlyNonNull C4348j<ResultT> c4348j);

    /* renamed from: c */
    public boolean m2626c() {
        return this.f36025b;
    }

    @RecentlyNullable
    /* renamed from: d */
    public final C6738d[] m2625d() {
        return this.f36024a;
    }

    /* renamed from: e */
    public final int m2624e() {
        return this.f36026c;
    }
}
