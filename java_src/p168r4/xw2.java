package p168r4;

import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: r4.xw2 */
/* loaded from: classes2.dex */
public final class xw2 extends tw2 {
    /* JADX WARN: Multi-variable type inference failed */
    public xw2(mw2 mw2Var, mw2 mw2Var2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(mw2Var, mw2Var2, hashSet, jSONObject, null);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        return this.f32047d.toString();
    }

    @Override // p168r4.uw2, android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        String str2 = str;
        m4960c(str2);
        super.onPostExecute(str2);
    }

    @Override // p168r4.uw2
    /* renamed from: a */
    public final void mo4061a(String str) {
        m4960c(str);
        super.onPostExecute(str);
    }

    /* renamed from: c */
    public final void m4960c(String str) {
        nv2 m8988a = nv2.m8988a();
        if (m8988a != null) {
            for (cv2 cv2Var : m8988a.m8984e()) {
                if (this.f32046c.contains(cv2Var.m12341h())) {
                    cv2Var.m12342g().m12292g(str, this.f32048e);
                }
            }
        }
    }
}
