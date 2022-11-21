package p197u6;

import com.google.auto.value.AutoValue;
import p197u6.C6935b;
@AutoValue
/* renamed from: u6.f */
/* loaded from: classes2.dex */
public abstract class AbstractC6943f {

    @AutoValue.Builder
    /* renamed from: u6.f$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC6944a {
        /* renamed from: a */
        public abstract AbstractC6943f mo2962a();

        /* renamed from: b */
        public abstract AbstractC6944a mo2961b(EnumC6945b enumC6945b);

        /* renamed from: c */
        public abstract AbstractC6944a mo2960c(String str);

        /* renamed from: d */
        public abstract AbstractC6944a mo2959d(long j);
    }

    /* renamed from: u6.f$b */
    /* loaded from: classes2.dex */
    public enum EnumC6945b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    /* renamed from: a */
    public static AbstractC6944a m2966a() {
        return new C6935b.C6937b().mo2959d(0L);
    }

    /* renamed from: b */
    public abstract EnumC6945b mo2965b();

    /* renamed from: c */
    public abstract String mo2964c();

    /* renamed from: d */
    public abstract long mo2963d();
}
