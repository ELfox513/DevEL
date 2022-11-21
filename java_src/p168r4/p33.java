package p168r4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.p33 */
/* loaded from: classes2.dex */
public final class p33<K, V> extends u33<K, V> {
    /* renamed from: b */
    public final q33<K, V> m8490b() {
        Set<Map.Entry<K, Collection<V>>> entrySet = this.f32162a.entrySet();
        if (entrySet.isEmpty()) {
            return d33.f22066q;
        }
        r33 r33Var = new r33(entrySet.size());
        int i = 0;
        for (Map.Entry<K, Collection<V>> entry : entrySet) {
            K key = entry.getKey();
            o33 m8893x = o33.m8893x(entry.getValue());
            if (!m8893x.isEmpty()) {
                r33Var.m7617a(key, m8893x);
                i += m8893x.size();
            }
        }
        return new q33<>(r33Var.m7615c(), i);
    }

    /* renamed from: a */
    public final p33<K, V> m8491a(K k, V... vArr) {
        List<V> asList = Arrays.asList(vArr);
        Collection<V> collection = this.f32162a.get(k);
        if (collection != null) {
            for (V v : asList) {
                m23.m9514a(k, v);
                collection.add(v);
            }
        } else {
            Iterator it = asList.iterator();
            if (it.hasNext()) {
                ArrayList arrayList = new ArrayList();
                while (it.hasNext()) {
                    Object next = it.next();
                    m23.m9514a(k, next);
                    arrayList.add(next);
                }
                this.f32162a.put(k, arrayList);
            }
        }
        return this;
    }
}
