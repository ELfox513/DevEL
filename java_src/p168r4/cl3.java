package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Comparator;
import p218x1.C7221i;
/* renamed from: r4.cl3 */
/* loaded from: classes2.dex */
public final class cl3 implements Comparator<ll3> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(ll3 ll3Var, ll3 ll3Var2) {
        ll3 ll3Var3 = ll3Var;
        ll3 ll3Var4 = ll3Var2;
        fl3 it = ll3Var3.iterator();
        fl3 it2 = ll3Var4.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int m2085a = C7221i.m2085a(it.zza() & DefaultClassResolver.NAME, it2.zza() & DefaultClassResolver.NAME);
            if (m2085a != 0) {
                return m2085a;
            }
        }
        return C7221i.m2085a(ll3Var3.mo7747o(), ll3Var4.mo7747o());
    }
}
