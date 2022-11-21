package p097j5;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: j5.k0 */
/* loaded from: classes2.dex */
public final class C4351k0 implements InterfaceC4330a<Void, AbstractC4346i<List<AbstractC4346i<?>>>> {

    /* renamed from: a */
    public final /* synthetic */ Collection f18227a;

    public C4351k0(Collection collection) {
        this.f18227a = collection;
    }

    @Override // p097j5.InterfaceC4330a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC4346i<List<AbstractC4346i<?>>> mo1688a(AbstractC4346i<Void> abstractC4346i) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f18227a);
        return C4352l.m16767d(arrayList);
    }
}
