package p094j2;

import android.content.Context;
import p166r2.InterfaceC5525a;
/* renamed from: j2.c */
/* loaded from: classes.dex */
public final class C4312c extends AbstractC4319h {

    /* renamed from: a */
    public final Context f18182a;

    /* renamed from: b */
    public final InterfaceC5525a f18183b;

    /* renamed from: c */
    public final InterfaceC5525a f18184c;

    /* renamed from: d */
    public final String f18185d;

    @Override // p094j2.AbstractC4319h
    /* renamed from: b */
    public Context mo16829b() {
        return this.f18182a;
    }

    @Override // p094j2.AbstractC4319h
    /* renamed from: c */
    public String mo16828c() {
        return this.f18185d;
    }

    @Override // p094j2.AbstractC4319h
    /* renamed from: d */
    public InterfaceC5525a mo16827d() {
        return this.f18184c;
    }

    @Override // p094j2.AbstractC4319h
    /* renamed from: e */
    public InterfaceC5525a mo16826e() {
        return this.f18183b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4319h)) {
            return false;
        }
        AbstractC4319h abstractC4319h = (AbstractC4319h) obj;
        return this.f18182a.equals(abstractC4319h.mo16829b()) && this.f18183b.equals(abstractC4319h.mo16826e()) && this.f18184c.equals(abstractC4319h.mo16827d()) && this.f18185d.equals(abstractC4319h.mo16828c());
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f18182a + ", wallClock=" + this.f18183b + ", monotonicClock=" + this.f18184c + ", backendName=" + this.f18185d + "}";
    }

    public int hashCode() {
        return ((((((this.f18182a.hashCode() ^ 1000003) * 1000003) ^ this.f18183b.hashCode()) * 1000003) ^ this.f18184c.hashCode()) * 1000003) ^ this.f18185d.hashCode();
    }

    public C4312c(Context context, InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2, String str) {
        if (context != null) {
            this.f18182a = context;
            if (interfaceC5525a != null) {
                this.f18183b = interfaceC5525a;
                if (interfaceC5525a2 != null) {
                    this.f18184c = interfaceC5525a2;
                    if (str != null) {
                        this.f18185d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }
}
