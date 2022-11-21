package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import p060f4.BinderC3514b;
/* renamed from: r4.df2 */
/* loaded from: classes2.dex */
public final class df2 implements eg2<ef2> {

    /* renamed from: a */
    public final i83 f22242a;

    /* renamed from: b */
    public final ScheduledExecutorService f22243b;

    /* renamed from: c */
    public final y72 f22244c;

    /* renamed from: d */
    public final Context f22245d;

    /* renamed from: e */
    public final hp2 f22246e;

    /* renamed from: f */
    public final s72 f22247f;

    /* renamed from: g */
    public final gq1 f22248g;

    /* renamed from: h */
    public final String f22249h;

    public df2(i83 i83Var, ScheduledExecutorService scheduledExecutorService, String str, y72 y72Var, Context context, hp2 hp2Var, s72 s72Var, gq1 gq1Var) {
        this.f22242a = i83Var;
        this.f22243b = scheduledExecutorService;
        this.f22249h = str;
        this.f22244c = y72Var;
        this.f22245d = context;
        this.f22246e = hp2Var;
        this.f22247f = s72Var;
        this.f22248g = gq1Var;
    }

    /* renamed from: b */
    public final /* synthetic */ h83 m12147b(String str, List list, Bundle bundle) {
        return m12145d(str, list, bundle, true, true);
    }

    @Override // p168r4.eg2
    public final h83<ef2> zza() {
        return y73.m4810e(new d73(this) { // from class: r4.xe2

            /* renamed from: a */
            public final df2 f33578a;

            {
                this.f33578a = this;
            }

            @Override // p168r4.d73
            public final h83 zza() {
                return this.f33578a.m12146c();
            }
        }, this.f22242a);
    }

    /* renamed from: a */
    public final /* synthetic */ h83 m12148a(String str, c82 c82Var, Bundle bundle) {
        return m12145d(str, Collections.singletonList(c82Var.f21443d), bundle, c82Var.f21441b, c82Var.f21442c);
    }

    /* renamed from: c */
    public final /* bridge */ /* synthetic */ h83 m12146c() {
        final Bundle bundle;
        Map<String, List<Bundle>> m4824c = this.f22244c.m4824c(this.f22249h, this.f22246e.f24781f);
        final ArrayList arrayList = new ArrayList();
        Iterator<E> it = ((s33) m4824c).entrySet().iterator();
        while (true) {
            final Bundle bundle2 = null;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            final String str = (String) entry.getKey();
            final List list = (List) entry.getValue();
            Bundle bundle3 = this.f22246e.f24779d.f32006x;
            if (bundle3 != null) {
                bundle2 = bundle3.getBundle(str);
            }
            arrayList.add(y73.m4809f((o73) y73.m4807h(o73.m8869E(y73.m4810e(new d73(this, str, list, bundle2) { // from class: r4.ye2

                /* renamed from: a */
                public final df2 f34040a;

                /* renamed from: b */
                public final String f34041b;

                /* renamed from: c */
                public final List f34042c;

                /* renamed from: d */
                public final Bundle f34043d;

                {
                    this.f34040a = this;
                    this.f34041b = str;
                    this.f34042c = list;
                    this.f34043d = bundle2;
                }

                @Override // p168r4.d73
                public final h83 zza() {
                    return this.f34040a.m12147b(this.f34041b, this.f34042c, this.f34043d);
                }
            }, this.f22242a)), ((Long) C5592av.m12935c().m8098c(C6225rz.f30943X0)).longValue(), TimeUnit.MILLISECONDS, this.f22243b), Throwable.class, new p03(str) { // from class: r4.ze2

                /* renamed from: a */
                public final String f34516a;

                {
                    this.f34516a = str;
                }

                @Override // p168r4.p03
                public final Object apply(Object obj) {
                    String str2;
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.f34516a);
                    if (valueOf.length() != 0) {
                        str2 = "Error calling adapter: ".concat(valueOf);
                    } else {
                        str2 = new String("Error calling adapter: ");
                    }
                    cm0.m12440c(str2);
                    return null;
                }
            }, this.f22242a));
        }
        for (Map.Entry entry2 : ((s33) this.f22244c.m4825b()).entrySet()) {
            final c82 c82Var = (c82) entry2.getValue();
            final String str2 = c82Var.f21440a;
            Bundle bundle4 = this.f22246e.f24779d.f32006x;
            if (bundle4 != null) {
                bundle = bundle4.getBundle(str2);
            } else {
                bundle = null;
            }
            arrayList.add(y73.m4809f((o73) y73.m4807h(o73.m8869E(y73.m4810e(new d73(this, str2, c82Var, bundle) { // from class: r4.af2

                /* renamed from: a */
                public final df2 f20474a;

                /* renamed from: b */
                public final String f20475b;

                /* renamed from: c */
                public final c82 f20476c;

                /* renamed from: d */
                public final Bundle f20477d;

                {
                    this.f20474a = this;
                    this.f20475b = str2;
                    this.f20476c = c82Var;
                    this.f20477d = bundle;
                }

                @Override // p168r4.d73
                public final h83 zza() {
                    return this.f20474a.m12148a(this.f20475b, this.f20476c, this.f20477d);
                }
            }, this.f22242a)), ((Long) C5592av.m12935c().m8098c(C6225rz.f30943X0)).longValue(), TimeUnit.MILLISECONDS, this.f22243b), Throwable.class, new p03(str2) { // from class: r4.bf2

                /* renamed from: a */
                public final String f21036a;

                {
                    this.f21036a = str2;
                }

                @Override // p168r4.p03
                public final Object apply(Object obj) {
                    String str3;
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.f21036a);
                    if (valueOf.length() != 0) {
                        str3 = "Error calling adapter: ".concat(valueOf);
                    } else {
                        str3 = new String("Error calling adapter: ");
                    }
                    cm0.m12440c(str3);
                    return null;
                }
            }, this.f22242a));
        }
        return y73.m4800o(arrayList).m5812a(new Callable(arrayList) { // from class: r4.cf2

            /* renamed from: a */
            public final List f21507a;

            {
                this.f21507a = arrayList;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<h83> list2 = this.f21507a;
                JSONArray jSONArray = new JSONArray();
                for (h83 h83Var : list2) {
                    if (((JSONObject) h83Var.get()) != null) {
                        jSONArray.put(h83Var.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new ef2(jSONArray.toString());
            }
        }, this.f22242a);
    }

    /* renamed from: d */
    public final h83<JSONObject> m12145d(String str, List<Bundle> list, Bundle bundle, boolean z, boolean z2) {
        ed0 ed0Var;
        vm0 vm0Var = new vm0();
        if (z2) {
            this.f22247f.m7192a(str);
            ed0Var = this.f22247f.m7191b(str);
        } else {
            try {
                ed0Var = this.f22248g.m11062c(str);
            } catch (RemoteException e) {
                cm0.m12439d("Couldn't create RTB adapter : ", e);
                ed0Var = null;
            }
        }
        ed0 ed0Var2 = ed0Var;
        ed0Var2.getClass();
        b82 b82Var = new b82(str, ed0Var2, vm0Var);
        if (z) {
            ed0Var2.mo8354T0(BinderC3514b.m18741L0(this.f22245d), this.f22249h, bundle, list.get(0), this.f22246e.f24780e, b82Var);
        } else {
            b82Var.m12845a();
        }
        return vm0Var;
    }
}
