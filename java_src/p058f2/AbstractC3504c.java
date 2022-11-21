package p058f2;

import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: f2.c */
/* loaded from: classes.dex */
public abstract class AbstractC3504c<T> {
    /* renamed from: d */
    public static <T> AbstractC3504c<T> m18744d(T t) {
        return new C3502a(null, t, EnumC3505d.DEFAULT);
    }

    /* renamed from: e */
    public static <T> AbstractC3504c<T> m18743e(T t) {
        return new C3502a(null, t, EnumC3505d.HIGHEST);
    }

    /* renamed from: a */
    public abstract Integer mo18747a();

    /* renamed from: b */
    public abstract T mo18746b();

    /* renamed from: c */
    public abstract EnumC3505d mo18745c();
}
