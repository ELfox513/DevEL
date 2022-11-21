package p168r4;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import p016b3.C0543w1;
/* renamed from: r4.ss1 */
/* loaded from: classes2.dex */
public class ss1 {

    /* renamed from: a */
    public final String f31495a = a10.f20330b.m6673e();

    /* renamed from: b */
    public final Map<String, String> f31496b = new HashMap();

    /* renamed from: c */
    public final Executor f31497c;

    /* renamed from: d */
    public final hm0 f31498d;

    /* renamed from: e */
    public final boolean f31499e;

    /* renamed from: f */
    public final hu2 f31500f;

    /* renamed from: b */
    public final String m7015b(Map<String, String> map) {
        return this.f31500f.m10822a(map);
    }

    /* renamed from: a */
    public final void m7016a(Map<String, String> map) {
        final String m10822a = this.f31500f.m10822a(map);
        if (this.f31499e) {
            this.f31497c.execute(new Runnable(this, m10822a) { // from class: r4.rs1

                /* renamed from: a */
                public final ss1 f30675a;

                /* renamed from: b */
                public final String f30676b;

                {
                    this.f30675a = this;
                    this.f30676b = m10822a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ss1 ss1Var = this.f30675a;
                    ss1Var.f31498d.mo6488q(this.f30676b);
                }
            });
        }
        C0543w1.m26251k(m10822a);
    }

    public ss1(Executor executor, hm0 hm0Var, hu2 hu2Var) {
        boolean z;
        this.f31497c = executor;
        this.f31498d = hm0Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue()) {
            this.f31499e = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31091p1)).booleanValue();
        } else {
            if (C6479yu.m4564e().nextFloat() <= a10.f20329a.m6673e().doubleValue()) {
                z = true;
            } else {
                z = false;
            }
            this.f31499e = z;
        }
        this.f31500f = hu2Var;
    }
}
