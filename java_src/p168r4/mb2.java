package p168r4;

import android.os.Bundle;
import java.util.ArrayList;
/* renamed from: r4.mb2 */
/* loaded from: classes2.dex */
public final /* synthetic */ class mb2 implements p03 {

    /* renamed from: a */
    public static final p03 f27569a = new mb2();

    @Override // p168r4.p03
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new dg2(arrayList) { // from class: r4.nb2

            /* renamed from: a */
            public final ArrayList f28245a;

            {
                this.f28245a = arrayList;
            }

            @Override // p168r4.dg2
            /* renamed from: d */
            public final void mo4299d(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f28245a);
            }
        };
    }
}
