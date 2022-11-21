package p168r4;

import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.wl1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class wl1 implements p03 {

    /* renamed from: a */
    public static final p03 f33249a = new wl1();

    @Override // p168r4.p03
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (z10 z10Var : (List) obj) {
            if (z10Var != null) {
                arrayList.add(z10Var);
            }
        }
        return arrayList;
    }
}
