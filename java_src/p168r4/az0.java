package p168r4;

import android.content.Context;
import java.util.List;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.az0 */
/* loaded from: classes2.dex */
public final class az0 implements t73<String> {

    /* renamed from: a */
    public final /* synthetic */ cz0 f20772a;

    public az0(cz0 cz0Var) {
        this.f20772a = cz0Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(String str) {
        sp2 sp2Var;
        mu2 mu2Var;
        bp2 bp2Var;
        no2 no2Var;
        no2 no2Var2;
        Context context;
        String str2 = str;
        sp2Var = this.f20772a.f21984s;
        mu2Var = this.f20772a.f21983r;
        bp2Var = this.f20772a.f21981p;
        no2Var = this.f20772a.f21982q;
        no2Var2 = this.f20772a.f21982q;
        List<String> m9270b = mu2Var.m9270b(bp2Var, no2Var, false, "", str2, no2Var2.f28408c);
        C7601t.m939d();
        context = this.f20772a.f21977a;
        int i = 1;
        if (true == C0497k2.m26313i(context)) {
            i = 2;
        }
        sp2Var.m7069b(m9270b, i);
    }
}
