package p168r4;

import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.p0 */
/* loaded from: classes2.dex */
public final class C6116p0 implements iz2 {

    /* renamed from: a */
    public final jx2 f29291a;

    /* renamed from: b */
    public final by2 f29292b;

    /* renamed from: c */
    public final View$OnAttachStateChangeListenerC5635c1 f29293c;

    /* renamed from: d */
    public final C6079o0 f29294d;

    /* renamed from: e */
    public final C6411x f29295e;

    public C6116p0(jx2 jx2Var, by2 by2Var, View$OnAttachStateChangeListenerC5635c1 view$OnAttachStateChangeListenerC5635c1, C6079o0 c6079o0, C6411x c6411x) {
        this.f29291a = jx2Var;
        this.f29292b = by2Var;
        this.f29293c = view$OnAttachStateChangeListenerC5635c1;
        this.f29294d = c6079o0;
        this.f29295e = c6411x;
    }

    @Override // p168r4.iz2
    /* renamed from: b */
    public final Map<String, Object> mo8542b() {
        return m8540d();
    }

    /* renamed from: c */
    public final void m8541c(View view) {
        this.f29293c.m12671a(view);
    }

    /* renamed from: d */
    public final Map<String, Object> m8540d() {
        HashMap hashMap = new HashMap();
        pb4 m12680c = this.f29292b.m12680c();
        hashMap.put("v", this.f29291a.mo8979a());
        hashMap.put("gms", Boolean.valueOf(this.f29291a.mo8977c()));
        hashMap.put("int", m12680c.m8371t0());
        hashMap.put("up", Boolean.valueOf(this.f29294d.m8945a()));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    @Override // p168r4.iz2
    /* renamed from: a */
    public final Map<String, Object> mo8543a() {
        Map<String, Object> m8540d = m8540d();
        pb4 m12681b = this.f29292b.m12681b();
        m8540d.put("gai", Boolean.valueOf(this.f29291a.mo8978b()));
        m8540d.put("did", m12681b.m8370u0());
        m8540d.put("dst", Integer.valueOf(m12681b.m8378m0() - 1));
        m8540d.put("doo", Boolean.valueOf(m12681b.m8369v0()));
        C6411x c6411x = this.f29295e;
        if (c6411x != null) {
            m8540d.put("nt", Long.valueOf(c6411x.m5530d()));
        }
        return m8540d;
    }

    @Override // p168r4.iz2
    /* renamed from: e */
    public final Map<String, Object> mo8539e() {
        Map<String, Object> m8540d = m8540d();
        m8540d.put("lts", Long.valueOf(this.f29293c.m12669c()));
        return m8540d;
    }
}
