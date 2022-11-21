package p168r4;

import java.util.HashMap;
/* renamed from: r4.a0 */
/* loaded from: classes2.dex */
public final class C5561a0 extends ec4<Integer, Long> {

    /* renamed from: b */
    public long f20322b;

    /* renamed from: c */
    public long f20323c;

    @Override // p168r4.ec4
    /* renamed from: a */
    public final HashMap<Integer, Long> mo4497a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f20322b));
        hashMap.put(1, Long.valueOf(this.f20323c));
        return hashMap;
    }

    public C5561a0(String str) {
        this.f20322b = -1L;
        this.f20323c = -1L;
        HashMap m11813b = ec4.m11813b(str);
        if (m11813b != null) {
            this.f20322b = ((Long) m11813b.get(0)).longValue();
            this.f20323c = ((Long) m11813b.get(1)).longValue();
        }
    }
}
