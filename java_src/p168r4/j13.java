package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: r4.j13 */
/* loaded from: classes2.dex */
public final class j13 {

    /* renamed from: a */
    public final m03 f25860a;

    /* renamed from: b */
    public final i13 f25861b;

    public j13(i13 i13Var) {
        l03 l03Var = l03.f27010b;
        this.f25861b = i13Var;
        this.f25860a = l03Var;
    }

    /* renamed from: b */
    public static j13 m10444b(m03 m03Var) {
        return new j13(new d13(m03Var));
    }

    /* renamed from: c */
    public static j13 m10443c(int i) {
        return new j13(new f13(4000));
    }

    /* renamed from: g */
    public final Iterator<String> m10439g(CharSequence charSequence) {
        return this.f25861b.mo10746a(this, charSequence);
    }

    /* renamed from: d */
    public final Iterable<String> m10442d(CharSequence charSequence) {
        charSequence.getClass();
        return new g13(this, charSequence);
    }

    /* renamed from: f */
    public final List<String> m10440f(CharSequence charSequence) {
        Iterator<String> m10439g = m10439g(charSequence);
        ArrayList arrayList = new ArrayList();
        while (m10439g.hasNext()) {
            arrayList.add(m10439g.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
