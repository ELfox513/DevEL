package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.nk */
/* loaded from: classes2.dex */
public final class C6062nk {

    /* renamed from: a */
    public final Map<String, String> f28311a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f28312b;

    /* renamed from: a */
    public final synchronized Map<String, String> m9077a() {
        if (this.f28312b == null) {
            this.f28312b = Collections.unmodifiableMap(new HashMap(this.f28311a));
        }
        return this.f28312b;
    }
}
