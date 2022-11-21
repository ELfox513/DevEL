package net.bytebuddy.dynamic.scaffold.inline;

import com.badlogic.gdx.utils.compression.lzma.Base;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.auxiliary.TrivialType;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface MethodRebaseResolver {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements MethodRebaseResolver {
        private final List<DynamicType> dynamicTypes;
        private final Map<MethodDescription.InDefinedShape, Resolution> resolutions;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Default r5 = (Default) obj;
                return this.resolutions.equals(r5.resolutions) && this.dynamicTypes.equals(r5.dynamicTypes);
            }
            return false;
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver
        public List<DynamicType> getAuxiliaryTypes() {
            return this.dynamicTypes;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.resolutions.hashCode()) * 31) + this.dynamicTypes.hashCode();
        }

        public static MethodRebaseResolver make(TypeDescription typeDescription, Set<? extends MethodDescription.SignatureToken> set, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, MethodNameTransformer methodNameTransformer) {
            Resolution m15107of;
            HashMap hashMap = new HashMap();
            DynamicType dynamicType = null;
            for (MethodDescription.InDefinedShape inDefinedShape : typeDescription.getDeclaredMethods()) {
                if (set.contains(inDefinedShape.asSignatureToken())) {
                    if (inDefinedShape.isConstructor()) {
                        if (dynamicType == null) {
                            TrivialType trivialType = TrivialType.SIGNATURE_RELEVANT;
                            dynamicType = trivialType.make(namingStrategy.name(typeDescription, trivialType), classFileVersion, MethodAccessorFactory.Illegal.INSTANCE);
                        }
                        m15107of = Resolution.ForRebasedConstructor.m15108of(inDefinedShape, dynamicType.getTypeDescription());
                    } else {
                        m15107of = Resolution.ForRebasedMethod.m15107of(typeDescription, inDefinedShape, methodNameTransformer);
                    }
                    hashMap.put(inDefinedShape, m15107of);
                }
            }
            if (dynamicType == null) {
                return new Default(hashMap, Collections.emptyList());
            }
            return new Default(hashMap, Collections.singletonList(dynamicType));
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver
        public Map<MethodDescription.SignatureToken, Resolution> asTokenMap() {
            HashMap hashMap = new HashMap();
            for (Map.Entry<MethodDescription.InDefinedShape, Resolution> entry : this.resolutions.entrySet()) {
                hashMap.put(entry.getKey().asSignatureToken(), entry.getValue());
            }
            return hashMap;
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver
        public Resolution resolve(MethodDescription.InDefinedShape inDefinedShape) {
            Resolution resolution = this.resolutions.get(inDefinedShape);
            if (resolution == null) {
                return new Resolution.Preserved(inDefinedShape);
            }
            return resolution;
        }

        public Default(Map<MethodDescription.InDefinedShape, Resolution> map, List<DynamicType> list) {
            this.resolutions = map;
            this.dynamicTypes = list;
        }
    }

    /* loaded from: classes2.dex */
    public enum Disabled implements MethodRebaseResolver {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver
        public Map<MethodDescription.SignatureToken, Resolution> asTokenMap() {
            return Collections.emptyMap();
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver
        public List<DynamicType> getAuxiliaryTypes() {
            return Collections.emptyList();
        }

        @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver
        public Resolution resolve(MethodDescription.InDefinedShape inDefinedShape) {
            return new Resolution.Preserved(inDefinedShape);
        }
    }

    /* loaded from: classes2.dex */
    public interface Resolution {
        TypeList getAppendedParameters();

        MethodDescription.InDefinedShape getResolvedMethod();

        boolean isRebased();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForRebasedConstructor implements Resolution {
            private final MethodDescription.InDefinedShape methodDescription;
            private final TypeDescription placeholderType;

            /* loaded from: classes2.dex */
            public static class RebasedConstructor extends MethodDescription.InDefinedShape.AbstractBase {
                private final MethodDescription.InDefinedShape methodDescription;
                private final TypeDescription placeholderType;

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                @AlwaysNull
                public AnnotationValue<?, ?> getDefaultValue() {
                    return AnnotationValue.UNDEFINED;
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeList.Generic getExceptionTypes() {
                    return this.methodDescription.getExceptionTypes().asRawTypes();
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getInternalName() {
                    return MethodDescription.CONSTRUCTOR_INTERNAL_NAME;
                }

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    return 4098;
                }

                @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                    return new ParameterList.Explicit.ForTypes(this, CompoundList.m14777of(this.methodDescription.getParameters().asTypeList().asErasures(), this.placeholderType));
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReturnType() {
                    return TypeDescription.Generic.VOID;
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return this.methodDescription.getDeclaringType();
                }

                public RebasedConstructor(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription) {
                    this.methodDescription = inDefinedShape;
                    this.placeholderType = typeDescription;
                }
            }

            /* renamed from: of */
            public static Resolution m15108of(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription) {
                return new ForRebasedConstructor(new RebasedConstructor(inDefinedShape, typeDescription), typeDescription);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForRebasedConstructor forRebasedConstructor = (ForRebasedConstructor) obj;
                    return this.methodDescription.equals(forRebasedConstructor.methodDescription) && this.placeholderType.equals(forRebasedConstructor.placeholderType);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public TypeList getAppendedParameters() {
                return new TypeList.Explicit(this.placeholderType);
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public MethodDescription.InDefinedShape getResolvedMethod() {
                return this.methodDescription;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.placeholderType.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public boolean isRebased() {
                return true;
            }

            public ForRebasedConstructor(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription) {
                this.methodDescription = inDefinedShape;
                this.placeholderType = typeDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForRebasedMethod implements Resolution {
            private final MethodDescription.InDefinedShape methodDescription;

            /* loaded from: classes2.dex */
            public static class RebasedMethod extends MethodDescription.InDefinedShape.AbstractBase {
                private final TypeDescription instrumentedType;
                private final MethodDescription.InDefinedShape methodDescription;
                private final MethodNameTransformer methodNameTransformer;

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                @AlwaysNull
                public AnnotationValue<?, ?> getDefaultValue() {
                    return AnnotationValue.UNDEFINED;
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeList.Generic getExceptionTypes() {
                    return this.methodDescription.getExceptionTypes().asRawTypes();
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getInternalName() {
                    return this.methodNameTransformer.transform(this.methodDescription);
                }

                @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                    return new ParameterList.Explicit.ForTypes(this, this.methodDescription.getParameters().asTypeList().asRawTypes());
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReturnType() {
                    return this.methodDescription.getReturnType().asRawType();
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return this.methodDescription.getDeclaringType();
                }

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    int i;
                    int i2;
                    int i3 = 0;
                    if (this.methodDescription.isStatic()) {
                        i = 8;
                    } else {
                        i = 0;
                    }
                    int i4 = i | 4096;
                    if (this.methodDescription.isNative()) {
                        i3 = Base.kNumLenSymbols;
                    }
                    int i5 = i4 | i3;
                    if (this.instrumentedType.isInterface() && !this.methodDescription.isNative()) {
                        i2 = 1;
                    } else {
                        i2 = 2;
                    }
                    return i5 | i2;
                }

                public RebasedMethod(TypeDescription typeDescription, MethodDescription.InDefinedShape inDefinedShape, MethodNameTransformer methodNameTransformer) {
                    this.instrumentedType = typeDescription;
                    this.methodDescription = inDefinedShape;
                    this.methodNameTransformer = methodNameTransformer;
                }
            }

            /* renamed from: of */
            public static Resolution m15107of(TypeDescription typeDescription, MethodDescription.InDefinedShape inDefinedShape, MethodNameTransformer methodNameTransformer) {
                return new ForRebasedMethod(new RebasedMethod(typeDescription, inDefinedShape, methodNameTransformer));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((ForRebasedMethod) obj).methodDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public TypeList getAppendedParameters() {
                return new TypeList.Empty();
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public MethodDescription.InDefinedShape getResolvedMethod() {
                return this.methodDescription;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public boolean isRebased() {
                return true;
            }

            public ForRebasedMethod(MethodDescription.InDefinedShape inDefinedShape) {
                this.methodDescription = inDefinedShape;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Preserved implements Resolution {
            private final MethodDescription.InDefinedShape methodDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((Preserved) obj).methodDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public TypeList getAppendedParameters() {
                throw new IllegalStateException("Cannot process additional parameters for non-rebased method: " + this.methodDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public MethodDescription.InDefinedShape getResolvedMethod() {
                return this.methodDescription;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver.Resolution
            public boolean isRebased() {
                return false;
            }

            public Preserved(MethodDescription.InDefinedShape inDefinedShape) {
                this.methodDescription = inDefinedShape;
            }
        }
    }

    Map<MethodDescription.SignatureToken, Resolution> asTokenMap();

    List<DynamicType> getAuxiliaryTypes();

    Resolution resolve(MethodDescription.InDefinedShape inDefinedShape);
}
