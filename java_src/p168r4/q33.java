package p168r4;
/* renamed from: r4.q33 */
/* loaded from: classes2.dex */
public class q33<K, V> extends w33<K, V> implements d43<K, V> {
    public q33(s33<K, o33<V>> s33Var, int i) {
        super(s33Var, i);
    }

    /* renamed from: i */
    public final o33<V> m8037i(K k) {
        o33<V> o33Var = (o33) this.f33052k.get(k);
        if (o33Var == null) {
            return o33.m8900q();
        }
        return o33Var;
    }
}
