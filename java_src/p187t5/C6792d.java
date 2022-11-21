package p187t5;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5432a;
import p161q6.InterfaceC5434b;
import p196u5.C6930f;
import p205v5.C7073c;
import p205v5.C7074d;
import p205v5.C7075e;
import p205v5.C7076f;
import p205v5.InterfaceC7071a;
import p214w5.C7185c;
import p214w5.InterfaceC7183a;
import p214w5.InterfaceC7184b;
/* renamed from: t5.d */
/* loaded from: classes2.dex */
public class C6792d {

    /* renamed from: a */
    public final InterfaceC5432a<InterfaceC5424a> f35474a;

    /* renamed from: b */
    public volatile InterfaceC7071a f35475b;

    /* renamed from: c */
    public volatile InterfaceC7184b f35476c;

    /* renamed from: d */
    public final List<InterfaceC7183a> f35477d;

    public C6792d(InterfaceC5432a<InterfaceC5424a> interfaceC5432a) {
        this(interfaceC5432a, new C7185c(), new C7076f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m3429g(String str, Bundle bundle) {
        this.f35475b.mo2568a(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m3428h(InterfaceC7183a interfaceC7183a) {
        synchronized (this) {
            if (this.f35476c instanceof C7185c) {
                this.f35477d.add(interfaceC7183a);
            }
            this.f35476c.mo2219a(interfaceC7183a);
        }
    }

    /* renamed from: d */
    public InterfaceC7071a m3432d() {
        return new InterfaceC7071a() { // from class: t5.b
            @Override // p205v5.InterfaceC7071a
            /* renamed from: a */
            public final void mo2568a(String str, Bundle bundle) {
                C6792d.this.m3429g(str, bundle);
            }
        };
    }

    /* renamed from: e */
    public InterfaceC7184b m3431e() {
        return new InterfaceC7184b() { // from class: t5.a
            @Override // p214w5.InterfaceC7184b
            /* renamed from: a */
            public final void mo2219a(InterfaceC7183a interfaceC7183a) {
                C6792d.this.m3428h(interfaceC7183a);
            }
        };
    }

    /* renamed from: f */
    public final void m3430f() {
        this.f35474a.mo3873a(new InterfaceC5432a.InterfaceC5433a() { // from class: t5.c
            @Override // p161q6.InterfaceC5432a.InterfaceC5433a
            /* renamed from: a */
            public final void mo3033a(InterfaceC5434b interfaceC5434b) {
                C6792d.this.m3427i(interfaceC5434b);
            }
        });
    }

    public C6792d(InterfaceC5432a<InterfaceC5424a> interfaceC5432a, InterfaceC7184b interfaceC7184b, InterfaceC7071a interfaceC7071a) {
        this.f35474a = interfaceC5432a;
        this.f35476c = interfaceC7184b;
        this.f35477d = new ArrayList();
        this.f35475b = interfaceC7071a;
        m3430f();
    }

    /* renamed from: j */
    public static InterfaceC5424a.InterfaceC5425a m3426j(InterfaceC5424a interfaceC5424a, C6793e c6793e) {
        InterfaceC5424a.InterfaceC5425a mo13311e = interfaceC5424a.mo13311e("clx", c6793e);
        if (mo13311e == null) {
            C6930f.m3016f().m3020b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            mo13311e = interfaceC5424a.mo13311e("crash", c6793e);
            if (mo13311e != null) {
                C6930f.m3016f().m3011k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return mo13311e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m3427i(InterfaceC5434b interfaceC5434b) {
        C6930f.m3016f().m3020b("AnalyticsConnector now available.");
        InterfaceC5424a interfaceC5424a = (InterfaceC5424a) interfaceC5434b.get();
        C7075e c7075e = new C7075e(interfaceC5424a);
        C6793e c6793e = new C6793e();
        if (m3426j(interfaceC5424a, c6793e) != null) {
            C6930f.m3016f().m3020b("Registered Firebase Analytics listener.");
            C7074d c7074d = new C7074d();
            C7073c c7073c = new C7073c(c7075e, 500, TimeUnit.MILLISECONDS);
            synchronized (this) {
                for (InterfaceC7183a interfaceC7183a : this.f35477d) {
                    c7074d.mo2219a(interfaceC7183a);
                }
                c6793e.m3422d(c7074d);
                c6793e.m3421e(c7073c);
                this.f35476c = c7074d;
                this.f35475b = c7073c;
            }
            return;
        }
        C6930f.m3016f().m3011k("Could not register Firebase Analytics listener; a listener is already registered.");
    }
}
