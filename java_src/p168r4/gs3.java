package p168r4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: r4.gs3 */
/* loaded from: classes2.dex */
public final class gs3<T> implements vr3<Set<T>> {

    /* renamed from: c */
    public static final vr3<Set<Object>> f24205c = wr3.m5603b(Collections.emptySet());

    /* renamed from: a */
    public final List<is3<T>> f24206a;

    /* renamed from: b */
    public final List<is3<Collection<T>>> f24207b;

    public /* synthetic */ gs3(List list, List list2, es3 es3Var) {
        this.f24206a = list;
        this.f24207b = list2;
    }

    /* renamed from: b */
    public static <T> fs3<T> m11056b(int i, int i2) {
        return new fs3<>(i, i2, null);
    }

    @Override // p168r4.is3
    /* renamed from: c */
    public final Set<T> mo4079a() {
        int size = this.f24206a.size();
        ArrayList arrayList = new ArrayList(this.f24207b.size());
        int size2 = this.f24207b.size();
        for (int i = 0; i < size2; i++) {
            Collection<T> mo4079a = this.f24207b.get(i).mo4079a();
            size += mo4079a.size();
            arrayList.add(mo4079a);
        }
        HashSet m7347b = rr3.m7347b(size);
        int size3 = this.f24206a.size();
        for (int i2 = 0; i2 < size3; i2++) {
            T mo4079a2 = this.f24206a.get(i2).mo4079a();
            mo4079a2.getClass();
            m7347b.add(mo4079a2);
        }
        int size4 = arrayList.size();
        for (int i3 = 0; i3 < size4; i3++) {
            for (Object obj : (Collection) arrayList.get(i3)) {
                obj.getClass();
                m7347b.add(obj);
            }
        }
        return Collections.unmodifiableSet(m7347b);
    }
}
