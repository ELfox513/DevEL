package p168r4;
/* renamed from: r4.dd2 */
/* loaded from: classes2.dex */
public final class dd2 implements aq1 {

    /* renamed from: a */
    public final /* synthetic */ ff2 f22229a;

    public /* synthetic */ dd2(ff2 ff2Var, ee2 ee2Var) {
        this.f22229a = ff2Var;
    }

    @Override // p168r4.aq1
    public final void zza() {
        if (ff2.m11540L0(this.f22229a) != null) {
            ff2.m11540L0(this.f22229a).mo8035a();
        }
    }

    @Override // p168r4.aq1
    /* renamed from: a */
    public final void mo12162a(Exception exc) {
        C5720eb.m11832b("MediaCodecAudioRenderer", "Audio sink error", exc);
        ff2.m11543I0(this.f22229a).m6100i(exc);
    }
}
