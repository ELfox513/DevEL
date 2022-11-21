package p168r4;

import java.util.HashMap;
/* renamed from: r4.q0 */
/* loaded from: classes2.dex */
public final class C6153q0 extends ec4<Integer, Long> {

    /* renamed from: b */
    public Long f29870b;

    /* renamed from: c */
    public Long f29871c;

    @Override // p168r4.ec4
    /* renamed from: a */
    public final HashMap<Integer, Long> mo4497a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f29870b);
        hashMap.put(1, this.f29871c);
        return hashMap;
    }

    public C6153q0(String str) {
        HashMap m11813b = ec4.m11813b(str);
        if (m11813b != null) {
            this.f29870b = (Long) m11813b.get(0);
            this.f29871c = (Long) m11813b.get(1);
        }
    }
}
