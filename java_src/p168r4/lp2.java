package p168r4;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import p184t2.C6710g;
/* renamed from: r4.lp2 */
/* loaded from: classes2.dex */
public final class lp2 {
    /* renamed from: a */
    public static qo2 m9588a(List<qo2> list, qo2 qo2Var) {
        return list.get(0);
    }

    /* renamed from: b */
    public static C6478yt m9587b(Context context, List<qo2> list) {
        ArrayList arrayList = new ArrayList();
        for (qo2 qo2Var : list) {
            if (qo2Var.f30243c) {
                arrayList.add(C6710g.f35341p);
            } else {
                arrayList.add(new C6710g(qo2Var.f30241a, qo2Var.f30242b));
            }
        }
        return new C6478yt(context, (C6710g[]) arrayList.toArray(new C6710g[arrayList.size()]));
    }

    /* renamed from: c */
    public static qo2 m9586c(C6478yt c6478yt) {
        if (c6478yt.f34205t) {
            return new qo2(-3, 0, true);
        }
        return new qo2(c6478yt.f34201p, c6478yt.f34198b, false);
    }
}
