package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.gl */
/* loaded from: classes2.dex */
public final class C5804gl {

    /* renamed from: a */
    public final Map<String, String> f24123a = new HashMap();

    /* renamed from: b */
    public Map<String, String> f24124b;

    /* renamed from: a */
    public final synchronized Map<String, String> m11130a() {
        if (this.f24124b == null) {
            this.f24124b = Collections.unmodifiableMap(new HashMap(this.f24123a));
        }
        return this.f24124b;
    }
}
