package net.bytebuddy.implementation.bytecode.assign.reference;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Collections;
import java.util.HashSet;
import java.util.Queue;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.utility.QueueFactory;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public enum GenericTypeAwareAssigner implements Assigner {
    INSTANCE;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class IsAssignableToVisitor implements TypeDescription.Generic.Visitor<Boolean> {
        private final boolean polymorphic;
        private final TypeDescription.Generic typeDescription;

        /* loaded from: classes.dex */
        public static class OfGenericArray extends OfManifestType {
            public OfGenericArray(TypeDescription.Generic generic, boolean z) {
                super(generic, z);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public Boolean onGenericArray(TypeDescription.Generic generic) {
                TypeDescription.Generic componentType = this.typeDescription.getComponentType();
                TypeDescription.Generic componentType2 = generic.getComponentType();
                while (componentType.getSort().isGenericArray() && componentType2.getSort().isGenericArray()) {
                    componentType = componentType.getComponentType();
                    componentType2 = componentType2.getComponentType();
                }
                return Boolean.valueOf((componentType.getSort().isGenericArray() || componentType2.getSort().isGenericArray() || !((Boolean) componentType.accept(new IsAssignableToVisitor(componentType2))).booleanValue()) ? false : true);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onNonGenericType(TypeDescription.Generic generic) {
                boolean equals;
                if (this.polymorphic) {
                    equals = this.typeDescription.asErasure().isAssignableTo(generic.asErasure());
                } else {
                    equals = this.typeDescription.asErasure().equals(generic.asErasure());
                }
                return Boolean.valueOf(equals);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onParameterizedType(TypeDescription.Generic generic) {
                return Boolean.FALSE;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class OfManifestType implements TypeDescription.Generic.Visitor<Boolean> {
            public final boolean polymorphic;
            public final TypeDescription.Generic typeDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    OfManifestType ofManifestType = (OfManifestType) obj;
                    return this.polymorphic == ofManifestType.polymorphic && this.typeDescription.equals(ofManifestType.typeDescription);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + (this.polymorphic ? 1 : 0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onTypeVariable(TypeDescription.Generic generic) {
                if (!generic.getTypeVariableSource().isInferrable()) {
                    return Boolean.FALSE;
                }
                throw new UnsupportedOperationException("Assignability checks for type variables declared by methods arel not currently supported");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onWildcard(TypeDescription.Generic generic) {
                for (TypeDescription.Generic generic2 : generic.getUpperBounds()) {
                    if (!((Boolean) this.typeDescription.accept(new IsAssignableToVisitor(generic2))).booleanValue()) {
                        return Boolean.FALSE;
                    }
                }
                for (TypeDescription.Generic generic3 : generic.getLowerBounds()) {
                    if (!((Boolean) generic3.accept(new IsAssignableToVisitor(this.typeDescription))).booleanValue()) {
                        return Boolean.FALSE;
                    }
                }
                return Boolean.TRUE;
            }

            public OfManifestType(TypeDescription.Generic generic, boolean z) {
                this.typeDescription = generic;
                this.polymorphic = z;
            }
        }

        /* loaded from: classes.dex */
        public static class OfNonGenericType extends OfSimpleType {
            public OfNonGenericType(TypeDescription.Generic generic, boolean z) {
                super(generic, z);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onGenericArray(TypeDescription.Generic generic) {
                boolean equals;
                if (this.polymorphic) {
                    equals = this.typeDescription.asErasure().isAssignableTo(generic.asErasure());
                } else {
                    equals = this.typeDescription.asErasure().equals(generic.asErasure());
                }
                return Boolean.valueOf(equals);
            }
        }

        /* loaded from: classes.dex */
        public static class OfParameterizedType extends OfSimpleType {
            public OfParameterizedType(TypeDescription.Generic generic, boolean z) {
                super(generic, z);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onGenericArray(TypeDescription.Generic generic) {
                return Boolean.FALSE;
            }
        }

        /* loaded from: classes.dex */
        public static abstract class OfSimpleType extends OfManifestType {
            public OfSimpleType(TypeDescription.Generic generic, boolean z) {
                super(generic, z);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onNonGenericType(TypeDescription.Generic generic) {
                boolean equals;
                if (this.polymorphic) {
                    equals = this.typeDescription.asErasure().isAssignableTo(generic.asErasure());
                } else {
                    equals = this.typeDescription.asErasure().equals(generic.asErasure());
                }
                return Boolean.valueOf(equals);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onParameterizedType(TypeDescription.Generic generic) {
                Queue make = QueueFactory.make(Collections.singleton(this.typeDescription));
                HashSet hashSet = new HashSet(Collections.singleton(this.typeDescription.asErasure()));
                do {
                    TypeDescription.Generic generic2 = (TypeDescription.Generic) make.remove();
                    if (generic2.asErasure().equals(generic.asErasure())) {
                        if (generic2.getSort().isNonGeneric()) {
                            return Boolean.TRUE;
                        }
                        TypeList.Generic typeArguments = generic2.getTypeArguments();
                        TypeList.Generic typeArguments2 = generic.getTypeArguments();
                        int size = typeArguments2.size();
                        if (typeArguments.size() != size) {
                            return Boolean.FALSE;
                        }
                        boolean z = false;
                        for (int i = 0; i < size; i++) {
                            if (!((Boolean) typeArguments.get(i).accept(new IsAssignableToVisitor(typeArguments2.get(i), false))).booleanValue()) {
                                return Boolean.FALSE;
                            }
                        }
                        TypeDescription.Generic ownerType = generic.getOwnerType();
                        return Boolean.valueOf((ownerType == null || ((Boolean) ownerType.accept(new IsAssignableToVisitor(ownerType))).booleanValue()) ? true : true);
                    } else if (this.polymorphic) {
                        TypeDescription.Generic superClass = generic2.getSuperClass();
                        if (superClass != null && hashSet.add(superClass.asErasure())) {
                            make.add(superClass);
                        }
                        for (TypeDescription.Generic generic3 : generic2.getInterfaces()) {
                            if (hashSet.add(generic3.asErasure())) {
                                make.add(generic3);
                            }
                        }
                    }
                } while (!make.isEmpty());
                return Boolean.FALSE;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class OfWildcard implements TypeDescription.Generic.Visitor<Boolean> {
            private final TypeDescription.Generic wildcard;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.wildcard.equals(((OfWildcard) obj).wildcard);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.wildcard.hashCode();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onGenericArray(TypeDescription.Generic generic) {
                return Boolean.FALSE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onNonGenericType(TypeDescription.Generic generic) {
                return Boolean.FALSE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onParameterizedType(TypeDescription.Generic generic) {
                return Boolean.FALSE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onTypeVariable(TypeDescription.Generic generic) {
                return Boolean.FALSE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
            public Boolean onWildcard(TypeDescription.Generic generic) {
                boolean z;
                boolean z2 = false;
                while (true) {
                    for (TypeDescription.Generic generic2 : generic.getUpperBounds()) {
                        for (TypeDescription.Generic generic3 : this.wildcard.getUpperBounds()) {
                            if (!((Boolean) generic3.accept(new IsAssignableToVisitor(generic2))).booleanValue()) {
                                return Boolean.FALSE;
                            }
                        }
                        z = z || !generic2.represents(Object.class);
                    }
                    boolean z3 = false;
                    for (TypeDescription.Generic generic4 : generic.getLowerBounds()) {
                        for (TypeDescription.Generic generic5 : this.wildcard.getLowerBounds()) {
                            if (!((Boolean) generic4.accept(new IsAssignableToVisitor(generic5))).booleanValue()) {
                                return Boolean.FALSE;
                            }
                        }
                        z3 = true;
                    }
                    if (z) {
                        return Boolean.valueOf(this.wildcard.getLowerBounds().isEmpty());
                    }
                    if (z3) {
                        TypeList.Generic upperBounds = this.wildcard.getUpperBounds();
                        if (upperBounds.size() == 0 || (upperBounds.size() == 1 && upperBounds.getOnly().represents(Object.class))) {
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                    }
                    return Boolean.TRUE;
                }
            }

            public OfWildcard(TypeDescription.Generic generic) {
                this.wildcard = generic;
            }
        }

        public IsAssignableToVisitor(TypeDescription.Generic generic) {
            this(generic, true);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                IsAssignableToVisitor isAssignableToVisitor = (IsAssignableToVisitor) obj;
                return this.polymorphic == isAssignableToVisitor.polymorphic && this.typeDescription.equals(isAssignableToVisitor.typeDescription);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + (this.polymorphic ? 1 : 0);
        }

        public IsAssignableToVisitor(TypeDescription.Generic generic, boolean z) {
            this.typeDescription = generic;
            this.polymorphic = z;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public Boolean onGenericArray(TypeDescription.Generic generic) {
            return (Boolean) this.typeDescription.accept(new OfGenericArray(generic, this.polymorphic));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public Boolean onNonGenericType(TypeDescription.Generic generic) {
            return (Boolean) this.typeDescription.accept(new OfNonGenericType(generic, this.polymorphic));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public Boolean onParameterizedType(TypeDescription.Generic generic) {
            return (Boolean) this.typeDescription.accept(new OfParameterizedType(generic, this.polymorphic));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public Boolean onTypeVariable(TypeDescription.Generic generic) {
            if (!generic.getTypeVariableSource().isInferrable()) {
                if (generic.equals(this.typeDescription)) {
                    return Boolean.TRUE;
                }
                if (this.polymorphic) {
                    Queue make = QueueFactory.make(generic.getUpperBounds());
                    while (!make.isEmpty()) {
                        TypeDescription.Generic generic2 = (TypeDescription.Generic) make.remove();
                        if (((Boolean) generic2.accept(new IsAssignableToVisitor(this.typeDescription))).booleanValue()) {
                            return Boolean.TRUE;
                        }
                        if (generic2.getSort().isTypeVariable()) {
                            make.addAll(generic2.getUpperBounds());
                        }
                    }
                    return Boolean.FALSE;
                }
                return Boolean.FALSE;
            }
            throw new UnsupportedOperationException("Assignability checks for type variables declared by methods are not currently supported");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
        public Boolean onWildcard(TypeDescription.Generic generic) {
            return (Boolean) this.typeDescription.accept(new OfWildcard(generic));
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.assign.Assigner
    public StackManipulation assign(TypeDescription.Generic generic, TypeDescription.Generic generic2, Assigner.Typing typing) {
        if (!generic.isPrimitive() && !generic2.isPrimitive()) {
            if (((Boolean) generic.accept(new IsAssignableToVisitor(generic2))).booleanValue()) {
                return StackManipulation.Trivial.INSTANCE;
            }
            if (typing.isDynamic()) {
                if (generic.asErasure().isAssignableTo(generic2.asErasure())) {
                    return StackManipulation.Trivial.INSTANCE;
                }
                return TypeCasting.m14971to(generic2);
            }
            return StackManipulation.Illegal.INSTANCE;
        } else if (generic.equals(generic2)) {
            return StackManipulation.Trivial.INSTANCE;
        } else {
            return StackManipulation.Illegal.INSTANCE;
        }
    }
}
