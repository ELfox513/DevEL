package p018b5;

import java.io.IOException;
/* renamed from: b5.d8 */
/* loaded from: classes2.dex */
public final class C0615d8 extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0615d8(java.lang.String r3, java.lang.Throwable r4) {
        /*
            r2 = this;
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r0 = r3.length()
            java.lang.String r1 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
            if (r0 == 0) goto L11
            java.lang.String r3 = r1.concat(r3)
            goto L16
        L11:
            java.lang.String r3 = new java.lang.String
            r3.<init>(r1)
        L16:
            r2.<init>(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0615d8.<init>(java.lang.String, java.lang.Throwable):void");
    }

    public C0615d8(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
