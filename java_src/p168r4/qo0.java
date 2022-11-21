package p168r4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import p016b3.C0491j0;
import p016b3.C0495k0;
import p016b3.C0503m0;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.qo0 */
/* loaded from: classes2.dex */
public final class qo0 {

    /* renamed from: a */
    public final Context f30223a;

    /* renamed from: b */
    public final String f30224b;

    /* renamed from: c */
    public final im0 f30225c;

    /* renamed from: d */
    public final d00 f30226d;

    /* renamed from: e */
    public final h00 f30227e;

    /* renamed from: f */
    public final C0503m0 f30228f;

    /* renamed from: g */
    public final long[] f30229g;

    /* renamed from: h */
    public final String[] f30230h;

    /* renamed from: i */
    public boolean f30231i;

    /* renamed from: j */
    public boolean f30232j;

    /* renamed from: k */
    public boolean f30233k;

    /* renamed from: l */
    public boolean f30234l;

    /* renamed from: m */
    public boolean f30235m;

    /* renamed from: n */
    public vn0 f30236n;

    /* renamed from: o */
    public boolean f30237o;

    /* renamed from: p */
    public boolean f30238p;

    /* renamed from: q */
    public long f30239q;

    /* renamed from: b */
    public final void m7764b() {
        if (!this.f30231i || this.f30232j) {
            return;
        }
        C6484yz.m4506a(this.f30227e, this.f30226d, "vfr2");
        this.f30232j = true;
    }

    /* renamed from: e */
    public final void m7761e() {
        this.f30235m = true;
        if (!this.f30232j || this.f30233k) {
            return;
        }
        C6484yz.m4506a(this.f30227e, this.f30226d, "vfp2");
        this.f30233k = true;
    }

    /* renamed from: f */
    public final void m7760f() {
        this.f30235m = false;
    }

    /* renamed from: a */
    public final void m7765a(vn0 vn0Var) {
        C6484yz.m4506a(this.f30227e, this.f30226d, "vpc2");
        this.f30231i = true;
        this.f30227e.m11024d("vpn", vn0Var.mo6077g());
        this.f30236n = vn0Var;
    }

    /* renamed from: c */
    public final void m7763c() {
        String str;
        String str2;
        if (t10.f31613a.m6673e().booleanValue() && !this.f30237o) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.f30224b);
            bundle.putString("player", this.f30236n.mo6077g());
            for (C0491j0 c0491j0 : this.f30228f.m26294b()) {
                String valueOf = String.valueOf(c0491j0.f1619a);
                if (valueOf.length() != 0) {
                    str = "fps_c_".concat(valueOf);
                } else {
                    str = new String("fps_c_");
                }
                bundle.putString(str, Integer.toString(c0491j0.f1623e));
                String valueOf2 = String.valueOf(c0491j0.f1619a);
                if (valueOf2.length() != 0) {
                    str2 = "fps_p_".concat(valueOf2);
                } else {
                    str2 = new String("fps_p_");
                }
                bundle.putString(str2, Double.toString(c0491j0.f1622d));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.f30229g;
                if (i < jArr.length) {
                    String str3 = this.f30230h[i];
                    if (str3 != null) {
                        bundle.putString("fh_".concat(Long.valueOf(jArr[i]).toString()), str3);
                    }
                    i++;
                } else {
                    C7601t.m939d().m26334U(this.f30223a, this.f30225c.f25171a, "gmob-apps", bundle, true);
                    this.f30237o = true;
                    return;
                }
            }
        }
    }

    /* renamed from: d */
    public final void m7762d(vn0 vn0Var) {
        long j;
        if (this.f30233k && !this.f30234l) {
            if (C0543w1.m26249m() && !this.f30234l) {
                C0543w1.m26251k("VideoMetricsMixin first frame");
            }
            C6484yz.m4506a(this.f30227e, this.f30226d, "vff2");
            this.f30234l = true;
        }
        long mo24761c = C7601t.m932k().mo24761c();
        if (this.f30235m && this.f30238p && this.f30239q != -1) {
            long nanos = TimeUnit.SECONDS.toNanos(1L);
            long j2 = this.f30239q;
            C0503m0 c0503m0 = this.f30228f;
            double d = nanos;
            double d2 = mo24761c - j2;
            Double.isNaN(d);
            Double.isNaN(d2);
            c0503m0.m26295a(d / d2);
        }
        this.f30238p = this.f30235m;
        this.f30239q = mo24761c;
        long longValue = ((Long) C5592av.m12935c().m8098c(C6225rz.f31145w)).longValue();
        long mo6069o = vn0Var.mo6069o();
        int i = 0;
        while (true) {
            String[] strArr = this.f30230h;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(mo6069o - this.f30229g[i])) {
                    String[] strArr2 = this.f30230h;
                    int i2 = 8;
                    Bitmap bitmap = vn0Var.getBitmap(8, 8);
                    long j3 = 63;
                    long j4 = 0;
                    int i3 = 0;
                    while (i3 < i2) {
                        int i4 = 0;
                        while (i4 < i2) {
                            int pixel = bitmap.getPixel(i4, i3);
                            if (Color.blue(pixel) + Color.red(pixel) + Color.green(pixel) > 128) {
                                j = 1;
                            } else {
                                j = 0;
                            }
                            j4 |= j << ((int) j3);
                            i4++;
                            j3--;
                            i2 = 8;
                        }
                        i3++;
                        i2 = 8;
                    }
                    strArr2[i] = String.format("%016X", Long.valueOf(j4));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public qo0(Context context, im0 im0Var, String str, h00 h00Var, d00 d00Var) {
        C0495k0 c0495k0 = new C0495k0();
        c0495k0.m26357d("min_1", Double.MIN_VALUE, 1.0d);
        c0495k0.m26357d("1_5", 1.0d, 5.0d);
        c0495k0.m26357d("5_10", 5.0d, 10.0d);
        c0495k0.m26357d("10_20", 10.0d, 20.0d);
        c0495k0.m26357d("20_30", 20.0d, 30.0d);
        c0495k0.m26357d("30_max", 30.0d, Double.MAX_VALUE);
        this.f30228f = c0495k0.m26356e();
        this.f30231i = false;
        this.f30232j = false;
        this.f30233k = false;
        this.f30234l = false;
        this.f30239q = -1L;
        this.f30223a = context;
        this.f30225c = im0Var;
        this.f30224b = str;
        this.f30227e = h00Var;
        this.f30226d = d00Var;
        String str2 = (String) C5592av.m12935c().m8098c(C6225rz.f31137v);
        if (str2 == null) {
            this.f30230h = new String[0];
            this.f30229g = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        int length = split.length;
        this.f30230h = new String[length];
        this.f30229g = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.f30229g[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                cm0.m12436g("Unable to parse frame hash target time number.", e);
                this.f30229g[i] = -1;
            }
        }
    }
}
