package p015b2;

import java.util.NoSuchElementException;
/* renamed from: b2.n */
/* loaded from: classes.dex */
public class C0445n implements InterfaceC0442k {

    /* renamed from: a */
    public final C0441j f1535a;

    /* renamed from: b2.n$a */
    /* loaded from: classes.dex */
    public class C0446a implements InterfaceC0440i {

        /* renamed from: a */
        public int f1536a = 0;

        @Override // p015b2.InterfaceC0440i
        public boolean hasNext() {
            return this.f1536a < C0445n.this.f1535a.size();
        }

        public C0446a() {
        }

        @Override // p015b2.InterfaceC0440i
        public int next() {
            if (hasNext()) {
                C0441j c0441j = C0445n.this.f1535a;
                int i = this.f1536a;
                this.f1536a = i + 1;
                return c0441j.m26470B(i);
            }
            throw new NoSuchElementException();
        }
    }

    @Override // p015b2.InterfaceC0442k
    /* renamed from: a */
    public int mo26449a() {
        return this.f1535a.size();
    }

    @Override // p015b2.InterfaceC0442k
    /* renamed from: c */
    public boolean mo26447c(int i) {
        return this.f1535a.m26468D(i) >= 0;
    }

    @Override // p015b2.InterfaceC0442k
    public InterfaceC0440i iterator() {
        return new C0446a();
    }

    public String toString() {
        return this.f1535a.toString();
    }

    @Override // p015b2.InterfaceC0442k
    public void add(int i) {
        int m26456z = this.f1535a.m26456z(i);
        if (m26456z < 0) {
            this.f1535a.m26467E(-(m26456z + 1), i);
        }
    }

    @Override // p015b2.InterfaceC0442k
    /* renamed from: b */
    public void mo26448b(InterfaceC0442k interfaceC0442k) {
        int i = 0;
        if (interfaceC0442k instanceof C0445n) {
            C0445n c0445n = (C0445n) interfaceC0442k;
            int size = this.f1535a.size();
            int size2 = c0445n.f1535a.size();
            int i2 = 0;
            while (i < size2 && i2 < size) {
                while (i < size2 && c0445n.f1535a.m26470B(i) < this.f1535a.m26470B(i2)) {
                    add(c0445n.f1535a.m26470B(i));
                    i++;
                }
                if (i == size2) {
                    break;
                }
                while (i2 < size && c0445n.f1535a.m26470B(i) >= this.f1535a.m26470B(i2)) {
                    i2++;
                }
            }
            while (i < size2) {
                add(c0445n.f1535a.m26470B(i));
                i++;
            }
            this.f1535a.m26459N();
        } else if (interfaceC0442k instanceof C0429b) {
            C0429b c0429b = (C0429b) interfaceC0442k;
            while (i >= 0) {
                this.f1535a.m26457x(i);
                i = C0431c.m26530e(c0429b.f1504a, i + 1);
            }
            this.f1535a.m26459N();
        } else {
            InterfaceC0440i it = interfaceC0442k.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
        }
    }

    public C0445n() {
        C0441j c0441j = new C0441j();
        this.f1535a = c0441j;
        c0441j.m26459N();
    }
}
