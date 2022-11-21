package p168r4;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: r4.gj */
/* loaded from: classes2.dex */
public final class C5802gj implements InterfaceC6464yf {

    /* renamed from: e */
    public C5690dj f24106e;

    /* renamed from: f */
    public C5690dj f24107f;

    /* renamed from: g */
    public C5870id f24108g;

    /* renamed from: h */
    public C5870id f24109h;

    /* renamed from: i */
    public long f24110i;

    /* renamed from: k */
    public InterfaceC5728ej f24112k;

    /* renamed from: l */
    public final C5913jk f24113l;

    /* renamed from: a */
    public final C5653cj f24102a = new C5653cj();

    /* renamed from: b */
    public final C5617bj f24103b = new C5617bj();

    /* renamed from: c */
    public final C5692dl f24104c = new C5692dl(32);

    /* renamed from: d */
    public final AtomicInteger f24105d = new AtomicInteger();

    /* renamed from: j */
    public int f24111j = 65536;

    @Override // p168r4.InterfaceC6464yf
    /* renamed from: a */
    public final void mo4742a(long j, int i, int i2, int i3, C6427xf c6427xf) {
        if (m11135q()) {
            try {
                this.f24102a.m12447k(j, i, this.f24110i - i2, i2, c6427xf);
                return;
            } finally {
                m11134r();
            }
        }
        this.f24102a.m12446l(j);
    }

    /* renamed from: f */
    public final int m11146f() {
        return this.f24102a.m12455c();
    }

    /* renamed from: h */
    public final boolean m11144h() {
        return this.f24102a.m12454d();
    }

    /* renamed from: i */
    public final C5870id m11143i() {
        return this.f24102a.m12453e();
    }

    /* renamed from: j */
    public final long m11142j() {
        return this.f24102a.m12452f();
    }

    /* renamed from: n */
    public final void m11138n(InterfaceC5728ej interfaceC5728ej) {
        this.f24112k = interfaceC5728ej;
    }

    /* renamed from: q */
    public final boolean m11135q() {
        return this.f24105d.compareAndSet(0, 1);
    }

    @Override // p168r4.InterfaceC6464yf
    /* renamed from: d */
    public final void mo4739d(C5870id c5870id) {
        C5870id c5870id2;
        if (c5870id == null) {
            c5870id2 = null;
        } else {
            c5870id2 = c5870id;
        }
        boolean m12448j = this.f24102a.m12448j(c5870id2);
        this.f24109h = c5870id;
        InterfaceC5728ej interfaceC5728ej = this.f24112k;
        if (interfaceC5728ej != null && m12448j) {
            interfaceC5728ej.mo7833c(c5870id2);
        }
    }

    /* renamed from: e */
    public final void m11147e(boolean z) {
        int i;
        AtomicInteger atomicInteger = this.f24105d;
        if (true != z) {
            i = 2;
        } else {
            i = 0;
        }
        int andSet = atomicInteger.getAndSet(i);
        m11133s();
        this.f24102a.m12456b();
        if (andSet == 2) {
            this.f24108g = null;
        }
    }

    /* renamed from: g */
    public final void m11145g() {
        if (this.f24105d.getAndSet(2) == 0) {
            m11133s();
        }
    }

    /* renamed from: k */
    public final void m11141k() {
        long m12450h = this.f24102a.m12450h();
        if (m12450h != -1) {
            m11136p(m12450h);
        }
    }

    /* renamed from: l */
    public final boolean m11140l(long j, boolean z) {
        long m12449i = this.f24102a.m12449i(j, z);
        if (m12449i == -1) {
            return false;
        }
        m11136p(m12449i);
        return true;
    }

