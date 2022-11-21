package p168r4;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: r4.rx1 */
/* loaded from: classes2.dex */
public final class rx1 implements ga1 {

    /* renamed from: a */
    public final Context f30742a;

    /* renamed from: b */
    public final ik0 f30743b;

    public rx1(Context context, ik0 ik0Var) {
        this.f30742a = context;
        this.f30743b = ik0Var;
    }

    @Override // p168r4.ga1
    /* renamed from: c0 */
    public final void mo4832c0(og0 og0Var) {
    }

    @Override // p168r4.ga1
    /* renamed from: A0 */
    public final void mo4833A0(bp2 bp2Var) {
        if (!TextUtils.isEmpty(bp2Var.f21154b.f20574b.f31428d)) {
            this.f30743b.m10620i(this.f30742a, bp2Var.f21153a.f34161a.f24779d);
            this.f30743b.m10608u(this.f30742a, bp2Var.f21154b.f20574b.f31428d);
        }
    }
}
