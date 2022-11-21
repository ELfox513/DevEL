package p168r4;
/* renamed from: r4.xq2 */
/* loaded from: classes2.dex */
public final class xq2 {

    /* renamed from: a */
    public final wq2 f33695a = new wq2();

    /* renamed from: b */
    public int f33696b;

    /* renamed from: c */
    public int f33697c;

    /* renamed from: d */
    public int f33698d;

    /* renamed from: e */
    public int f33699e;

    /* renamed from: f */
    public int f33700f;

    /* renamed from: a */
    public final void m5168a() {
        this.f33698d++;
    }

    /* renamed from: b */
    public final void m5167b() {
        this.f33699e++;
    }

    /* renamed from: c */
    public final void m5166c() {
        this.f33696b++;
        this.f33695a.f33290a = true;
    }

    /* renamed from: d */
    public final void m5165d() {
        this.f33697c++;
        this.f33695a.f33291b = true;
    }

    /* renamed from: e */
    public final void m5164e() {
        this.f33700f++;
    }

    /* renamed from: f */
    public final wq2 m5163f() {
        wq2 clone = this.f33695a.clone();
        wq2 wq2Var = this.f33695a;
        wq2Var.f33290a = false;
        wq2Var.f33291b = false;
        return clone;
    }

    /* renamed from: g */
    public final String m5162g() {
        return "\n\tPool does not exist: " + this.f33698d + "\n\tNew pools created: " + this.f33696b + "\n\tPools removed: " + this.f33697c + "\n\tEntries added: " + this.f33700f + "\n\tNo entries retrieved: " + this.f33699e + "\n";
    }
}
