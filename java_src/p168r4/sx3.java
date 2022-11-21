package p168r4;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: r4.sx3 */
/* loaded from: classes2.dex */
public final class sx3 implements InterfaceC6087o8 {

    /* renamed from: a */
    public final InterfaceC6087o8 f31575a;

    /* renamed from: b */
    public long f31576b;

    /* renamed from: c */
    public Uri f31577c;

    /* renamed from: d */
    public Map<String, List<String>> f31578d;

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        int mo4060b = this.f31575a.mo4060b(bArr, i, i2);
        if (mo4060b != -1) {
            this.f31576b += mo4060b;
        }
        return mo4060b;
    }

    @Override // p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public final Map<String, List<String>> mo5983d() {
        return this.f31575a.mo5983d();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f31575a.mo4058h();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f31575a.mo4057j();
    }

    /* renamed from: n */
    public final long m6953n() {
        return this.f31576b;
    }

    /* renamed from: o */
    public final Uri m6952o() {
        return this.f31577c;
    }

    /* renamed from: r */
    public final Map<String, List<String>> m6951r() {
        return this.f31578d;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        this.f31577c = c6350vc.f32683a;
        this.f31578d = Collections.emptyMap();
        long mo4059g = this.f31575a.mo4059g(c6350vc);
        Uri mo4057j = mo4057j();
        mo4057j.getClass();
        this.f31577c = mo4057j;
        this.f31578d = mo5983d();
        return mo4059g;
    }

    public sx3(InterfaceC6087o8 interfaceC6087o8) {
        interfaceC6087o8.getClass();
        this.f31575a = interfaceC6087o8;
        this.f31577c = Uri.EMPTY;
        this.f31578d = Collections.emptyMap();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: c */
    public final void mo5984c(InterfaceC5844ho interfaceC5844ho) {
        interfaceC5844ho.getClass();
        this.f31575a.mo5984c(interfaceC5844ho);
    }
}
