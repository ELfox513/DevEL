package p014b1;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import p023c1.AbstractC1028c;
import p023c1.C1026a;
import p023c1.C1027b;
import p023c1.C1030d;
import p023c1.C1031e;
import p023c1.C1032f;
import p023c1.C1033g;
import p023c1.C1034h;
import p057f1.C3482p;
import p084i1.InterfaceC4086a;
import p209w0.AbstractC7114j;
/* renamed from: b1.d */
/* loaded from: classes.dex */
public class C0427d implements AbstractC1028c.InterfaceC1029a {

    /* renamed from: d */
    public static final String f1500d = AbstractC7114j.m2489f("WorkConstraintsTracker");

    /* renamed from: a */
    public final InterfaceC0426c f1501a;

    /* renamed from: b */
    public final AbstractC1028c<?>[] f1502b;

    /* renamed from: c */
    public final Object f1503c;

    @Override // p023c1.AbstractC1028c.InterfaceC1029a
    /* renamed from: a */
    public void mo24793a(List<String> list) {
        synchronized (this.f1503c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (m26538c(str)) {
                    AbstractC7114j.m2491c().mo2488a(f1500d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            InterfaceC0426c interfaceC0426c = this.f1501a;
            if (interfaceC0426c != null) {
                interfaceC0426c.mo1575f(arrayList);
            }
        }
    }

    @Override // p023c1.AbstractC1028c.InterfaceC1029a
    /* renamed from: b */
    public void mo24792b(List<String> list) {
        synchronized (this.f1503c) {
            InterfaceC0426c interfaceC0426c = this.f1501a;
            if (interfaceC0426c != null) {
                interfaceC0426c.mo1577b(list);
            }
        }
    }

    /* renamed from: c */
    public boolean m26538c(String str) {
        AbstractC1028c<?>[] abstractC1028cArr;
        synchronized (this.f1503c) {
            for (AbstractC1028c<?> abstractC1028c : this.f1502b) {
                if (abstractC1028c.m24798d(str)) {
                    AbstractC7114j.m2491c().mo2488a(f1500d, String.format("Work %s constrained by %s", str, abstractC1028c.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: d */
    public void m26537d(Iterable<C3482p> iterable) {
        synchronized (this.f1503c) {
            for (AbstractC1028c<?> abstractC1028c : this.f1502b) {
                abstractC1028c.m24795g(null);
            }
            for (AbstractC1028c<?> abstractC1028c2 : this.f1502b) {
                abstractC1028c2.m24797e(iterable);
            }
            for (AbstractC1028c<?> abstractC1028c3 : this.f1502b) {
                abstractC1028c3.m24795g(this);
            }
        }
    }

    /* renamed from: e */
    public void m26536e() {
        synchronized (this.f1503c) {
            for (AbstractC1028c<?> abstractC1028c : this.f1502b) {
                abstractC1028c.m24796f();
            }
        }
    }

    public C0427d(Context context, InterfaceC4086a interfaceC4086a, InterfaceC0426c interfaceC0426c) {
        Context applicationContext = context.getApplicationContext();
        this.f1501a = interfaceC0426c;
        this.f1502b = new AbstractC1028c[]{new C1026a(applicationContext, interfaceC4086a), new C1027b(applicationContext, interfaceC4086a), new C1034h(applicationContext, interfaceC4086a), new C1030d(applicationContext, interfaceC4086a), new C1033g(applicationContext, interfaceC4086a), new C1032f(applicationContext, interfaceC4086a), new C1031e(applicationContext, interfaceC4086a)};
        this.f1503c = new Object();
    }
}
