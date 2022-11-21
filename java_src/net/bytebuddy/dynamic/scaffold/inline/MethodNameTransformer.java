package net.bytebuddy.dynamic.scaffold.inline;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface MethodNameTransformer {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Prefixing implements MethodNameTransformer {
        private static final String DEFAULT_PREFIX = "original";
        private final String prefix;

        public Prefixing() {
            this(DEFAULT_PREFIX);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.prefix.equals(((Prefixing) obj).prefix);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.prefix.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodNameTransformer
        public String transform(MethodDescription methodDescription) {
            return this.prefix + methodDescription.getInternalName();
        }

        public Prefixing(String str) {
            this.prefix = str;
        }
    }

    String transform(MethodDescription methodDescription);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Suffixing implements MethodNameTransformer {
        private static final String DEFAULT_SUFFIX = "original$";
        private final String suffix;

        public static MethodNameTransformer withRandomSuffix() {
            return new Suffixing(DEFAULT_SUFFIX + RandomString.make());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.suffix.equals(((Suffixing) obj).suffix);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.suffix.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodNameTransformer
        public String transform(MethodDescription methodDescription) {
            return methodDescription.getInternalName() + "$" + this.suffix;
        }

        public Suffixing(String str) {
            this.suffix = str;
        }
    }
}
