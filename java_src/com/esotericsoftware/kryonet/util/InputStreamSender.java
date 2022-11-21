package com.esotericsoftware.kryonet.util;

import java.io.InputStream;
/* loaded from: classes.dex */
public abstract class InputStreamSender extends TcpIdleSender {

    /* renamed from: b */
    public final InputStream f7585b;

    /* renamed from: c */
    public final byte[] f7586c;

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
        r2 = new byte[r1];
        java.lang.System.arraycopy(r5.f7586c, 0, r2, 0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
        return next(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r1 != 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
        return null;
     */
    @Override // com.esotericsoftware.kryonet.util.TcpIdleSender
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object next() {
        /*
            r5 = this;
            r0 = 0
            r1 = 0
        L2:
            byte[] r2 = r5.f7586c     // Catch: java.io.IOException -> L28
            int r3 = r2.length     // Catch: java.io.IOException -> L28
            if (r1 >= r3) goto L23
            java.io.InputStream r3 = r5.f7585b     // Catch: java.io.IOException -> L28
            int r4 = r2.length     // Catch: java.io.IOException -> L28
            int r4 = r4 - r1
            int r2 = r3.read(r2, r1, r4)     // Catch: java.io.IOException -> L28
            if (r2 >= 0) goto L21
            if (r1 != 0) goto L15
            r0 = 0
            return r0
        L15:
            byte[] r2 = new byte[r1]     // Catch: java.io.IOException -> L28
            byte[] r3 = r5.f7586c     // Catch: java.io.IOException -> L28
            java.lang.System.arraycopy(r3, r0, r2, r0, r1)     // Catch: java.io.IOException -> L28
            java.lang.Object r0 = r5.next(r2)     // Catch: java.io.IOException -> L28
            return r0
        L21:
            int r1 = r1 + r2
            goto L2
        L23:
            java.lang.Object r0 = r5.next(r2)
            return r0
        L28:
            r0 = move-exception
            com.esotericsoftware.kryonet.KryoNetException r1 = new com.esotericsoftware.kryonet.KryoNetException
            r1.<init>(r0)
            goto L30
        L2f:
            throw r1
        L30:
            goto L2f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryonet.util.InputStreamSender.next():java.lang.Object");
    }

    public abstract Object next(byte[] bArr);

    public InputStreamSender(InputStream inputStream, int i) {
        this.f7585b = inputStream;
        this.f7586c = new byte[i];
    }
}
