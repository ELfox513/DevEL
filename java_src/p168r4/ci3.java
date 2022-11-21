package p168r4;
/* renamed from: r4.ci3 */
/* loaded from: classes2.dex */
public final class ci3 {

    /* renamed from: a */
    public static final sm3<ci3> f21543a = new bi3();

    /* renamed from: a */
    public static int m12459a(int i) {
        if (i != 1) {
            return i - 2;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    /* renamed from: b */
    public static int m12458b(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return i != 4 ? 0 : 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 3;
        }
        return 2;
    }
}
