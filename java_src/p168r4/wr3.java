package p168r4;
/* renamed from: r4.wr3 */
/* loaded from: classes2.dex */
public final class wr3<T> implements vr3, or3 {

    /* renamed from: b */
    public static final wr3<Object> f33309b = new wr3<>(null);

    /* renamed from: a */
    public final T f33310a;

    public wr3(T t) {
        this.f33310a = t;
    }

    /* renamed from: b */
    public static <T> vr3<T> m5603b(T t) {
        ds3.m11981a(t, "instance cannot be null");
        return new wr3(t);
    }

    /* renamed from: c */
    public static <T> vr3<T> m5602c(T t) {
        return t == null ? f33309b : new wr3(t);
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final T mo4079a() {
        return this.f33310a;
    }
}
