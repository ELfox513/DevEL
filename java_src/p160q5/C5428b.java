package p160q5;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p018b5.C0966y2;
import p061f5.C3518a;
import p124m5.C4636a;
import p124m5.C4638c;
import p143o6.C5096a;
import p143o6.InterfaceC5099d;
import p160q5.InterfaceC5424a;
import p169r5.C6523b;
import p169r5.C6525d;
import p169r5.C6527f;
import p220x3.C7297q;
/* renamed from: q5.b */
/* loaded from: classes2.dex */
public class C5428b implements InterfaceC5424a {

    /* renamed from: c */
    public static volatile InterfaceC5424a f20120c;

    /* renamed from: a */
    public final C3518a f20121a;

    /* renamed from: b */
    public final Map<String, Object> f20122b;

    /* renamed from: q5.b$a */
    /* loaded from: classes2.dex */
    public class C5429a implements InterfaceC5424a.InterfaceC5425a {

        /* renamed from: a */
        public final /* synthetic */ String f20123a;

        public C5429a(String str) {
            this.f20123a = str;
        }
    }

    @Override // p160q5.InterfaceC5424a
    /* renamed from: a */
    public Map<String, Object> mo13315a(boolean z) {
        return this.f20121a.m18726m(null, null, z);
    }

    @Override // p160q5.InterfaceC5424a
    /* renamed from: d */
    public int mo13312d(String str) {
        return this.f20121a.m18727l(str);
    }

    /* renamed from: i */
    public final boolean m13307i(String str) {
        return (str.isEmpty() || !this.f20122b.containsKey(str) || this.f20122b.get(str) == null) ? false : true;
    }

    @Override // p160q5.InterfaceC5424a
    /* renamed from: c */
    public void mo13313c(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!C6523b.m3995i(str) || !C6523b.m3997g(str2, bundle) || !C6523b.m3999e(str, str2, bundle)) {
            return;
        }
        C6523b.m4000d(str, str2, bundle);
        this.f20121a.m18725n(str, str2, bundle);
    }

    @Override // p160q5.InterfaceC5424a
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        if (str2 != null && !C6523b.m3997g(str2, bundle)) {
            return;
        }
        this.f20121a.m18737b(str, str2, bundle);
    }

    @Override // p160q5.InterfaceC5424a
    /* renamed from: f */
    public List<InterfaceC5424a.C5427c> mo13310f(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f20121a.m18732g(str, str2)) {
            arrayList.add(C6523b.m4002b(bundle));
        }
        return arrayList;
    }

    public C5428b(C3518a c3518a) {
        C7297q.m1883j(c3518a);
        this.f20121a = c3518a;
        this.f20122b = new ConcurrentHashMap();
    }

    /* renamed from: g */
    public static InterfaceC5424a m13309g(C4638c c4638c, Context context, InterfaceC5099d interfaceC5099d) {
        C7297q.m1883j(c4638c);
        C7297q.m1883j(context);
        C7297q.m1883j(interfaceC5099d);
        C7297q.m1883j(context.getApplicationContext());
        if (f20120c == null) {
            synchronized (C5428b.class) {
                if (f20120c == null) {
                    Bundle bundle = new Bundle(1);
                    if (c4638c.m15889r()) {
                        interfaceC5099d.mo3779a(C4636a.class, ExecutorC5431d.f20126a, C5430c.f20125a);
                        bundle.putBoolean("dataCollectionDefaultEnabled", c4638c.m15890q());
                    }
                    f20120c = new C5428b(C0966y2.m24929u(context, null, null, null, bundle).m24932r());
                }
            }
        }
        return f20120c;
    }

    /* renamed from: h */
    public static /* synthetic */ void m13308h(C5096a c5096a) {
        boolean z = ((C4636a) c5096a.m14670a()).f18677a;
        synchronized (C5428b.class) {
            ((C5428b) C7297q.m1883j(f20120c)).f20121a.m18717v(z);
        }
    }

    @Override // p160q5.InterfaceC5424a
    /* renamed from: b */
    public void mo13314b(InterfaceC5424a.C5427c c5427c) {
        if (!C6523b.m3998f(c5427c)) {
            return;
        }
        this.f20121a.m18721r(C6523b.m4003a(c5427c));
    }

    @Override // p160q5.InterfaceC5424a
    /* renamed from: e */
    public InterfaceC5424a.InterfaceC5425a mo13311e(String str, InterfaceC5424a.InterfaceC5426b interfaceC5426b) {
        Object c6527f;
        C7297q.m1883j(interfaceC5426b);
        if (!C6523b.m3995i(str) || m13307i(str)) {
            return null;
        }
        C3518a c3518a = this.f20121a;
        if ("fiam".equals(str)) {
            c6527f = new C6525d(c3518a, interfaceC5426b);
        } else if (!"crash".equals(str) && !"clx".equals(str)) {
            c6527f = null;
        } else {
            c6527f = new C6527f(c3518a, interfaceC5426b);
        }
        if (c6527f == null) {
            return null;
        }
        this.f20122b.put(str, c6527f);
        return new C5429a(str);
    }
}
