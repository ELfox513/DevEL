package p225y0;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.C0376a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p014b1.C0427d;
import p014b1.InterfaceC0426c;
import p057f1.C3482p;
import p066g1.C3555h;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
import p209w0.EnumC7130s;
import p217x0.C7199i;
import p217x0.InterfaceC7191b;
import p217x0.InterfaceC7195e;
/* renamed from: y0.b */
/* loaded from: classes.dex */
public class C7399b implements InterfaceC7195e, InterfaceC0426c, InterfaceC7191b {

    /* renamed from: t */
    public static final String f37009t = AbstractC7114j.m2489f("GreedyScheduler");

    /* renamed from: a */
    public final Context f37010a;

    /* renamed from: b */
    public final C7199i f37011b;

    /* renamed from: d */
    public final C0427d f37012d;

    /* renamed from: p */
    public C7397a f37014p;

    /* renamed from: q */
    public boolean f37015q;

    /* renamed from: s */
    public Boolean f37017s;

    /* renamed from: k */
    public final Set<C3482p> f37013k = new HashSet();

    /* renamed from: r */
    public final Object f37016r = new Object();

    @Override // p217x0.InterfaceC7195e
    /* renamed from: a */
    public boolean mo1291a() {
        return false;
    }

    @Override // p217x0.InterfaceC7191b
    /* renamed from: d */
    public void mo1576d(String str, boolean z) {
        m1572i(str);
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: c */
    public void mo1289c(C3482p... c3482pArr) {
        if (this.f37017s == null) {
            m1574g();
        }
        if (!this.f37017s.booleanValue()) {
            AbstractC7114j.m2491c().mo2486d(f37009t, "Ignoring schedule request in a secondary process", new Throwable[0]);
            return;
        }
        m1573h();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (C3482p c3482p : c3482pArr) {
            long m18788a = c3482p.m18788a();
            long currentTimeMillis = System.currentTimeMillis();
            if (c3482p.f15922b == EnumC7130s.ENQUEUED) {
                if (currentTimeMillis < m18788a) {
                    C7397a c7397a = this.f37014p;
                    if (c7397a != null) {
                        c7397a.m1579a(c3482p);
                    }
                } else if (c3482p.m18787b()) {
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 23 && c3482p.f15930j.m2518h()) {
                        AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Ignoring WorkSpec %s, Requires device idle.", c3482p), new Throwable[0]);
                    } else if (i >= 24 && c3482p.f15930j.m2521e()) {
                        AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", c3482p), new Throwable[0]);
                    } else {
                        hashSet.add(c3482p);
                        hashSet2.add(c3482p.f15921a);
                    }
                } else {
                    AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Starting work for %s", c3482p.f15921a), new Throwable[0]);
                    this.f37011b.m2153x(c3482p.f15921a);
                }
            }
        }
        synchronized (this.f37016r) {
            if (!hashSet.isEmpty()) {
                AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2)), new Throwable[0]);
                this.f37013k.addAll(hashSet);
                this.f37012d.m26537d(this.f37013k);
            }
        }
    }

    @Override // p217x0.InterfaceC7195e
    /* renamed from: e */
    public void mo1288e(String str) {
        if (this.f37017s == null) {
            m1574g();
        }
        if (!this.f37017s.booleanValue()) {
            AbstractC7114j.m2491c().mo2486d(f37009t, "Ignoring schedule request in non-main process", new Throwable[0]);
            return;
        }
        m1573h();
        AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Cancelling work ID %s", str), new Throwable[0]);
        C7397a c7397a = this.f37014p;
        if (c7397a != null) {
            c7397a.m1578b(str);
        }
        this.f37011b.m2174A(str);
    }

    /* renamed from: g */
    public final void m1574g() {
        this.f37017s = Boolean.valueOf(C3555h.m18617b(this.f37010a, this.f37011b.m2165l()));
    }

    /* renamed from: h */
    public final void m1573h() {
        if (!this.f37015q) {
            this.f37011b.m2161p().m2207c(this);
            this.f37015q = true;
        }
    }

    /* renamed from: i */
    public final void m1572i(String str) {
        synchronized (this.f37016r) {
            Iterator<C3482p> it = this.f37013k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C3482p next = it.next();
                if (next.f15921a.equals(str)) {
                    AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.f37013k.remove(next);
                    this.f37012d.m26537d(this.f37013k);
                    break;
                }
            }
        }
    }

    public C7399b(Context context, C0376a c0376a, InterfaceC4086a interfaceC4086a, C7199i c7199i) {
        this.f37010a = context;
        this.f37011b = c7199i;
        this.f37012d = new C0427d(context, interfaceC4086a, this);
        this.f37014p = new C7397a(this, c0376a.m26672k());
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: b */
    public void mo1577b(List<String> list) {
        for (String str : list) {
            AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.f37011b.m2174A(str);
        }
    }

    @Override // p014b1.InterfaceC0426c
    /* renamed from: f */
    public void mo1575f(List<String> list) {
        for (String str : list) {
            AbstractC7114j.m2491c().mo2488a(f37009t, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            this.f37011b.m2153x(str);
        }
    }
}
