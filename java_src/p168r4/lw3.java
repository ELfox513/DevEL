package p168r4;

import android.net.Uri;
/* renamed from: r4.lw3 */
/* loaded from: classes2.dex */
public final class lw3 extends AbstractC5898j5 {

    /* renamed from: e */
    public final byte[] f27407e;

    /* renamed from: f */
    public Uri f27408f;

    /* renamed from: g */
    public int f27409g;

    /* renamed from: h */
    public int f27410h;

    /* renamed from: i */
    public boolean f27411i;

    public lw3(byte[] bArr) {
        super(false);
        bArr.getClass();
        C5903ja.m10374a(bArr.length > 0);
        this.f27407e = bArr;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        if (this.f27411i) {
            this.f27411i = false;
            m10419s();
        }
        this.f27408f = null;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f27408f;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f27410h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f27407e, this.f27409g, bArr, i, min);
        this.f27409g += min;
        this.f27410h -= min;
        m10420r(min);
        return min;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        this.f27408f = c6350vc.f32683a;
        m10422n(c6350vc);
        long j = c6350vc.f32688f;
        int length = this.f27407e.length;
        if (j <= length) {
            int i = (int) j;
            this.f27409g = i;
            int i2 = length - i;
            this.f27410h = i2;
            long j2 = c6350vc.f32689g;
            if (j2 != -1) {
                this.f27410h = (int) Math.min(i2, j2);
            }
            this.f27411i = true;
            m10421o(c6350vc);
            long j3 = c6350vc.f32689g;
            if (j3 != -1) {
                return j3;
            }
            return this.f27410h;
        }
        throw new C6125p9(2008);
    }
}
