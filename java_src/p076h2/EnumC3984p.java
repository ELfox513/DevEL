package p076h2;

import android.util.SparseArray;
/* renamed from: h2.p */
/* loaded from: classes.dex */
public enum EnumC3984p {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    

    /* renamed from: s */
    public static final SparseArray<EnumC3984p> f17411s;

    /* renamed from: a */
    public final int f17413a;

    static {
        EnumC3984p enumC3984p = DEFAULT;
        EnumC3984p enumC3984p2 = UNMETERED_ONLY;
        EnumC3984p enumC3984p3 = UNMETERED_OR_DAILY;
        EnumC3984p enumC3984p4 = FAST_IF_RADIO_AWAKE;
        EnumC3984p enumC3984p5 = NEVER;
        EnumC3984p enumC3984p6 = UNRECOGNIZED;
        SparseArray<EnumC3984p> sparseArray = new SparseArray<>();
        f17411s = sparseArray;
        sparseArray.put(0, enumC3984p);
        sparseArray.put(1, enumC3984p2);
        sparseArray.put(2, enumC3984p3);
        sparseArray.put(3, enumC3984p4);
        sparseArray.put(4, enumC3984p5);
        sparseArray.put(-1, enumC3984p6);
    }

    EnumC3984p(int i) {
        this.f17413a = i;
    }
}
