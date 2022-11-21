package net.bytebuddy.matcher;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.ModifierReviewable;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class ModifierMatcher<T extends ModifierReviewable> extends ElementMatcher.Junction.ForNonNullValues<T> {
    private final Mode mode;

    /* renamed from: of */
    public static <T extends ModifierReviewable> ElementMatcher.Junction<T> m14819of(Mode mode) {
        return mode.getMatcher();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public /* bridge */ /* synthetic */ boolean doMatch(Object obj) {
        return doMatch((ModifierMatcher<T>) ((ModifierReviewable) obj));
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public boolean equals(@MaybeNull Object obj) {
        if (super.equals(obj)) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.mode.equals(((ModifierMatcher) obj).mode);
        }
        return false;
    }

    @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
    public int hashCode() {
        return (super.hashCode() * 31) + this.mode.hashCode();
    }

    public String toString() {
        return this.mode.getDescription();
    }

    /* loaded from: classes.dex */
    public enum Mode {
        PUBLIC(1, "isPublic()"),
        PROTECTED(4, "isProtected()"),
        PRIVATE(2, "isPrivate()"),
        FINAL(16, "isFinal()"),
        STATIC(8, "isStatic()"),
        SYNCHRONIZED(32, "isSynchronized()"),
        NATIVE(256, "isNative()"),
        STRICT(2048, "isStrict()"),
        VAR_ARGS(128, "isVarArgs()"),
        SYNTHETIC(4096, "isSynthetic()"),
        BRIDGE(64, "isBridge()"),
        ABSTRACT(1024, "isAbstract()"),
        INTERFACE(512, "isInterface()"),
        ANNOTATION(8192, "isAnnotation()"),
        VOLATILE(64, "isVolatile()"),
        TRANSIENT(128, "isTransient()"),
        MANDATED(32768, "isMandated()"),
        ENUMERATION(16384, "isEnum()");
        
        private final String description;
        private final ModifierMatcher<?> matcher = new ModifierMatcher<>(this);
        private final int modifiers;

        public String getDescription() {
            return this.description;
        }

        public ModifierMatcher<?> getMatcher() {
            return this.matcher;
        }

        public int getModifiers() {
            return this.modifiers;
        }

        Mode(int i, String str) {
            this.modifiers = i;
            this.description = str;
        }
    }

    public boolean doMatch(T t) {
        return (t.getModifiers() & this.mode.getModifiers()) != 0;
    }

    public ModifierMatcher(Mode mode) {
        this.mode = mode;
    }
}
