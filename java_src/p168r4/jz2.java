package p168r4;

import android.os.RemoteException;
import android.util.Log;
/* renamed from: r4.jz2 */
/* loaded from: classes2.dex */
public final class jz2 {

    /* renamed from: a */
    public final byte[] f26193a;

    /* renamed from: b */
    public int f26194b;

    /* renamed from: c */
    public int f26195c;

    /* renamed from: d */
    public final /* synthetic */ lz2 f26196d;

    public /* synthetic */ jz2(lz2 lz2Var, byte[] bArr, kz2 kz2Var) {
        this.f26196d = lz2Var;
        this.f26193a = bArr;
    }

    /* renamed from: a */
    public final synchronized void m10131a() {
        try {
            lz2 lz2Var = this.f26196d;
            if (lz2Var.f27427a) {
                lz2Var.f27428b.m9248A2(this.f26193a);
                this.f26196d.f27428b.m9246Y(this.f26194b);
                this.f26196d.f27428b.m9247I0(this.f26195c);
                this.f26196d.f27428b.m9245b2(null);
                this.f26196d.f27428b.m9244c();
            }
        } catch (RemoteException e) {
            Log.d("GASS", "Clearcut log failed", e);
        }
    }

    /* renamed from: b */
    public final jz2 m10130b(int i) {
        this.f26194b = i;
        return this;
    }

    /* renamed from: c */
    public final jz2 m10129c(int i) {
        this.f26195c = i;
        return this;
    }
}
