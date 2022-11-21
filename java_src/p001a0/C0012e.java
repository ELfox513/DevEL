package p001a0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p001a0.C0018f;
import p022c0.InterfaceC1018a;
import p145p.C5276e;
import p145p.C5283g;
import p199v.C6952d;
/* renamed from: a0.e */
/* loaded from: classes.dex */
public class C0012e {

    /* renamed from: a */
    public static final C5276e<String, Typeface> f16a = new C5276e<>(16);

    /* renamed from: b */
    public static final ExecutorService f17b = C0022g.m27802a("fonts-androidx", 10, 10000);

    /* renamed from: c */
    public static final Object f18c = new Object();

    /* renamed from: d */
    public static final C5283g<String, ArrayList<InterfaceC1018a<C0017e>>> f19d = new C5283g<>();

    /* renamed from: a0.e$a */
    /* loaded from: classes.dex */
    public class CallableC0013a implements Callable<C0017e> {

        /* renamed from: a */
        public final /* synthetic */ String f20a;

        /* renamed from: b */
        public final /* synthetic */ Context f21b;

        /* renamed from: c */
        public final /* synthetic */ C0011d f22c;

        /* renamed from: d */
        public final /* synthetic */ int f23d;

        public CallableC0013a(String str, Context context, C0011d c0011d, int i) {
            this.f20a = str;
            this.f21b = context;
            this.f22c = c0011d;
            this.f23d = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public C0017e call() {
            return C0012e.m27820c(this.f20a, this.f21b, this.f22c, this.f23d);
        }
    }

    /* renamed from: a0.e$b */
    /* loaded from: classes.dex */
    public class C0014b implements InterfaceC1018a<C0017e> {

        /* renamed from: a */
        public final /* synthetic */ C0005a f24a;

        public C0014b(C0005a c0005a) {
            this.f24a = c0005a;
        }

        @Override // p022c0.InterfaceC1018a
        /* renamed from: a */
        public void accept(C0017e c0017e) {
            this.f24a.m27839b(c0017e);
        }
    }

    /* renamed from: a0.e$c */
    /* loaded from: classes.dex */
    public class CallableC0015c implements Callable<C0017e> {

        /* renamed from: a */
        public final /* synthetic */ String f25a;

        /* renamed from: b */
        public final /* synthetic */ Context f26b;

        /* renamed from: c */
        public final /* synthetic */ C0011d f27c;

        /* renamed from: d */
        public final /* synthetic */ int f28d;

        public CallableC0015c(String str, Context context, C0011d c0011d, int i) {
            this.f25a = str;
            this.f26b = context;
            this.f27c = c0011d;
            this.f28d = i;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public C0017e call() {
            return C0012e.m27820c(this.f25a, this.f26b, this.f27c, this.f28d);
        }
    }

    /* renamed from: a0.e$d */
    /* loaded from: classes.dex */
    public class C0016d implements InterfaceC1018a<C0017e> {

        /* renamed from: a */
        public final /* synthetic */ String f29a;

        public C0016d(String str) {
            this.f29a = str;
        }

        @Override // p022c0.InterfaceC1018a
        /* renamed from: a */
        public void accept(C0017e c0017e) {
            synchronized (C0012e.f18c) {
                C5283g<String, ArrayList<InterfaceC1018a<C0017e>>> c5283g = C0012e.f19d;
                ArrayList<InterfaceC1018a<C0017e>> arrayList = c5283g.get(this.f29a);
                if (arrayList == null) {
                    return;
                }
                c5283g.remove(this.f29a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).accept(c0017e);
                }
            }
        }
    }

    /* renamed from: a */
    public static String m27822a(C0011d c0011d, int i) {
        return c0011d.m27826d() + "-" + i;
    }

