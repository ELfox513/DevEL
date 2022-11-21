package p168r4;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: r4.vw3 */
/* loaded from: classes2.dex */
public final class vw3 implements InterfaceC6087o8 {

    /* renamed from: a */
    public final Context f32953a;

    /* renamed from: b */
    public final List<InterfaceC5844ho> f32954b = new ArrayList();

    /* renamed from: c */
    public final InterfaceC6087o8 f32955c;

    /* renamed from: d */
    public InterfaceC6087o8 f32956d;

    /* renamed from: e */
    public InterfaceC6087o8 f32957e;

    /* renamed from: f */
    public InterfaceC6087o8 f32958f;

    /* renamed from: g */
    public InterfaceC6087o8 f32959g;

    /* renamed from: h */
    public InterfaceC6087o8 f32960h;

    /* renamed from: i */
    public InterfaceC6087o8 f32961i;

    /* renamed from: j */
    public InterfaceC6087o8 f32962j;

    /* renamed from: k */
    public InterfaceC6087o8 f32963k;

    /* renamed from: r */
    public static final void m5980r(InterfaceC6087o8 interfaceC6087o8, InterfaceC5844ho interfaceC5844ho) {
        if (interfaceC6087o8 != null) {
            interfaceC6087o8.mo5984c(interfaceC5844ho);
        }
    }

    @Override // p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public final Map<String, List<String>> mo5983d() {
        InterfaceC6087o8 interfaceC6087o8 = this.f32963k;
        return interfaceC6087o8 == null ? Collections.emptyMap() : interfaceC6087o8.mo5983d();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        InterfaceC6087o8 interfaceC6087o8 = this.f32963k;
        if (interfaceC6087o8 == null) {
            return null;
        }
        return interfaceC6087o8.mo4057j();
    }

    /* renamed from: o */
    public final void m5981o(InterfaceC6087o8 interfaceC6087o8) {
        for (int i = 0; i < this.f32954b.size(); i++) {
            interfaceC6087o8.mo5984c(this.f32954b.get(i));
        }
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        InterfaceC6087o8 interfaceC6087o8 = this.f32963k;
        interfaceC6087o8.getClass();
        return interfaceC6087o8.mo4060b(bArr, i, i2);
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        boolean z;
        InterfaceC6087o8 interfaceC6087o8;
        if (this.f32963k == null) {
            z = true;
        } else {
            z = false;
        }
        C5903ja.m10371d(z);
        String scheme = c6350vc.f32683a.getScheme();
        if (C5979lc.m9730G(c6350vc.f32683a)) {
            String path = c6350vc.f32683a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.f32963k = m5982n();
            } else {
                if (this.f32956d == null) {
                    zw3 zw3Var = new zw3();
                    this.f32956d = zw3Var;
                    m5981o(zw3Var);
                }
                this.f32963k = this.f32956d;
            }
        } else if ("asset".equals(scheme)) {
            this.f32963k = m5982n();
        } else if ("content".equals(scheme)) {
            if (this.f32958f == null) {
                ow3 ow3Var = new ow3(this.f32953a);
                this.f32958f = ow3Var;
                m5981o(ow3Var);
            }
            this.f32963k = this.f32958f;
        } else if ("rtmp".equals(scheme)) {
            if (this.f32959g == null) {
                try {
                    InterfaceC6087o8 interfaceC6087o82 = (InterfaceC6087o8) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                    this.f32959g = interfaceC6087o82;
                    m5981o(interfaceC6087o82);
                } catch (ClassNotFoundException unused) {
                    Log.w("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating RTMP extension", e);
                }
                if (this.f32959g == null) {
                    this.f32959g = this.f32955c;
                }
            }
            this.f32963k = this.f32959g;
        } else if ("udp".equals(scheme)) {
            if (this.f32960h == null) {
                ux3 ux3Var = new ux3(2000);
                this.f32960h = ux3Var;
                m5981o(ux3Var);
            }
            this.f32963k = this.f32960h;
        } else if ("data".equals(scheme)) {
            if (this.f32961i == null) {
                pw3 pw3Var = new pw3();
                this.f32961i = pw3Var;
                m5981o(pw3Var);
            }
            this.f32963k = this.f32961i;
        } else {
            if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
                interfaceC6087o8 = this.f32955c;
            } else {
                if (this.f32962j == null) {
                    mx3 mx3Var = new mx3(this.f32953a);
                    this.f32962j = mx3Var;
                    m5981o(mx3Var);
                }
                interfaceC6087o8 = this.f32962j;
            }
            this.f32963k = interfaceC6087o8;
        }
        return this.f32963k.mo4059g(c6350vc);
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        InterfaceC6087o8 interfaceC6087o8 = this.f32963k;
        if (interfaceC6087o8 != null) {
            try {
                interfaceC6087o8.mo4058h();
            } finally {
                this.f32963k = null;
            }
        }
    }

    /* renamed from: n */
    public final InterfaceC6087o8 m5982n() {
        if (this.f32957e == null) {
            fw3 fw3Var = new fw3(this.f32953a);
            this.f32957e = fw3Var;
            m5981o(fw3Var);
        }
        return this.f32957e;
    }

    public vw3(Context context, InterfaceC6087o8 interfaceC6087o8) {
        this.f32953a = context.getApplicationContext();
        this.f32955c = interfaceC6087o8;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: c */
    public final void mo5984c(InterfaceC5844ho interfaceC5844ho) {
        interfaceC5844ho.getClass();
        this.f32955c.mo5984c(interfaceC5844ho);
        this.f32954b.add(interfaceC5844ho);
        m5980r(this.f32956d, interfaceC5844ho);
        m5980r(this.f32957e, interfaceC5844ho);
        m5980r(this.f32958f, interfaceC5844ho);
        m5980r(this.f32959g, interfaceC5844ho);
        m5980r(this.f32960h, interfaceC5844ho);
        m5980r(this.f32961i, interfaceC5844ho);
        m5980r(this.f32962j, interfaceC5844ho);
    }
}
