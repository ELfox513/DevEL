package p223x6;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p029c7.C1078a;
import p029c7.C1079b;
import p058f2.InterfaceC3508g;
import p090i7.C4153k;
import p099j7.C4371d;
import p124m5.C4638c;
import p126m7.C4669p;
import p161q6.InterfaceC5434b;
import p170r6.InterfaceC6538g;
import p239z6.C7873a;
/* renamed from: x6.c */
/* loaded from: classes2.dex */
public class C7393c {

    /* renamed from: i */
    public static final C1078a f36987i = C1078a.m24639e();

    /* renamed from: a */
    public final Map<String, String> f36988a = new ConcurrentHashMap();

    /* renamed from: b */
    public final C7873a f36989b;

    /* renamed from: c */
    public final C4371d f36990c;

    /* renamed from: d */
    public Boolean f36991d;

    /* renamed from: e */
    public final C4638c f36992e;

    /* renamed from: f */
    public final InterfaceC5434b<C4669p> f36993f;

    /* renamed from: g */
    public final InterfaceC6538g f36994g;

    /* renamed from: h */
    public final InterfaceC5434b<InterfaceC3508g> f36995h;

    /* renamed from: c */
    public static C7393c m1585c() {
        return (C7393c) C4638c.m15898i().m15900g(C7393c.class);
    }

    /* renamed from: b */
    public Map<String, String> m1586b() {
        return new HashMap(this.f36988a);
    }

    /* renamed from: d */
    public boolean m1584d() {
        Boolean bool = this.f36991d;
        if (bool != null) {
            return bool.booleanValue();
        }
        return C4638c.m15898i().m15890q();
    }

    public C7393c(C4638c c4638c, InterfaceC5434b<C4669p> interfaceC5434b, InterfaceC6538g interfaceC6538g, InterfaceC5434b<InterfaceC3508g> interfaceC5434b2, RemoteConfigManager remoteConfigManager, C7873a c7873a, GaugeManager gaugeManager) {
        this.f36991d = null;
        this.f36992e = c4638c;
        this.f36993f = interfaceC5434b;
        this.f36994g = interfaceC6538g;
        this.f36995h = interfaceC5434b2;
        if (c4638c == null) {
            this.f36991d = Boolean.FALSE;
            this.f36989b = c7873a;
            this.f36990c = new C4371d(new Bundle());
            return;
        }
        C4153k.m17283k().m17276r(c4638c, interfaceC6538g, interfaceC5434b2);
        Context m15899h = c4638c.m15899h();
        C4371d m1587a = m1587a(m15899h);
        this.f36990c = m1587a;
        remoteConfigManager.setFirebaseRemoteConfigProvider(interfaceC5434b);
        this.f36989b = c7873a;
        c7873a.m81O(m1587a);
        c7873a.m83M(m15899h);
        gaugeManager.setApplicationContext(m15899h);
        this.f36991d = c7873a.m73h();
        if (m1584d()) {
            f36987i.m24638f(String.format("Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s", C1079b.m24632b(c4638c.m15896k().m15874e(), m15899h.getPackageName())));
        }
    }

    /* renamed from: a */
    public static C4371d m1587a(Context context) {
        Bundle bundle;
        C4371d c4371d;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            Log.d("isEnabled", "No perf enable meta data found " + e.getMessage());
            bundle = null;
        }
        if (bundle != null) {
            c4371d = new C4371d(bundle);
        } else {
            c4371d = new C4371d();
        }
        return c4371d;
    }
}
