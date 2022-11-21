package p102k1;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import p102k1.C4409f;
import p111l1.C4554a;
import p111l1.InterfaceC4555b;
/* renamed from: k1.j */
/* loaded from: classes.dex */
public final class C4423j implements Comparable<C4423j> {

    /* renamed from: a */
    public final byte[] f18385a;

    /* renamed from: c */
    public InterfaceC4555b m16562c() {
        return new C4554a(this.f18385a);
    }

    /* renamed from: f */
    public void m16560f(C4409f.C4416g c4416g) {
        c4416g.write(this.f18385a);
    }

    public String toString() {
        return Integer.toHexString(this.f18385a[0] & DefaultClassResolver.NAME) + "...(" + this.f18385a.length + ")";
    }

    @Override // java.lang.Comparable
    /* renamed from: d */
    public int compareTo(C4423j c4423j) {
        int min = Math.min(this.f18385a.length, c4423j.f18385a.length);
        for (int i = 0; i < min; i++) {
            byte b = this.f18385a[i];
            byte b2 = c4423j.f18385a[i];
            if (b != b2) {
                return (b & DefaultClassResolver.NAME) - (b2 & DefaultClassResolver.NAME);
            }
        }
        return this.f18385a.length - c4423j.f18385a.length;
    }

    public C4423j(byte[] bArr) {
        this.f18385a = bArr;
    }
}