    /* renamed from: m */
    public final int m11139m(C5906jd c5906jd, C5835hf c5835hf, boolean z, boolean z2, long j) {
        int i;
        int m12451g = this.f24102a.m12451g(c5906jd, c5835hf, z, z2, this.f24108g, this.f24103b);
        if (m12451g != -5) {
            if (m12451g != -4) {
                return -3;
            }
            if (!c5835hf.m12481c()) {
                if (c5835hf.f24564d < j) {
                    c5835hf.m12478f(Integer.MIN_VALUE);
                }
                if (c5835hf.m10933i()) {
                    C5617bj c5617bj = this.f24103b;
                    long j2 = c5617bj.f21070b;
                    this.f24104c.m12122a(1);
                    m11137o(j2, this.f24104c.f22312a, 1);
                    long j3 = j2 + 1;
                    byte b = this.f24104c.f22312a[0];
                    int i2 = b & 128;
                    int i3 = b & Byte.MAX_VALUE;
                    C5761ff c5761ff = c5835hf.f24562b;
                    if (c5761ff.f23466a == null) {
                        c5761ff.f23466a = new byte[16];
                    }
                    m11137o(j3, c5761ff.f23466a, i3);
                    long j4 = j3 + i3;
                    if (i2 != 0) {
                        this.f24104c.m12122a(2);
                        m11137o(j4, this.f24104c.f22312a, 2);
                        j4 += 2;
                        i = this.f24104c.m12110m();
                    } else {
                        i = 1;
                    }
                    C5761ff c5761ff2 = c5835hf.f24562b;
                    int[] iArr = c5761ff2.f23469d;
                    if (iArr == null || iArr.length < i) {
                        iArr = new int[i];
                    }
                    int[] iArr2 = iArr;
                    int[] iArr3 = c5761ff2.f23470e;
                    if (iArr3 == null || iArr3.length < i) {
                        iArr3 = new int[i];
                    }
                    int[] iArr4 = iArr3;
                    if (i2 != 0) {
                        int i4 = i * 6;
                        this.f24104c.m12122a(i4);
                        m11137o(j4, this.f24104c.f22312a, i4);
                        j4 += i4;
                        this.f24104c.m12114i(0);
                        for (int i5 = 0; i5 < i; i5++) {
                            iArr2[i5] = this.f24104c.m12110m();
                            iArr4[i5] = this.f24104c.m12102u();
                        }
                    } else {
                        iArr2[0] = 0;
                        iArr4[0] = c5617bj.f21069a - ((int) (j4 - c5617bj.f21070b));
                    }
                    C6427xf c6427xf = c5617bj.f21072d;
                    C5761ff c5761ff3 = c5835hf.f24562b;
                    c5761ff3.m11549a(i, iArr2, iArr4, c6427xf.f33580b, c5761ff3.f23466a, 1);
                    long j5 = c5617bj.f21070b;
                    int i6 = (int) (j4 - j5);
                    c5617bj.f21070b = j5 + i6;
                    c5617bj.f21069a -= i6;
                }
                c5835hf.m10934h(this.f24103b.f21069a);
                C5617bj c5617bj2 = this.f24103b;
                long j6 = c5617bj2.f21070b;
                ByteBuffer byteBuffer = c5835hf.f24563c;
                int i7 = c5617bj2.f21069a;
                m11136p(j6);
                while (i7 > 0) {
                    int i8 = (int) (j6 - this.f24106e.f22286a);
                    int min = Math.min(i7, 65536 - i8);
                    C5654ck c5654ck = this.f24106e.f22289d;
                    byteBuffer.put(c5654ck.f21567a, i8, min);
                    j6 += min;
                    i7 -= min;
                    if (j6 == this.f24106e.f22287b) {
                        this.f24113l.m10260d(c5654ck);
                        C5690dj c5690dj = this.f24106e;
                        c5690dj.f22289d = null;
                        this.f24106e = c5690dj.f22290e;
                    }
                }
                m11136p(this.f24103b.f21071c);
            }
            return -4;
        }
        this.f24108g = c5906jd.f26005a;
        return -5;
    }

    /* renamed from: p */
    public final void m11136p(long j) {
        while (true) {
            C5690dj c5690dj = this.f24106e;
            if (j >= c5690dj.f22287b) {
                this.f24113l.m10260d(c5690dj.f22289d);
                C5690dj c5690dj2 = this.f24106e;
                c5690dj2.f22289d = null;
                this.f24106e = c5690dj2.f22290e;
            } else {
                return;
            }
        }
    }

