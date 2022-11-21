package p168r4;
/* renamed from: r4.b13 */
/* loaded from: classes2.dex */
public final class b13 extends h13 {

    /* renamed from: r */
    public final /* synthetic */ d13 f20811r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b13(d13 d13Var, j13 j13Var, CharSequence charSequence) {
        super(j13Var, charSequence);
        this.f20811r = d13Var;
    }

    @Override // p168r4.h13
    /* renamed from: e */
    public final int mo11008e(int i) {
        return i + 1;
    }

    @Override // p168r4.h13
    /* renamed from: c */
    public final int mo11009c(int i) {
        m03 m03Var = this.f20811r.f22035a;
        CharSequence charSequence = this.f24403d;
        int length = charSequence.length();
        z03.m4491f(i, length, "index");
        while (i < length) {
            if (!m03Var.mo9524a(charSequence.charAt(i))) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }
}
