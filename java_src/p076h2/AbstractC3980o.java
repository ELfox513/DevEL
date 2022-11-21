package p076h2;

import android.util.SparseArray;
import com.google.auto.value.AutoValue;
import p076h2.C3968i;
@AutoValue
/* renamed from: h2.o */
/* loaded from: classes.dex */
public abstract class AbstractC3980o {

    @AutoValue.Builder
    /* renamed from: h2.o$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3981a {
        /* renamed from: a */
        public abstract AbstractC3980o mo17607a();

        /* renamed from: b */
        public abstract AbstractC3981a mo17606b(EnumC3982b enumC3982b);

        /* renamed from: c */
        public abstract AbstractC3981a mo17605c(EnumC3983c enumC3983c);
    }

    /* renamed from: h2.o$b */
    /* loaded from: classes.dex */
    public enum EnumC3982b {
        UNKNOWN_MOBILE_SUBTYPE(0),
        GPRS(1),
        EDGE(2),
        UMTS(3),
        CDMA(4),
        EVDO_0(5),
        EVDO_A(6),
        RTT(7),
        HSDPA(8),
        HSUPA(9),
        HSPA(10),
        IDEN(11),
        EVDO_B(12),
        LTE(13),
        EHRPD(14),
        HSPAP(15),
        GSM(16),
        TD_SCDMA(17),
        IWLAN(18),
        LTE_CA(19),
        COMBINED(100);
        

        /* renamed from: H */
        public static final SparseArray<EnumC3982b> f17366H;

        /* renamed from: a */
        public final int f17382a;

        /* renamed from: c */
        public static EnumC3982b m17604c(int i) {
            return f17366H.get(i);
        }

        /* renamed from: d */
        public int m17603d() {
            return this.f17382a;
        }

        static {
            EnumC3982b enumC3982b = UNKNOWN_MOBILE_SUBTYPE;
            EnumC3982b enumC3982b2 = GPRS;
            EnumC3982b enumC3982b3 = EDGE;
            EnumC3982b enumC3982b4 = UMTS;
            EnumC3982b enumC3982b5 = CDMA;
            EnumC3982b enumC3982b6 = EVDO_0;
            EnumC3982b enumC3982b7 = EVDO_A;
            EnumC3982b enumC3982b8 = RTT;
            EnumC3982b enumC3982b9 = HSDPA;
            EnumC3982b enumC3982b10 = HSUPA;
            EnumC3982b enumC3982b11 = HSPA;
            EnumC3982b enumC3982b12 = IDEN;
            EnumC3982b enumC3982b13 = EVDO_B;
            EnumC3982b enumC3982b14 = LTE;
            EnumC3982b enumC3982b15 = EHRPD;
            EnumC3982b enumC3982b16 = HSPAP;
            EnumC3982b enumC3982b17 = GSM;
            EnumC3982b enumC3982b18 = TD_SCDMA;
            EnumC3982b enumC3982b19 = IWLAN;
            EnumC3982b enumC3982b20 = LTE_CA;
            SparseArray<EnumC3982b> sparseArray = new SparseArray<>();
            f17366H = sparseArray;
            sparseArray.put(0, enumC3982b);
            sparseArray.put(1, enumC3982b2);
            sparseArray.put(2, enumC3982b3);
            sparseArray.put(3, enumC3982b4);
            sparseArray.put(4, enumC3982b5);
            sparseArray.put(5, enumC3982b6);
            sparseArray.put(6, enumC3982b7);
            sparseArray.put(7, enumC3982b8);
            sparseArray.put(8, enumC3982b9);
            sparseArray.put(9, enumC3982b10);
            sparseArray.put(10, enumC3982b11);
            sparseArray.put(11, enumC3982b12);
            sparseArray.put(12, enumC3982b13);
            sparseArray.put(13, enumC3982b14);
            sparseArray.put(14, enumC3982b15);
            sparseArray.put(15, enumC3982b16);
            sparseArray.put(16, enumC3982b17);
            sparseArray.put(17, enumC3982b18);
            sparseArray.put(18, enumC3982b19);
            sparseArray.put(19, enumC3982b20);
        }

        EnumC3982b(int i) {
            this.f17382a = i;
        }
    }

    /* renamed from: h2.o$c */
    /* loaded from: classes.dex */
    public enum EnumC3983c {
        MOBILE(0),
        WIFI(1),
        MOBILE_MMS(2),
        MOBILE_SUPL(3),
        MOBILE_DUN(4),
        MOBILE_HIPRI(5),
        WIMAX(6),
        BLUETOOTH(7),
        DUMMY(8),
        ETHERNET(9),
        MOBILE_FOTA(10),
        MOBILE_IMS(11),
        MOBILE_CBS(12),
        WIFI_P2P(13),
        MOBILE_IA(14),
        MOBILE_EMERGENCY(15),
        PROXY(16),
        VPN(17),
        NONE(-1);
        

        /* renamed from: F */
        public static final SparseArray<EnumC3983c> f17388F;

        /* renamed from: a */
        public final int f17404a;

        /* renamed from: c */
        public static EnumC3983c m17602c(int i) {
            return f17388F.get(i);
        }

        /* renamed from: d */
        public int m17601d() {
            return this.f17404a;
        }

        static {
            EnumC3983c enumC3983c = MOBILE;
            EnumC3983c enumC3983c2 = WIFI;
            EnumC3983c enumC3983c3 = MOBILE_MMS;
            EnumC3983c enumC3983c4 = MOBILE_SUPL;
            EnumC3983c enumC3983c5 = MOBILE_DUN;
            EnumC3983c enumC3983c6 = MOBILE_HIPRI;
            EnumC3983c enumC3983c7 = WIMAX;
            EnumC3983c enumC3983c8 = BLUETOOTH;
            EnumC3983c enumC3983c9 = DUMMY;
            EnumC3983c enumC3983c10 = ETHERNET;
            EnumC3983c enumC3983c11 = MOBILE_FOTA;
            EnumC3983c enumC3983c12 = MOBILE_IMS;
            EnumC3983c enumC3983c13 = MOBILE_CBS;
            EnumC3983c enumC3983c14 = WIFI_P2P;
            EnumC3983c enumC3983c15 = MOBILE_IA;
            EnumC3983c enumC3983c16 = MOBILE_EMERGENCY;
            EnumC3983c enumC3983c17 = PROXY;
            EnumC3983c enumC3983c18 = VPN;
            EnumC3983c enumC3983c19 = NONE;
            SparseArray<EnumC3983c> sparseArray = new SparseArray<>();
            f17388F = sparseArray;
            sparseArray.put(0, enumC3983c);
            sparseArray.put(1, enumC3983c2);
            sparseArray.put(2, enumC3983c3);
            sparseArray.put(3, enumC3983c4);
            sparseArray.put(4, enumC3983c5);
            sparseArray.put(5, enumC3983c6);
            sparseArray.put(6, enumC3983c7);
            sparseArray.put(7, enumC3983c8);
            sparseArray.put(8, enumC3983c9);
            sparseArray.put(9, enumC3983c10);
            sparseArray.put(10, enumC3983c11);
            sparseArray.put(11, enumC3983c12);
            sparseArray.put(12, enumC3983c13);
            sparseArray.put(13, enumC3983c14);
            sparseArray.put(14, enumC3983c15);
            sparseArray.put(15, enumC3983c16);
            sparseArray.put(16, enumC3983c17);
            sparseArray.put(17, enumC3983c18);
            sparseArray.put(-1, enumC3983c19);
        }

        EnumC3983c(int i) {
            this.f17404a = i;
        }
    }

    /* renamed from: a */
    public static AbstractC3981a m17610a() {
        return new C3968i.C3970b();
    }

    /* renamed from: b */
    public abstract EnumC3982b mo17609b();

    /* renamed from: c */
    public abstract EnumC3983c mo17608c();
}