    /* renamed from: r */
    public final void m11134r() {
        if (!this.f24105d.compareAndSet(1, 0)) {
            m11133s();
        }
    }

    /* renamed from: s */
    public final void m11133s() {
        this.f24102a.m12457a();
        C5690dj c5690dj = this.f24106e;
        if (c5690dj.f22288c) {
            C5690dj c5690dj2 = this.f24107f;
            int i = (c5690dj2.f22288c ? 1 : 0) + (((int) (c5690dj2.f22286a - c5690dj.f22286a)) / 65536);
            C5654ck[] c5654ckArr = new C5654ck[i];
            for (int i2 = 0; i2 < i; i2++) {
                c5654ckArr[i2] = c5690dj.f22289d;
                c5690dj.f22289d = null;
                c5690dj = c5690dj.f22290e;
            }
            this.f24113l.m10259e(c5654ckArr);
        }
        C5690dj c5690dj3 = new C5690dj(0L, 65536);
        this.f24106e = c5690dj3;
        this.f24107f = c5690dj3;
        this.f24110i = 0L;
        this.f24111j = 65536;
        this.f24113l.m10258f();
    }

    /* renamed from: t */
    public final int m11132t(int i) {
        if (this.f24111j == 65536) {
            this.f24111j = 0;
            C5690dj c5690dj = this.f24107f;
            if (c5690dj.f22288c) {
                this.f24107f = c5690dj.f22290e;
            }
            C5690dj c5690dj2 = this.f24107f;
            C5654ck m10261c = this.f24113l.m10261c();
            C5690dj c5690dj3 = new C5690dj(this.f24107f.f22287b, 65536);
            c5690dj2.f22289d = m10261c;
            c5690dj2.f22290e = c5690dj3;
            c5690dj2.f22288c = true;
        }
        return Math.min(i, 65536 - this.f24111j);
    }

    public C5802gj(C5913jk c5913jk, byte[] bArr) {
        this.f24113l = c5913jk;
        C5690dj c5690dj = new C5690dj(0L, 65536);
        this.f24106e = c5690dj;
        this.f24107f = c5690dj;
    }

    @Override // p168r4.InterfaceC6464yf
    /* renamed from: b */
    public final int mo4741b(C6094of c6094of, int i, boolean z) {
        if (!m11135q()) {
            int m8816c = c6094of.m8816c(i);
            if (m8816c != -1) {
                return m8816c;
            }
            throw new EOFException();
        }
        try {
            int m8818a = c6094of.m8818a(this.f24107f.f22289d.f21567a, this.f24111j, m11132t(i));
            if (m8818a != -1) {
                this.f24111j += m8818a;
                this.f24110i += m8818a;
                return m8818a;
            }
            throw new EOFException();
        } finally {
            m11134r();
        }
    }

    @Override // p168r4.InterfaceC6464yf
    /* renamed from: c */
    public final void mo4740c(C5692dl c5692dl, int i) {
        if (m11135q()) {
            while (i > 0) {
                int m11132t = m11132t(i);
                c5692dl.m12112k(this.f24107f.f22289d.f21567a, this.f24111j, m11132t);
                this.f24111j += m11132t;
                this.f24110i += m11132t;
                i -= m11132t;
            }
            m11134r();
            return;
        }
        c5692dl.m12113j(i);
    }

    /* renamed from: o */
    public final void m11137o(long j, byte[] bArr, int i) {
        m11136p(j);
        int i2 = 0;
        while (i2 < i) {
            int i3 = (int) (j - this.f24106e.f22286a);
            int min = Math.min(i - i2, 65536 - i3);
            C5654ck c5654ck = this.f24106e.f22289d;
            System.arraycopy(c5654ck.f21567a, i3, bArr, i2, min);
            j += min;
            i2 += min;
            if (j == this.f24106e.f22287b) {
                this.f24113l.m10260d(c5654ck);
                C5690dj c5690dj = this.f24106e;
                c5690dj.f22289d = null;
                this.f24106e = c5690dj.f22290e;
            }
        }
    }
}
