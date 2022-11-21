package p168r4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: r4.ua2 */
/* loaded from: classes2.dex */
public final class ua2 implements eg2<dg2<Bundle>> {

    /* renamed from: a */
    public final Set<String> f32238a;

    public ua2(Set<String> set) {
        this.f32238a = set;
    }

    @Override // p168r4.eg2
    public final h83<dg2<Bundle>> zza() {
        final ArrayList arrayList = new ArrayList();
        for (String str : this.f32238a) {
            arrayList.add(str);
        }
        return y73.m4814a(new dg2(arrayList) { // from class: r4.ta2

            /* renamed from: a */
            public final ArrayList f31753a;

            {
                this.f31753a = arrayList;
            }

            @Override // p168r4.dg2
            /* renamed from: d */
            public final void mo4299d(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", this.f31753a);
            }
        });
    }
}
