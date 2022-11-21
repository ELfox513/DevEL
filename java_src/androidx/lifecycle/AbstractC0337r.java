package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes.dex */
public abstract class AbstractC0337r {

    /* renamed from: a */
    public final Map<String, Object> f1248a = new HashMap();

    /* renamed from: b */
    public volatile boolean f1249b = false;

    /* renamed from: a */
    public final void m26755a() {
        this.f1249b = true;
        Map<String, Object> map = this.f1248a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.f1248a.values()) {
                    m26754b(obj);
                }
            }
        }
        mo16691c();
    }

    /* renamed from: c */
    public void mo16691c() {
    }

    /* renamed from: b */
    public static void m26754b(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
