package p168r4;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: r4.yi1 */
/* loaded from: classes2.dex */
public final class yi1 implements InterfaceC6064nm {

    /* renamed from: a */
    public final /* synthetic */ String f34097a;

    /* renamed from: b */
    public final /* synthetic */ zi1 f34098b;

    public yi1(zi1 zi1Var, String str) {
        this.f34098b = zi1Var;
        this.f34097a = str;
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final void mo4017Y(C6026mm c6026mm) {
        Map map;
        al1 al1Var;
        al1 al1Var2;
        al1 al1Var3;
        al1 al1Var4;
        Map map2;
        al1 al1Var5;
        al1 al1Var6;
        al1 al1Var7;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31011f1)).booleanValue()) {
            synchronized (this) {
                if (c6026mm.f27782j) {
                    al1Var4 = this.f34098b.f34636t;
                    if (al1Var4 == null) {
                        return;
                    }
                    map2 = this.f34098b.f34622D;
                    map2.put(this.f34097a, Boolean.TRUE);
                    zi1 zi1Var = this.f34098b;
                    al1Var5 = zi1Var.f34636t;
                    View mo4678L0 = al1Var5.mo4678L0();
                    al1Var6 = this.f34098b.f34636t;
                    Map<String, WeakReference<View>> mo4672h = al1Var6.mo4672h();
                    al1Var7 = this.f34098b.f34636t;
                    zi1Var.m4230J(mo4678L0, mo4672h, al1Var7.mo4670i(), true);
                }
            }
        } else if (c6026mm.f27782j) {
            map = this.f34098b.f34622D;
            map.put(this.f34097a, Boolean.TRUE);
            zi1 zi1Var2 = this.f34098b;
            al1Var = zi1Var2.f34636t;
            View mo4678L02 = al1Var.mo4678L0();
            al1Var2 = this.f34098b.f34636t;
            Map<String, WeakReference<View>> mo4672h2 = al1Var2.mo4672h();
            al1Var3 = this.f34098b.f34636t;
            zi1Var2.m4230J(mo4678L02, mo4672h2, al1Var3.mo4670i(), true);
        }
    }
}
