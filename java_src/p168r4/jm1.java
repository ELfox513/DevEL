package p168r4;

import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.jm1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class jm1 implements p03 {

    /* renamed from: a */
    public static final p03 f26075a = new jm1();

    @Override // p168r4.p03
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (lm1 lm1Var : (List) obj) {
            if (lm1Var != null) {
                arrayList.add(lm1Var);
            }
        }
        return arrayList;
    }
}
