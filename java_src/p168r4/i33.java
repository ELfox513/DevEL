package p168r4;
/* renamed from: r4.i33 */
/* loaded from: classes2.dex */
public abstract class i33<E> {
    /* renamed from: b */
    public static int m10729b(int i, int i2) {
        int i3 = i + (i >> 1) + 1;
        if (i3 < i2) {
            int highestOneBit = Integer.highestOneBit(i2 - 1);
            i3 = highestOneBit + highestOneBit;
        }
        if (i3 < 0) {
            return Integer.MAX_VALUE;
        }
        return i3;
    }

    /* renamed from: a */
    public abstract i33<E> mo5509a(E e);
}
