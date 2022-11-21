package p070g5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p017b4.C0553a;
import p018b5.InterfaceC0693i1;
import p185t3.C6756m;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
/* renamed from: g5.w8 */
/* loaded from: classes2.dex */
public final class C3866w8 extends AbstractC3658f4 {

    /* renamed from: c */
    public final ServiceConnectionC3854v8 f17043c;

    /* renamed from: d */
    public InterfaceC3669g3 f17044d;

    /* renamed from: e */
    public volatile Boolean f17045e;

    /* renamed from: f */
    public final AbstractC3749n f17046f;

    /* renamed from: g */
    public final C3759n9 f17047g;

    /* renamed from: h */
    public final List<Runnable> f17048h;

    /* renamed from: i */
    public final AbstractC3749n f17049i;

    /* renamed from: B */
    public final boolean m17897B() {
        this.f17008a.mo17857G();
        return true;
    }

    /* renamed from: E */
    public final Boolean m17894E() {
        return this.f17045e;
    }

    @Override // p070g5.AbstractC3658f4
    /* renamed from: i */
    public final boolean mo17880i() {
        return false;
    }

    /* renamed from: x */
    public final C3784pa m17865x(boolean z) {
        Pair<String, Long> m18423a;
        this.f17008a.mo17857G();
        C3681h3 m18511w = this.f17008a.m18511w();
        String str = null;
        if (z) {
            C3789q3 mo17858F = this.f17008a.mo17858F();
            if (mo17858F.f17008a.m18546A().f16497d != null && (m18423a = mo17858F.f17008a.m18546A().f16497d.m18423a()) != null && m18423a != C3670g4.f16495x) {
                String valueOf = String.valueOf(m18423a.second);
                String str2 = (String) m18423a.first;
                StringBuilder sb = new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length());
                sb.append(valueOf);
                sb.append(":");
                sb.append(str2);
                str = sb.toString();
            }
        }
        return m18511w.m18260l(str);
    }

    public C3866w8(C3611b5 c3611b5) {
        super(c3611b5);
        this.f17048h = new ArrayList();
        this.f17047g = new C3759n9(c3611b5.mo17854Q());
        this.f17043c = new ServiceConnectionC3854v8(this);
        this.f17046f = new C3662f8(this, c3611b5);
        this.f17049i = new C3698i8(this, c3611b5);
    }

    /* renamed from: J */
    public static /* bridge */ /* synthetic */ void m17891J(C3866w8 c3866w8, ComponentName componentName) {
        c3866w8.mo17839c();
        if (c3866w8.f17044d != null) {
            c3866w8.f17044d = null;
            c3866w8.f17008a.mo17858F().m18014q().m18041b("Disconnected from device MeasurementService", componentName);
            c3866w8.mo17839c();
            c3866w8.m17888M();
        }
    }

    /* renamed from: A */
    public final void m17898A(Runnable runnable) {
        mo17839c();
        if (m17868u()) {
            runnable.run();
            return;
        }
        int size = this.f17048h.size();
        this.f17008a.m18513u();
        if (size >= 1000) {
            this.f17008a.mo17858F().m18018m().m18042a("Discarding data. Max runnable queue size reached");
            return;
        }
        this.f17048h.add(runnable);
        this.f17049i.m18055d(60000L);
        m17888M();
    }

    /* renamed from: L */
    public final void m17889L() {
        mo17839c();
        m18384d();
        C3784pa m17865x = m17865x(true);
        this.f17008a.m18510x().m18141m();
        m17898A(new RunnableC3626c8(this, m17865x));
    }

    /* renamed from: M */
    public final void m17888M() {
        mo17839c();
        m18384d();
        if (m17868u()) {
            return;
        }
        if (!m17866w()) {
            if (!this.f17008a.m18513u().m18378B()) {
                this.f17008a.mo17857G();
                List<ResolveInfo> queryIntentServices = this.f17008a.mo17856O().getPackageManager().queryIntentServices(new Intent().setClassName(this.f17008a.mo17856O(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    Intent intent = new Intent("com.google.android.gms.measurement.START");
                    Context mo17856O = this.f17008a.mo17856O();
                    this.f17008a.mo17857G();
                    intent.setComponent(new ComponentName(mo17856O, "com.google.android.gms.measurement.AppMeasurementService"));
                    this.f17043c.m17930b(intent);
                    return;
                }
                this.f17008a.mo17858F().m18018m().m18042a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            return;
        }
        this.f17043c.m17929c();
    }

    /* renamed from: N */
    public final void m17887N() {
        mo17839c();
        m18384d();
        this.f17043c.m17928d();
        try {
            C0553a.m26188b().m26187c(this.f17008a.mo17856O(), this.f17043c);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f17044d = null;
    }

    /* renamed from: R */
    public final void m17886R(InterfaceC0693i1 interfaceC0693i1) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3614b8(this, m17865x(false), interfaceC0693i1));
    }

    /* renamed from: S */
    public final void m17885S(AtomicReference<String> atomicReference) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3602a8(this, atomicReference, m17865x(false)));
    }

    /* renamed from: T */
    public final void m17884T(InterfaceC0693i1 interfaceC0693i1, String str, String str2) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3770o8(this, str, str2, m17865x(false), interfaceC0693i1));
    }

    /* renamed from: U */
    public final void m17883U(AtomicReference<List<C3617c>> atomicReference, String str, String str2, String str3) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3758n8(this, atomicReference, null, str2, str3, m17865x(false)));
    }

    /* renamed from: V */
    public final void m17882V(InterfaceC0693i1 interfaceC0693i1, String str, String str2, boolean z) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3877x7(this, str, str2, m17865x(false), z, interfaceC0693i1));
    }

    /* renamed from: W */
    public final void m17881W(AtomicReference<List<C3652ea>> atomicReference, String str, String str2, String str3, boolean z) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3782p8(this, atomicReference, null, str2, str3, m17865x(false), z));
    }

    /* renamed from: j */
    public final void m17879j(C3833u c3833u, String str) {
        C7297q.m1883j(c3833u);
        mo17839c();
        m18384d();
        m17897B();
        m17898A(new RunnableC3734l8(this, true, m17865x(true), this.f17008a.m18510x().m18137q(c3833u), c3833u, str));
    }

    /* renamed from: k */
    public final void m17878k(InterfaceC0693i1 interfaceC0693i1, C3833u c3833u, String str) {
        mo17839c();
        m18384d();
        if (this.f17008a.m18538K().m18162p0(C6756m.f35427a) != 0) {
            this.f17008a.mo17858F().m18013r().m18042a("Not bundling data. Service unavailable or out of date");
            this.f17008a.m18538K().m18205A(interfaceC0693i1, new byte[0]);
            return;
        }
        m17898A(new RunnableC3674g8(this, c3833u, str, interfaceC0693i1));
    }

    /* renamed from: l */
    public final void m17877l() {
        mo17839c();
        m18384d();
        C3784pa m17865x = m17865x(false);
        m17897B();
        this.f17008a.m18510x().m18142l();
        m17898A(new RunnableC3901z7(this, m17865x));
    }

    /* renamed from: m */
    public final void m17876m(InterfaceC3669g3 interfaceC3669g3, AbstractC7408a abstractC7408a, C3784pa c3784pa) {
        int i;
        mo17839c();
        m18384d();
        m17897B();
        this.f17008a.m18513u();
        int i2 = 0;
        int i3 = 100;
        while (i2 < 1001 && i3 == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractC7408a> m18143k = this.f17008a.m18510x().m18143k(100);
            if (m18143k != null) {
                arrayList.addAll(m18143k);
                i = m18143k.size();
            } else {
                i = 0;
            }
            if (abstractC7408a != null && i < 100) {
                arrayList.add(abstractC7408a);
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                AbstractC7408a abstractC7408a2 = (AbstractC7408a) arrayList.get(i4);
                if (abstractC7408a2 instanceof C3833u) {
                    try {
                        interfaceC3669g3.mo17952M3((C3833u) abstractC7408a2, c3784pa);
                    } catch (RemoteException e) {
                        this.f17008a.mo17858F().m18018m().m18041b("Failed to send event to the service", e);
                    }
                } else if (abstractC7408a2 instanceof C3652ea) {
                    try {
                        interfaceC3669g3.mo17951N6((C3652ea) abstractC7408a2, c3784pa);
                    } catch (RemoteException e2) {
                        this.f17008a.mo17858F().m18018m().m18041b("Failed to send user property to the service", e2);
                    }
                } else if (abstractC7408a2 instanceof C3617c) {
                    try {
                        interfaceC3669g3.mo17947a5((C3617c) abstractC7408a2, c3784pa);
                    } catch (RemoteException e3) {
                        this.f17008a.mo17858F().m18018m().m18041b("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    this.f17008a.mo17858F().m18018m().m18042a("Discarding data. Unrecognized parcel type.");
                }
            }
            i2++;
            i3 = i;
        }
    }

    /* renamed from: n */
    public final void m17875n(C3617c c3617c) {
        C7297q.m1883j(c3617c);
        mo17839c();
        m18384d();
        this.f17008a.mo17857G();
        m17898A(new RunnableC3746m8(this, true, m17865x(true), this.f17008a.m18510x().m18138p(c3617c), new C3617c(c3617c), c3617c));
    }

    /* renamed from: o */
    public final void m17874o(boolean z) {
        mo17839c();
        m18384d();
        if (z) {
            m17897B();
            this.f17008a.m18510x().m18142l();
        }
        if (m17867v()) {
            m17898A(new RunnableC3722k8(this, m17865x(false)));
        }
    }

    /* renamed from: p */
    public final void m17873p(C3781p7 c3781p7) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3638d8(this, c3781p7));
    }

    /* renamed from: q */
    public final void m17872q(Bundle bundle) {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3650e8(this, m17865x(false), bundle));
    }

    /* renamed from: r */
    public final void m17871r() {
        mo17839c();
        m18384d();
        m17898A(new RunnableC3710j8(this, m17865x(true)));
    }

    /* renamed from: s */
    public final void m17870s(InterfaceC3669g3 interfaceC3669g3) {
        mo17839c();
        C7297q.m1883j(interfaceC3669g3);
        this.f17044d = interfaceC3669g3;
        m17863z();
        m17864y();
    }

    /* renamed from: t */
    public final void m17869t(C3652ea c3652ea) {
        mo17839c();
        m18384d();
        m17897B();
        m17898A(new RunnableC3889y7(this, m17865x(true), this.f17008a.m18510x().m18136r(c3652ea), c3652ea));
    }

    /* renamed from: u */
    public final boolean m17868u() {
        mo17839c();
        m18384d();
        if (this.f17044d != null) {
            return true;
        }
        return false;
    }

    /* renamed from: v */
    public final boolean m17867v() {
        mo17839c();
        m18384d();
        if (!m17866w() || this.f17008a.m18538K().m18164o0() >= C3621c3.f16388q0.m18550a(null).intValue()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x012b  */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m17866w() {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3866w8.m17866w():boolean");
    }

    /* renamed from: y */
    public final void m17864y() {
        mo17839c();
        this.f17008a.mo17858F().m18014q().m18041b("Processing queued up service tasks", Integer.valueOf(this.f17048h.size()));
        for (Runnable runnable : this.f17048h) {
            try {
                runnable.run();
            } catch (RuntimeException e) {
                this.f17008a.mo17858F().m18018m().m18041b("Task exception while flushing queue", e);
            }
        }
        this.f17048h.clear();
        this.f17049i.m18056b();
    }

    /* renamed from: z */
    public final void m17863z() {
        mo17839c();
        this.f17047g.m18050b();
        AbstractC3749n abstractC3749n = this.f17046f;
        this.f17008a.m18513u();
        abstractC3749n.m18055d(C3621c3.f16339K.m18550a(null).longValue());
    }
}
