package p168r4;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* renamed from: r4.vs3 */
/* loaded from: classes2.dex */
public final class vs3 implements InterfaceC6087o8 {

    /* renamed from: a */
    public final InterfaceC6087o8 f32798a;

    /* renamed from: b */
    public final int f32799b;

    /* renamed from: c */
    public final us3 f32800c;

    /* renamed from: d */
    public final byte[] f32801d;

    /* renamed from: e */
    public int f32802e;

    public vs3(InterfaceC6087o8 interfaceC6087o8, int i, us3 us3Var) {
        C5903ja.m10374a(i > 0);
        this.f32798a = interfaceC6087o8;
        this.f32799b = i;
        this.f32800c = us3Var;
        this.f32801d = new byte[1];
        this.f32802e = i;
    }

    @Override // p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public final Map<String, List<String>> mo5983d() {
        return this.f32798a.mo5983d();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        throw new UnsupportedOperationException();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        throw new UnsupportedOperationException();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f32798a.mo4057j();
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        int i3 = this.f32802e;
        if (i3 == 0) {
            int i4 = 0;
            if (this.f32798a.mo4060b(this.f32801d, 0, 1) != -1) {
                int i5 = (this.f32801d[0] & 255) << 4;
                if (i5 != 0) {
                    byte[] bArr2 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int mo4060b = this.f32798a.mo4060b(bArr2, i4, i6);
                        if (mo4060b != -1) {
                            i4 += mo4060b;
                            i6 -= mo4060b;
                        }
                    }
                    while (i5 > 0) {
                        int i7 = i5 - 1;
                        if (bArr2[i7] != 0) {
                            break;
                        }
                        i5 = i7;
                    }
                    if (i5 > 0) {
                        this.f32800c.mo6382a(new C6423xb(bArr2, i5));
                    }
                }
                i3 = this.f32799b;
                this.f32802e = i3;
            }
            return -1;
        }
        int mo4060b2 = this.f32798a.mo4060b(bArr, i, Math.min(i3, i2));
        if (mo4060b2 != -1) {
            this.f32802e -= mo4060b2;
        }
        return mo4060b2;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: c */
    public final void mo5984c(InterfaceC5844ho interfaceC5844ho) {
        interfaceC5844ho.getClass();
        this.f32798a.mo5984c(interfaceC5844ho);
    }
}
