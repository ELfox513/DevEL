package net.bytebuddy.dynamic;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface Transformer<T> {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound<S> implements Transformer<S> {
        private final List<Transformer<S>> transformers;

        public Compound(Transformer<S>... transformerArr) {
            this(Arrays.asList(transformerArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.transformers.equals(((Compound) obj).transformers);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.transformers.hashCode();
        }

        public Compound(List<? extends Transformer<S>> list) {
            this.transformers = new ArrayList();
            for (Transformer<S> transformer : list) {
                if (transformer instanceof Compound) {
                    this.transformers.addAll(((Compound) transformer).transformers);
                } else if (!(transformer instanceof NoOp)) {
                    this.transformers.add(transformer);
                }
            }
        }

        @Override // net.bytebuddy.dynamic.Transformer
        public S transform(TypeDescription typeDescription, S s) {
            for (Transformer<S> transformer : this.transformers) {
                s = transformer.transform(typeDescription, s);
            }
            return s;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForField implements Transformer<FieldDescription> {
        private final Transformer<FieldDescription.Token> transformer;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class FieldModifierTransformer implements Transformer<FieldDescription.Token> {
            private final ModifierContributor.Resolver<ModifierContributor.ForField> resolver;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.resolver.equals(((FieldModifierTransformer) obj).resolver);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.resolver.hashCode();
            }

            @Override // net.bytebuddy.dynamic.Transformer
            public FieldDescription.Token transform(TypeDescription typeDescription, FieldDescription.Token token) {
                return new FieldDescription.Token(token.getName(), this.resolver.resolve(token.getModifiers()), token.getType(), token.getAnnotations());
            }

            public FieldModifierTransformer(ModifierContributor.Resolver<ModifierContributor.ForField> resolver) {
                this.resolver = resolver;
            }
        }

        /* loaded from: classes2.dex */
        public static class TransformedField extends FieldDescription.AbstractBase {
            private final TypeDefinition declaringType;
            private final FieldDescription.InDefinedShape fieldDescription;
            private final TypeDescription instrumentedType;
            private final FieldDescription.Token token;

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                return this.token.getAnnotations();
            }

            @Override // net.bytebuddy.description.DeclaredByType
            public TypeDefinition getDeclaringType() {
                return this.declaringType;
            }

            @Override // net.bytebuddy.description.ModifierReviewable
            public int getModifiers() {
                return this.token.getModifiers();
            }

            @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
            public String getName() {
                return this.token.getName();
            }

            @Override // net.bytebuddy.description.field.FieldDescription
            public TypeDescription.Generic getType() {
                return (TypeDescription.Generic) this.token.getType().accept(TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15182of(this.instrumentedType));
            }

            @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
            public FieldDescription.InDefinedShape asDefined() {
                return this.fieldDescription;
            }

            public TransformedField(TypeDescription typeDescription, TypeDefinition typeDefinition, FieldDescription.Token token, FieldDescription.InDefinedShape inDefinedShape) {
                this.instrumentedType = typeDescription;
                this.declaringType = typeDefinition;
                this.token = token;
                this.fieldDescription = inDefinedShape;
            }
        }

        public static Transformer<FieldDescription> withModifiers(ModifierContributor.ForField... forFieldArr) {
            return withModifiers(Arrays.asList(forFieldArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.transformer.equals(((ForField) obj).transformer);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.transformer.hashCode();
        }

        public static Transformer<FieldDescription> withModifiers(List<? extends ModifierContributor.ForField> list) {
            return new ForField(new FieldModifierTransformer(ModifierContributor.Resolver.m15205of(list)));
        }

        @Override // net.bytebuddy.dynamic.Transformer
        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public FieldDescription transform(TypeDescription typeDescription, FieldDescription fieldDescription) {
            return new TransformedField(typeDescription, fieldDescription.getDeclaringType(), this.transformer.transform(typeDescription, fieldDescription.asToken(ElementMatchers.none())), fieldDescription.asDefined());
        }

        public ForField(Transformer<FieldDescription.Token> transformer) {
            this.transformer = transformer;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForMethod implements Transformer<MethodDescription> {
        private final Transformer<MethodDescription.Token> transformer;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class MethodModifierTransformer implements Transformer<MethodDescription.Token> {
            private final ModifierContributor.Resolver<ModifierContributor.ForMethod> resolver;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.resolver.equals(((MethodModifierTransformer) obj).resolver);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.resolver.hashCode();
            }

            @Override // net.bytebuddy.dynamic.Transformer
            public MethodDescription.Token transform(TypeDescription typeDescription, MethodDescription.Token token) {
                return new MethodDescription.Token(token.getName(), this.resolver.resolve(token.getModifiers()), token.getTypeVariableTokens(), token.getReturnType(), token.getParameterTokens(), token.getExceptionTypes(), token.getAnnotations(), token.getDefaultValue(), token.getReceiverType());
            }

            public MethodModifierTransformer(ModifierContributor.Resolver<ModifierContributor.ForMethod> resolver) {
                this.resolver = resolver;
            }
        }

        /* loaded from: classes2.dex */
        public static class TransformedMethod extends MethodDescription.AbstractBase {
            private final TypeDefinition declaringType;
            private final TypeDescription instrumentedType;
            private final MethodDescription.InDefinedShape methodDescription;
            private final MethodDescription.Token token;

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class AttachmentVisitor extends TypeDescription.Generic.Visitor.Substitutor.WithoutTypeSubstitution {
                public AttachmentVisitor() {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && TransformedMethod.this.equals(TransformedMethod.this);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + TransformedMethod.this.hashCode();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public TypeDescription.Generic onTypeVariable(TypeDescription.Generic generic) {
                    TypeDescription.Generic only;
                    TypeList.Generic filter = TransformedMethod.this.getTypeVariables().filter(ElementMatchers.named(generic.getSymbol()));
                    if (filter.isEmpty()) {
                        only = TransformedMethod.this.instrumentedType.findExpectedVariable(generic.getSymbol());
                    } else {
                        only = filter.getOnly();
                    }
                    return new TypeDescription.Generic.OfTypeVariable.WithAnnotationOverlay(only, generic);
                }
            }

            /* loaded from: classes2.dex */
            public class TransformedParameter extends ParameterDescription.AbstractBase {
                private final int index;
                private final ParameterDescription.Token parameterToken;

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.parameterToken.getAnnotations();
                }

                @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
                public MethodDescription getDeclaringMethod() {
                    return TransformedMethod.this;
                }

                @Override // net.bytebuddy.description.method.ParameterDescription
                public int getIndex() {
                    return this.index;
                }

                @Override // net.bytebuddy.description.method.ParameterDescription
                public TypeDescription.Generic getType() {
                    return (TypeDescription.Generic) this.parameterToken.getType().accept(new AttachmentVisitor());
                }

                @Override // net.bytebuddy.description.method.ParameterDescription
                public boolean hasModifiers() {
                    return this.parameterToken.getModifiers() != null;
                }

                @Override // net.bytebuddy.description.NamedElement.WithOptionalName
                public boolean isNamed() {
                    return this.parameterToken.getName() != null;
                }

                public TransformedParameter(int i, ParameterDescription.Token token) {
                    this.index = i;
                    this.parameterToken = token;
                }

                @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
                public ParameterDescription.InDefinedShape asDefined() {
                    return (ParameterDescription.InDefinedShape) TransformedMethod.this.methodDescription.getParameters().get(this.index);
                }

                @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    Integer modifiers = this.parameterToken.getModifiers();
                    if (modifiers == null) {
                        return super.getModifiers();
                    }
                    return modifiers.intValue();
                }

                @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getName() {
                    String name = this.parameterToken.getName();
                    if (name == null) {
                        return super.getName();
                    }
                    return name;
                }
            }

            /* loaded from: classes2.dex */
            public class TransformedParameterList extends ParameterList.AbstractBase<ParameterDescription> {
                public TransformedParameterList() {
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return TransformedMethod.this.token.getParameterTokens().size();
                }

                @Override // java.util.AbstractList, java.util.List
                public ParameterDescription get(int i) {
                    TransformedMethod transformedMethod = TransformedMethod.this;
                    return new TransformedParameter(i, transformedMethod.token.getParameterTokens().get(i));
                }
            }

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                return this.token.getAnnotations();
            }

            @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
            public TypeDefinition getDeclaringType() {
                return this.declaringType;
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            @MaybeNull
            public AnnotationValue<?, ?> getDefaultValue() {
                return this.token.getDefaultValue();
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            public TypeList.Generic getExceptionTypes() {
                return new TypeList.Generic.ForDetachedTypes(this.token.getExceptionTypes(), new AttachmentVisitor());
            }

            @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
            public String getInternalName() {
                return this.token.getName();
            }

            @Override // net.bytebuddy.description.ModifierReviewable
            public int getModifiers() {
                return this.token.getModifiers();
            }

            @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
            public ParameterList<?> getParameters() {
                return new TransformedParameterList();
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            public TypeDescription.Generic getReturnType() {
                return (TypeDescription.Generic) this.token.getReturnType().accept(new AttachmentVisitor());
            }

            @Override // net.bytebuddy.description.TypeVariableSource
            public TypeList.Generic getTypeVariables() {
                return new TypeList.Generic.ForDetachedTypes.OfTypeVariables(this, this.token.getTypeVariableTokens(), new AttachmentVisitor());
            }

            @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
            public MethodDescription.InDefinedShape asDefined() {
                return this.methodDescription;
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            public TypeDescription.Generic getReceiverType() {
                TypeDescription.Generic receiverType = this.token.getReceiverType();
                if (receiverType == null) {
                    return TypeDescription.Generic.UNDEFINED;
                }
                return (TypeDescription.Generic) receiverType.accept(new AttachmentVisitor());
            }

            public TransformedMethod(TypeDescription typeDescription, TypeDefinition typeDefinition, MethodDescription.Token token, MethodDescription.InDefinedShape inDefinedShape) {
                this.instrumentedType = typeDescription;
                this.declaringType = typeDefinition;
                this.token = token;
                this.methodDescription = inDefinedShape;
            }
        }

        public static Transformer<MethodDescription> withModifiers(ModifierContributor.ForMethod... forMethodArr) {
            return withModifiers(Arrays.asList(forMethodArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.transformer.equals(((ForMethod) obj).transformer);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.transformer.hashCode();
        }

        public static Transformer<MethodDescription> withModifiers(List<? extends ModifierContributor.ForMethod> list) {
            return new ForMethod(new MethodModifierTransformer(ModifierContributor.Resolver.m15205of(list)));
        }

        @Override // net.bytebuddy.dynamic.Transformer
        public MethodDescription transform(TypeDescription typeDescription, MethodDescription methodDescription) {
            return new TransformedMethod(typeDescription, methodDescription.getDeclaringType(), this.transformer.transform(typeDescription, methodDescription.asToken(ElementMatchers.none())), methodDescription.asDefined());
        }

        public ForMethod(Transformer<MethodDescription.Token> transformer) {
            this.transformer = transformer;
        }
    }

    /* loaded from: classes2.dex */
    public enum NoOp implements Transformer<Object> {
        INSTANCE;

        public static <T> Transformer<T> make() {
            return INSTANCE;
        }

        @Override // net.bytebuddy.dynamic.Transformer
        public Object transform(TypeDescription typeDescription, Object obj) {
            return obj;
        }
    }

    T transform(TypeDescription typeDescription, T t);
}
