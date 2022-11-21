package p168r4;
/* renamed from: r4.j03 */
/* loaded from: classes2.dex */
public final class j03 extends i03 {

    /* renamed from: a */
    public final char f25850a;

    public j03(char c) {
        this.f25850a = c;
    }

    @Override // p168r4.m03
    /* renamed from: a */
    public final boolean mo9524a(char c) {
        return c == this.f25850a;
    }

    public final String toString() {
        int i = this.f25850a;
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(i & 15);
            i >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(copyValueOf);
        sb.append("')");
        return sb.toString();
    }
}
