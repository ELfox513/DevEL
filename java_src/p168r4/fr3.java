package p168r4;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* renamed from: r4.fr3 */
/* loaded from: classes2.dex */
public class fr3 implements Iterator<ea4>, Closeable, fa4 {

    /* renamed from: r */
    public static final ea4 f23652r = new er3("eof ");

    /* renamed from: s */
    public static final mr3 f23653s = mr3.m9276b(fr3.class);

    /* renamed from: a */
    public ba4 f23654a;

    /* renamed from: b */
    public gr3 f23655b;

    /* renamed from: d */
    public ea4 f23656d = null;

    /* renamed from: k */
    public long f23657k = 0;

    /* renamed from: p */
    public long f23658p = 0;

    /* renamed from: q */
    public final List<ea4> f23659q = new ArrayList();

    public void close() {
    }

    /* renamed from: f */
    public final List<ea4> m11381f() {
        return (this.f23655b == null || this.f23656d == f23652r) ? this.f23659q : new lr3(this.f23659q, this);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        ea4 ea4Var = this.f23656d;
        if (ea4Var == f23652r) {
            return false;
        }
        if (ea4Var != null) {
            return true;
        }
        try {
            this.f23656d = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f23656d = f23652r;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    public final void m11380g(gr3 gr3Var, long j, ba4 ba4Var) {
        this.f23655b = gr3Var;
        this.f23657k = gr3Var.mo4149b();
        gr3Var.mo4147x(gr3Var.mo4149b() + j);
        this.f23658p = gr3Var.mo4149b();
        this.f23654a = ba4Var;
    }

    @Override // java.util.Iterator
    /* renamed from: h */
    public final ea4 next() {
        ea4 mo12835a;
        ea4 ea4Var = this.f23656d;
        if (ea4Var != null && ea4Var != f23652r) {
            this.f23656d = null;
            return ea4Var;
        }
        gr3 gr3Var = this.f23655b;
        if (gr3Var != null && this.f23657k < this.f23658p) {
            try {
                synchronized (gr3Var) {
                    this.f23655b.mo4147x(this.f23657k);
                    mo12835a = this.f23654a.mo12835a(this.f23655b, this);
                    this.f23657k = this.f23655b.mo4149b();
                }
                return mo12835a;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.f23656d = f23652r;
        throw new NoSuchElementException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.f23659q.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f23659q.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
