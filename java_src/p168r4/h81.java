package p168r4;
/* renamed from: r4.h81 */
/* loaded from: classes2.dex */
public final class h81 {

    /* renamed from: e */
    public static final h81 f24506e = new h81(-1, -1, -1);

    /* renamed from: a */
    public final int f24507a;

    /* renamed from: b */
    public final int f24508b;

    /* renamed from: c */
    public final int f24509c;

    /* renamed from: d */
    public final int f24510d;

    public final String toString() {
        int i = this.f24507a;
        int i2 = this.f24508b;
        int i3 = this.f24509c;
        StringBuilder sb = new StringBuilder(83);
        sb.append("AudioFormat[sampleRate=");
        sb.append(i);
        sb.append(", channelCount=");
        sb.append(i2);
        sb.append(", encoding=");
        sb.append(i3);
        sb.append(']');
        return sb.toString();
    }

    public h81(int i, int i2, int i3) {
        int i4;
        this.f24507a = i;
        this.f24508b = i2;
        this.f24509c = i3;
        if (C5979lc.m9690p(i3)) {
            i4 = C5979lc.m9687s(i3, i2);
        } else {
            i4 = -1;
        }
        this.f24510d = i4;
    }
}
