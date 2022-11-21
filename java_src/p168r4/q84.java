package p168r4;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: r4.q84 */
/* loaded from: classes2.dex */
public abstract class q84<T> implements Comparable<q84<T>> {

    /* renamed from: a */
    public final b94 f30041a;

    /* renamed from: b */
    public final int f30042b;

    /* renamed from: d */
    public final String f30043d;

    /* renamed from: k */
    public final int f30044k;

    /* renamed from: p */
    public final Object f30045p;

    /* renamed from: q */
    public final u84 f30046q;

    /* renamed from: r */
    public Integer f30047r;

    /* renamed from: s */
    public t84 f30048s;

    /* renamed from: t */
    public boolean f30049t;

    /* renamed from: u */
    public y74 f30050u;

    /* renamed from: v */
    public p84 f30051v;

    /* renamed from: w */
    public final d84 f30052w;

    /* renamed from: B */
    public Map<String, String> mo7952B() {
        return Collections.emptyMap();
    }

    /* renamed from: C */
    public byte[] mo7951C() {
        return null;
    }

    /* renamed from: D */
    public final int m7950D() {
        return this.f30052w.m12201a();
    }

    /* renamed from: E */
    public final void m7949E() {
        synchronized (this.f30045p) {
            this.f30049t = true;
        }
    }

    /* renamed from: H */
    public abstract w84<T> mo5795H(l84 l84Var);

    /* renamed from: I */
    public abstract void mo7947I(T t);

    /* renamed from: K */
    public final void m7945K(p84 p84Var) {
        synchronized (this.f30045p) {
            this.f30051v = p84Var;
        }
    }

    /* renamed from: N */
    public final d84 m7942N() {
        return this.f30052w;
    }

    /* renamed from: d */
    public final int m7940d() {
        return this.f30042b;
    }

    /* renamed from: f */
    public final int m7939f() {
        return this.f30044k;
    }

    /* renamed from: l */
    public final void m7936l(int i) {
        t84 t84Var = this.f30048s;
        if (t84Var != null) {
            t84Var.m6897d(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public final q84<?> m7935n(t84 t84Var) {
        this.f30048s = t84Var;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: p */
    public final q84<?> m7934p(int i) {
        this.f30047r = Integer.valueOf(i);
        return this;
    }

    /* renamed from: u */
    public final String m7933u() {
        return this.f30043d;
    }

    /* renamed from: v */
    public final String m7932v() {
        String str = this.f30043d;
        if (this.f30042b != 0) {
            String num = Integer.toString(1);
            StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
            sb.append(num);
            sb.append(SignatureVisitor.SUPER);
            sb.append(str);
            return sb.toString();
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    public final q84<?> m7931x(y74 y74Var) {
        this.f30050u = y74Var;
        return this;
    }

    /* renamed from: z */
    public final y74 m7930z() {
        return this.f30050u;
    }

    /* renamed from: A */
    public final boolean m7953A() {
        synchronized (this.f30045p) {
        }
        return false;
    }

    /* renamed from: F */
    public final boolean m7948F() {
        boolean z;
        synchronized (this.f30045p) {
            z = this.f30049t;
        }
        return z;
    }

    /* renamed from: J */
    public final void m7946J(z84 z84Var) {
        u84 u84Var;
        synchronized (this.f30045p) {
            u84Var = this.f30046q;
        }
        if (u84Var != null) {
            u84Var.mo6600a(z84Var);
        }
    }

    /* renamed from: L */
    public final void m7944L(w84<?> w84Var) {
        p84 p84Var;
        synchronized (this.f30045p) {
            p84Var = this.f30051v;
        }
        if (p84Var != null) {
            p84Var.mo8447b(this, w84Var);
        }
    }

    /* renamed from: M */
    public final void m7943M() {
        p84 p84Var;
        synchronized (this.f30045p) {
            p84Var = this.f30051v;
        }
        if (p84Var != null) {
            p84Var.mo8448a(this);
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f30047r.intValue() - ((q84) obj).f30047r.intValue();
    }

    /* renamed from: h */
    public final void m7938h(String str) {
        if (b94.f20924c) {
            this.f30041a.m12838a(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: j */
    public final void m7937j(String str) {
        t84 t84Var = this.f30048s;
        if (t84Var != null) {
            t84Var.m6898c(this);
        }
        if (b94.f20924c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new o84(this, str, id));
                return;
            }
            this.f30041a.m12838a(str, id);
            this.f30041a.m12837b(toString());
        }
    }

    public final String toString() {
        String str;
        String valueOf = String.valueOf(Integer.toHexString(this.f30044k));
        if (valueOf.length() != 0) {
            str = "0x".concat(valueOf);
        } else {
            str = new String("0x");
        }
        m7953A();
        String str2 = this.f30043d;
        String valueOf2 = String.valueOf(this.f30047r);
        int length = String.valueOf(str2).length();
        StringBuilder sb = new StringBuilder(length + 7 + String.valueOf(str).length() + 6 + valueOf2.length());
        sb.append("[ ] ");
        sb.append(str2);
        sb.append(" ");
        sb.append(str);
        sb.append(" NORMAL ");
        sb.append(valueOf2);
        return sb.toString();
    }

    public q84(int i, String str, u84 u84Var) {
        b94 b94Var;
        Uri parse;
        String host;
        if (b94.f20924c) {
            b94Var = new b94();
        } else {
            b94Var = null;
        }
        this.f30041a = b94Var;
        this.f30045p = new Object();
        int i2 = 0;
        this.f30049t = false;
        this.f30050u = null;
        this.f30042b = i;
        this.f30043d = str;
        this.f30046q = u84Var;
        this.f30052w = new d84();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.f30044k = i2;
    }
}
