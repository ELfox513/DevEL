package p168r4;

import android.os.AsyncTask;
/* renamed from: r4.uw2 */
/* loaded from: classes2.dex */
public abstract class uw2 extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    public vw2 f32462a;

    /* renamed from: b */
    public final mw2 f32463b;

    public uw2(mw2 mw2Var, byte[] bArr) {
        this.f32463b = mw2Var;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        vw2 vw2Var = this.f32462a;
        if (vw2Var != null) {
            vw2Var.m5986b(this);
        }
    }

    /* renamed from: b */
    public final void m6322b(vw2 vw2Var) {
        this.f32462a = vw2Var;
    }
}
