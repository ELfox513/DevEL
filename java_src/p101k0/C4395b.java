package p101k0;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.AbstractC0337r;
import androidx.lifecycle.C0330m;
import androidx.lifecycle.C0338s;
import androidx.lifecycle.C0341t;
import androidx.lifecycle.InterfaceC0322g;
import androidx.lifecycle.InterfaceC0331n;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import p022c0.C1019b;
import p101k0.AbstractC4393a;
import p110l0.C4542b;
import p145p.C5284h;
/* renamed from: k0.b */
/* loaded from: classes.dex */
public class C4395b extends AbstractC4393a {

    /* renamed from: c */
    public static boolean f18308c = false;

    /* renamed from: a */
    public final InterfaceC0322g f18309a;

    /* renamed from: b */
    public final C4398c f18310b;

    /* renamed from: k0.b$a */
    /* loaded from: classes.dex */
    public static class C4396a<D> extends C0330m<D> implements C4542b.InterfaceC4544b<D> {

        /* renamed from: k */
        public final int f18311k;

        /* renamed from: l */
        public final Bundle f18312l;

        /* renamed from: m */
        public final C4542b<D> f18313m;

        /* renamed from: n */
        public InterfaceC0322g f18314n;

        /* renamed from: o */
        public C4397b<D> f18315o;

        /* renamed from: p */
        public C4542b<D> f18316p;

        /* renamed from: o */
        public C4542b<D> m16698o() {
            return this.f18313m;
        }

