package p168r4;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: r4.x50 */
/* loaded from: classes2.dex */
public final class x50 {

    /* renamed from: a */
    public boolean f33455a = false;

    /* renamed from: b */
    public boolean f33456b = false;

    /* renamed from: c */
    public float f33457c = 0.0f;

    /* renamed from: d */
    public final AtomicBoolean f33458d = new AtomicBoolean(false);

    /* renamed from: a */
    public final synchronized void m5502a(boolean z) {
        this.f33455a = z;
        this.f33458d.set(true);
    }

    /* renamed from: b */
    public final synchronized void m5501b(boolean z, float f) {
        this.f33456b = z;
        this.f33457c = f;
    }

    /* renamed from: c */
    public final synchronized boolean m5500c(boolean z) {
        if (this.f33458d.get()) {
            return this.f33455a;
        }
        return z;
    }

    /* renamed from: d */
    public final synchronized boolean m5499d() {
        return this.f33456b;
    }

    /* renamed from: e */
    public final synchronized float m5498e() {
        return this.f33457c;
    }
}
