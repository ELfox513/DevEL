package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import java.io.IOException;
import p045d7.C3332b;
import p063f7.C3535j;
import p063f7.C3536k;
import p090i7.C4153k;
import p099j7.C4381h;
import p180s7.C6637g;
import p180s7.InterfaceC6629a;
import p180s7.InterfaceC6630b;
/* loaded from: classes2.dex */
public class FirebasePerfOkHttpClient {
    /* renamed from: a */
    public static void m22924a(C6637g c6637g, C3332b c3332b, long j, long j2) {
        throw null;
    }

    @Keep
    public static void enqueue(InterfaceC6629a interfaceC6629a, InterfaceC6630b interfaceC6630b) {
        C4381h c4381h = new C4381h();
        interfaceC6629a.m3766g(new C3535j(interfaceC6630b, C4153k.m17283k(), c4381h, c4381h.m16730l()));
    }

    @Keep
    public static C6637g execute(InterfaceC6629a interfaceC6629a) {
        C3332b m19114j = C3332b.m19114j(C4153k.m17283k());
        C4381h c4381h = new C4381h();
        long m16730l = c4381h.m16730l();
        try {
            interfaceC6629a.m3767d();
            m22924a(null, m19114j, m16730l, c4381h.m16732h());
            return null;
        } catch (IOException e) {
            interfaceC6629a.m3768O();
            m19114j.m19123D(m16730l);
            m19114j.m19119J(c4381h.m16732h());
            C3536k.m18651d(m19114j);
            throw e;
        }
    }
}
