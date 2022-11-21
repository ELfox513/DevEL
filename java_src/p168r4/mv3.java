package p168r4;
/* renamed from: r4.mv3 */
/* loaded from: classes2.dex */
public final class mv3 implements Comparable<mv3> {

    /* renamed from: a */
    public final boolean f27913a;

    /* renamed from: b */
    public final boolean f27914b;

    public mv3(C5713e5 c5713e5, int i) {
        this.f27913a = 1 == (c5713e5.f22806d & 1);
        this.f27914b = uv3.m6327k(i, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: c */
    public final int compareTo(mv3 mv3Var) {
        return c33.m12635i().mo4467d(this.f27914b, mv3Var.f27914b).mo4467d(this.f27913a, mv3Var.f27913a).mo4466e();
    }
}
