package p168r4;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import p024c2.EnumC1035a;
import p024c2.EnumC1036b;
import p040d2.C3283a;
/* renamed from: r4.nc0 */
/* loaded from: classes2.dex */
public final class nc0 {
    /* renamed from: a */
    public static int m9124a(EnumC1035a enumC1035a) {
        EnumC1035a enumC1035a2 = EnumC1035a.INVALID_REQUEST;
        EnumC1036b enumC1036b = EnumC1036b.UNKNOWN;
        int ordinal = enumC1035a.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return ordinal != 2 ? 0 : 2;
            }
            return 3;
        }
        return 1;
    }

    /* renamed from: b */
    public static C3283a m9123b(C6293tt c6293tt, boolean z) {
        HashSet hashSet;
        EnumC1036b enumC1036b;
        List<String> list = c6293tt.f31998p;
        if (list != null) {
            hashSet = new HashSet(list);
        } else {
            hashSet = null;
        }
        HashSet hashSet2 = hashSet;
        Date date = new Date(c6293tt.f31995b);
        int i = c6293tt.f31997k;
        if (i != 1) {
            if (i != 2) {
                enumC1036b = EnumC1036b.UNKNOWN;
            } else {
                enumC1036b = EnumC1036b.FEMALE;
            }
        } else {
            enumC1036b = EnumC1036b.MALE;
        }
        return new C3283a(date, enumC1036b, hashSet2, z, c6293tt.f32004v);
    }
}
