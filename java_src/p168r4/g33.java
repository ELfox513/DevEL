package p168r4;
/* renamed from: r4.g33 */
/* loaded from: classes2.dex */
public final class g33 {
    /* renamed from: a */
    public static int m11298a(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: b */
    public static int m11297b(Object obj) {
        return m11298a(obj == null ? 0 : obj.hashCode());
    }
}
