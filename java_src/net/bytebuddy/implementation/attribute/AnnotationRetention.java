package net.bytebuddy.implementation.attribute;
/* loaded from: classes.dex */
public enum AnnotationRetention {
    ENABLED(true),
    DISABLED(false);
    
    private final boolean enabled;

    /* renamed from: of */
    public static AnnotationRetention m15020of(boolean z) {
        return z ? ENABLED : DISABLED;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    AnnotationRetention(boolean z) {
        this.enabled = z;
    }
}
