package p168r4;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: r4.ks1 */
/* loaded from: classes2.dex */
public final class ks1 {

    /* renamed from: a */
    public final Map<String, String> f26541a = new ConcurrentHashMap();

    /* renamed from: b */
    public final /* synthetic */ ls1 f26542b;

    public ks1(ls1 ls1Var) {
        this.f26542b = ls1Var;
    }

    /* renamed from: a */
    public static /* synthetic */ ks1 m9957a(ks1 ks1Var) {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = ks1Var.f26541a;
        map = ks1Var.f26542b.f27355c;
        map2.putAll(map);
        return ks1Var;
    }

    /* renamed from: b */
    public final ks1 m9956b(so2 so2Var) {
        this.f26541a.put("gqi", so2Var.f31426b);
        return this;
    }

    /* renamed from: c */
    public final ks1 m9955c(no2 no2Var) {
        this.f26541a.put("aai", no2Var.f28436w);
        return this;
    }

    /* renamed from: d */
    public final ks1 m9954d(String str, String str2) {
        this.f26541a.put(str, str2);
        return this;
    }

    /* renamed from: e */
    public final void m9953e() {
        Executor executor;
        executor = this.f26542b.f27354b;
        executor.execute(new Runnable(this) { // from class: r4.js1

            /* renamed from: a */
            public final ks1 f26137a;

            {
                this.f26137a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26137a.m9951g();
            }
        });
    }

    /* renamed from: f */
    public final String m9952f() {
        qs1 qs1Var;
        qs1Var = this.f26542b.f27353a;
        return qs1Var.m7015b(this.f26541a);
    }

    /* renamed from: g */
    public final /* synthetic */ void m9951g() {
        qs1 qs1Var;
        qs1Var = this.f26542b.f27353a;
        qs1Var.m7016a(this.f26541a);
    }
}
