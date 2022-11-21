package p168r4;

import android.net.Uri;
import java.util.List;
import java.util.Map;
/* renamed from: r4.gr0 */
/* loaded from: classes2.dex */
public final class gr0 implements InterfaceC6087o8 {

    /* renamed from: a */
    public final InterfaceC6087o8 f24194a;

    /* renamed from: b */
    public final long f24195b;

    /* renamed from: c */
    public final InterfaceC6087o8 f24196c;

    /* renamed from: d */
    public long f24197d;

    /* renamed from: e */
    public Uri f24198e;

    public gr0(InterfaceC6087o8 interfaceC6087o8, int i, InterfaceC6087o8 interfaceC6087o82) {
        this.f24194a = interfaceC6087o8;
        this.f24195b = i;
        this.f24196c = interfaceC6087o82;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: c */
    public final void mo5984c(InterfaceC5844ho interfaceC5844ho) {
    }

    @Override // p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public final Map<String, List<String>> mo5983d() {
        return s33.m7225a();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f24198e;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.f24197d;
        long j2 = this.f24195b;
        if (j < j2) {
            int mo4060b = this.f24194a.mo4060b(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.f24197d + mo4060b;
            this.f24197d = j3;
            i3 = mo4060b;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= this.f24195b) {
            int mo4060b2 = this.f24196c.mo4060b(bArr, i + i3, i2 - i3);
            this.f24197d += mo4060b2;
            return i3 + mo4060b2;
        }
        return i3;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        long j;
        C6350vc c6350vc2;
        long j2;
        long j3;
        this.f24198e = c6350vc.f32683a;
        long j4 = c6350vc.f32688f;
        long j5 = this.f24195b;
        C6350vc c6350vc3 = null;
        if (j4 >= j5) {
            c6350vc2 = null;
        } else {
            long j6 = c6350vc.f32689g;
            if (j6 != -1) {
                j = Math.min(j6, j5 - j4);
            } else {
                j = j5 - j4;
            }
            c6350vc2 = new C6350vc(c6350vc.f32683a, null, j4, j4, j, null, 0);
        }
        long j7 = c6350vc.f32689g;
        if (j7 == -1 || c6350vc.f32688f + j7 > this.f24195b) {
            long max = Math.max(this.f24195b, c6350vc.f32688f);
            long j8 = c6350vc.f32689g;
            if (j8 != -1) {
                j2 = Math.min(j8, (c6350vc.f32688f + j8) - this.f24195b);
            } else {
                j2 = -1;
            }
            c6350vc3 = new C6350vc(c6350vc.f32683a, null, max, max, j2, null, 0);
        }
        long j9 = 0;
        if (c6350vc2 != null) {
            j3 = this.f24194a.mo4059g(c6350vc2);
        } else {
            j3 = 0;
        }
        if (c6350vc3 != null) {
            j9 = this.f24196c.mo4059g(c6350vc3);
        }
        this.f24197d = c6350vc.f32688f;
        if (j3 == -1 || j9 == -1) {
            return -1L;
        }
        return j3 + j9;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f24194a.mo4058h();
        this.f24196c.mo4058h();
    }
}
