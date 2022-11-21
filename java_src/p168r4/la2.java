package p168r4;

import android.os.Bundle;
/* renamed from: r4.la2 */
/* loaded from: classes2.dex */
public final /* synthetic */ class la2 implements e73 {

    /* renamed from: a */
    public static final e73 f27149a = new la2();

    @Override // p168r4.e73
    /* renamed from: a */
    public final h83 mo1029a(Object obj) {
        final String str = (String) obj;
        return y73.m4814a(new dg2(str) { // from class: r4.ma2

            /* renamed from: a */
            public final String f27560a;

            {
                this.f27560a = str;
            }

            @Override // p168r4.dg2
            /* renamed from: d */
            public final void mo4299d(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f27560a);
            }
        });
    }
}
