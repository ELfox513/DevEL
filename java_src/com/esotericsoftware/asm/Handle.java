package com.esotericsoftware.asm;

import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public final class Handle {

    /* renamed from: a */
    public final int f7076a;

    /* renamed from: b */
    public final String f7077b;

    /* renamed from: c */
    public final String f7078c;

    /* renamed from: d */
    public final String f7079d;

    /* renamed from: e */
    public final boolean f7080e;

    public Handle(int i, String str, String str2, String str3) {
        this(i, str, str2, str3, i == 9);
    }

    public Handle(int i, String str, String str2, String str3, boolean z) {
        this.f7076a = i;
        this.f7077b = str;
        this.f7078c = str2;
        this.f7079d = str3;
        this.f7080e = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Handle) {
            Handle handle = (Handle) obj;
            return this.f7076a == handle.f7076a && this.f7080e == handle.f7080e && this.f7077b.equals(handle.f7077b) && this.f7078c.equals(handle.f7078c) && this.f7079d.equals(handle.f7079d);
        }
        return false;
    }

    public String getDesc() {
        return this.f7079d;
    }

    public String getName() {
        return this.f7078c;
    }

    public String getOwner() {
        return this.f7077b;
    }

    public int getTag() {
        return this.f7076a;
    }

    public int hashCode() {
        return this.f7076a + (this.f7080e ? 64 : 0) + (this.f7077b.hashCode() * this.f7078c.hashCode() * this.f7079d.hashCode());
    }

    public boolean isInterface() {
        return this.f7080e;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f7077b);
        stringBuffer.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
        stringBuffer.append(this.f7078c);
        stringBuffer.append(this.f7079d);
        stringBuffer.append(" (");
        stringBuffer.append(this.f7076a);
        stringBuffer.append(this.f7080e ? " itf" : "");
        stringBuffer.append(')');
        return stringBuffer.toString();
    }
}
