package p168r4;
/* renamed from: r4.qp */
/* loaded from: classes2.dex */
public enum EnumC6178qp implements rm3 {
    AD_INITIATER_UNSPECIFIED(0),
    BANNER(1),
    DFP_BANNER(2),
    INTERSTITIAL(3),
    DFP_INTERSTITIAL(4),
    NATIVE_EXPRESS(5),
    AD_LOADER(6),
    REWARD_BASED_VIDEO_AD(7),
    BANNER_SEARCH_ADS(8),
    GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
    APP_OPEN(10),
    REWARDED_INTERSTITIAL(11);
    

    /* renamed from: y */
    public static final sm3<EnumC6178qp> f30262y = new sm3<EnumC6178qp>() { // from class: r4.op
    };

    /* renamed from: a */
    public final int f30264a;

    EnumC6178qp(int i) {
        this.f30264a = i;
    }

    /* renamed from: c */
    public static EnumC6178qp m7738c(int i) {
        switch (i) {
            case 0:
                return AD_INITIATER_UNSPECIFIED;
            case 1:
                return BANNER;
            case 2:
                return DFP_BANNER;
            case 3:
                return INTERSTITIAL;
            case 4:
                return DFP_INTERSTITIAL;
            case 5:
                return NATIVE_EXPRESS;
            case 6:
                return AD_LOADER;
            case 7:
                return REWARD_BASED_VIDEO_AD;
            case 8:
                return BANNER_SEARCH_ADS;
            case 9:
                return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
            case 10:
                return APP_OPEN;
            case 11:
                return REWARDED_INTERSTITIAL;
            default:
                return null;
        }
    }

    /* renamed from: d */
    public static tm3 m7737d() {
        return C6141pp.f29548a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f30264a);
    }

    public final int zza() {
        return this.f30264a;
    }
}
