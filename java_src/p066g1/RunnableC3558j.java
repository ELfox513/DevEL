package p066g1;

import androidx.work.WorkerParameters;
import p217x0.C7199i;
/* renamed from: g1.j */
/* loaded from: classes.dex */
public class RunnableC3558j implements Runnable {

    /* renamed from: a */
    public C7199i f16098a;

    /* renamed from: b */
    public String f16099b;

    /* renamed from: d */
    public WorkerParameters.C0375a f16100d;

    @Override // java.lang.Runnable
    public void run() {
        this.f16098a.m2161p().m2200k(this.f16099b, this.f16100d);
    }

    public RunnableC3558j(C7199i c7199i, String str, WorkerParameters.C0375a c0375a) {
        this.f16098a = c7199i;
        this.f16099b = str;
        this.f16100d = c0375a;
    }
}
