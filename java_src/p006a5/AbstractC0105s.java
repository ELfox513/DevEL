package p006a5;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: a5.s */
/* loaded from: classes2.dex */
public abstract class AbstractC0105s {

    /* renamed from: a */
    public final Object f163a;

    /* renamed from: b */
    public HashMap<String, AtomicInteger> f164b;

    /* renamed from: b */
    public abstract void m27670b(String str, int i);

    /* renamed from: a */
    public final void m27671a() {
        synchronized (this.f163a) {
            for (Map.Entry<String, AtomicInteger> entry : this.f164b.entrySet()) {
                m27670b(entry.getKey(), entry.getValue().get());
            }
            this.f164b.clear();
        }
    }
}
