package p099j7;

import java.util.NoSuchElementException;
/* renamed from: j7.e */
/* loaded from: classes2.dex */
public final class C4372e<T> {

    /* renamed from: a */
    public final T f18281a;

    public C4372e() {
        this.f18281a = null;
    }

    /* renamed from: a */
    public static <T> C4372e<T> m16740a() {
        return new C4372e<>();
    }

    /* renamed from: b */
    public static <T> C4372e<T> m16739b(T t) {
        return t == null ? m16740a() : m16736e(t);
    }

    /* renamed from: e */
    public static <T> C4372e<T> m16736e(T t) {
        return new C4372e<>(t);
    }

    /* renamed from: d */
    public boolean m16737d() {
        return this.f18281a != null;
    }

    /* renamed from: c */
    public T m16738c() {
        T t = this.f18281a;
        if (t != null) {
            return t;
        }
        throw new NoSuchElementException("No value present");
    }

    public C4372e(T t) {
        if (t != null) {
            this.f18281a = t;
            return;
        }
        throw new NullPointerException("value for optional is empty.");
    }
}
