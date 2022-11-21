package p070g5;

import java.util.ArrayList;
import java.util.List;
import p018b5.C0713j4;
import p018b5.C0883t4;
import p220x3.C7297q;
/* renamed from: g5.aa */
/* loaded from: classes2.dex */
public final class C3604aa {

    /* renamed from: a */
    public C0883t4 f16212a;

    /* renamed from: b */
    public List<Long> f16213b;

    /* renamed from: c */
    public List<C0713j4> f16214c;

    /* renamed from: d */
    public long f16215d;

    /* renamed from: e */
    public final /* synthetic */ C3616ba f16216e;

    public /* synthetic */ C3604aa(C3616ba c3616ba, C3903z9 c3903z9) {
        this.f16216e = c3616ba;
    }

    /* renamed from: b */
    public static final long m18552b(C0713j4 c0713j4) {
        return ((c0713j4.m25757v() / 1000) / 60) / 60;
    }

    /* renamed from: a */
    public final boolean m18553a(long j, C0713j4 c0713j4) {
        C7297q.m1883j(c0713j4);
        if (this.f16214c == null) {
            this.f16214c = new ArrayList();
        }
        if (this.f16213b == null) {
            this.f16213b = new ArrayList();
        }
        if (this.f16214c.size() > 0 && m18552b(this.f16214c.get(0)) != m18552b(c0713j4)) {
            return false;
        }
        long mo24973t0 = this.f16215d + c0713j4.mo24973t0();
        this.f16216e.m18490T();
        if (mo24973t0 >= Math.max(0, C3621c3.f16373j.m18550a(null).intValue())) {
            return false;
        }
        this.f16215d = mo24973t0;
        this.f16214c.add(c0713j4);
        this.f16213b.add(Long.valueOf(j));
        int size = this.f16214c.size();
        this.f16216e.m18490T();
        if (size >= Math.max(1, C3621c3.f16375k.m18550a(null).intValue())) {
            return false;
        }
        return true;
    }
}
