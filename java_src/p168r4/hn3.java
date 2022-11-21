package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.hn3 */
/* loaded from: classes2.dex */
public final class hn3 extends kn3 {

    /* renamed from: c */
    public static final Class<?> f24761c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public /* synthetic */ hn3(jn3 jn3Var) {
        super(null);
    }

    @Override // p168r4.kn3
    /* renamed from: a */
    public final <L> List<L> mo10000a(Object obj, long j) {
        return m10837f(obj, j, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static <L> List<L> m10837f(Object obj, long j, int i) {
        fn3 fn3Var;
        List<L> arrayList;
        List<L> list = (List) rp3.m7368v(obj, j);
        if (list.isEmpty()) {
            if (list instanceof gn3) {
                arrayList = new fn3(i);
            } else if ((list instanceof ho3) && (list instanceof ym3)) {
                arrayList = ((ym3) list).mo4192S(i);
            } else {
                arrayList = new ArrayList<>(i);
            }
            rp3.m7367w(obj, j, arrayList);
            return arrayList;
        }
        if (f24761c.isAssignableFrom(list.getClass())) {
            ArrayList arrayList2 = new ArrayList(list.size() + i);
            arrayList2.addAll(list);
            rp3.m7367w(obj, j, arrayList2);
            fn3Var = arrayList2;
        } else if (list instanceof mp3) {
            fn3 fn3Var2 = new fn3(list.size() + i);
            fn3Var2.addAll(fn3Var2.size(), (mp3) list);
            rp3.m7367w(obj, j, fn3Var2);
            fn3Var = fn3Var2;
        } else if ((list instanceof ho3) && (list instanceof ym3)) {
            ym3 ym3Var = (ym3) list;
            if (!ym3Var.zza()) {
                ym3 mo4192S = ym3Var.mo4192S(list.size() + i);
                rp3.m7367w(obj, j, mo4192S);
                return mo4192S;
            }
            return list;
        } else {
            return list;
        }
        return fn3Var;
    }

    @Override // p168r4.kn3
    /* renamed from: b */
    public final void mo9999b(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) rp3.m7368v(obj, j);
        if (list instanceof gn3) {
            unmodifiableList = ((gn3) list).mo9286j();
        } else if (f24761c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            if ((list instanceof ho3) && (list instanceof ym3)) {
                ym3 ym3Var = (ym3) list;
                if (ym3Var.zza()) {
                    ym3Var.mo4629a();
                    return;
                }
                return;
            }
            unmodifiableList = Collections.unmodifiableList(list);
        }
        rp3.m7367w(obj, j, unmodifiableList);
    }

    @Override // p168r4.kn3
    /* renamed from: c */
    public final <E> void mo9998c(Object obj, Object obj2, long j) {
        List list = (List) rp3.m7368v(obj2, j);
        List m10837f = m10837f(obj, j, list.size());
        int size = m10837f.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            m10837f.addAll(list);
        }
        if (size > 0) {
            list = m10837f;
        }
        rp3.m7367w(obj, j, list);
    }
}
