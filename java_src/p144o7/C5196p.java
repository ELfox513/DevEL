package p144o7;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p144o7.AbstractC5248y;
/* renamed from: o7.p */
/* loaded from: classes2.dex */
public class C5196p {

    /* renamed from: b */
    public static boolean f19517b = true;

    /* renamed from: c */
    public static volatile C5196p f19518c;

    /* renamed from: d */
    public static final C5196p f19519d = new C5196p(true);

    /* renamed from: a */
    public final Map<C5197a, AbstractC5248y.C5253e<?, ?>> f19520a;

    /* renamed from: o7.p$a */
    /* loaded from: classes2.dex */
    public static final class C5197a {

        /* renamed from: a */
        public final Object f19521a;

        /* renamed from: b */
        public final int f19522b;

        public int hashCode() {
            return (System.identityHashCode(this.f19521a) * MeshBuilder.MAX_INDEX) + this.f19522b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C5197a)) {
                return false;
            }
            C5197a c5197a = (C5197a) obj;
            if (this.f19521a != c5197a.f19521a || this.f19522b != c5197a.f19522b) {
                return false;
            }
            return true;
        }

        public C5197a(Object obj, int i) {
            this.f19521a = obj;
            this.f19522b = i;
        }
    }

    public C5196p() {
        this.f19520a = new HashMap();
    }

    /* renamed from: b */
    public static C5196p m14163b() {
        C5196p c5196p = f19518c;
        if (c5196p == null) {
            synchronized (C5196p.class) {
                c5196p = f19518c;
                if (c5196p == null) {
                    if (f19517b) {
                        c5196p = C5193o.m14179a();
                    } else {
                        c5196p = f19519d;
                    }
                    f19518c = c5196p;
                }
            }
        }
        return c5196p;
    }

    /* renamed from: a */
    public <ContainingType extends InterfaceC5210s0> AbstractC5248y.C5253e<ContainingType, ?> m14164a(ContainingType containingtype, int i) {
        return (AbstractC5248y.C5253e<ContainingType, ?>) this.f19520a.get(new C5197a(containingtype, i));
    }

    public C5196p(boolean z) {
        this.f19520a = Collections.emptyMap();
    }
}
