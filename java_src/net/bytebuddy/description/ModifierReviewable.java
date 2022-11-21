package net.bytebuddy.description;

import net.bytebuddy.description.modifier.EnumerationState;
import net.bytebuddy.description.modifier.FieldManifestation;
import net.bytebuddy.description.modifier.FieldPersistence;
import net.bytebuddy.description.modifier.MethodManifestation;
import net.bytebuddy.description.modifier.MethodStrictness;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.modifier.ParameterManifestation;
import net.bytebuddy.description.modifier.ProvisioningState;
import net.bytebuddy.description.modifier.SynchronizationState;
import net.bytebuddy.description.modifier.SyntheticState;
import net.bytebuddy.description.modifier.TypeManifestation;
import net.bytebuddy.description.modifier.Visibility;
/* loaded from: classes2.dex */
public interface ModifierReviewable {
    public static final int EMPTY_MASK = 0;

    /* loaded from: classes2.dex */
    public interface ForFieldDescription extends OfEnumeration {
        FieldManifestation getFieldManifestation();

        FieldPersistence getFieldPersistence();

        boolean isTransient();

        boolean isVolatile();
    }

    /* loaded from: classes2.dex */
    public interface ForMethodDescription extends OfAbstraction {
        MethodManifestation getMethodManifestation();

        MethodStrictness getMethodStrictness();

        SynchronizationState getSynchronizationState();

        boolean isBridge();

        boolean isNative();

        boolean isStrict();

        boolean isSynchronized();

        boolean isVarArgs();
    }

    /* loaded from: classes2.dex */
    public interface ForParameterDescription extends ModifierReviewable {
        ParameterManifestation getParameterManifestation();

        ProvisioningState getProvisioningState();

        boolean isMandated();
    }

    /* loaded from: classes2.dex */
    public interface ForTypeDefinition extends OfAbstraction, OfEnumeration {
        TypeManifestation getTypeManifestation();

        boolean isAnnotation();

        boolean isInterface();
    }

    /* loaded from: classes2.dex */
    public interface OfAbstraction extends OfByteCodeElement {
        boolean isAbstract();
    }

    /* loaded from: classes2.dex */
    public interface OfByteCodeElement extends ModifierReviewable {
        Ownership getOwnership();

        Visibility getVisibility();

        boolean isDeprecated();

        boolean isPackagePrivate();

        boolean isPrivate();

        boolean isProtected();

        boolean isPublic();

        boolean isStatic();
    }

    /* loaded from: classes2.dex */
    public interface OfEnumeration extends OfByteCodeElement {
        EnumerationState getEnumerationState();

        boolean isEnum();
    }

    int getModifiers();

    SyntheticState getSyntheticState();

    boolean isFinal();

