package p168r4;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: r4.io3 */
/* loaded from: classes2.dex */
public final class io3 {

    /* renamed from: c */
    public static final io3 f25214c = new io3();

    /* renamed from: b */
    public final ConcurrentMap<Class<?>, ro3<?>> f25216b = new ConcurrentHashMap();

    /* renamed from: a */
    public final to3 f25215a = new sn3();

    /* renamed from: a */
    public static io3 m10585a() {
        return f25214c;
    }

    /* renamed from: b */
    public final <T> ro3<T> m10584b(Class<T> cls) {
        zm3.m4179b(cls, "messageType");
        ro3<T> ro3Var = (ro3<T>) this.f25216b.get(cls);
        if (ro3Var == null) {
            ro3Var = this.f25215a.mo6767d(cls);
            zm3.m4179b(cls, "messageType");
            zm3.m4179b(ro3Var, "schema");
            ro3 putIfAbsent = this.f25216b.putIfAbsent(cls, ro3Var);
            if (putIfAbsent != null) {
                return putIfAbsent;
            }
        }
        return ro3Var;
    }
}
