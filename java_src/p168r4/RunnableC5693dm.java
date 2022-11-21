package p168r4;
/* renamed from: r4.dm */
/* loaded from: classes2.dex */
public final class RunnableC5693dm implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f22331a;

    /* renamed from: b */
    public final /* synthetic */ int f22332b;

    /* renamed from: d */
    public final /* synthetic */ int f22333d;

    /* renamed from: k */
    public final /* synthetic */ float f22334k;

    /* renamed from: p */
    public final /* synthetic */ C5805gm f22335p;

    public RunnableC5693dm(C5805gm c5805gm, int i, int i2, int i3, float f) {
        this.f22335p = c5805gm;
        this.f22331a = i;
        this.f22332b = i2;
        this.f22333d = i3;
        this.f22334k = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC5842hm interfaceC5842hm;
        interfaceC5842hm = this.f22335p.f24140b;
        interfaceC5842hm.mo5197j(this.f22331a, this.f22332b, this.f22333d, this.f22334k);
    }
}
