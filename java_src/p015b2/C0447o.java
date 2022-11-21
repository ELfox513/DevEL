package p015b2;
/* renamed from: b2.o */
/* loaded from: classes.dex */
public class C0447o {
    private boolean mutable;

    public C0447o() {
        this.mutable = true;
    }

    public final boolean isImmutable() {
        return !this.mutable;
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public void setImmutable() {
        this.mutable = false;
    }

    public final void throwIfImmutable() {
        if (this.mutable) {
            return;
        }
        throw new C0448p("immutable instance");
    }

    public final void throwIfMutable() {
        if (!this.mutable) {
            return;
        }
        throw new C0448p("mutable instance");
    }

    public C0447o(boolean z) {
        this.mutable = z;
    }
}
