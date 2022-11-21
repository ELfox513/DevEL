package p183t1;

import java.util.HashMap;
/* renamed from: t1.a */
/* loaded from: classes.dex */
public final class C6645a {

    /* renamed from: a */
    public final HashMap<Integer, Integer> f35239a = new HashMap<>();

    /* renamed from: b */
    public void m3710b(int i, int i2) {
        this.f35239a.put(Integer.valueOf(i), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public int m3711a(int i) {
        Integer num = this.f35239a.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }
}
