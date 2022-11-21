package p168r4;

import java.util.AbstractList;
import java.util.List;
/* renamed from: r4.wm3 */
/* loaded from: classes2.dex */
public final class wm3<F, T> extends AbstractList<T> {

    /* renamed from: a */
    public final List<F> f33259a;

    /* renamed from: b */
    public final vm3<F, T> f33260b;

    public wm3(List<F> list, vm3<F, T> vm3Var) {
        this.f33259a = list;
        this.f33260b = vm3Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f33259a.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int i) {
        T t = (T) EnumC5735eq.m11697c(((Integer) this.f33259a.get(i)).intValue());
        if (t == null) {
            return (T) EnumC5735eq.AD_FORMAT_TYPE_UNSPECIFIED;
        }
        return t;
    }
}
