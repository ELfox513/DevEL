package p076h2;

import com.google.auto.value.AutoValue;
import p076h2.C3958e;
@AutoValue
/* renamed from: h2.k */
/* loaded from: classes.dex */
public abstract class AbstractC3972k {

    @AutoValue.Builder
    /* renamed from: h2.k$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3973a {
        /* renamed from: a */
        public abstract AbstractC3972k mo17652a();

        /* renamed from: b */
        public abstract AbstractC3973a mo17651b(AbstractC3945a abstractC3945a);

        /* renamed from: c */
        public abstract AbstractC3973a mo17650c(EnumC3974b enumC3974b);
    }

    /* renamed from: a */
    public static AbstractC3973a m17655a() {
        return new C3958e.C3960b();
    }

    /* renamed from: b */
    public abstract AbstractC3945a mo17654b();

    /* renamed from: c */
    public abstract EnumC3974b mo17653c();

    /* renamed from: h2.k$b */
    /* loaded from: classes.dex */
    public enum EnumC3974b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        

        /* renamed from: a */
        public final int f17358a;

        EnumC3974b(int i) {
            this.f17358a = i;
        }
    }
}
