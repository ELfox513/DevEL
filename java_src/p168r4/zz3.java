package p168r4;

import java.io.EOFException;
/* renamed from: r4.zz3 */
/* loaded from: classes2.dex */
public final class zz3 implements d14 {

    /* renamed from: a */
    public final byte[] f34799a = new byte[4096];

    @Override // p168r4.d14
    /* renamed from: a */
    public final void mo4009a(C6423xb c6423xb, int i) {
        b14.m12888b(this, c6423xb, i);
    }

    @Override // p168r4.d14
    /* renamed from: b */
    public final int mo4008b(InterfaceC5936k6 interfaceC5936k6, int i, boolean z) {
        return b14.m12889a(this, interfaceC5936k6, i, true);
    }

    @Override // p168r4.d14
    /* renamed from: c */
    public final void mo4007c(C6423xb c6423xb, int i, int i2) {
        c6423xb.m5400s(i);
    }

    @Override // p168r4.d14
    /* renamed from: e */
    public final void mo4005e(long j, int i, int i2, int i3, c14 c14Var) {
    }

    @Override // p168r4.d14
    /* renamed from: f */
    public final void mo4004f(C5713e5 c5713e5) {
    }

    @Override // p168r4.d14
    /* renamed from: d */
    public final int mo4006d(InterfaceC5936k6 interfaceC5936k6, int i, boolean z, int i2) {
        int mo4060b = interfaceC5936k6.mo4060b(this.f34799a, 0, Math.min(4096, i));
        if (mo4060b == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return mo4060b;
    }
}
