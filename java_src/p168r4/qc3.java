package p168r4;
/* renamed from: r4.qc3 */
/* loaded from: classes2.dex */
public final class qc3 {

    /* renamed from: a */
    public final c93 f30086a;

    /* renamed from: b */
    public final f93 f30087b;

    public qc3(c93 c93Var) {
        this.f30086a = c93Var;
        this.f30087b = null;
    }

    public qc3(f93 f93Var) {
        this.f30086a = null;
        this.f30087b = f93Var;
    }

    /* renamed from: a */
    public final byte[] m7884a(byte[] bArr, byte[] bArr2) {
        c93 c93Var = this.f30086a;
        if (c93Var != null) {
            return c93Var.mo6807a(bArr, bArr2);
        }
        return this.f30087b.mo6512a(bArr, bArr2);
    }
}
