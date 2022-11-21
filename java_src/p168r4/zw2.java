package p168r4;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: r4.zw2 */
/* loaded from: classes2.dex */
public final class zw2 extends tw2 {
    /* JADX WARN: Multi-variable type inference failed */
    public zw2(mw2 mw2Var, mw2 mw2Var2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(mw2Var, mw2Var2, hashSet, jSONObject, null);
    }

    @Override // p168r4.uw2, android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(String str) {
        onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ String doInBackground(Object[] objArr) {
        if (gw2.m11038i(this.f32047d, this.f32463b.m9256d())) {
            return null;
        }
        this.f32463b.m9255e(this.f32047d);
        return this.f32047d.toString();
    }

    @Override // p168r4.uw2
    /* renamed from: a */
    public final void mo4061a(String str) {
        nv2 m8988a;
        if (!TextUtils.isEmpty(str) && (m8988a = nv2.m8988a()) != null) {
            for (cv2 cv2Var : m8988a.m8984e()) {
                if (this.f32046c.contains(cv2Var.m12341h())) {
                    cv2Var.m12342g().m12293f(str, this.f32048e);
                }
            }
        }
        super.onPostExecute(str);
    }
}