    boolean isSynthetic();

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements ForTypeDefinition, ForFieldDescription, ForMethodDescription, ForParameterDescription {
        private boolean matchesMask(int i) {
            return (getModifiers() & i) == i;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfEnumeration
        public EnumerationState getEnumerationState() {
            return isEnum() ? EnumerationState.ENUMERATION : EnumerationState.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public MethodStrictness getMethodStrictness() {
            return isStrict() ? MethodStrictness.STRICT : MethodStrictness.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public Ownership getOwnership() {
            return isStatic() ? Ownership.STATIC : Ownership.MEMBER;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForParameterDescription
        public ParameterManifestation getParameterManifestation() {
            return isFinal() ? ParameterManifestation.FINAL : ParameterManifestation.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForParameterDescription
        public ProvisioningState getProvisioningState() {
            return isMandated() ? ProvisioningState.MANDATED : ProvisioningState.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public SynchronizationState getSynchronizationState() {
            return isSynchronized() ? SynchronizationState.SYNCHRONIZED : SynchronizationState.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public SyntheticState getSyntheticState() {
            return isSynthetic() ? SyntheticState.SYNTHETIC : SyntheticState.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfAbstraction
        public boolean isAbstract() {
            return matchesMask(1024);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForTypeDefinition
        public boolean isAnnotation() {
            return matchesMask(8192);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public boolean isBridge() {
            return matchesMask(64);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public boolean isDeprecated() {
            return matchesMask(131072);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfEnumeration
        public boolean isEnum() {
            return matchesMask(16384);
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public boolean isFinal() {
            return matchesMask(16);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForTypeDefinition
        public boolean isInterface() {
            return matchesMask(512);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForParameterDescription
        public boolean isMandated() {
            return matchesMask(32768);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public boolean isNative() {
            return matchesMask(256);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public boolean isPackagePrivate() {
            return (isPublic() || isProtected() || isPrivate()) ? false : true;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public boolean isPrivate() {
            return matchesMask(2);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public boolean isProtected() {
            return matchesMask(4);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public boolean isPublic() {
            return matchesMask(1);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public boolean isStatic() {
            return matchesMask(8);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public boolean isStrict() {
            return matchesMask(2048);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public boolean isSynchronized() {
            return matchesMask(32);
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public boolean isSynthetic() {
            return matchesMask(4096);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForFieldDescription
        public boolean isTransient() {
            return matchesMask(128);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public boolean isVarArgs() {
            return matchesMask(128);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForFieldDescription
        public boolean isVolatile() {
            return matchesMask(64);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForFieldDescription
        public FieldManifestation getFieldManifestation() {
            int modifiers = getModifiers();
            int i = modifiers & 80;
            if (i != 0) {
                if (i != 16) {
                    if (i == 64) {
                        return FieldManifestation.VOLATILE;
                    }
                    throw new IllegalStateException("Unexpected modifiers: " + modifiers);
                }
                return FieldManifestation.FINAL;
            }
            return FieldManifestation.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForFieldDescription
        public FieldPersistence getFieldPersistence() {
            int modifiers = getModifiers();
            int i = modifiers & 128;
            if (i != 0) {
                if (i == 128) {
                    return FieldPersistence.TRANSIENT;
                }
                throw new IllegalStateException("Unexpected modifiers: " + modifiers);
            }
            return FieldPersistence.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public MethodManifestation getMethodManifestation() {
            int modifiers = getModifiers();
            int i = modifiers & 1360;
            if (i != 0) {
                if (i != 16) {
                    if (i != 64) {
                        if (i != 80) {
                            if (i != 256) {
                                if (i != 272) {
                                    if (i == 1024) {
                                        return MethodManifestation.ABSTRACT;
                                    }
                                    throw new IllegalStateException("Unexpected modifiers: " + modifiers);
                                }
                                return MethodManifestation.FINAL_NATIVE;
                            }
                            return MethodManifestation.NATIVE;
                        }
                        return MethodManifestation.FINAL_BRIDGE;
                    }
                    return MethodManifestation.BRIDGE;
                }
                return MethodManifestation.FINAL;
            }
            return MethodManifestation.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.ForTypeDefinition
        public TypeManifestation getTypeManifestation() {
            int modifiers = getModifiers();
            int i = modifiers & 9744;
            if (i != 0) {
                if (i != 16) {
                    if (i != 1024) {
                        if (i != 1536) {
                            if (i == 9728) {
                                return TypeManifestation.ANNOTATION;
                            }
                            throw new IllegalStateException("Unexpected modifiers: " + modifiers);
                        }
                        return TypeManifestation.INTERFACE;
                    }
                    return TypeManifestation.ABSTRACT;
                }
                return TypeManifestation.FINAL;
            }
            return TypeManifestation.PLAIN;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.OfByteCodeElement
        public Visibility getVisibility() {
            int modifiers = getModifiers();
            int i = modifiers & 7;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 4) {
                            return Visibility.PROTECTED;
                        }
                        throw new IllegalStateException("Unexpected modifiers: " + modifiers);
                    }
                    return Visibility.PRIVATE;
                }
                return Visibility.PUBLIC;
            }
            return Visibility.PACKAGE_PRIVATE;
        }
    }
}
