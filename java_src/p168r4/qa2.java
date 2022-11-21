package p168r4;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* renamed from: r4.qa2 */
/* loaded from: classes2.dex */
public final class qa2 implements eg2<ra2> {

    /* renamed from: a */
    public final eg2<kg2> f30071a;

    /* renamed from: b */
    public final hp2 f30072b;

    /* renamed from: c */
    public final Context f30073c;

    /* renamed from: d */
    public final nl0 f30074d;

    public qa2(kc2<kg2> kc2Var, hp2 hp2Var, Context context, nl0 nl0Var) {
        this.f30071a = kc2Var;
        this.f30072b = hp2Var;
        this.f30073c = context;
        this.f30074d = nl0Var;
    }

    /* renamed from: a */
    public final /* synthetic */ ra2 m7913a(kg2 kg2Var) {
        String str;
        boolean z;
        String str2;
        float f;
        int i;
        int i2;
        int i3;
        DisplayMetrics displayMetrics;
        C6478yt c6478yt = this.f30072b.f24780e;
        C6478yt[] c6478ytArr = c6478yt.f34203r;
        if (c6478ytArr == null) {
            str = c6478yt.f34197a;
            z = c6478yt.f34205t;
        } else {
            str = null;
            boolean z2 = false;
            boolean z3 = false;
            z = false;
            for (C6478yt c6478yt2 : c6478ytArr) {
                boolean z4 = c6478yt2.f34205t;
                if (!z4 && !z2) {
                    str = c6478yt2.f34197a;
                    z2 = true;
                }
                if (z4) {
                    if (!z3) {
                        z3 = true;
                        z = true;
                    } else {
                        z3 = true;
                    }
                }
                if (z2 && z3) {
                    break;
                }
            }
        }
        Resources resources = this.f30073c.getResources();
        if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f2 = displayMetrics.density;
            int i4 = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
            str2 = this.f30074d.m9051p().mo26192v();
            i = i4;
            f = f2;
        } else {
            str2 = null;
            f = 0.0f;
            i = 0;
            i2 = 0;
        }
        StringBuilder sb = new StringBuilder();
        C6478yt[] c6478ytArr2 = c6478yt.f34203r;
        if (c6478ytArr2 != null) {
            boolean z5 = false;
            for (C6478yt c6478yt3 : c6478ytArr2) {
                if (c6478yt3.f34205t) {
                    z5 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    int i5 = c6478yt3.f34201p;
                    if (i5 == -1) {
                        if (f != 0.0f) {
                            i5 = (int) (c6478yt3.f34202q / f);
                        } else {
                            i5 = -1;
                        }
                    }
                    sb.append(i5);
                    sb.append("x");
                    int i6 = c6478yt3.f34198b;
                    if (i6 == -2) {
                        if (f != 0.0f) {
                            i6 = (int) (c6478yt3.f34199d / f);
                        } else {
                            i6 = -2;
                        }
                    }
                    sb.append(i6);
                }
            }
            if (z5) {
                if (sb.length() != 0) {
                    i3 = 0;
                    sb.insert(0, "|");
                } else {
                    i3 = 0;
                }
                sb.insert(i3, "320x50");
            }
        }
        return new ra2(c6478yt, str, z, sb.toString(), f, i, i2, str2, this.f30072b.f24791p);
    }

    @Override // p168r4.eg2
    public final h83<ra2> zza() {
        return y73.m4805j(this.f30071a.zza(), new p03(this) { // from class: r4.pa2

            /* renamed from: a */
            public final qa2 f29408a;

            {
                this.f29408a = this;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                return this.f29408a.m7913a((kg2) obj);
            }
        }, qm0.f30195f);
    }
}