    /* renamed from: c */
    public static C0017e m27820c(String str, Context context, C0011d c0011d, int i) {
        C5276e<String, Typeface> c5276e = f16a;
        Typeface m13695c = c5276e.m13695c(str);
        if (m13695c != null) {
            return new C0017e(m13695c);
        }
        try {
            C0018f.C0019a m27833d = C0009c.m27833d(context, c0011d, null);
            int m27821b = m27821b(m27833d);
            if (m27821b != 0) {
                return new C0017e(m27821b);
            }
            Typeface m2933b = C6952d.m2933b(context, null, m27833d.m27810b(), i);
            if (m2933b != null) {
                c5276e.m13694d(str, m2933b);
                return new C0017e(m2933b);
            }
            return new C0017e(-3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new C0017e(-1);
        }
    }

    /* renamed from: a0.e$e */
    /* loaded from: classes.dex */
    public static final class C0017e {

        /* renamed from: a */
        public final Typeface f30a;

        /* renamed from: b */
        public final int f31b;

        public C0017e(int i) {
            this.f30a = null;
            this.f31b = i;
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: a */
        public boolean m27813a() {
            return this.f31b == 0;
        }

        @SuppressLint({"WrongConstant"})
        public C0017e(Typeface typeface) {
            this.f30a = typeface;
            this.f31b = 0;
        }
    }

    @SuppressLint({"WrongConstant"})
    /* renamed from: b */
    public static int m27821b(C0018f.C0019a c0019a) {
        int i = 1;
        if (c0019a.m27809c() != 0) {
            if (c0019a.m27809c() != 1) {
                return -3;
            }
            return -2;
        }
        C0018f.C0020b[] m27810b = c0019a.m27810b();
        if (m27810b != null && m27810b.length != 0) {
            i = 0;
            for (C0018f.C0020b c0020b : m27810b) {
                int m27807b = c0020b.m27807b();
                if (m27807b != 0) {
                    if (m27807b < 0) {
                        return -3;
                    }
                    return m27807b;
                }
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Typeface m27819d(Context context, C0011d c0011d, int i, Executor executor, C0005a c0005a) {
        String m27822a = m27822a(c0011d, i);
        Typeface m13695c = f16a.m13695c(m27822a);
        if (m13695c != null) {
            c0005a.m27839b(new C0017e(m13695c));
            return m13695c;
        }
        C0014b c0014b = new C0014b(c0005a);
        synchronized (f18c) {
            C5283g<String, ArrayList<InterfaceC1018a<C0017e>>> c5283g = f19d;
            ArrayList<InterfaceC1018a<C0017e>> arrayList = c5283g.get(m27822a);
            if (arrayList != null) {
                arrayList.add(c0014b);
                return null;
            }
            ArrayList<InterfaceC1018a<C0017e>> arrayList2 = new ArrayList<>();
            arrayList2.add(c0014b);
            c5283g.put(m27822a, arrayList2);
            CallableC0015c callableC0015c = new CallableC0015c(m27822a, context, c0011d, i);
            if (executor == null) {
                executor = f17b;
            }
            C0022g.m27801b(executor, callableC0015c, new C0016d(m27822a));
            return null;
        }
    }

    /* renamed from: e */
    public static Typeface m27818e(Context context, C0011d c0011d, C0005a c0005a, int i, int i2) {
        String m27822a = m27822a(c0011d, i);
        Typeface m13695c = f16a.m13695c(m27822a);
        if (m13695c != null) {
            c0005a.m27839b(new C0017e(m13695c));
            return m13695c;
        } else if (i2 == -1) {
            C0017e m27820c = m27820c(m27822a, context, c0011d, i);
            c0005a.m27839b(m27820c);
            return m27820c.f30a;
        } else {
            try {
                C0017e c0017e = (C0017e) C0022g.m27800c(f17b, new CallableC0013a(m27822a, context, c0011d, i), i2);
                c0005a.m27839b(c0017e);
                return c0017e.f30a;
            } catch (InterruptedException unused) {
                c0005a.m27839b(new C0017e(-3));
                return null;
            }
        }
    }
}
