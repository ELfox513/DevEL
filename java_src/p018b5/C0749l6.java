package p018b5;

import android.util.Log;
/* renamed from: b5.l6 */
/* loaded from: classes2.dex */
public final class C0749l6 extends AbstractC0851r6<Boolean> {
    public C0749l6(C0800o6 c0800o6, String str, Boolean bool, boolean z) {
        super(c0800o6, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p018b5.AbstractC0851r6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Boolean mo25431a(Object obj) {
        if (C0850r5.f2241c.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (C0850r5.f2242d.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        String m25429c = super.m25429c();
        String str = (String) obj;
        StringBuilder sb = new StringBuilder(String.valueOf(m25429c).length() + 28 + str.length());
        sb.append("Invalid boolean value for ");
        sb.append(m25429c);
        sb.append(": ");
        sb.append(str);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
