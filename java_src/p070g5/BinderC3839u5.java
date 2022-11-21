package p070g5;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import p018b5.C0572b;
import p018b5.C0591c1;
import p018b5.C0842qe;
import p018b5.C0965y1;
import p026c4.C1059t;
import p185t3.C6756m;
import p185t3.C6758n;
import p220x3.C7297q;
/* renamed from: g5.u5 */
/* loaded from: classes2.dex */
public final class BinderC3839u5 extends AbstractBinderC3657f3 {

    /* renamed from: a */
    public final C3616ba f16983a;

    /* renamed from: b */
    public Boolean f16984b;

    /* renamed from: d */
    public String f16985d;

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: F4 */
    public final void mo17956F4(C3784pa c3784pa) {
        m17942e7(c3784pa, false);
        m17957C6(new RunnableC3815s5(this, c3784pa));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: H1 */
    public final List<C3652ea> mo17955H1(String str, String str2, boolean z, C3784pa c3784pa) {
        m17942e7(c3784pa, false);
        String str3 = c3784pa.f16846a;
        C7297q.m1883j(str3);
        try {
            List<C3676ga> list = (List) this.f16983a.mo17855P().m17833n(new CallableC3659f5(this, str3, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C3676ga c3676ga : list) {
                if (z || !C3700ia.m18189V(c3676ga.f16560c)) {
                    arrayList.add(new C3652ea(c3676ga));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f16983a.mo17858F().m18018m().m18040c("Failed to query user properties. appId", C3789q3.m18010u(c3784pa.f16846a), e);
            return Collections.emptyList();
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: L3 */
    public final void mo17953L3(long j, String str, String str2, String str3) {
        m17957C6(new RunnableC3827t5(this, str2, str3, str, j));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: Y5 */
    public final List<C3617c> mo17948Y5(String str, String str2, C3784pa c3784pa) {
        m17942e7(c3784pa, false);
        String str3 = c3784pa.f16846a;
        C7297q.m1883j(str3);
        try {
            return (List) this.f16983a.mo17855P().m17833n(new CallableC3695i5(this, str3, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f16983a.mo17858F().m18018m().m18041b("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: e4 */
    public final void mo17943e4(C3784pa c3784pa) {
        m17942e7(c3784pa, false);
        m17957C6(new RunnableC3731l5(this, c3784pa));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: g4 */
    public final List<C3652ea> mo17941g4(C3784pa c3784pa, boolean z) {
        m17942e7(c3784pa, false);
        String str = c3784pa.f16846a;
        C7297q.m1883j(str);
        try {
            List<C3676ga> list = (List) this.f16983a.mo17855P().m17833n(new CallableC3803r5(this, str)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C3676ga c3676ga : list) {
                if (z || !C3700ia.m18189V(c3676ga.f16560c)) {
                    arrayList.add(new C3652ea(c3676ga));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f16983a.mo17858F().m18018m().m18040c("Failed to get user properties. appId", C3789q3.m18010u(c3784pa.f16846a), e);
            return null;
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: g6 */
    public final String mo17940g6(C3784pa c3784pa) {
        m17942e7(c3784pa, false);
        return this.f16983a.m18466i0(c3784pa);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: j5 */
    public final void mo17939j5(final Bundle bundle, C3784pa c3784pa) {
        m17942e7(c3784pa, false);
        final String str = c3784pa.f16846a;
        C7297q.m1883j(str);
        m17957C6(new Runnable() { // from class: g5.c5
            @Override // java.lang.Runnable
            public final void run() {
                BinderC3839u5.this.m17936p6(str, bundle);
            }
        });
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: p2 */
    public final List<C3617c> mo17937p2(String str, String str2, String str3) {
        m17938o0(str, true);
        try {
            return (List) this.f16983a.mo17855P().m17833n(new CallableC3707j5(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f16983a.mo17858F().m18018m().m18041b("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: v1 */
    public final List<C3652ea> mo17933v1(String str, String str2, String str3, boolean z) {
        m17938o0(str, true);
        try {
            List<C3676ga> list = (List) this.f16983a.mo17855P().m17833n(new CallableC3683h5(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C3676ga c3676ga : list) {
                if (z || !C3700ia.m18189V(c3676ga.f16560c)) {
                    arrayList.add(new C3652ea(c3676ga));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f16983a.mo17858F().m18018m().m18040c("Failed to get user properties as. appId", C3789q3.m18010u(str), e);
            return Collections.emptyList();
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: C5 */
    public final void mo17958C5(C3784pa c3784pa) {
        C7297q.m1887f(c3784pa.f16846a);
        m17938o0(c3784pa.f16846a, false);
        m17957C6(new RunnableC3719k5(this, c3784pa));
    }

    /* renamed from: L0 */
    public final C3833u m17954L0(C3833u c3833u, C3784pa c3784pa) {
        C3809s c3809s;
        if ("_cmp".equals(c3833u.f16970a) && (c3809s = c3833u.f16971b) != null && c3809s.m17992X0() != 0) {
            String m17986d1 = c3833u.f16971b.m17986d1("_cis");
            if ("referrer broadcast".equals(m17986d1) || "referrer API".equals(m17986d1)) {
                this.f16983a.mo17858F().m18015p().m18041b("Event has been filtered ", c3833u.toString());
                return new C3833u("_cmpx", c3833u.f16971b, c3833u.f16972d, c3833u.f16973k);
            }
        }
        return c3833u;
    }

    /* renamed from: e3 */
    public final void m17944e3(C3833u c3833u, C3784pa c3784pa) {
        if (!this.f16983a.m18484Z().m17975p(c3784pa.f16846a)) {
            m17934t0(c3833u, c3784pa);
            return;
        }
        this.f16983a.mo17858F().m18014q().m18041b("EES config found for", c3784pa.f16846a);
        C3826t4 m18484Z = this.f16983a.m18484Z();
        String str = c3784pa.f16846a;
        C0842qe.m25453b();
        C0591c1 c0591c1 = null;
        if (m18484Z.f17008a.m18513u().m18356w(null, C3621c3.f16402x0) && !TextUtils.isEmpty(str)) {
            c0591c1 = m18484Z.f16945i.m13695c(str);
        }
        if (c0591c1 != null) {
            try {
                Map<String, Object> m18414H = this.f16983a.m18472f0().m18414H(c3833u.f16971b.m17990Z0(), true);
                String m17812a = C3899z5.m17812a(c3833u.f16970a);
                if (m17812a == null) {
                    m17812a = c3833u.f16970a;
                }
                if (c0591c1.m26117e(new C0572b(m17812a, c3833u.f16973k, m18414H))) {
                    if (c0591c1.m26115g()) {
                        this.f16983a.mo17858F().m18014q().m18041b("EES edited event", c3833u.f16970a);
                        m17934t0(this.f16983a.m18472f0().m18392w(c0591c1.m26121a().m26126b()), c3784pa);
                    } else {
                        m17934t0(c3833u, c3784pa);
                    }
                    if (c0591c1.m26116f()) {
                        for (C0572b c0572b : c0591c1.m26121a().m26125c()) {
                            this.f16983a.mo17858F().m18014q().m18041b("EES logging created event", c0572b.m26157d());
                            m17934t0(this.f16983a.m18472f0().m18392w(c0572b), c3784pa);
                        }
                        return;
                    }
                    return;
                }
            } catch (C0965y1 unused) {
                this.f16983a.mo17858F().m18018m().m18040c("EES error. appId, eventName", c3784pa.f16847b, c3833u.f16970a);
            }
            this.f16983a.mo17858F().m18014q().m18041b("EES was not applied to event", c3833u.f16970a);
            m17934t0(c3833u, c3784pa);
            return;
        }
        this.f16983a.mo17858F().m18014q().m18041b("EES not loaded for", c3784pa.f16846a);
        m17934t0(c3833u, c3784pa);
    }

    /* renamed from: p6 */
    public final /* synthetic */ void m17936p6(String str, Bundle bundle) {
        C3713k m18488V = this.f16983a.m18488V();
        m18488V.mo17839c();
        m18488V.m18000d();
        byte[] m25982e = m18488V.f16900b.m18472f0().m18391x(new C3773p(m18488V.f17008a, "", str, "dep", 0L, 0L, bundle)).m25982e();
        m18488V.f17008a.mo17858F().m18014q().m18040c("Saving default event parameters, appId, data size", m18488V.f17008a.m18509y().m18073d(str), Integer.valueOf(m25982e.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", m25982e);
        try {
            if (m18488V.m18121R().insertWithOnConflict("default_event_params", null, contentValues, 5) == -1) {
                m18488V.f17008a.mo17858F().m18018m().m18041b("Failed to insert default event parameters (got -1). appId", C3789q3.m18010u(str));
            }
        } catch (SQLiteException e) {
            m18488V.f17008a.mo17858F().m18018m().m18040c("Error storing default event parameters. appId", C3789q3.m18010u(str), e);
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: q3 */
    public final void mo17935q3(C3784pa c3784pa) {
        C7297q.m1887f(c3784pa.f16846a);
        C7297q.m1883j(c3784pa.f16845G);
        RunnableC3743m5 runnableC3743m5 = new RunnableC3743m5(this, c3784pa);
        C7297q.m1883j(runnableC3743m5);
        if (this.f16983a.mo17855P().m17823x()) {
            runnableC3743m5.run();
        } else {
            this.f16983a.mo17855P().m17825v(runnableC3743m5);
        }
    }

    /* renamed from: t0 */
    public final void m17934t0(C3833u c3833u, C3784pa c3784pa) {
        this.f16983a.m18483a();
        this.f16983a.m18477d(c3833u, c3784pa);
    }

    public BinderC3839u5(C3616ba c3616ba, String str) {
        C7297q.m1883j(c3616ba);
        this.f16983a = c3616ba;
        this.f16985d = null;
    }

    /* renamed from: C6 */
    public final void m17957C6(Runnable runnable) {
        C7297q.m1883j(runnable);
        if (this.f16983a.mo17855P().m17823x()) {
            runnable.run();
        } else {
            this.f16983a.mo17855P().m17826u(runnable);
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: M3 */
    public final void mo17952M3(C3833u c3833u, C3784pa c3784pa) {
        C7297q.m1883j(c3833u);
        m17942e7(c3784pa, false);
        m17957C6(new RunnableC3755n5(this, c3833u, c3784pa));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: N6 */
    public final void mo17951N6(C3652ea c3652ea, C3784pa c3784pa) {
        C7297q.m1883j(c3652ea);
        m17942e7(c3784pa, false);
        m17957C6(new RunnableC3791q5(this, c3652ea, c3784pa));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: T2 */
    public final void mo17950T2(C3833u c3833u, String str, String str2) {
        C7297q.m1883j(c3833u);
        C7297q.m1887f(str);
        m17938o0(str, true);
        m17957C6(new RunnableC3767o5(this, c3833u, str));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: V1 */
    public final byte[] mo17949V1(C3833u c3833u, String str) {
        C7297q.m1887f(str);
        C7297q.m1883j(c3833u);
        m17938o0(str, true);
        this.f16983a.mo17858F().m18019l().m18041b("Log and bundle. event", this.f16983a.m18487W().m18073d(c3833u.f16970a));
        long mo24761c = this.f16983a.mo17854Q().mo24761c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f16983a.mo17855P().m17832o(new CallableC3779p5(this, c3833u, str)).get();
            if (bArr == null) {
                this.f16983a.mo17858F().m18018m().m18041b("Log and bundle returned null. appId", C3789q3.m18010u(str));
                bArr = new byte[0];
            }
            this.f16983a.mo17858F().m18019l().m18039d("Log and bundle processed. event, size, time_ms", this.f16983a.m18487W().m18073d(c3833u.f16970a), Integer.valueOf(bArr.length), Long.valueOf((this.f16983a.mo17854Q().mo24761c() / 1000000) - mo24761c));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.f16983a.mo17858F().m18018m().m18039d("Failed to log and bundle. appId, event, error", C3789q3.m18010u(str), this.f16983a.m18487W().m18073d(c3833u.f16970a), e);
            return null;
        }
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: a5 */
    public final void mo17947a5(C3617c c3617c, C3784pa c3784pa) {
        C7297q.m1883j(c3617c);
        C7297q.m1883j(c3617c.f16311d);
        m17942e7(c3784pa, false);
        C3617c c3617c2 = new C3617c(c3617c);
        c3617c2.f16309a = c3784pa.f16846a;
        m17957C6(new RunnableC3635d5(this, c3617c2, c3784pa));
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: c2 */
    public final void mo17945c2(C3617c c3617c) {
        C7297q.m1883j(c3617c);
        C7297q.m1883j(c3617c.f16311d);
        C7297q.m1887f(c3617c.f16309a);
        m17938o0(c3617c.f16309a, true);
        m17957C6(new RunnableC3647e5(this, new C3617c(c3617c)));
    }

    /* renamed from: e7 */
    public final void m17942e7(C3784pa c3784pa, boolean z) {
        C7297q.m1883j(c3784pa);
        C7297q.m1887f(c3784pa.f16846a);
        m17938o0(c3784pa.f16846a, false);
        this.f16983a.m18470g0().m18200H(c3784pa.f16847b, c3784pa.f16840B, c3784pa.f16844F);
    }

    /* renamed from: o0 */
    public final void m17938o0(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f16984b == null) {
                        if (!"com.google.android.gms".equals(this.f16985d) && !C1059t.m24725a(this.f16983a.mo17856O(), Binder.getCallingUid()) && !C6758n.m3464a(this.f16983a.mo17856O()).m3462c(Binder.getCallingUid())) {
                            z2 = false;
                            this.f16984b = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f16984b = Boolean.valueOf(z2);
                    }
                    if (this.f16984b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f16983a.mo17858F().m18018m().m18041b("Measurement Service called with invalid calling package. appId", C3789q3.m18010u(str));
                    throw e;
                }
            }
            if (this.f16985d == null && C6756m.m3473j(this.f16983a.mo17856O(), Binder.getCallingUid(), str)) {
                this.f16985d = str;
            }
            if (str.equals(this.f16985d)) {
                return;
            }
            throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
        }
        this.f16983a.mo17858F().m18018m().m18042a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }
}
