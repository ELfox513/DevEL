package p168r4;

import java.util.concurrent.Callable;
/* renamed from: r4.zz1 */
/* loaded from: classes2.dex */
public final /* synthetic */ class zz1 implements Callable {

    /* renamed from: a */
    public final xz1 f34798a;

    public zz1(xz1 xz1Var) {
        this.f34798a = xz1Var;
    }

    /* renamed from: a */
    public static Callable m4010a(xz1 xz1Var) {
        return new zz1(xz1Var);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f34798a.getWritableDatabase();
    }
}
