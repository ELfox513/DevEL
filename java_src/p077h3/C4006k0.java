package p077h3;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import p168r4.EnumC6178qp;
/* renamed from: h3.k0 */
/* loaded from: classes.dex */
public final class C4006k0 {

    /* renamed from: a */
    public final String f17483a;

    public /* synthetic */ C4006k0(C4002i0 c4002i0, C4004j0 c4004j0) {
        String str;
        str = c4002i0.f17479a;
        this.f17483a = str;
    }

    /* renamed from: b */
    public final String m17563b() {
        return this.f17483a.toLowerCase(Locale.ROOT);
    }

    /* renamed from: a */
    public final Set<String> m17564a() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f17483a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final EnumC6178qp m17562c() {
        char c;
        String str = this.f17483a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        return EnumC6178qp.AD_INITIATER_UNSPECIFIED;
                    }
                    return EnumC6178qp.REWARD_BASED_VIDEO_AD;
                }
                return EnumC6178qp.AD_LOADER;
            }
            return EnumC6178qp.INTERSTITIAL;
        }
        return EnumC6178qp.BANNER;
    }
}
