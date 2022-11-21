package p168r4;

import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.Map;
/* renamed from: r4.v23 */
/* loaded from: classes2.dex */
public final class v23 extends AbstractCollection {

    /* renamed from: a */
    public final /* synthetic */ w23 f32556a;

    public v23(w23 w23Var) {
        this.f32556a = w23Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f32556a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f32556a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        w23 w23Var = this.f32556a;
        Map m5919j = w23Var.m5919j();
        if (m5919j != null) {
            return m5919j.values().iterator();
        }
        return new p23(w23Var);
    }
}
