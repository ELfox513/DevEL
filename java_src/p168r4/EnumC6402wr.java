package p168r4;
/* renamed from: r4.wr */
/* loaded from: classes2.dex */
public enum EnumC6402wr implements rm3 {
    UNSPECIFIED(0),
    CONNECTING(1),
    CONNECTED(2),
    DISCONNECTING(3),
    DISCONNECTED(4),
    SUSPENDED(5);
    

    /* renamed from: s */
    public static final sm3<EnumC6402wr> f33298s = new sm3<EnumC6402wr>() { // from class: r4.ur
    };

    /* renamed from: a */
    public final int f33300a;

    EnumC6402wr(int i) {
        this.f33300a = i;
    }

    /* renamed from: c */
    public static EnumC6402wr m5605c(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return null;
                            }
                            return SUSPENDED;
                        }
                        return DISCONNECTED;
                    }
                    return DISCONNECTING;
                }
                return CONNECTED;
            }
            return CONNECTING;
        }
        return UNSPECIFIED;
    }

    /* renamed from: d */
    public static tm3 m5604d() {
        return C6365vr.f32783a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f33300a);
    }

    public final int zza() {
        return this.f33300a;
    }
}
