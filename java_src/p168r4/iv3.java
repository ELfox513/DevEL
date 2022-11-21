package p168r4;

import java.util.Comparator;
/* renamed from: r4.iv3 */
/* loaded from: classes2.dex */
public final /* synthetic */ class iv3 implements Comparator {

    /* renamed from: a */
    public static final Comparator f25483a = new iv3();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Integer num = (Integer) obj;
        Integer num2 = (Integer) obj2;
        b53<Integer> b53Var = uv3.f32456f;
        if (num.intValue() == -1) {
            if (num2.intValue() != -1) {
                return -1;
            }
            return 0;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            return num.intValue() - num2.intValue();
        }
    }
}
