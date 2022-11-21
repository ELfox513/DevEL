package p178s5;

import java.util.Arrays;
import java.util.List;
/* renamed from: s5.r */
/* loaded from: classes2.dex */
public class C6619r extends C6620s {

    /* renamed from: a */
    public final List<C6592d<?>> f35203a;

    public C6619r(List<C6592d<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f35203a = list;
    }
}
