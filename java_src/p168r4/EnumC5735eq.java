package p168r4;
/* renamed from: r4.eq */
/* loaded from: classes2.dex */
public enum EnumC5735eq implements rm3 {
    AD_FORMAT_TYPE_UNSPECIFIED(0),
    BANNER(1),
    INTERSTITIAL(2),
    NATIVE_EXPRESS(3),
    NATIVE_CONTENT(4),
    NATIVE_APP_INSTALL(5),
    NATIVE_CUSTOM_TEMPLATE(6),
    DFP_BANNER(7),
    DFP_INTERSTITIAL(8),
    REWARD_BASED_VIDEO_AD(9),
    BANNER_SEARCH_ADS(10);
    

    /* renamed from: x */
    public static final sm3<EnumC5735eq> f23123x = new sm3<EnumC5735eq>() { // from class: r4.cq
    };

    /* renamed from: a */
    public final int f23125a;

    EnumC5735eq(int i) {
        this.f23125a = i;
    }

    /* renamed from: c */
    public static EnumC5735eq m11697c(int i) {
        switch (i) {
            case 0:
                return AD_FORMAT_TYPE_UNSPECIFIED;
            case 1:
                return BANNER;
            case 2:
                return INTERSTITIAL;
            case 3:
                return NATIVE_EXPRESS;
            case 4:
                return NATIVE_CONTENT;
            case 5:
                return NATIVE_APP_INSTALL;
            case 6:
                return NATIVE_CUSTOM_TEMPLATE;
            case 7:
                return DFP_BANNER;
            case 8:
                return DFP_INTERSTITIAL;
            case 9:
                return REWARD_BASED_VIDEO_AD;
            case 10:
                return BANNER_SEARCH_ADS;
            default:
                return null;
        }
    }

    /* renamed from: d */
    public static tm3 m11696d() {
        return C5697dq.f22405a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f23125a);
    }

    public final int zza() {
        return this.f23125a;
    }
}
