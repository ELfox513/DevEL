package p018b5;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
/* renamed from: b5.j8 */
/* loaded from: classes2.dex */
public final class C0717j8 {

    /* renamed from: a */
    public final Object f1917a;

    /* renamed from: b */
    public final int f1918b;

    public C0717j8(Object obj, int i) {
        this.f1917a = obj;
        this.f1918b = i;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f1917a) * MeshBuilder.MAX_INDEX) + this.f1918b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0717j8)) {
            return false;
        }
        C0717j8 c0717j8 = (C0717j8) obj;
        if (this.f1917a != c0717j8.f1917a || this.f1918b != c0717j8.f1918b) {
            return false;
        }
        return true;
    }
}
