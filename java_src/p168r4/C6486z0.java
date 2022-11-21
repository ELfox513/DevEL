package p168r4;

import java.util.HashMap;
/* renamed from: r4.z0 */
/* loaded from: classes2.dex */
public final class C6486z0 extends ec4<Integer, Long> {

    /* renamed from: b */
    public Long f34265b;

    /* renamed from: c */
    public Long f34266c;

    /* renamed from: d */
    public Long f34267d;

    /* renamed from: e */
    public Long f34268e;

    @Override // p168r4.ec4
    /* renamed from: a */
    public final HashMap<Integer, Long> mo4497a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f34265b);
        hashMap.put(1, this.f34266c);
        hashMap.put(2, this.f34267d);
        hashMap.put(3, this.f34268e);
        return hashMap;
    }

    public C6486z0(String str) {
        HashMap m11813b = ec4.m11813b(str);
        if (m11813b != null) {
            this.f34265b = (Long) m11813b.get(0);
            this.f34266c = (Long) m11813b.get(1);
            this.f34267d = (Long) m11813b.get(2);
            this.f34268e = (Long) m11813b.get(3);
        }
    }
}
