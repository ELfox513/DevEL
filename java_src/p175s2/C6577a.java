package p175s2;

import android.util.SparseArray;
import java.util.HashMap;
import p058f2.EnumC3505d;
/* renamed from: s2.a */
/* loaded from: classes.dex */
public final class C6577a {

    /* renamed from: a */
    public static SparseArray<EnumC3505d> f35124a = new SparseArray<>();

    /* renamed from: b */
    public static HashMap<EnumC3505d, Integer> f35125b;

    static {
        HashMap<EnumC3505d, Integer> hashMap = new HashMap<>();
        f35125b = hashMap;
        hashMap.put(EnumC3505d.DEFAULT, 0);
        f35125b.put(EnumC3505d.VERY_LOW, 1);
        f35125b.put(EnumC3505d.HIGHEST, 2);
        for (EnumC3505d enumC3505d : f35125b.keySet()) {
            f35124a.append(f35125b.get(enumC3505d).intValue(), enumC3505d);
        }
    }

    /* renamed from: a */
    public static int m3882a(EnumC3505d enumC3505d) {
        Integer num = f35125b.get(enumC3505d);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + enumC3505d);
    }

    /* renamed from: b */
    public static EnumC3505d m3881b(int i) {
        EnumC3505d enumC3505d = f35124a.get(i);
        if (enumC3505d != null) {
            return enumC3505d;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i);
    }
}
