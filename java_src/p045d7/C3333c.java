package p045d7;

import com.google.firebase.perf.metrics.Trace;
import java.util.Arrays;
import java.util.List;
import p072g7.C3907a;
import p108k7.C4514k;
import p108k7.C4521m;
/* renamed from: d7.c */
/* loaded from: classes2.dex */
public class C3333c {

    /* renamed from: a */
    public final Trace f15669a;

    public C3333c(Trace trace) {
        this.f15669a = trace;
    }

    /* renamed from: a */
    public C4521m m19106a() {
        C4521m.C4523b m16076Z = C4521m.m16088v0().m16075a0(this.f15669a.getName()).m16077Y(this.f15669a.m22941p().m16730l()).m16076Z(this.f15669a.m22941p().m16731j(this.f15669a.m22943l()));
        for (C3330a c3330a : this.f15669a.m22944j().values()) {
            m16076Z.m16078X(c3330a.getName(), c3330a.m19131a());
        }
        List<Trace> m22940u = this.f15669a.m22940u();
        if (!m22940u.isEmpty()) {
            for (Trace trace : m22940u) {
                m16076Z.m16081U(new C3333c(trace).m19106a());
            }
        }
        m16076Z.m16079W(this.f15669a.getAttributes());
        C4514k[] m17797h = C3907a.m17797h(this.f15669a.m22942n());
        if (m17797h != null) {
            m16076Z.m16084Q(Arrays.asList(m17797h));
        }
        return m16076Z.build();
    }
}
