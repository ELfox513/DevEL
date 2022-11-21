package net.bytebuddy.matcher;

import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface LatentMatcher<T> {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Conjunction<S> implements LatentMatcher<S> {
        private final List<? extends LatentMatcher<? super S>> matchers;

        public Conjunction(LatentMatcher<? super S>... latentMatcherArr) {
            this(Arrays.asList(latentMatcherArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Conjunction) obj).matchers);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.matchers.hashCode();
        }

        public Conjunction(List<? extends LatentMatcher<? super S>> list) {
            this.matchers = list;
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super S> resolve(TypeDescription typeDescription) {
            ElementMatcher.Junction any = ElementMatchers.any();
            for (LatentMatcher<? super S> latentMatcher : this.matchers) {
                any = any.and(latentMatcher.resolve(typeDescription));
            }
            return any;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Disjunction<S> implements LatentMatcher<S> {
        private final List<? extends LatentMatcher<? super S>> matchers;

        public Disjunction(LatentMatcher<? super S>... latentMatcherArr) {
            this(Arrays.asList(latentMatcherArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matchers.equals(((Disjunction) obj).matchers);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.matchers.hashCode();
        }

        public Disjunction(List<? extends LatentMatcher<? super S>> list) {
            this.matchers = list;
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super S> resolve(TypeDescription typeDescription) {
            ElementMatcher.Junction none = ElementMatchers.none();
            for (LatentMatcher<? super S> latentMatcher : this.matchers) {
                none = none.mo14830or(latentMatcher.resolve(typeDescription));
            }
            return none;
        }
    }

    /* loaded from: classes.dex */
    public enum ForSelfDeclaredMethod implements LatentMatcher<MethodDescription> {
        DECLARED(false),
        NOT_DECLARED(true);
        
        private final boolean inverted;

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super MethodDescription> resolve(TypeDescription typeDescription) {
            if (this.inverted) {
                return ElementMatchers.not(ElementMatchers.isDeclaredBy(typeDescription));
            }
            return ElementMatchers.isDeclaredBy(typeDescription);
        }

        ForSelfDeclaredMethod(boolean z) {
            this.inverted = z;
        }
    }

    ElementMatcher<? super T> resolve(TypeDescription typeDescription);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForFieldToken implements LatentMatcher<FieldDescription> {
        private final FieldDescription.Token token;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ResolvedMatcher extends ElementMatcher.Junction.ForNonNullValues<FieldDescription> {
            private final FieldDescription.SignatureToken signatureToken;

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.signatureToken.equals(((ResolvedMatcher) obj).signatureToken);
                }
                return false;
            }

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
            public int hashCode() {
                return (super.hashCode() * 31) + this.signatureToken.hashCode();
            }

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
            public boolean doMatch(FieldDescription fieldDescription) {
                return fieldDescription.asSignatureToken().equals(this.signatureToken);
            }

            public ResolvedMatcher(FieldDescription.SignatureToken signatureToken) {
                this.signatureToken = signatureToken;
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.token.equals(((ForFieldToken) obj).token);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.token.hashCode();
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super FieldDescription> resolve(TypeDescription typeDescription) {
            return new ResolvedMatcher(this.token.asSignatureToken(typeDescription));
        }

        public ForFieldToken(FieldDescription.Token token) {
            this.token = token;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForMethodToken implements LatentMatcher<MethodDescription> {
        private final MethodDescription.Token token;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ResolvedMatcher extends ElementMatcher.Junction.ForNonNullValues<MethodDescription> {
            private final MethodDescription.SignatureToken signatureToken;

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.signatureToken.equals(((ResolvedMatcher) obj).signatureToken);
                }
                return false;
            }

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
            public int hashCode() {
                return (super.hashCode() * 31) + this.signatureToken.hashCode();
            }

            @Override // net.bytebuddy.matcher.ElementMatcher.Junction.ForNonNullValues
            public boolean doMatch(MethodDescription methodDescription) {
                return methodDescription.asSignatureToken().equals(this.signatureToken);
            }

            public ResolvedMatcher(MethodDescription.SignatureToken signatureToken) {
                this.signatureToken = signatureToken;
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.token.equals(((ForMethodToken) obj).token);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.token.hashCode();
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super MethodDescription> resolve(TypeDescription typeDescription) {
            return new ResolvedMatcher(this.token.asSignatureToken(typeDescription));
        }

        public ForMethodToken(MethodDescription.Token token) {
            this.token = token;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForRecordComponentToken implements LatentMatcher<RecordComponentDescription> {
        private final RecordComponentDescription.Token token;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.token.equals(((ForRecordComponentToken) obj).token);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.token.hashCode();
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super RecordComponentDescription> resolve(TypeDescription typeDescription) {
            return ElementMatchers.named(this.token.getName());
        }

        public ForRecordComponentToken(RecordComponentDescription.Token token) {
            this.token = token;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Resolved<S> implements LatentMatcher<S> {
        private final ElementMatcher<? super S> matcher;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.matcher.equals(((Resolved) obj).matcher);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.matcher.hashCode();
        }

        @Override // net.bytebuddy.matcher.LatentMatcher
        public ElementMatcher<? super S> resolve(TypeDescription typeDescription) {
            return this.matcher;
        }

        public Resolved(ElementMatcher<? super S> elementMatcher) {
            this.matcher = elementMatcher;
        }
    }
}
