package p168r4;

import java.lang.Throwable;
/* renamed from: r4.b63 */
/* loaded from: classes2.dex */
public abstract class b63<V, X extends Throwable, F, T> extends n73<V> implements Runnable {

    /* renamed from: s */
    public h83<? extends V> f20872s;

    /* renamed from: t */
    public Class<X> f20873t;

    /* renamed from: u */
    public F f20874u;

    /* renamed from: F */
    public abstract void mo4427F(T t);

    /* renamed from: G */
    public abstract T mo4426G(F f, X x);

    @Override // p168r4.p63
    /* renamed from: j */
    public final void mo5447j() {
        m8455z(this.f20872s);
        this.f20872s = null;
        this.f20873t = null;
        this.f20874u = null;
    }

    @Override // p168r4.p63
    /* renamed from: i */
    public final String mo5448i() {
        String str;
        h83<? extends V> h83Var = this.f20872s;
        Class<X> cls = this.f20873t;
        F f = this.f20874u;
        String mo5448i = super.mo5448i();
        if (h83Var != null) {
            String obj = h83Var.toString();
            StringBuilder sb = new StringBuilder(obj.length() + 16);
            sb.append("inputFuture=[");
            sb.append(obj);
            sb.append("], ");
            str = sb.toString();
        } else {
            str = "";
        }
        if (cls != null && f != null) {
            String obj2 = cls.toString();
            String obj3 = f.toString();
            StringBuilder sb2 = new StringBuilder(str.length() + 29 + obj2.length() + obj3.length());
            sb2.append(str);
            sb2.append("exceptionType=[");
            sb2.append(obj2);
            sb2.append("], fallback=[");
            sb2.append(obj3);
            sb2.append("]");
            return sb2.toString();
        } else if (mo5448i != null) {
            if (mo5448i.length() != 0) {
                return str.concat(mo5448i);
            }
            return new String(str);
        } else {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Class<X extends java.lang.Throwable>, F] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            r4.h83<? extends V> r0 = r10.f20872s
            java.lang.Class<X extends java.lang.Throwable> r1 = r10.f20873t
            F r2 = r10.f20874u
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = 1
            goto Ld
        Lc:
            r5 = 0
        Ld:
            if (r1 != 0) goto L11
            r6 = 1
            goto L12
        L11:
            r6 = 0
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = 0
        L17:
            r3 = r3 | r5
            if (r3 != 0) goto Lad
            boolean r3 = r10.isCancelled()
            if (r3 == 0) goto L22
            goto Lad
        L22:
            r3 = 0
            r10.f20872s = r3
            boolean r4 = r0 instanceof p168r4.a93     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            if (r4 == 0) goto L31
            r4 = r0
            r4.a93 r4 = (p168r4.a93) r4     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            java.lang.Throwable r4 = r4.mo8474a()     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L32
        L31:
            r4 = r3
        L32:
            if (r4 != 0) goto L3a
            java.lang.Object r5 = p168r4.y73.m4798q(r0)     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L83
        L39:
            r4 = move-exception
        L3a:
            r5 = r3
            goto L83
        L3c:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L81
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r7 = r6.length()
            int r8 = r4.length()
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            int r7 = r7 + 35
            int r7 = r7 + r8
            r9.<init>(r7)
            java.lang.String r7 = "Future type "
            r9.append(r7)
            r9.append(r6)
            java.lang.String r6 = " threw "
            r9.append(r6)
            r9.append(r4)
            java.lang.String r4 = " without a cause"
            r9.append(r4)
            java.lang.String r4 = r9.toString()
            r5.<init>(r4)
        L81:
            r4 = r5
            goto L3a
        L83:
            if (r4 != 0) goto L89
            r10.mo8450u(r5)
            return
        L89:
            boolean r1 = r1.isInstance(r4)
            if (r1 == 0) goto Laa
            java.lang.Object r0 = r10.mo4426G(r2, r4)     // Catch: java.lang.Throwable -> L9b
            r10.f20873t = r3
            r10.f20874u = r3
            r10.mo4427F(r0)
            return
        L9b:
            r0 = move-exception
            r10.mo8449v(r0)     // Catch: java.lang.Throwable -> La4
            r10.f20873t = r3
            r10.f20874u = r3
            return
        La4:
            r0 = move-exception
            r10.f20873t = r3
            r10.f20874u = r3
            throw r0
        Laa:
            r10.m8458w(r0)
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.b63.run():void");
    }

    public b63(h83<? extends V> h83Var, Class<X> cls, F f) {
        h83Var.getClass();
        this.f20872s = h83Var;
        this.f20873t = cls;
        f.getClass();
        this.f20874u = f;
    }
}
