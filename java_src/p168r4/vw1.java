package p168r4;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: r4.vw1 */
/* loaded from: classes2.dex */
public final class vw1 implements t73<bp2> {

    /* renamed from: a */
    public final /* synthetic */ ww1 f32948a;

    public vw1(ww1 ww1Var) {
        this.f32948a = ww1Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        Pattern pattern;
        f02 f02Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31158x4)).booleanValue()) {
            pattern = ww1.f33344f;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                f02Var = this.f32948a.f33349e;
                f02Var.m11658a(Integer.parseInt(group));
            }
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(bp2 bp2Var) {
        f02 f02Var;
        f02 f02Var2;
        bp2 bp2Var2 = bp2Var;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31158x4)).booleanValue()) {
            f02Var = this.f32948a.f33349e;
            f02Var.m11658a(bp2Var2.f21154b.f20574b.f31429e);
            f02Var2 = this.f32948a.f33349e;
            f02Var2.m11656c(bp2Var2.f21154b.f20574b.f31430f);
        }
    }
}
