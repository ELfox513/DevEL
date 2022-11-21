package p168r4;

import android.net.Uri;
import android.util.Base64;
import java.net.URLDecoder;
/* renamed from: r4.pw3 */
/* loaded from: classes2.dex */
public final class pw3 extends AbstractC5898j5 {

    /* renamed from: e */
    public C6350vc f29836e;

    /* renamed from: f */
    public byte[] f29837f;

    /* renamed from: g */
    public int f29838g;

    /* renamed from: h */
    public int f29839h;

    public pw3() {
        super(false);
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        if (this.f29837f != null) {
            this.f29837f = null;
            m10419s();
        }
        this.f29836e = null;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        C6350vc c6350vc = this.f29836e;
        if (c6350vc != null) {
            return c6350vc.f32683a;
        }
        return null;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f29839h;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(C5979lc.m9728I(this.f29837f), this.f29838g, bArr, i, min);
        this.f29838g += min;
        this.f29839h -= min;
        m10420r(min);
        return min;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        String str;
        String str2;
        m10422n(c6350vc);
        this.f29836e = c6350vc;
        Uri uri = c6350vc.f32683a;
        String scheme = uri.getScheme();
        boolean equals = "data".equals(scheme);
        String valueOf = String.valueOf(scheme);
        if (valueOf.length() != 0) {
            str = "Unsupported scheme: ".concat(valueOf);
        } else {
            str = new String("Unsupported scheme: ");
        }
        C5903ja.m10373b(equals, str);
        String[] m9712Y = C5979lc.m9712Y(uri.getSchemeSpecificPart(), ",");
        if (m9712Y.length == 2) {
            String str3 = m9712Y[1];
            if (m9712Y[0].contains(";base64")) {
                try {
                    this.f29837f = Base64.decode(str3, 0);
                } catch (IllegalArgumentException e) {
                    String valueOf2 = String.valueOf(str3);
                    if (valueOf2.length() != 0) {
                        str2 = "Error while parsing Base64 encoded string: ".concat(valueOf2);
                    } else {
                        str2 = new String("Error while parsing Base64 encoded string: ");
                    }
                    throw C5973l6.m9788a(str2, e);
                }
            } else {
                this.f29837f = C5979lc.m9713X(URLDecoder.decode(str3, n03.f28054a.name()));
            }
            long j = c6350vc.f32688f;
            int length = this.f29837f.length;
            if (j <= length) {
                int i = (int) j;
                this.f29838g = i;
                int i2 = length - i;
                this.f29839h = i2;
                long j2 = c6350vc.f32689g;
                if (j2 != -1) {
                    this.f29839h = (int) Math.min(i2, j2);
                }
                m10421o(c6350vc);
                long j3 = c6350vc.f32689g;
                if (j3 != -1) {
                    return j3;
                }
                return this.f29839h;
            }
            this.f29837f = null;
            throw new C6125p9(2008);
        }
        throw C5973l6.m9788a("Unexpected URI format: ".concat(String.valueOf(uri)), null);
    }
}
