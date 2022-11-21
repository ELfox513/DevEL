package p168r4;

import java.util.Arrays;
/* renamed from: r4.t03 */
/* loaded from: classes2.dex */
public final class t03 {

    /* renamed from: a */
    public final String f31603a;

    /* renamed from: b */
    public final s03 f31604b;

    /* renamed from: c */
    public s03 f31605c;

    public /* synthetic */ t03(String str, r03 r03Var) {
        s03 s03Var = new s03(null);
        this.f31604b = s03Var;
        this.f31605c = s03Var;
        str.getClass();
        this.f31603a = str;
    }

    /* renamed from: a */
    public final t03 m6937a(Object obj) {
        s03 s03Var = new s03(null);
        this.f31605c.f31203b = s03Var;
        this.f31605c = s03Var;
        s03Var.f31202a = obj;
        return this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f31603a);
        sb.append('{');
        s03 s03Var = this.f31604b.f31203b;
        String str = "";
        while (s03Var != null) {
            Object obj = s03Var.f31202a;
            sb.append(str);
            if (obj != null && obj.getClass().isArray()) {
                String deepToString = Arrays.deepToString(new Object[]{obj});
                sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
            } else {
                sb.append(obj);
            }
            s03Var = s03Var.f31203b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
