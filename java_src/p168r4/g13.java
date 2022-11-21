package p168r4;

import java.io.IOException;
import java.util.Iterator;
import net.bytebuddy.pool.TypePool;
/* renamed from: r4.g13 */
/* loaded from: classes2.dex */
public final class g13 implements Iterable<String> {

    /* renamed from: a */
    public final /* synthetic */ CharSequence f23831a;

    /* renamed from: b */
    public final /* synthetic */ j13 f23832b;

    public g13(j13 j13Var, CharSequence charSequence) {
        this.f23832b = j13Var;
        this.f23831a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        Iterator<String> m10439g;
        m10439g = this.f23832b.m10439g(this.f23831a);
        return m10439g;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        Iterator<String> it = iterator();
        try {
            if (it.hasNext()) {
                sb.append(q03.m8078a(it.next(), ", "));
                while (it.hasNext()) {
                    sb.append((CharSequence) ", ");
                    sb.append(q03.m8078a(it.next(), ", "));
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
