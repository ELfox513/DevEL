package p168r4;

import java.util.NoSuchElementException;
/* renamed from: r4.mo3 */
/* loaded from: classes2.dex */
public final class mo3 extends dl3 {

    /* renamed from: a */
    public final po3 f27836a;

    /* renamed from: b */
    public fl3 f27837b = m9302a();

    /* renamed from: d */
    public final /* synthetic */ qo3 f27838d;

    /* renamed from: a */
    public final fl3 m9302a() {
        if (this.f27836a.hasNext()) {
            return this.f27836a.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f27837b != null;
    }

    public mo3(qo3 qo3Var) {
        this.f27838d = qo3Var;
        this.f27836a = new po3(qo3Var, null);
    }

    @Override // p168r4.fl3
    public final byte zza() {
        fl3 fl3Var = this.f27837b;
        if (fl3Var != null) {
            byte zza = fl3Var.zza();
            if (!this.f27837b.hasNext()) {
                this.f27837b = m9302a();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
