package p168r4;
/* renamed from: r4.el3 */
/* loaded from: classes2.dex */
public final class el3 extends hl3 {

    /* renamed from: q */
    public final int f23079q;

    /* renamed from: r */
    public final int f23080r;

    @Override // p168r4.hl3
    /* renamed from: U */
    public final int mo10879U() {
        return this.f23079q;
    }

    @Override // p168r4.hl3, p168r4.ll3
    /* renamed from: m */
    public final byte mo7748m(int i) {
        return this.f24677p[this.f23079q + i];
    }

    @Override // p168r4.hl3, p168r4.ll3
    /* renamed from: o */
    public final int mo7747o() {
        return this.f23080r;
    }

    @Override // p168r4.hl3, p168r4.ll3
    /* renamed from: r */
    public final void mo7746r(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f24677p, this.f23079q + i, bArr, i2, i3);
    }

    @Override // p168r4.hl3, p168r4.ll3
    /* renamed from: l */
    public final byte mo7749l(int i) {
        ll3.m9622i(i, this.f23080r);
        return this.f24677p[this.f23079q + i];
    }

    public el3(byte[] bArr, int i, int i2) {
        super(bArr);
        ll3.m9621k(i, i + i2, bArr.length);
        this.f23079q = i;
        this.f23080r = i2;
    }
}
