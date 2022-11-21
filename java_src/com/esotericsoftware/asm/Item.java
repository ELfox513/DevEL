package com.esotericsoftware.asm;
/* loaded from: classes.dex */
final class Item {

    /* renamed from: a */
    public int f7087a;

    /* renamed from: b */
    public int f7088b;

    /* renamed from: c */
    public int f7089c;

    /* renamed from: d */
    public long f7090d;

    /* renamed from: e */
    public String f7091e;

    /* renamed from: f */
    public String f7092f;

    /* renamed from: g */
    public String f7093g;

    /* renamed from: h */
    public int f7094h;

    /* renamed from: i */
    public Item f7095i;

    public Item() {
    }

    public Item(int i) {
        this.f7087a = i;
    }

    public Item(int i, Item item) {
        this.f7087a = i;
        this.f7088b = item.f7088b;
        this.f7089c = item.f7089c;
        this.f7090d = item.f7090d;
        this.f7091e = item.f7091e;
        this.f7092f = item.f7092f;
        this.f7093g = item.f7093g;
        this.f7094h = item.f7094h;
    }

    /* renamed from: a */
    public void m23363a(double d) {
        this.f7088b = 6;
        this.f7090d = Double.doubleToRawLongBits(d);
        this.f7094h = Integer.MAX_VALUE & (this.f7088b + ((int) d));
    }

    /* renamed from: b */
    public void m23362b(float f) {
        this.f7088b = 4;
        this.f7089c = Float.floatToRawIntBits(f);
        this.f7094h = Integer.MAX_VALUE & (this.f7088b + ((int) f));
    }

    /* renamed from: c */
    public void m23361c(int i) {
        this.f7088b = 3;
        this.f7089c = i;
        this.f7094h = Integer.MAX_VALUE & (3 + i);
    }

    /* renamed from: d */
    public void m23360d(int i, int i2) {
        this.f7088b = 33;
        this.f7089c = i;
        this.f7094h = i2;
    }

    /* renamed from: e */
    public void m23359e(int i, String str, String str2, String str3) {
        int hashCode;
        int hashCode2;
        int hashCode3;
        this.f7088b = i;
        this.f7091e = str;
        this.f7092f = str2;
        this.f7093g = str3;
        if (i != 1) {
            if (i == 12) {
                hashCode2 = str.hashCode();
                hashCode3 = str2.hashCode();
            } else if (i != 16 && i != 30) {
                if (i == 7) {
                    this.f7089c = 0;
                } else if (i != 8) {
                    hashCode2 = str.hashCode() * str2.hashCode();
                    hashCode3 = str3.hashCode();
                }
            }
            hashCode = hashCode2 * hashCode3;
            this.f7094h = (i + hashCode) & Integer.MAX_VALUE;
        }
        hashCode = str.hashCode();
        this.f7094h = (i + hashCode) & Integer.MAX_VALUE;
    }

    /* renamed from: f */
    public void m23358f(long j) {
        this.f7088b = 5;
        this.f7090d = j;
        this.f7094h = Integer.MAX_VALUE & (5 + ((int) j));
    }

    /* renamed from: g */
    public void m23357g(String str, String str2, int i) {
        this.f7088b = 18;
        this.f7090d = i;
        this.f7091e = str;
        this.f7092f = str2;
        this.f7094h = Integer.MAX_VALUE & ((i * str.hashCode() * this.f7092f.hashCode()) + 18);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004c  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m23356h(com.esotericsoftware.asm.Item r9) {
        /*
            r8 = this;
            int r0 = r8.f7088b
            r1 = 1
            if (r0 == r1) goto L96
            r2 = 12
            r3 = 0
            if (r0 == r2) goto L7f
            r2 = 16
            if (r0 == r2) goto L96
            r2 = 18
            if (r0 == r2) goto L60
            switch(r0) {
                case 3: goto L57;
                case 4: goto L57;
                case 5: goto L4c;
                case 6: goto L4c;
                case 7: goto L96;
                case 8: goto L96;
                default: goto L15;
            }
        L15:
            switch(r0) {
                case 30: goto L96;
                case 31: goto L39;
                case 32: goto L4c;
                default: goto L18;
            }
        L18:
            java.lang.String r0 = r9.f7091e
            java.lang.String r2 = r8.f7091e
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L37
            java.lang.String r0 = r9.f7092f
            java.lang.String r2 = r8.f7092f
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L37
            java.lang.String r9 = r9.f7093g
            java.lang.String r0 = r8.f7093g
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L37
            goto L38
        L37:
            r1 = 0
        L38:
            return r1
        L39:
            int r0 = r9.f7089c
            int r2 = r8.f7089c
            if (r0 != r2) goto L4a
            java.lang.String r9 = r9.f7091e
            java.lang.String r0 = r8.f7091e
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L4a
            goto L4b
        L4a:
            r1 = 0
        L4b:
            return r1
        L4c:
            long r4 = r9.f7090d
            long r6 = r8.f7090d
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 != 0) goto L55
            goto L56
        L55:
            r1 = 0
        L56:
            return r1
        L57:
            int r9 = r9.f7089c
            int r0 = r8.f7089c
            if (r9 != r0) goto L5e
            goto L5f
        L5e:
            r1 = 0
        L5f:
            return r1
        L60:
            long r4 = r9.f7090d
            long r6 = r8.f7090d
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L7d
            java.lang.String r0 = r9.f7091e
            java.lang.String r2 = r8.f7091e
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L7d
            java.lang.String r9 = r9.f7092f
            java.lang.String r0 = r8.f7092f
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L7d
            goto L7e
        L7d:
            r1 = 0
        L7e:
            return r1
        L7f:
            java.lang.String r0 = r9.f7091e
            java.lang.String r2 = r8.f7091e
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L94
            java.lang.String r9 = r9.f7092f
            java.lang.String r0 = r8.f7092f
            boolean r9 = r9.equals(r0)
            if (r9 == 0) goto L94
            goto L95
        L94:
            r1 = 0
        L95:
            return r1
        L96:
            java.lang.String r9 = r9.f7091e
            java.lang.String r0 = r8.f7091e
            boolean r9 = r9.equals(r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.asm.Item.m23356h(com.esotericsoftware.asm.Item):boolean");
    }
}
