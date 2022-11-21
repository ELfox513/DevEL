package p168r4;

import android.os.Bundle;
/* renamed from: r4.hc2 */
/* loaded from: classes2.dex */
public final class hc2 implements eg2<dg2<Bundle>> {

    /* renamed from: a */
    public final gl2 f24549a;

    public hc2(gl2 gl2Var) {
        this.f24549a = gl2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ void m10950a(Bundle bundle) {
        bundle.putString("key_schema", this.f24549a.m11118a());
    }

    @Override // p168r4.eg2
    public final h83<dg2<Bundle>> zza() {
        gl2 gl2Var = this.f24549a;
        dg2 dg2Var = null;
        if (gl2Var != null && gl2Var.m11118a() != null && !this.f24549a.m11118a().isEmpty()) {
            dg2Var = new dg2(this) { // from class: r4.gc2

                /* renamed from: a */
                public final hc2 f23962a;

                {
                    this.f23962a = this;
                }

                @Override // p168r4.dg2
                /* renamed from: d */
                public final void mo4299d(Object obj) {
                    this.f23962a.m10950a((Bundle) obj);
                }
            };
        }
        return y73.m4814a(dg2Var);
    }
}
