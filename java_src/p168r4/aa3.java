package p168r4;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: r4.aa3 */
/* loaded from: classes2.dex */
public final class aa3<P> {

    /* renamed from: a */
    public final ConcurrentMap<z93, List<x93<P>>> f20438a = new ConcurrentHashMap();

    /* renamed from: b */
    public x93<P> f20439b;

    /* renamed from: c */
    public final Class<P> f20440c;

    public aa3(Class<P> cls) {
        this.f20440c = cls;
    }

    /* renamed from: b */
    public static <P> aa3<P> m13036b(Class<P> cls) {
        return new aa3<>(cls);
    }

    /* renamed from: a */
    public final x93<P> m13037a() {
        return this.f20439b;
    }

    /* renamed from: e */
    public final Class<P> m13033e() {
        return this.f20440c;
    }

    /* renamed from: c */
    public final void m13035c(x93<P> x93Var) {
        if (x93Var.m5442c() == 3) {
            List<x93<P>> list = this.f20438a.get(new z93(x93Var.m5443b(), null));
            if (list == null) {
                list = Collections.emptyList();
            }
            if (!list.isEmpty()) {
                this.f20439b = x93Var;
                return;
            }
            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
        }
        throw new IllegalArgumentException("the primary entry has to be ENABLED");
    }

    /* renamed from: d */
    public final x93<P> m13034d(P p, ih3 ih3Var) {
        byte[] array;
        if (ih3Var.m10655J() == 3) {
            int m10654K = ih3Var.m10654K() - 2;
            if (m10654K != 1) {
                if (m10654K != 2) {
                    if (m10654K != 3) {
                        if (m10654K != 4) {
                            throw new GeneralSecurityException("unknown output prefix type");
                        }
                    } else {
                        array = e93.f22916a;
                    }
                }
                array = ByteBuffer.allocate(5).put((byte) 0).putInt(ih3Var.m10657E()).array();
            } else {
                array = ByteBuffer.allocate(5).put((byte) 1).putInt(ih3Var.m10657E()).array();
            }
            x93<P> x93Var = new x93<>(p, array, ih3Var.m10655J(), ih3Var.m10654K(), ih3Var.m10657E());
            ArrayList arrayList = new ArrayList();
            arrayList.add(x93Var);
            z93 z93Var = new z93(x93Var.m5443b(), null);
            List<x93<P>> put = this.f20438a.put(z93Var, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(x93Var);
                this.f20438a.put(z93Var, Collections.unmodifiableList(arrayList2));
            }
            return x93Var;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }
}
