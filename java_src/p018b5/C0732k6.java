package p018b5;

import android.util.Log;
/* renamed from: b5.k6 */
/* loaded from: classes2.dex */
public final class C0732k6 extends AbstractC0851r6<Long> {
    public C0732k6(C0800o6 c0800o6, String str, Long l, boolean z) {
        super(c0800o6, str, l, true, null);
    }

    @Override // p018b5.AbstractC0851r6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Long mo25431a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            String m25429c = super.m25429c();
            String str = (String) obj;
            StringBuilder sb = new StringBuilder(String.valueOf(m25429c).length() + 25 + str.length());
            sb.append("Invalid long value for ");
            sb.append(m25429c);
            sb.append(": ");
            sb.append(str);
            Log.e("PhenotypeFlag", sb.toString());
            return null;
        }
    }
}
