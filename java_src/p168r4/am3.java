package p168r4;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
/* renamed from: r4.am3 */
/* loaded from: classes2.dex */
public final class am3 {

    /* renamed from: a */
    public final Object f20541a;

    /* renamed from: b */
    public final int f20542b;

    public am3(Object obj, int i) {
        this.f20541a = obj;
        this.f20542b = i;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f20541a) * MeshBuilder.MAX_INDEX) + this.f20542b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof am3)) {
            return false;
        }
        am3 am3Var = (am3) obj;
        if (this.f20541a != am3Var.f20541a || this.f20542b != am3Var.f20542b) {
            return false;
        }
        return true;
    }
}
