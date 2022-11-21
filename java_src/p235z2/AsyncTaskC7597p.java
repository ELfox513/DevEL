package p235z2;

import android.os.AsyncTask;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p168r4.C6300u;
import p168r4.cm0;
/* renamed from: z2.p */
/* loaded from: classes.dex */
public final class AsyncTaskC7597p extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    public final /* synthetic */ BinderC7600s f37578a;

    public /* synthetic */ AsyncTaskC7597p(BinderC7600s binderC7600s, C7598q c7598q) {
        this.f37578a = binderC7600s;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a */
    public final String doInBackground(Void... voidArr) {
        try {
            BinderC7600s binderC7600s = this.f37578a;
            BinderC7600s.m955r7(binderC7600s, (C6300u) BinderC7600s.m963m7(binderC7600s).get(1000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            e = e;
            cm0.m12436g("", e);
        } catch (ExecutionException e2) {
            e = e2;
            cm0.m12436g("", e);
        } catch (TimeoutException e3) {
            cm0.m12436g("", e3);
        }
        return this.f37578a.m971h7();
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        if (BinderC7600s.m960o7(this.f37578a) != null && str2 != null) {
            BinderC7600s.m960o7(this.f37578a).loadUrl(str2);
        }
    }
}
