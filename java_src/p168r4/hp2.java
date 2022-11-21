package p168r4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import p016b3.C0497k2;
import p202v2.C6974a;
import p202v2.C6978e;
import p202v2.C6983g;
/* renamed from: r4.hp2 */
/* loaded from: classes2.dex */
public final class hp2 {

    /* renamed from: a */
    public final C6446xy f24776a;

    /* renamed from: b */
    public final s70 f24777b;

    /* renamed from: c */
    public final d92 f24778c;

    /* renamed from: d */
    public final C6293tt f24779d;

    /* renamed from: e */
    public final C6478yt f24780e;

    /* renamed from: f */
    public final String f24781f;

    /* renamed from: g */
    public final ArrayList<String> f24782g;

    /* renamed from: h */
    public final ArrayList<String> f24783h;

    /* renamed from: i */
    public final d20 f24784i;

    /* renamed from: j */
    public final C5739eu f24785j;

    /* renamed from: k */
    public final int f24786k;

    /* renamed from: l */
    public final C6974a f24787l;

    /* renamed from: m */
    public final C6983g f24788m;

    /* renamed from: n */
    public final InterfaceC5666cw f24789n;

    /* renamed from: o */
    public final xo2 f24790o;

    /* renamed from: p */
    public final boolean f24791p;

    /* renamed from: q */
    public final C5815gw f24792q;

    public /* synthetic */ hp2(fp2 fp2Var, gp2 gp2Var) {
        C6446xy c6446xy;
        d20 m11402w;
        this.f24780e = fp2.m11408q(fp2Var);
        this.f24781f = fp2.m11407r(fp2Var);
        this.f24792q = fp2.m11411n(fp2Var);
        int i = fp2.m11409p(fp2Var).f31994a;
        long j = fp2.m11409p(fp2Var).f31995b;
        Bundle bundle = fp2.m11409p(fp2Var).f31996d;
        int i2 = fp2.m11409p(fp2Var).f31997k;
        List<String> list = fp2.m11409p(fp2Var).f31998p;
        boolean z = fp2.m11409p(fp2Var).f31999q;
        int i3 = fp2.m11409p(fp2Var).f32000r;
        boolean z2 = true;
        if (!fp2.m11409p(fp2Var).f32001s && !fp2.m11405t(fp2Var)) {
            z2 = false;
        }
        this.f24779d = new C6293tt(i, j, bundle, i2, list, z, i3, z2, fp2.m11409p(fp2Var).f32002t, fp2.m11409p(fp2Var).f32003u, fp2.m11409p(fp2Var).f32004v, fp2.m11409p(fp2Var).f32005w, fp2.m11409p(fp2Var).f32006x, fp2.m11409p(fp2Var).f32007y, fp2.m11409p(fp2Var).f32008z, fp2.m11409p(fp2Var).f31985A, fp2.m11409p(fp2Var).f31986B, fp2.m11409p(fp2Var).f31987C, fp2.m11409p(fp2Var).f31988D, fp2.m11409p(fp2Var).f31989E, fp2.m11409p(fp2Var).f31990F, fp2.m11409p(fp2Var).f31991G, C0497k2.m26343L(fp2.m11409p(fp2Var).f31992H), fp2.m11409p(fp2Var).f31993I);
        if (fp2.m11406s(fp2Var) != null) {
            c6446xy = fp2.m11406s(fp2Var);
        } else if (fp2.m11402w(fp2Var) != null) {
            c6446xy = fp2.m11402w(fp2Var).f22047q;
        } else {
            c6446xy = null;
        }
        this.f24776a = c6446xy;
        this.f24782g = fp2.m11404u(fp2Var);
        this.f24783h = fp2.m11403v(fp2Var);
        if (fp2.m11404u(fp2Var) == null) {
            m11402w = null;
        } else if (fp2.m11402w(fp2Var) == null) {
            m11402w = new d20(new C6978e.C6979a().m2803a());
        } else {
            m11402w = fp2.m11402w(fp2Var);
        }
        this.f24784i = m11402w;
        this.f24785j = fp2.m11401x(fp2Var);
        this.f24786k = fp2.m11438B(fp2Var);
        this.f24787l = fp2.m11400y(fp2Var);
        this.f24788m = fp2.m11399z(fp2Var);
        this.f24789n = fp2.m11439A(fp2Var);
        this.f24777b = fp2.m11437C(fp2Var);
        this.f24790o = new xo2(fp2.m11436D(fp2Var), null);
        this.f24791p = fp2.m11435E(fp2Var);
        this.f24778c = fp2.m11434F(fp2Var);
    }

    /* renamed from: a */
    public final d40 m10835a() {
        C6983g c6983g = this.f24788m;
        if (c6983g == null && this.f24787l == null) {
            return null;
        }
        if (c6983g != null) {
            return c6983g.m2784Y0();
        }
        return this.f24787l.m2816Y0();
    }
}
