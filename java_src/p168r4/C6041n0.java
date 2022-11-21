package p168r4;

import java.util.HashMap;
/* renamed from: r4.n0 */
/* loaded from: classes2.dex */
public final class C6041n0 extends ec4<Integer, Object> {

    /* renamed from: b */
    public Long f28043b;

    /* renamed from: c */
    public Boolean f28044c;

    /* renamed from: d */
    public Boolean f28045d;

    @Override // p168r4.ec4
    /* renamed from: a */
    public final HashMap<Integer, Object> mo4497a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f28043b);
        hashMap.put(1, this.f28044c);
        hashMap.put(2, this.f28045d);
        return hashMap;
    }

    public C6041n0(String str) {
        HashMap m11813b = ec4.m11813b(str);
        if (m11813b != null) {
            this.f28043b = (Long) m11813b.get(0);
            this.f28044c = (Boolean) m11813b.get(1);
            this.f28045d = (Boolean) m11813b.get(2);
        }
    }
}
