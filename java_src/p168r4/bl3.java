package p168r4;

import java.util.NoSuchElementException;
/* renamed from: r4.bl3 */
/* loaded from: classes2.dex */
public final class bl3 extends dl3 {

    /* renamed from: a */
    public int f21102a = 0;

    /* renamed from: b */
    public final int f21103b;

    /* renamed from: d */
    public final /* synthetic */ ll3 f21104d;

    public bl3(ll3 ll3Var) {
        this.f21104d = ll3Var;
        this.f21103b = ll3Var.mo7747o();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f21102a < this.f21103b;
    }

    @Override // p168r4.fl3
    public final byte zza() {
        int i = this.f21102a;
        if (i < this.f21103b) {
            this.f21102a = i + 1;
            return this.f21104d.mo7748m(i);
        }
        throw new NoSuchElementException();
    }
}
