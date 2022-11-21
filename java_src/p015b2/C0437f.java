package p015b2;

import java.util.Arrays;
/* renamed from: b2.f */
/* loaded from: classes.dex */
public class C0437f extends C0447o implements InterfaceC0450r {
    private Object[] arr;

    public final Object getOrNull0(int i) {
        return this.arr[i];
    }

    public int hashCode() {
        return Arrays.hashCode(this.arr);
    }

    public final int size() {
        return this.arr.length;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + '{', ", ", "}", true);
    }

    public String toString() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + '{', ", ", "}", false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0437f(int r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L4
            r0 = 1
            goto L5
        L4:
            r0 = 0
        L5:
            r1.<init>(r0)
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.NegativeArraySizeException -> Ld
            r1.arr = r2     // Catch: java.lang.NegativeArraySizeException -> Ld
            return
        Ld:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "size < 0"
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p015b2.C0437f.<init>(int):void");
    }

    private Object throwIndex(int i) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("n < 0");
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    private String toString0(String str, String str2, String str3, boolean z) {
        int length = this.arr.length;
        StringBuilder sb = new StringBuilder((length * 10) + 10);
        if (str != null) {
            sb.append(str);
        }
        for (int i = 0; i < length; i++) {
            if (i != 0 && str2 != null) {
                sb.append(str2);
            }
            if (z) {
                sb.append(((InterfaceC0450r) this.arr[i]).toHuman());
            } else {
                sb.append(this.arr[i]);
            }
        }
        if (str3 != null) {
            sb.append(str3);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.arr, ((C0437f) obj).arr);
        }
        return false;
    }

    public final Object get0(int i) {
        try {
            Object obj = this.arr[i];
            if (obj != null) {
                return obj;
            }
            throw new NullPointerException("unset: " + i);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return throwIndex(i);
        }
    }

    public void shrinkToFit() {
        int length = this.arr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.arr[i2] != null) {
                i++;
            }
        }
        if (length == i) {
            return;
        }
        throwIfImmutable();
        Object[] objArr = new Object[i];
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            Object obj = this.arr[i4];
            if (obj != null) {
                objArr[i3] = obj;
                i3++;
            }
        }
        this.arr = objArr;
        if (i == 0) {
            setImmutable();
        }
    }

    public final void set0(int i, Object obj) {
        throwIfImmutable();
        try {
            this.arr[i] = obj;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throwIndex(i);
        }
    }

    public String toHuman(String str, String str2, String str3) {
        return toString0(str, str2, str3, true);
    }

    public String toString(String str, String str2, String str3) {
        return toString0(str, str2, str3, false);
    }
}
