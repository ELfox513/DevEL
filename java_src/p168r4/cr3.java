package p168r4;

import java.nio.ByteBuffer;
/* renamed from: r4.cr3 */
/* loaded from: classes2.dex */
public class cr3 extends fr3 implements ea4 {

    /* renamed from: t */
    public fa4 f21663t;

    /* renamed from: u */
    public final String f21664u = "moov";

    public cr3(String str) {
    }

    @Override // p168r4.ea4
    /* renamed from: a */
    public final String mo11836a() {
        return this.f21664u;
    }

    @Override // p168r4.ea4
    /* renamed from: c */
    public final void mo11835c(fa4 fa4Var) {
        this.f21663t = fa4Var;
    }

    @Override // p168r4.ea4
    /* renamed from: e */
    public final void mo11834e(gr3 gr3Var, ByteBuffer byteBuffer, long j, ba4 ba4Var) {
        gr3Var.mo4149b();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.f23655b = gr3Var;
        this.f23657k = gr3Var.mo4149b();
        gr3Var.mo4147x(gr3Var.mo4149b() + j);
        this.f23658p = gr3Var.mo4149b();
        this.f23654a = ba4Var;
    }
}
