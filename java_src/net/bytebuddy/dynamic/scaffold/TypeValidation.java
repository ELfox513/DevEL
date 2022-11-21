package net.bytebuddy.dynamic.scaffold;
/* loaded from: classes2.dex */
public enum TypeValidation {
    ENABLED(true),
    DISABLED(false);
    
    private final boolean enabled;

    /* renamed from: of */
    public static TypeValidation m15129of(boolean z) {
        return z ? ENABLED : DISABLED;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    TypeValidation(boolean z) {
        this.enabled = z;
    }
}
