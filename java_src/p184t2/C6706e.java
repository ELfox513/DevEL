package p184t2;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import p068g3.C3582d;
import p168r4.BinderC5964ky;
import p168r4.BinderC6108ot;
import p168r4.C6260sx;
import p168r4.C6441xt;
import p168r4.C6446xy;
import p168r4.C6479yu;
import p168r4.InterfaceC6110ov;
import p168r4.InterfaceC6221rv;
import p168r4.cb0;
import p168r4.cm0;
import p168r4.d20;
import p168r4.q40;
import p168r4.r40;
import p202v2.AbstractC6984h;
import p202v2.C6978e;
import p202v2.InterfaceC6980f;
import p220x3.C7297q;
/* renamed from: t2.e */
/* loaded from: classes.dex */
public class C6706e {

    /* renamed from: a */
    public final C6441xt f35327a;

    /* renamed from: b */
    public final Context f35328b;

    /* renamed from: c */
    public final InterfaceC6110ov f35329c;

    /* renamed from: t2.e$a */
    /* loaded from: classes.dex */
    public static class C6707a {

        /* renamed from: a */
        public final Context f35330a;

        /* renamed from: b */
        public final InterfaceC6221rv f35331b;

        public C6707a(@RecentlyNonNull Context context, @RecentlyNonNull String str) {
            InterfaceC6221rv m5572i = C6479yu.m4567b().m5572i(context, str, new cb0());
            this.f35330a = (Context) C7297q.m1882k(context, "context cannot be null");
            this.f35331b = m5572i;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C6706e m3601a() {
            try {
                return new C6706e(this.f35330a, this.f35331b.mo7327c(), C6441xt.f33766a);
            } catch (RemoteException e) {
                cm0.m12439d("Failed to build AdLoader.", e);
                return new C6706e(this.f35330a, new BinderC5964ky().m9839g7(), C6441xt.f33766a);
            }
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: b */
        public C6707a m3600b(@RecentlyNonNull String str, @RecentlyNonNull InterfaceC6980f.InterfaceC6982b interfaceC6982b, InterfaceC6980f.InterfaceC6981a interfaceC6981a) {
            q40 q40Var = new q40(interfaceC6982b, interfaceC6981a);
            try {
                this.f35331b.mo7331T5(str, q40Var.m8032c(), q40Var.m8031d());
            } catch (RemoteException e) {
                cm0.m12436g("Failed to add custom template ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: c */
        public C6707a m3599c(@RecentlyNonNull AbstractC6984h.InterfaceC6985a interfaceC6985a) {
            try {
                this.f35331b.mo7334H3(new r40(interfaceC6985a));
            } catch (RemoteException e) {
                cm0.m12436g("Failed to add google native ad listener", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: d */
        public C6707a m3598d(@RecentlyNonNull AbstractC6704c abstractC6704c) {
            try {
                this.f35331b.mo7335F1(new BinderC6108ot(abstractC6704c));
            } catch (RemoteException e) {
                cm0.m12436g("Failed to set AdListener.", e);
            }
            return this;
        }

        @RecentlyNonNull
        /* renamed from: e */
        public C6707a m3597e(@RecentlyNonNull C3582d c3582d) {
            C6446xy c6446xy;
            try {
                InterfaceC6221rv interfaceC6221rv = this.f35331b;
                boolean m18583e = c3582d.m18583e();
                boolean m18584d = c3582d.m18584d();
                int m18587a = c3582d.m18587a();
                if (c3582d.m18585c() != null) {
                    c6446xy = new C6446xy(c3582d.m18585c());
                } else {
                    c6446xy = null;
                }
                interfaceC6221rv.mo7329W2(new d20(4, m18583e, -1, m18584d, m18587a, c6446xy, c3582d.m18582f(), c3582d.m18586b()));
            } catch (RemoteException e) {
                cm0.m12436g("Failed to specify native ad options", e);
            }
            return this;
        }

        @RecentlyNonNull
        @Deprecated
        /* renamed from: f */
        public C6707a m3596f(@RecentlyNonNull C6978e c6978e) {
            try {
                this.f35331b.mo7329W2(new d20(c6978e));
            } catch (RemoteException e) {
                cm0.m12436g("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    public C6706e(Context context, InterfaceC6110ov interfaceC6110ov, C6441xt c6441xt) {
        this.f35328b = context;
        this.f35329c = interfaceC6110ov;
        this.f35327a = c6441xt;
    }

    /* renamed from: a */
    public void m3603a(@RecentlyNonNull C6708f c6708f) {
        m3602b(c6708f.m3595a());
    }

    /* renamed from: b */
    public final void m3602b(C6260sx c6260sx) {
        try {
            this.f35329c.mo8668U6(this.f35327a.m5009a(this.f35328b, c6260sx));
        } catch (RemoteException e) {
            cm0.m12439d("Failed to load ad.", e);
        }
    }
}
