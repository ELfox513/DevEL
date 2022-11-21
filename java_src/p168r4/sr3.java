package p168r4;
/* renamed from: r4.sr3 */
/* loaded from: classes2.dex */
public final class sr3<T> implements vr3<T> {

    /* renamed from: a */
    public is3<T> f31491a;

    /* renamed from: b */
    public static <T> void m7017b(is3<T> is3Var, is3<T> is3Var2) {
        sr3 sr3Var = (sr3) is3Var;
        if (sr3Var.f31491a != null) {
            throw new IllegalStateException();
        }
        sr3Var.f31491a = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final T mo4079a() {
        is3<T> is3Var = this.f31491a;
        if (is3Var != null) {
            return is3Var.mo4079a();
        }
        throw new IllegalStateException();
    }
}