        @Override // p110l0.C4542b.InterfaceC4544b
        /* renamed from: a */
        public void mo16027a(C4542b<D> c4542b, D d) {
            if (C4395b.f18308c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo16701l(d);
                return;
            }
            if (C4395b.f18308c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            mo26769j(d);
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: h */
        public void mo16704h() {
            if (C4395b.f18308c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f18313m.m16031t();
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: i */
        public void mo16703i() {
            if (C4395b.f18308c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f18313m.m16030u();
        }

        /* renamed from: m */
        public C4542b<D> m16700m(boolean z) {
            if (C4395b.f18308c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f18313m.m16048b();
            this.f18313m.m16049a();
            C4397b<D> c4397b = this.f18315o;
            if (c4397b != null) {
                mo16702k(c4397b);
                if (z) {
                    c4397b.m16692d();
                }
            }
            this.f18313m.m16029v(this);
            if ((c4397b != null && !c4397b.m16693c()) || z) {
                this.f18313m.m16033r();
                return this.f18316p;
            }
            return this.f18313m;
        }

        /* renamed from: p */
        public void m16697p() {
            InterfaceC0322g interfaceC0322g = this.f18314n;
            C4397b<D> c4397b = this.f18315o;
            if (interfaceC0322g != null && c4397b != null) {
                super.mo16702k(c4397b);
                m26816g(interfaceC0322g, c4397b);
            }
        }

        /* renamed from: q */
        public C4542b<D> m16696q(InterfaceC0322g interfaceC0322g, AbstractC4393a.InterfaceC4394a<D> interfaceC4394a) {
            C4397b<D> c4397b = new C4397b<>(this.f18313m, interfaceC4394a);
            m26816g(interfaceC0322g, c4397b);
            C4397b<D> c4397b2 = this.f18315o;
            if (c4397b2 != null) {
                mo16702k(c4397b2);
            }
            this.f18314n = interfaceC0322g;
            this.f18315o = c4397b;
            return this.f18313m;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f18311k);
            sb.append(" : ");
            C1019b.m24816a(this.f18313m, sb);
            sb.append("}}");
            return sb.toString();
        }

        public C4396a(int i, Bundle bundle, C4542b<D> c4542b, C4542b<D> c4542b2) {
            this.f18311k = i;
            this.f18312l = bundle;
            this.f18313m = c4542b;
            this.f18316p = c4542b2;
            c4542b.m16034q(i, this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: k */
        public void mo16702k(InterfaceC0331n<? super D> interfaceC0331n) {
            super.mo16702k(interfaceC0331n);
            this.f18314n = null;
            this.f18315o = null;
        }

        @Override // androidx.lifecycle.C0330m, androidx.lifecycle.LiveData
        /* renamed from: l */
        public void mo16701l(D d) {
            super.mo16701l(d);
            C4542b<D> c4542b = this.f18316p;
            if (c4542b != null) {
                c4542b.m16033r();
                this.f18316p = null;
            }
        }

        /* renamed from: n */
        public void m16699n(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f18311k);
            printWriter.print(" mArgs=");
            printWriter.println(this.f18312l);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f18313m);
            C4542b<D> c4542b = this.f18313m;
            c4542b.mo16043g(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f18315o != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f18315o);
                C4397b<D> c4397b = this.f18315o;
                c4397b.m16694b(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(m16698o().m16046d(m26818e()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(m26817f());
        }
    }

    /* renamed from: k0.b$b */
    /* loaded from: classes.dex */
    public static class C4397b<D> implements InterfaceC0331n<D> {

        /* renamed from: a */
        public final C4542b<D> f18317a;

        /* renamed from: b */
        public final AbstractC4393a.InterfaceC4394a<D> f18318b;

        /* renamed from: c */
        public boolean f18319c = false;

        /* renamed from: b */
        public void m16694b(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f18319c);
        }

        /* renamed from: c */
        public boolean m16693c() {
            return this.f18319c;
        }

        public String toString() {
            return this.f18318b.toString();
        }

        @Override // androidx.lifecycle.InterfaceC0331n
        /* renamed from: a */
        public void mo16695a(D d) {
            if (C4395b.f18308c) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f18317a + ": " + this.f18317a.m16046d(d));
            }
            this.f18318b.mo16710b(this.f18317a, d);
            this.f18319c = true;
        }

        /* renamed from: d */
        public void m16692d() {
            if (this.f18319c) {
                if (C4395b.f18308c) {
                    Log.v("LoaderManager", "  Resetting: " + this.f18317a);
                }
                this.f18318b.mo16709c(this.f18317a);
            }
        }

        public C4397b(C4542b<D> c4542b, AbstractC4393a.InterfaceC4394a<D> interfaceC4394a) {
            this.f18317a = c4542b;
            this.f18318b = interfaceC4394a;
        }
    }

    /* renamed from: k0.b$c */
    /* loaded from: classes.dex */
    public static class C4398c extends AbstractC0337r {

        /* renamed from: e */
        public static final C0338s.InterfaceC0339a f18320e = new C4399a();

        /* renamed from: c */
        public C5284h<C4396a> f18321c = new C5284h<>();

        /* renamed from: d */
        public boolean f18322d = false;

        /* renamed from: k0.b$c$a */
        /* loaded from: classes.dex */
        public static class C4399a implements C0338s.InterfaceC0339a {
            @Override // androidx.lifecycle.C0338s.InterfaceC0339a
            /* renamed from: a */
            public <T extends AbstractC0337r> T mo16682a(Class<T> cls) {
                return new C4398c();
            }
        }

        /* renamed from: f */
        public static C4398c m16688f(C0341t c0341t) {
            return (C4398c) new C0338s(c0341t, f18320e).m26753a(C4398c.class);
        }

        /* renamed from: e */
        public void m16689e() {
            this.f18322d = false;
        }

        /* renamed from: g */
        public <D> C4396a<D> m16687g(int i) {
            return this.f18321c.m13651h(i);
        }

        /* renamed from: h */
        public boolean m16686h() {
            return this.f18322d;
        }

        /* renamed from: j */
        public void m16684j(int i, C4396a c4396a) {
            this.f18321c.m13647n(i, c4396a);
        }

        /* renamed from: k */
        public void m16683k() {
            this.f18322d = true;
        }

        /* renamed from: d */
        public void m16690d(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f18321c.m13645p() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f18321c.m13645p(); i++) {
                    C4396a m13644t = this.f18321c.m13644t(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f18321c.m13648l(i));
                    printWriter.print(": ");
                    printWriter.println(m13644t.toString());
                    m13644t.m16699n(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: i */
        public void m16685i() {
            int m13645p = this.f18321c.m13645p();
            for (int i = 0; i < m13645p; i++) {
                this.f18321c.m13644t(i).m16697p();
            }
        }

        @Override // androidx.lifecycle.AbstractC0337r
        /* renamed from: c */
        public void mo16691c() {
            super.mo16691c();
            int m13645p = this.f18321c.m13645p();
            for (int i = 0; i < m13645p; i++) {
                this.f18321c.m13644t(i).m16700m(true);
            }
            this.f18321c.m13654b();
        }
    }

    @Override // p101k0.AbstractC4393a
    @Deprecated
    /* renamed from: a */
    public void mo16708a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f18310b.m16690d(str, fileDescriptor, printWriter, strArr);
    }

    @Override // p101k0.AbstractC4393a
    /* renamed from: d */
    public void mo16706d() {
        this.f18310b.m16685i();
    }

    @Override // p101k0.AbstractC4393a
    /* renamed from: c */
    public <D> C4542b<D> mo16707c(int i, Bundle bundle, AbstractC4393a.InterfaceC4394a<D> interfaceC4394a) {
        if (!this.f18310b.m16686h()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                C4396a<D> m16687g = this.f18310b.m16687g(i);
                if (f18308c) {
                    Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
                }
                if (m16687g == null) {
                    return m16705e(i, bundle, interfaceC4394a, null);
                }
                if (f18308c) {
                    Log.v("LoaderManager", "  Re-using existing loader " + m16687g);
                }
                return m16687g.m16696q(this.f18309a, interfaceC4394a);
            }
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    /* renamed from: e */
    public final <D> C4542b<D> m16705e(int i, Bundle bundle, AbstractC4393a.InterfaceC4394a<D> interfaceC4394a, C4542b<D> c4542b) {
        try {
            this.f18310b.m16683k();
            C4542b<D> mo16711a = interfaceC4394a.mo16711a(i, bundle);
            if (mo16711a != null) {
                if (mo16711a.getClass().isMemberClass() && !Modifier.isStatic(mo16711a.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + mo16711a);
                }
                C4396a c4396a = new C4396a(i, bundle, mo16711a, c4542b);
                if (f18308c) {
                    Log.v("LoaderManager", "  Created new loader " + c4396a);
                }
                this.f18310b.m16684j(i, c4396a);
                this.f18310b.m16689e();
                return c4396a.m16696q(this.f18309a, interfaceC4394a);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f18310b.m16689e();
            throw th;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C1019b.m24816a(this.f18309a, sb);
        sb.append("}}");
        return sb.toString();
    }

    public C4395b(InterfaceC0322g interfaceC0322g, C0341t c0341t) {
        this.f18309a = interfaceC0322g;
        this.f18310b = C4398c.m16688f(c0341t);
    }
}
