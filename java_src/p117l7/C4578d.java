package p117l7;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: l7.d */
/* loaded from: classes2.dex */
public class C4578d {

    /* renamed from: b */
    public static volatile C4578d f18618b;

    /* renamed from: a */
    public final Set<AbstractC4580f> f18619a = new HashSet();

    /* renamed from: a */
    public static C4578d m15983a() {
        C4578d c4578d = f18618b;
        if (c4578d == null) {
            synchronized (C4578d.class) {
                c4578d = f18618b;
                if (c4578d == null) {
                    c4578d = new C4578d();
                    f18618b = c4578d;
                }
            }
        }
        return c4578d;
    }

    /* renamed from: b */
    public Set<AbstractC4580f> m15982b() {
        Set<AbstractC4580f> unmodifiableSet;
        synchronized (this.f18619a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f18619a);
        }
        return unmodifiableSet;
    }
}
