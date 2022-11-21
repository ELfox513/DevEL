package p168r4;

import java.util.Map;
import p026c4.C1046g;
import p235z2.C7583b;
import p235z2.C7601t;
/* renamed from: r4.b60 */
/* loaded from: classes2.dex */
public final class b60 implements u50<cs0> {

    /* renamed from: d */
    public static final Map<String, Integer> f20862d = C1046g.m24769e(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: a */
    public final C7583b f20863a;

    /* renamed from: b */
    public final zd0 f20864b;

    /* renamed from: c */
    public final ge0 f20865c;

    public b60(C7583b c7583b, zd0 zd0Var, ge0 ge0Var) {
        this.f20863a = c7583b;
        this.f20864b = zd0Var;
        this.f20865c = ge0Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        int intValue = f20862d.get((String) map.get("a")).intValue();
        int i = 6;
        boolean z = true;
        if (intValue != 5) {
            if (intValue != 7) {
                if (this.f20863a.m1032b()) {
                    if (intValue != 1) {
                        if (intValue != 3) {
                            if (intValue != 4) {
                                if (intValue != 5) {
                                    if (intValue != 6) {
                                        if (intValue != 7) {
                                            cm0.m12438e("Unknown MRAID command called.");
                                            return;
                                        }
                                    } else {
                                        this.f20864b.m4297i(true);
                                        return;
                                    }
                                }
                            } else {
                                new xd0(cs0Var2, map).m5367i();
                                return;
                            }
                        } else {
                            new ce0(cs0Var2, map).m12483i();
                            return;
                        }
                    } else {
                        this.f20864b.m4298h(map);
                        return;
                    }
                } else {
                    this.f20863a.m1031c(null);
                    return;
                }
            }
            this.f20865c.mo8226b();
            return;
        }
        String str = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            z = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        }
        if (cs0Var2 == null) {
            cm0.m12437f("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            if (z) {
                i = -1;
            } else {
                i = C7601t.m937f().mo26276h();
            }
        }
        cs0Var2.mo5038w(i);
    }
}
