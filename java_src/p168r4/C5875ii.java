package p168r4;
/* renamed from: r4.ii */
/* loaded from: classes2.dex */
public final class C5875ii implements InterfaceC5912jj {

    /* renamed from: a */
    public final InterfaceC5912jj[] f25098a;

    public C5875ii(InterfaceC5912jj[] interfaceC5912jjArr) {
        this.f25098a = interfaceC5912jjArr;
    }

    @Override // p168r4.InterfaceC5912jj
    /* renamed from: d */
    public final boolean mo5303d(long j) {
        InterfaceC5912jj[] interfaceC5912jjArr;
        boolean z;
        boolean z2 = false;
        do {
            long zza = zza();
            if (zza == Long.MIN_VALUE) {
                break;
            }
            z = false;
            for (InterfaceC5912jj interfaceC5912jj : this.f25098a) {
                if (interfaceC5912jj.zza() == zza) {
                    z |= interfaceC5912jj.mo5303d(j);
                }
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // p168r4.InterfaceC5912jj
    public final long zza() {
        long j = Long.MAX_VALUE;
        for (InterfaceC5912jj interfaceC5912jj : this.f25098a) {
            long zza = interfaceC5912jj.zza();
            if (zza != Long.MIN_VALUE) {
                j = Math.min(j, zza);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }
}
