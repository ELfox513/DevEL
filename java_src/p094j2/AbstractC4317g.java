package p094j2;

import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: j2.g */
/* loaded from: classes.dex */
public abstract class AbstractC4317g {

    /* renamed from: j2.g$a */
    /* loaded from: classes.dex */
    public enum EnumC4318a {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR
    }

    /* renamed from: a */
    public static AbstractC4317g m16835a() {
        return new C4311b(EnumC4318a.FATAL_ERROR, -1L);
    }

    /* renamed from: d */
    public static AbstractC4317g m16832d(long j) {
        return new C4311b(EnumC4318a.OK, j);
    }

    /* renamed from: e */
    public static AbstractC4317g m16831e() {
        return new C4311b(EnumC4318a.TRANSIENT_ERROR, -1L);
    }

    /* renamed from: b */
    public abstract long mo16834b();

    /* renamed from: c */
    public abstract EnumC4318a mo16833c();
}
