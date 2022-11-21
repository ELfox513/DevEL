package net.bytebuddy.description.method;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.ModifierReviewable;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationSource;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface ParameterDescription extends AnnotationSource, NamedElement.WithRuntimeName, NamedElement.WithOptionalName, ModifierReviewable.ForParameterDescription, ByteCodeElement.TypeDependant<InDefinedShape, Token> {
    public static final String NAME_PREFIX = "arg";

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase extends ModifierReviewable.AbstractBase implements ParameterDescription {
        private transient /* synthetic */ int hashCode;

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public /* bridge */ /* synthetic */ Token asToken(ElementMatcher elementMatcher) {
            return asToken2((ElementMatcher<? super TypeDescription>) elementMatcher);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ParameterDescription)) {
                return false;
            }
            ParameterDescription parameterDescription = (ParameterDescription) obj;
            return getDeclaringMethod().equals(parameterDescription.getDeclaringMethod()) && getIndex() == parameterDescription.getIndex();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return getName();
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return 0;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return ParameterDescription.NAME_PREFIX.concat(String.valueOf(getIndex()));
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode = this.hashCode != 0 ? 0 : getDeclaringMethod().hashCode() ^ getIndex();
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        /* renamed from: asToken  reason: avoid collision after fix types in other method */
        public Token asToken2(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new Token((TypeDescription.Generic) getType().accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)), getDeclaredAnnotations(), isNamed() ? getName() : Token.NO_NAME, hasModifiers() ? Integer.valueOf(getModifiers()) : Token.NO_MODIFIERS);
        }

        public String toString() {
            String name;
            StringBuilder sb = new StringBuilder(Modifier.toString(getModifiers()));
            if (getModifiers() != 0) {
                sb.append(' ');
            }
            if (isVarArgs()) {
                name = getType().asErasure().getName().replaceFirst("\\[]$", "...");
            } else {
                name = getType().asErasure().getName();
            }
            sb.append(name);
            sb.append(' ');
            sb.append(getName());
            return sb.toString();
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            if (isNamed()) {
                return getName();
            }
            return "";
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public int getOffset() {
            int size;
            TypeList asErasures = getDeclaringMethod().getParameters().asTypeList().asErasures();
            if (getDeclaringMethod().isStatic()) {
                size = StackSize.ZERO.getSize();
            } else {
                size = StackSize.SINGLE.getSize();
            }
            for (int i = 0; i < getIndex(); i++) {
                size += asErasures.get(i).getStackSize().getSize();
            }
            return size;
        }
    }

    /* loaded from: classes2.dex */
    public interface InDefinedShape extends ParameterDescription {

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase extends AbstractBase implements InDefinedShape {
            @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
            public InDefinedShape asDefined() {
                return this;
            }
        }

        @Override // 
        MethodDescription.InDefinedShape getDeclaringMethod();
    }

    /* loaded from: classes2.dex */
    public interface InGenericShape extends ParameterDescription {
        @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
        MethodDescription.InGenericShape getDeclaringMethod();
    }

    /* loaded from: classes2.dex */
    public static class Latent extends InDefinedShape.AbstractBase {
        private final List<? extends AnnotationDescription> declaredAnnotations;
        private final MethodDescription.InDefinedShape declaringMethod;
        private final int index;
        @MaybeNull
        private final Integer modifiers;
        @MaybeNull
        private final String name;
        private final int offset;
        private final TypeDescription.Generic parameterType;

        public Latent(MethodDescription.InDefinedShape inDefinedShape, Token token, int i, int i2) {
            this(inDefinedShape, token.getType(), token.getAnnotations(), token.getName(), token.getModifiers(), i, i2);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Explicit(this.declaredAnnotations);
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public int getIndex() {
            return this.index;
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.method.ParameterDescription
        public int getOffset() {
            return this.offset;
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public TypeDescription.Generic getType() {
            return (TypeDescription.Generic) this.parameterType.accept(TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15184of(this));
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public boolean hasModifiers() {
            return this.modifiers != null;
        }

        @Override // net.bytebuddy.description.NamedElement.WithOptionalName
        public boolean isNamed() {
            return this.name != null;
        }

        @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
        public MethodDescription.InDefinedShape getDeclaringMethod() {
            return this.declaringMethod;
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            Integer num = this.modifiers;
            if (num == null) {
                return super.getModifiers();
            }
            return num.intValue();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            String str = this.name;
            if (str == null) {
                return super.getName();
            }
            return str;
        }

        public Latent(MethodDescription.InDefinedShape inDefinedShape, TypeDescription.Generic generic, int i, int i2) {
            this(inDefinedShape, generic, Collections.emptyList(), Token.NO_NAME, Token.NO_MODIFIERS, i, i2);
        }

        public Latent(MethodDescription.InDefinedShape inDefinedShape, TypeDescription.Generic generic, List<? extends AnnotationDescription> list, @MaybeNull String str, @MaybeNull Integer num, int i, int i2) {
            this.declaringMethod = inDefinedShape;
            this.parameterType = generic;
            this.declaredAnnotations = list;
            this.name = str;
            this.modifiers = num;
            this.index = i;
            this.offset = i2;
        }
    }

    /* loaded from: classes2.dex */
    public static class Token implements ByteCodeElement.Token<Token> {
        @AlwaysNull
        public static final Integer NO_MODIFIERS = null;
        @AlwaysNull
        public static final String NO_NAME = null;
        private final List<? extends AnnotationDescription> annotations;
        private transient /* synthetic */ int hashCode;
        @MaybeNull
        private final Integer modifiers;
        @MaybeNull
        private final String name;
        private final TypeDescription.Generic type;

        /* loaded from: classes2.dex */
        public static class TypeList extends AbstractList<Token> {
            private final List<? extends TypeDefinition> typeDescriptions;

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.typeDescriptions.size();
            }

            @Override // java.util.AbstractList, java.util.List
            public Token get(int i) {
                return new Token(this.typeDescriptions.get(i).asGenericType());
            }

            public TypeList(List<? extends TypeDefinition> list) {
                this.typeDescriptions = list;
            }
        }

        public Token(TypeDescription.Generic generic) {
            this(generic, Collections.emptyList());
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        public /* bridge */ /* synthetic */ Token accept(TypeDescription.Generic.Visitor visitor) {
            return accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) visitor);
        }

        public boolean equals(@MaybeNull Object obj) {
            String str;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            if (this.type.equals(token.type) && this.annotations.equals(token.annotations) && ((str = this.name) == null ? token.name == null : str.equals(token.name))) {
                Integer num = this.modifiers;
                if (num != null) {
                    if (num.equals(token.modifiers)) {
                        return true;
                    }
                } else if (token.modifiers == null) {
                    return true;
                }
            }
            return false;
        }

        public AnnotationList getAnnotations() {
            return new AnnotationList.Explicit(this.annotations);
        }

        @MaybeNull
        public Integer getModifiers() {
            return this.modifiers;
        }

        @MaybeNull
        public String getName() {
            return this.name;
        }

        public TypeDescription.Generic getType() {
            return this.type;
        }

        public String toString() {
            return "ParameterDescription.Token{type=" + this.type + ", annotations=" + this.annotations + ", name='" + this.name + "', modifiers=" + this.modifiers + '}';
        }

        public Token(TypeDescription.Generic generic, List<? extends AnnotationDescription> list) {
            this(generic, list, NO_NAME, NO_MODIFIERS);
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        /* renamed from: accept  reason: avoid collision after fix types in other method */
        public Token accept2(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            return new Token((TypeDescription.Generic) this.type.accept(visitor), this.annotations, this.name, this.modifiers);
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int i;
            int i2 = 0;
            if (this.hashCode == 0) {
                int hashCode = ((this.type.hashCode() * 31) + this.annotations.hashCode()) * 31;
                String str = this.name;
                if (str != null) {
                    i = str.hashCode();
                } else {
                    i = 0;
                }
                int i3 = (hashCode + i) * 31;
                Integer num = this.modifiers;
                if (num != null) {
                    i2 = num.hashCode();
                }
                i2 += i3;
            }
            if (i2 == 0) {
                return this.hashCode;
            }
            this.hashCode = i2;
            return i2;
        }

        public Token(TypeDescription.Generic generic, @MaybeNull String str, @MaybeNull Integer num) {
            this(generic, Collections.emptyList(), str, num);
        }

        public Token(TypeDescription.Generic generic, List<? extends AnnotationDescription> list, @MaybeNull String str, @MaybeNull Integer num) {
            this.type = generic;
            this.annotations = list;
            this.name = str;
            this.modifiers = num;
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase implements InGenericShape {
        private final MethodDescription.InGenericShape declaringMethod;
        private final ParameterDescription parameterDescription;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.parameterDescription.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public int getIndex() {
            return this.parameterDescription.getIndex();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.parameterDescription.getModifiers();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.parameterDescription.getName();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.method.ParameterDescription
        public int getOffset() {
            return this.parameterDescription.getOffset();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public TypeDescription.Generic getType() {
            return (TypeDescription.Generic) this.parameterDescription.getType().accept(this.visitor);
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public boolean hasModifiers() {
            return this.parameterDescription.hasModifiers();
        }

        @Override // net.bytebuddy.description.NamedElement.WithOptionalName
        public boolean isNamed() {
            return this.parameterDescription.isNamed();
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public InDefinedShape asDefined() {
            return this.parameterDescription.asDefined();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
        public MethodDescription.InGenericShape getDeclaringMethod() {
            return this.declaringMethod;
        }

        public TypeSubstituting(MethodDescription.InGenericShape inGenericShape, ParameterDescription parameterDescription, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringMethod = inGenericShape;
            this.parameterDescription = parameterDescription;
            this.visitor = visitor;
        }
    }

    MethodDescription getDeclaringMethod();

    int getIndex();

    int getOffset();

    TypeDescription.Generic getType();

    boolean hasModifiers();

    /* loaded from: classes2.dex */
    public static abstract class ForLoadedParameter<T extends AccessibleObject> extends InDefinedShape.AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        private static final Parameter PARAMETER;
        public final T executable;
        public final int index;
        public final ParameterAnnotationSource parameterAnnotationSource;

        /* loaded from: classes2.dex */
        public static class OfConstructor extends ForLoadedParameter<Constructor<?>> {
            public OfConstructor(Constructor<?> constructor, int i, ParameterAnnotationSource parameterAnnotationSource) {
                super(constructor, i, parameterAnnotationSource);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            @SuppressFBWarnings(justification = "The implicit field type casting is not understood by Findbugs", value = {"BC_UNCONFIRMED_CAST"})
            public AnnotationList getDeclaredAnnotations() {
                Annotation[][] parameterAnnotations = this.parameterAnnotationSource.getParameterAnnotations();
                MethodDescription.InDefinedShape declaringMethod = getDeclaringMethod();
                if (parameterAnnotations.length != declaringMethod.getParameters().size() && declaringMethod.getDeclaringType().isInnerClass()) {
                    if (this.index == 0) {
                        return new AnnotationList.Empty();
                    }
                    return new AnnotationList.ForLoadedAnnotations(parameterAnnotations[this.index - 1]);
                }
                return new AnnotationList.ForLoadedAnnotations(parameterAnnotations[this.index]);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
            @SuppressFBWarnings(justification = "The implicit field type casting is not understood by Findbugs.", value = {"BC_UNCONFIRMED_CAST"})
            public MethodDescription.InDefinedShape getDeclaringMethod() {
                return new MethodDescription.ForLoadedConstructor((Constructor) this.executable);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            @SuppressFBWarnings(justification = "The implicit field type casting is not understood by Findbugs.", value = {"BC_UNCONFIRMED_CAST"})
            public TypeDescription.Generic getType() {
                if (TypeDescription.AbstractBase.RAW_TYPES) {
                    return TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(((Constructor) this.executable).getParameterTypes()[this.index]);
                }
                T t = this.executable;
                return new TypeDescription.Generic.LazyProjection.OfConstructorParameter((Constructor) t, this.index, ((Constructor) t).getParameterTypes());
            }
        }

        /* loaded from: classes2.dex */
        public static class OfLegacyVmConstructor extends InDefinedShape.AbstractBase {
            private final Constructor<?> constructor;
            private final int index;
            private final ParameterAnnotationSource parameterAnnotationSource;
            private final Class<?>[] parameterType;

            @Override // net.bytebuddy.description.method.ParameterDescription
            public int getIndex() {
                return this.index;
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            public boolean hasModifiers() {
                return false;
            }

            @Override // net.bytebuddy.description.NamedElement.WithOptionalName
            public boolean isNamed() {
                return false;
            }

            @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
            public MethodDescription.InDefinedShape getDeclaringMethod() {
                return new MethodDescription.ForLoadedConstructor(this.constructor);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            public TypeDescription.Generic getType() {
                if (TypeDescription.AbstractBase.RAW_TYPES) {
                    return TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(this.parameterType[this.index]);
                }
                return new TypeDescription.Generic.LazyProjection.OfConstructorParameter(this.constructor, this.index, this.parameterType);
            }

            public OfLegacyVmConstructor(Constructor<?> constructor, int i, Class<?>[] clsArr, ParameterAnnotationSource parameterAnnotationSource) {
                this.constructor = constructor;
                this.index = i;
                this.parameterType = clsArr;
                this.parameterAnnotationSource = parameterAnnotationSource;
            }

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                MethodDescription.InDefinedShape declaringMethod = getDeclaringMethod();
                Annotation[][] parameterAnnotations = this.parameterAnnotationSource.getParameterAnnotations();
                if (parameterAnnotations.length != declaringMethod.getParameters().size() && declaringMethod.getDeclaringType().isInnerClass()) {
                    if (this.index == 0) {
                        return new AnnotationList.Empty();
                    }
                    return new AnnotationList.ForLoadedAnnotations(parameterAnnotations[this.index - 1]);
                }
                return new AnnotationList.ForLoadedAnnotations(parameterAnnotations[this.index]);
            }
        }

        /* loaded from: classes2.dex */
        public static class OfLegacyVmMethod extends InDefinedShape.AbstractBase {
            private final int index;
            private final Method method;
            private final ParameterAnnotationSource parameterAnnotationSource;
            private final Class<?>[] parameterType;

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                return new AnnotationList.ForLoadedAnnotations(this.parameterAnnotationSource.getParameterAnnotations()[this.index]);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            public int getIndex() {
                return this.index;
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            public boolean hasModifiers() {
                return false;
            }

            @Override // net.bytebuddy.description.NamedElement.WithOptionalName
            public boolean isNamed() {
                return false;
            }

            @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
            public MethodDescription.InDefinedShape getDeclaringMethod() {
                return new MethodDescription.ForLoadedMethod(this.method);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            public TypeDescription.Generic getType() {
                if (TypeDescription.AbstractBase.RAW_TYPES) {
                    return TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(this.parameterType[this.index]);
                }
                return new TypeDescription.Generic.LazyProjection.OfMethodParameter(this.method, this.index, this.parameterType);
            }

            public OfLegacyVmMethod(Method method, int i, Class<?>[] clsArr, ParameterAnnotationSource parameterAnnotationSource) {
                this.method = method;
                this.index = i;
                this.parameterType = clsArr;
                this.parameterAnnotationSource = parameterAnnotationSource;
            }
        }

        /* loaded from: classes2.dex */
        public static class OfMethod extends ForLoadedParameter<Method> {
            public OfMethod(Method method, int i, ParameterAnnotationSource parameterAnnotationSource) {
                super(method, i, parameterAnnotationSource);
            }

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            @SuppressFBWarnings(justification = "The implicit field type casting is not understood by Findbugs.", value = {"BC_UNCONFIRMED_CAST"})
            public AnnotationList getDeclaredAnnotations() {
                return new AnnotationList.ForLoadedAnnotations(this.parameterAnnotationSource.getParameterAnnotations()[this.index]);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription, net.bytebuddy.description.method.ParameterDescription.InDefinedShape
            @SuppressFBWarnings(justification = "The implicit field type casting is not understood by Findbugs.", value = {"BC_UNCONFIRMED_CAST"})
            public MethodDescription.InDefinedShape getDeclaringMethod() {
                return new MethodDescription.ForLoadedMethod((Method) this.executable);
            }

            @Override // net.bytebuddy.description.method.ParameterDescription
            @SuppressFBWarnings(justification = "The implicit field type casting is not understood by Findbugs.", value = {"BC_UNCONFIRMED_CAST"})
            public TypeDescription.Generic getType() {
                if (TypeDescription.AbstractBase.RAW_TYPES) {
                    return TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(((Method) this.executable).getParameterTypes()[this.index]);
                }
                T t = this.executable;
                return new TypeDescription.Generic.LazyProjection.OfMethodParameter((Method) t, this.index, ((Method) t).getParameterTypes());
            }
        }

        @JavaDispatcher.Proxied("java.lang.reflect.Parameter")
        /* loaded from: classes2.dex */
        public interface Parameter {
            @JavaDispatcher.Proxied("getModifiers")
            int getModifiers(Object obj);

            @JavaDispatcher.Proxied("getName")
            String getName(Object obj);

            @JavaDispatcher.Proxied("isNamePresent")
            boolean isNamePresent(Object obj);
        }

        /* loaded from: classes2.dex */
        public interface ParameterAnnotationSource {
            Annotation[][] getParameterAnnotations();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForLoadedConstructor implements ParameterAnnotationSource {
                private final Constructor<?> constructor;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.constructor.equals(((ForLoadedConstructor) obj).constructor);
                }

                @Override // net.bytebuddy.description.method.ParameterDescription.ForLoadedParameter.ParameterAnnotationSource
                public Annotation[][] getParameterAnnotations() {
                    return this.constructor.getParameterAnnotations();
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.constructor.hashCode();
                }

                public ForLoadedConstructor(Constructor<?> constructor) {
                    this.constructor = constructor;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForLoadedMethod implements ParameterAnnotationSource {
                private final Method method;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.method.equals(((ForLoadedMethod) obj).method);
                }

                @Override // net.bytebuddy.description.method.ParameterDescription.ForLoadedParameter.ParameterAnnotationSource
                public Annotation[][] getParameterAnnotations() {
                    return this.method.getParameterAnnotations();
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.method.hashCode();
                }

                public ForLoadedMethod(Method method) {
                    this.method = method;
                }
            }
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                PARAMETER = (Parameter) doPrivileged(JavaDispatcher.m14754of(Parameter.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                PARAMETER = (Parameter) doPrivileged(JavaDispatcher.m14754of(Parameter.class));
            }
            PARAMETER = (Parameter) doPrivileged(JavaDispatcher.m14754of(Parameter.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public int getIndex() {
            return this.index;
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return PARAMETER.getModifiers(ParameterList.ForLoadedExecutable.EXECUTABLE.getParameters(this.executable)[this.index]);
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return PARAMETER.getName(ParameterList.ForLoadedExecutable.EXECUTABLE.getParameters(this.executable)[this.index]);
        }

        @Override // net.bytebuddy.description.method.ParameterDescription
        public boolean hasModifiers() {
            return isNamed() || getModifiers() != 0;
        }

        @Override // net.bytebuddy.description.NamedElement.WithOptionalName
        public boolean isNamed() {
            return PARAMETER.isNamePresent(ParameterList.ForLoadedExecutable.EXECUTABLE.getParameters(this.executable)[this.index]);
        }

        public ForLoadedParameter(T t, int i, ParameterAnnotationSource parameterAnnotationSource) {
            this.executable = t;
            this.index = i;
            this.parameterAnnotationSource = parameterAnnotationSource;
        }
    }
}
