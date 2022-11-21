package p168r4;

import java.util.List;
/* renamed from: r4.in3 */
/* loaded from: classes2.dex */
public final class in3 extends kn3 {
    public /* synthetic */ in3(jn3 jn3Var) {
        super(null);
    }

    @Override // p168r4.kn3
    /* renamed from: a */
    public final <L> List<L> mo10000a(Object obj, long j) {
        int i;
        ym3 ym3Var = (ym3) rp3.m7368v(obj, j);
        if (!ym3Var.zza()) {
            int size = ym3Var.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size + size;
            }
            ym3 mo4192S = ym3Var.mo4192S(i);
            rp3.m7367w(obj, j, mo4192S);
            return mo4192S;
        }
        return ym3Var;
    }

    @Override // p168r4.kn3
    /* renamed from: b */
    public final void mo9999b(Object obj, long j) {
        ((ym3) rp3.m7368v(obj, j)).mo4629a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.List] */
    @Override // p168r4.kn3
    /* renamed from: c */
    public final <E> void mo9998c(Object obj, Object obj2, long j) {
        ym3<E> ym3Var = (ym3) rp3.m7368v(obj, j);
        ym3<E> ym3Var2 = (ym3) rp3.m7368v(obj2, j);
        int size = ym3Var.size();
        int size2 = ym3Var2.size();
        ym3<E> ym3Var3 = ym3Var;
        ym3Var3 = ym3Var;
        if (size > 0 && size2 > 0) {
            boolean zza = ym3Var.zza();
            ym3<E> ym3Var4 = ym3Var;
            if (!zza) {
                ym3Var4 = ym3Var.mo4192S(size2 + size);
            }
            ym3Var4.addAll(ym3Var2);
            ym3Var3 = ym3Var4;
        }
        if (size > 0) {
            ym3Var2 = ym3Var3;
        }
        rp3.m7367w(obj, j, ym3Var2);
    }
}
