package p225y0;

import java.util.HashMap;
import java.util.Map;
import p057f1.C3482p;
import p209w0.AbstractC7114j;
import p209w0.InterfaceC7128q;
/* renamed from: y0.a */
/* loaded from: classes.dex */
public class C7397a {

    /* renamed from: d */
    public static final String f37003d = AbstractC7114j.m2489f("DelayedWorkTracker");

    /* renamed from: a */
    public final C7399b f37004a;

    /* renamed from: b */
    public final InterfaceC7128q f37005b;

    /* renamed from: c */
    public final Map<String, Runnable> f37006c = new HashMap();

    /* renamed from: y0.a$a */
    /* loaded from: classes.dex */
    public class RunnableC7398a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3482p f37007a;

        public RunnableC7398a(C3482p c3482p) {
            this.f37007a = c3482p;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC7114j.m2491c().mo2488a(C7397a.f37003d, String.format("Scheduling work %s", this.f37007a.f15921a), new Throwable[0]);
            C7397a.this.f37004a.mo1289c(this.f37007a);
        }
    }

    /* renamed from: a */
    public void m1579a(C3482p c3482p) {
        Runnable remove = this.f37006c.remove(c3482p.f15921a);
        if (remove != null) {
            this.f37005b.mo2211b(remove);
        }
        RunnableC7398a runnableC7398a = new RunnableC7398a(c3482p);
        this.f37006c.put(c3482p.f15921a, runnableC7398a);
        long currentTimeMillis = System.currentTimeMillis();
        this.f37005b.mo2212a(c3482p.m18788a() - currentTimeMillis, runnableC7398a);
    }

    /* renamed from: b */
    public void m1578b(String str) {
        Runnable remove = this.f37006c.remove(str);
        if (remove != null) {
            this.f37005b.mo2211b(remove);
        }
    }

    public C7397a(C7399b c7399b, InterfaceC7128q interfaceC7128q) {
        this.f37004a = c7399b;
        this.f37005b = interfaceC7128q;
    }
}
