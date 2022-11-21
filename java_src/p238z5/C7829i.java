package p238z5;

import p238z5.AbstractC7762a0;
/* renamed from: z5.i */
/* loaded from: classes2.dex */
public final class C7829i extends AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b {

    /* renamed from: a */
    public final String f38136a;

    @Override // p238z5.AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b
    /* renamed from: a */
    public String mo244a() {
        return this.f38136a;
    }

    public int hashCode() {
        return this.f38136a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.f38136a + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b) {
            return this.f38136a.equals(((AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7775b) obj).mo244a());
        }
        return false;
    }
}
