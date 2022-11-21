package p168r4;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.v10 */
/* loaded from: classes2.dex */
public final class v10 {

    /* renamed from: a */
    public static final AtomicReference<u10> f32535a = new AtomicReference<>();

    /* renamed from: b */
    public static final AtomicBoolean f32536b = new AtomicBoolean();

    /* renamed from: a */
    public static u10 m6253a() {
        return f32535a.get();
    }

    /* renamed from: b */
    public static void m6252b(u10 u10Var) {
        f32535a.set(u10Var);
    }
}
