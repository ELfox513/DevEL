package p015b2;

import java.util.NoSuchElementException;
/* renamed from: b2.b */
/* loaded from: classes.dex */
public class C0429b implements InterfaceC0442k {

    /* renamed from: a */
    public int[] f1504a;

    /* renamed from: b2.b$a */
    /* loaded from: classes.dex */
    public class C0430a implements InterfaceC0440i {

        /* renamed from: a */
        public int f1505a;

        @Override // p015b2.InterfaceC0440i
        public boolean hasNext() {
            return this.f1505a >= 0;
        }

        public C0430a() {
            this.f1505a = C0431c.m26530e(C0429b.this.f1504a, 0);
        }

        @Override // p015b2.InterfaceC0440i
        public int next() {
            if (hasNext()) {
                int i = this.f1505a;
                this.f1505a = C0431c.m26530e(C0429b.this.f1504a, i + 1);
                return i;
            }
            throw new NoSuchElementException();
        }
    }

    @Override // p015b2.InterfaceC0442k
    /* renamed from: a */
    public int mo26449a() {
        return C0431c.m26533b(this.f1504a);
    }

    @Override // p015b2.InterfaceC0442k
    /* renamed from: c */
    public boolean mo26447c(int i) {
        return i < C0431c.m26528g(this.f1504a) && C0431c.m26529f(this.f1504a, i);
    }

    @Override // p015b2.InterfaceC0442k
    public InterfaceC0440i iterator() {
        return new C0430a();
    }

    @Override // p015b2.InterfaceC0442k
    /* renamed from: b */
    public void mo26448b(InterfaceC0442k interfaceC0442k) {
        if (interfaceC0442k instanceof C0429b) {
            C0429b c0429b = (C0429b) interfaceC0442k;
            m26535d(C0431c.m26528g(c0429b.f1504a) + 1);
            C0431c.m26525j(this.f1504a, c0429b.f1504a);
        } else if (interfaceC0442k instanceof C0445n) {
            C0445n c0445n = (C0445n) interfaceC0442k;
            int size = c0445n.f1535a.size();
            if (size > 0) {
                m26535d(c0445n.f1535a.m26470B(size - 1));
            }
            for (int i = 0; i < c0445n.f1535a.size(); i++) {
                C0431c.m26523l(this.f1504a, c0445n.f1535a.m26470B(i), true);
            }
        } else {
            InterfaceC0440i it = interfaceC0442k.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
        }
    }

    /* renamed from: d */
    public final void m26535d(int i) {
        if (i >= C0431c.m26528g(this.f1504a)) {
            int[] m26526i = C0431c.m26526i(Math.max(i + 1, C0431c.m26528g(this.f1504a) * 2));
            int[] iArr = this.f1504a;
            System.arraycopy(iArr, 0, m26526i, 0, iArr.length);
            this.f1504a = m26526i;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        int m26530e = C0431c.m26530e(this.f1504a, 0);
        boolean z = true;
        while (m26530e >= 0) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(m26530e);
            m26530e = C0431c.m26530e(this.f1504a, m26530e + 1);
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public C0429b(int i) {
        this.f1504a = C0431c.m26526i(i);
    }

    @Override // p015b2.InterfaceC0442k
    public void add(int i) {
        m26535d(i);
        C0431c.m26523l(this.f1504a, i, true);
    }
}
