package p168r4;

import java.util.HashMap;
/* renamed from: r4.gc4 */
/* loaded from: classes2.dex */
public final class gc4 extends ec4<Integer, Object> {

    /* renamed from: b */
    public String f23963b;

    /* renamed from: c */
    public long f23964c;

    /* renamed from: d */
    public String f23965d;

    /* renamed from: e */
    public String f23966e;

    /* renamed from: f */
    public String f23967f;

    public gc4() {
        this.f23963b = "E";
        this.f23964c = -1L;
        this.f23965d = "E";
        this.f23966e = "E";
        this.f23967f = "E";
    }

    public gc4(String str) {
        this.f23963b = "E";
        this.f23964c = -1L;
        this.f23965d = "E";
        this.f23966e = "E";
        this.f23967f = "E";
        HashMap m11813b = ec4.m11813b(str);
        if (m11813b != null) {
            this.f23963b = m11813b.get(0) == null ? "E" : (String) m11813b.get(0);
            this.f23964c = m11813b.get(1) != null ? ((Long) m11813b.get(1)).longValue() : -1L;
            this.f23965d = m11813b.get(2) == null ? "E" : (String) m11813b.get(2);
            this.f23966e = m11813b.get(3) == null ? "E" : (String) m11813b.get(3);
            this.f23967f = m11813b.get(4) != null ? (String) m11813b.get(4) : "E";
        }
    }

    @Override // p168r4.ec4
    /* renamed from: a */
    public final HashMap<Integer, Object> mo4497a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f23963b);
        hashMap.put(4, this.f23967f);
        hashMap.put(3, this.f23966e);
        hashMap.put(2, this.f23965d);
        hashMap.put(1, Long.valueOf(this.f23964c));
        return hashMap;
    }
}
