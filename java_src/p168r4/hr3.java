package p168r4;

import android.util.Log;
/* renamed from: r4.hr3 */
/* loaded from: classes2.dex */
public final class hr3 extends mr3 {

    /* renamed from: a */
    public final String f24808a;

    public hr3(String str) {
        this.f24808a = str;
    }

    @Override // p168r4.mr3
    /* renamed from: a */
    public final void mo9277a(String str) {
        String str2 = this.f24808a;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(str).length());
        sb.append(str2);
        sb.append(":");
        sb.append(str);
        Log.d("isoparser", sb.toString());
    }
}
