package p070g5;

import java.util.List;
import p018b5.InterfaceC0877sf;
/* renamed from: g5.r4 */
/* loaded from: classes2.dex */
public final class C3802r4 implements InterfaceC0877sf {

    /* renamed from: a */
    public final /* synthetic */ C3826t4 f16910a;

    public C3802r4(C3826t4 c3826t4) {
        this.f16910a = c3826t4;
    }

    @Override // p018b5.InterfaceC0877sf
    /* renamed from: a */
    public final void mo18001a(int i, String str, List<String> list, boolean z, boolean z2) {
        C3765o3 m18019l;
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        m18019l = this.f16910a.f17008a.mo17858F().m18015p();
                    } else if (z) {
                        m18019l = this.f16910a.f17008a.mo17858F().m18011t();
                    } else if (!z2) {
                        m18019l = this.f16910a.f17008a.mo17858F().m18012s();
                    } else {
                        m18019l = this.f16910a.f17008a.mo17858F().m18013r();
                    }
                } else {
                    m18019l = this.f16910a.f17008a.mo17858F().m18014q();
                }
            } else if (z) {
                m18019l = this.f16910a.f17008a.mo17858F().m18016o();
            } else if (!z2) {
                m18019l = this.f16910a.f17008a.mo17858F().m18017n();
            } else {
                m18019l = this.f16910a.f17008a.mo17858F().m18018m();
            }
        } else {
            m18019l = this.f16910a.f17008a.mo17858F().m18019l();
        }
        int size = list.size();
        if (size != 1) {
            if (size != 2) {
                if (size != 3) {
                    m18019l.m18042a(str);
                    return;
                } else {
                    m18019l.m18039d(str, list.get(0), list.get(1), list.get(2));
                    return;
                }
            }
            m18019l.m18040c(str, list.get(0), list.get(1));
            return;
        }
        m18019l.m18041b(str, list.get(0));
    }
}
