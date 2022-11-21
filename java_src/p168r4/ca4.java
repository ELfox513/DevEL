package p168r4;
/* renamed from: r4.ca4 */
/* loaded from: classes2.dex */
public final class ca4 extends fr3 {

    /* renamed from: t */
    public static final mr3 f21458t = mr3.m9276b(ca4.class);

    @Override // p168r4.fr3, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p168r4.fr3
    public final String toString() {
        String obj = this.f23655b.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    public ca4(gr3 gr3Var, ba4 ba4Var) {
        m11380g(gr3Var, gr3Var.mo4150a(), ba4Var);
    }
}
