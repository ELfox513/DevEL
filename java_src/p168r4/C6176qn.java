package p168r4;

import java.util.Comparator;
/* renamed from: r4.qn */
/* loaded from: classes2.dex */
public final class C6176qn implements Comparator<C6398wn> {
    public C6176qn(C6250sn c6250sn) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(C6398wn c6398wn, C6398wn c6398wn2) {
        C6398wn c6398wn3 = c6398wn;
        C6398wn c6398wn4 = c6398wn2;
        int i = c6398wn3.f33263c - c6398wn4.f33263c;
        if (i != 0) {
            return i;
        }
        return (int) (c6398wn3.f33261a - c6398wn4.f33261a);
    }
}
