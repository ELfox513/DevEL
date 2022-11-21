package p237z4;

import java.util.Iterator;
/* renamed from: z4.l2 */
/* loaded from: classes2.dex */
public final class C7670l2 extends C7704r2 {

    /* renamed from: b */
    public final /* synthetic */ C7655i2 f37786b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7670l2(C7655i2 c7655i2) {
        super(c7655i2, null);
        this.f37786b = c7655i2;
    }

    @Override // p237z4.C7704r2, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C7665k2(this.f37786b, null);
    }

    public /* synthetic */ C7670l2(C7655i2 c7655i2, C7660j2 c7660j2) {
        this(c7655i2);
    }
}
