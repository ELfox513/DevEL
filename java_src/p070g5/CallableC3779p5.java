package p070g5;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import p018b5.C0595c5;
import p018b5.C0612d5;
import p018b5.C0696i4;
import p018b5.C0713j4;
import p018b5.C0730k4;
import p018b5.C0747l4;
import p018b5.C0764m4;
import p018b5.C0781n4;
import p018b5.C0832q4;
import p018b5.C0849r4;
import p018b5.C0866s4;
import p018b5.C0883t4;
import p018b5.C0900u4;
import p018b5.C0909ud;
import p018b5.C0951x4;
import p220x3.C7297q;
/* renamed from: g5.p5 */
/* loaded from: classes2.dex */
public final class CallableC3779p5 implements Callable<byte[]> {

    /* renamed from: a */
    public final /* synthetic */ C3833u f16819a;

    /* renamed from: b */
    public final /* synthetic */ String f16820b;

    /* renamed from: c */
    public final /* synthetic */ BinderC3839u5 f16821c;

    public CallableC3779p5(BinderC3839u5 binderC3839u5, C3833u c3833u, String str) {
        this.f16821c = binderC3839u5;
        this.f16819a = c3833u;
        this.f16820b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ byte[] call() {
        C3616ba c3616ba;
        C3616ba c3616ba2;
        byte[] bArr;
        C3616ba c3616ba3;
        C3676ga c3676ga;
        C3671g5 c3671g5;
        C0832q4 c0832q4;
        String str;
        Bundle bundle;
        C0866s4 c0866s4;
        byte[] bArr2;
        C3785q m18024c;
        long j;
        c3616ba = this.f16821c.f16983a;
        c3616ba.m18483a();
        c3616ba2 = this.f16821c.f16983a;
        C3757n7 m18478c0 = c3616ba2.m18478c0();
        C3833u c3833u = this.f16819a;
        String str2 = this.f16820b;
        m18478c0.mo17839c();
        C3611b5.m18519o();
        C7297q.m1883j(c3833u);
        C7297q.m1887f(str2);
        if (!m18478c0.f17008a.m18513u().m18356w(str2, C3621c3.f16351W)) {
            m18478c0.f17008a.mo17858F().m18019l().m18041b("Generating ScionPayload disabled. packageName", str2);
            return new byte[0];
        } else if (!"_iap".equals(c3833u.f16970a) && !"_iapx".equals(c3833u.f16970a)) {
            m18478c0.f17008a.mo17858F().m18019l().m18040c("Generating a payload for this event is not available. package_name, event_name", str2, c3833u.f16970a);
            return null;
        } else {
            C0832q4 m25439s = C0849r4.m25439s();
            m18478c0.f16900b.m18488V().m18106g0();
            try {
                C3671g5 m18119T = m18478c0.f16900b.m18488V().m18119T(str2);
                if (m18119T == null) {
                    m18478c0.f17008a.mo17858F().m18019l().m18041b("Log and bundle not available. package_name", str2);
                    bArr = new byte[0];
                    c3616ba3 = m18478c0.f16900b;
                } else if (!m18119T.m18333K()) {
                    m18478c0.f17008a.mo17858F().m18019l().m18041b("Log and bundle disabled. package_name", str2);
                    bArr = new byte[0];
                    c3616ba3 = m18478c0.f16900b;
                } else {
                    C0866s4 m25206J1 = C0883t4.m25206J1();
                    m25206J1.m25288b0(1);
                    m25206J1.m25293W("android");
                    if (!TextUtils.isEmpty(m18119T.m18308e0())) {
                        m25206J1.m25271t(m18119T.m18308e0());
                    }
                    if (!TextUtils.isEmpty(m18119T.m18304g0())) {
                        m25206J1.m25269v((String) C7297q.m1883j(m18119T.m18304g0()));
                    }
                    if (!TextUtils.isEmpty(m18119T.m18302h0())) {
                        m25206J1.m25268x((String) C7297q.m1883j(m18119T.m18302h0()));
                    }
                    if (m18119T.m18331M() != -2147483648L) {
                        m25206J1.m25265z((int) m18119T.m18331M());
                    }
                    m25206J1.m25300S(m18119T.m18320X());
                    m25206J1.m25316I(m18119T.m18322V());
                    String m18296k0 = m18119T.m18296k0();
                    String m18312c0 = m18119T.m18312c0();
                    C0909ud.m25089b();
                    if (m18478c0.f17008a.m18513u().m18356w(m18119T.m18308e0(), C3621c3.f16366f0)) {
                        String m18298j0 = m18119T.m18298j0();
                        if (!TextUtils.isEmpty(m18296k0)) {
                            m25206J1.m25303Q(m18296k0);
                        } else if (!TextUtils.isEmpty(m18298j0)) {
                            m25206J1.m25305P(m18298j0);
                        } else if (!TextUtils.isEmpty(m18312c0)) {
                            m25206J1.m25297T0(m18312c0);
                        }
                    } else if (!TextUtils.isEmpty(m18296k0)) {
                        m25206J1.m25303Q(m18296k0);
                    } else if (!TextUtils.isEmpty(m18312c0)) {
                        m25206J1.m25297T0(m18312c0);
                    }
                    C3677h m18489U = m18478c0.f16900b.m18489U(str2);
                    m25206J1.m25323E(m18119T.m18323U());
                    if (m18478c0.f17008a.m18524j() && m18478c0.f17008a.m18513u().m18355x(m25206J1.m25277n0()) && m18489U.m18271j() && !TextUtils.isEmpty(null)) {
                        m25206J1.m25319G(null);
                    }
                    m25206J1.m25325D(m18489U.m18272i());
                    if (m18489U.m18271j()) {
                        Pair<String, Boolean> m17852i = m18478c0.f16900b.m18476d0().m17852i(m18119T.m18308e0(), m18489U);
                        if (m18119T.m18334J() && !TextUtils.isEmpty((CharSequence) m17852i.first)) {
                            try {
                                m25206J1.m25287c0(C3757n7.m18052a((String) m17852i.first, Long.toString(c3833u.f16973k)));
                                Object obj = m17852i.second;
                                if (obj != null) {
                                    m25206J1.m25296U(((Boolean) obj).booleanValue());
                                }
                            } catch (SecurityException e) {
                                m18478c0.f17008a.mo17858F().m18019l().m18041b("Resettable device id encryption failed", e.getMessage());
                                bArr = new byte[0];
                                c3616ba3 = m18478c0.f16900b;
                            }
                        }
                    }
                    m18478c0.f17008a.m18512v().m17922f();
                    m25206J1.m25321F(Build.MODEL);
                    m18478c0.f17008a.m18512v().m17922f();
                    m25206J1.m25294V(Build.VERSION.RELEASE);
                    m25206J1.m25283g0((int) m18478c0.f17008a.m18512v().m18046k());
                    m25206J1.m25279l0(m18478c0.f17008a.m18512v().m18045l());
                    try {
                        if (m18489U.m18270k() && m18119T.m18306f0() != null) {
                            m25206J1.m25270u(C3757n7.m18052a((String) C7297q.m1883j(m18119T.m18306f0()), Long.toString(c3833u.f16973k)));
                        }
                        if (!TextUtils.isEmpty(m18119T.m18300i0())) {
                            m25206J1.m25310L((String) C7297q.m1883j(m18119T.m18300i0()));
                        }
                        String m18308e0 = m18119T.m18308e0();
                        List<C3676ga> m18108e0 = m18478c0.f16900b.m18488V().m18108e0(m18308e0);
                        Iterator<C3676ga> it = m18108e0.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                c3676ga = it.next();
                                if ("_lte".equals(c3676ga.f16560c)) {
                                    break;
                                }
                            } else {
                                c3676ga = null;
                                break;
                            }
                        }
                        if (c3676ga == null || c3676ga.f16562e == null) {
                            C3676ga c3676ga2 = new C3676ga(m18308e0, "auto", "_lte", m18478c0.f17008a.mo17854Q().mo24763a(), 0L);
                            m18108e0.add(c3676ga2);
                            m18478c0.f16900b.m18488V().m18089u(c3676ga2);
                        }
                        C3640da m18472f0 = m18478c0.f16900b.m18472f0();
                        m18472f0.f17008a.mo17858F().m18014q().m18042a("Checking account type status for ad personalization signals");
                        if (m18472f0.f17008a.m18512v().m18043n()) {
                            String m18308e02 = m18119T.m18308e0();
                            C7297q.m1883j(m18308e02);
                            if (m18119T.m18334J() && m18472f0.f16900b.m18484Z().m17976o(m18308e02)) {
                                m18472f0.f17008a.mo17858F().m18019l().m18042a("Turning off ad personalization due to account type");
                                Iterator<C3676ga> it2 = m18108e0.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    } else if ("_npa".equals(it2.next().f16560c)) {
                                        it2.remove();
                                        break;
                                    }
                                }
                                m18108e0.add(new C3676ga(m18308e02, "auto", "_npa", m18472f0.f17008a.mo17854Q().mo24763a(), 1L));
                            }
                        }
                        C0612d5[] c0612d5Arr = new C0612d5[m18108e0.size()];
                        for (int i = 0; i < m18108e0.size(); i++) {
                            C0595c5 m26058v = C0612d5.m26058v();
                            m26058v.m26109A(m18108e0.get(i).f16560c);
                            m26058v.m26108B(m18108e0.get(i).f16561d);
                            m18478c0.f16900b.m18472f0().m18412J(m26058v, m18108e0.get(i).f16562e);
                            c0612d5Arr[i] = m26058v.m25101i();
                        }
                        m25206J1.m25324D0(Arrays.asList(c0612d5Arr));
                        C3801r3 m18002b = C3801r3.m18002b(c3833u);
                        m18478c0.f17008a.m18538K().m18155t(m18002b.f16909d, m18478c0.f16900b.m18488V().m18120S(str2));
                        m18478c0.f17008a.m18538K().m18153u(m18002b, m18478c0.f17008a.m18513u().m18370i(str2));
                        Bundle bundle2 = m18002b.f16909d;
                        bundle2.putLong("_c", 1L);
                        m18478c0.f17008a.mo17858F().m18019l().m18042a("Marking in-app purchase as real-time");
                        bundle2.putLong("_r", 1L);
                        bundle2.putString("_o", c3833u.f16972d);
                        if (m18478c0.f17008a.m18538K().m18192S(m25206J1.m25277n0())) {
                            m18478c0.f17008a.m18538K().m18149w(bundle2, "_dbg", 1L);
                            m18478c0.f17008a.m18538K().m18149w(bundle2, "_r", 1L);
                        }
                        C3785q m18115X = m18478c0.f16900b.m18488V().m18115X(str2, c3833u.f16970a);
                        if (m18115X == null) {
                            c0866s4 = m25206J1;
                            c3671g5 = m18119T;
                            c0832q4 = m25439s;
                            str = str2;
                            bundle = bundle2;
                            bArr2 = null;
                            m18024c = new C3785q(str2, c3833u.f16970a, 0L, 0L, 0L, c3833u.f16973k, 0L, null, null, null, null);
                            j = 0;
                        } else {
                            c3671g5 = m18119T;
                            c0832q4 = m25439s;
                            str = str2;
                            bundle = bundle2;
                            c0866s4 = m25206J1;
                            bArr2 = null;
                            long j2 = m18115X.f16866f;
                            m18024c = m18115X.m18024c(c3833u.f16973k);
                            j = j2;
                        }
                        m18478c0.f16900b.m18488V().m18097m(m18024c);
                        C3773p c3773p = new C3773p(m18478c0.f17008a, c3833u.f16972d, str, c3833u.f16970a, c3833u.f16973k, j, bundle);
                        C0696i4 m25756w = C0713j4.m25756w();
                        m25756w.m25809I(c3773p.f16810d);
                        m25756w.m25813D(c3773p.f16808b);
                        m25756w.m25810G(c3773p.f16811e);
                        C3797r c3797r = new C3797r(c3773p.f16812f);
                        while (c3797r.hasNext()) {
                            String next = c3797r.next();
                            C0764m4 m25581w = C0781n4.m25581w();
                            m25581w.m25665E(next);
                            Object m17987c1 = c3773p.f16812f.m17987c1(next);
                            if (m17987c1 != null) {
                                m18478c0.f16900b.m18472f0().m18413I(m25581w, m17987c1);
                                m25756w.m25800z(m25581w);
                            }
                        }
                        C0866s4 c0866s42 = c0866s4;
                        c0866s42.m25322E0(m25756w);
                        C0900u4 m24998s = C0951x4.m24998s();
                        C0730k4 m25687s = C0747l4.m25687s();
                        m25687s.m25709t(m18024c.f16863c);
                        m25687s.m25708u(c3833u.f16970a);
                        m24998s.m25106t(m25687s);
                        c0866s42.m25292X(m24998s);
                        c0866s42.m25330A0(m18478c0.f16900b.m18491S().m17809h(c3671g5.m18308e0(), Collections.emptyList(), c0866s42.m25273r0(), Long.valueOf(m25756w.m25802v()), Long.valueOf(m25756w.m25802v())));
                        if (m25756w.m25805P()) {
                            c0866s42.m25284f0(m25756w.m25802v());
                            c0866s42.m25314J(m25756w.m25802v());
                        }
                        long m18319Y = c3671g5.m18319Y();
                        if (m18319Y != 0) {
                            c0866s42.m25291Y(m18319Y);
                        }
                        long m18316a0 = c3671g5.m18316a0();
                        if (m18316a0 != 0) {
                            c0866s42.m25290Z(m18316a0);
                        } else if (m18319Y != 0) {
                            c0866s42.m25290Z(m18319Y);
                        }
                        c3671g5.m18309e();
                        c0866s42.m25331A((int) c3671g5.m18318Z());
                        m18478c0.f17008a.m18513u().m18367l();
                        c0866s42.m25281i0(43042L);
                        c0866s42.m25282h0(m18478c0.f17008a.mo17854Q().mo24763a());
                        c0866s42.m25285e0(true);
                        C0832q4 c0832q42 = c0832q4;
                        c0832q42.m25472t(c0866s42);
                        C3671g5 c3671g52 = c3671g5;
                        c3671g52.m18339E(c0866s42.m25266y0());
                        c3671g52.m18341C(c0866s42.m25267x0());
                        m18478c0.f16900b.m18488V().m18098l(c3671g52);
                        m18478c0.f16900b.m18488V().m18099k();
                        try {
                            return m18478c0.f16900b.m18472f0().m18408N(c0832q42.m25101i().m25982e());
                        } catch (IOException e2) {
                            m18478c0.f17008a.mo17858F().m18018m().m18040c("Data loss. Failed to bundle and serialize. appId", C3789q3.m18010u(str), e2);
                            return bArr2;
                        }
                    } catch (SecurityException e3) {
                        m18478c0.f17008a.mo17858F().m18019l().m18041b("app instance id encryption failed", e3.getMessage());
                        bArr = new byte[0];
                        c3616ba3 = m18478c0.f16900b;
                    }
                }
                c3616ba3.m18488V().m18102i0();
                return bArr;
            } finally {
                m18478c0.f16900b.m18488V().m18102i0();
            }
        }
    }
}
