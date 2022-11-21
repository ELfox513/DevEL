package p168r4;

import java.util.AbstractMap;
import java.util.Map;
/* renamed from: r4.d53 */
/* loaded from: classes2.dex */
public final class d53 extends o33<Map.Entry> {

    /* renamed from: d */
    public final /* synthetic */ e53 f22101d;

    public d53(e53 e53Var) {
        this.f22101d = e53Var;
    }

    @Override // p168r4.j33
    /* renamed from: l */
    public final boolean mo9197l() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i;
        i = this.f22101d.f22837p;
        return i;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        i2 = this.f22101d.f22837p;
        z03.m4492e(i, i2, "index");
        int i3 = i + i;
        objArr = this.f22101d.f22836k;
        Object obj = objArr[i3];
        obj.getClass();
        objArr2 = this.f22101d.f22836k;
        Object obj2 = objArr2[i3 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }
}
