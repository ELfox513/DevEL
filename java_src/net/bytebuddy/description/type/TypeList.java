package net.bytebuddy.description.type;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.TypeVariableSource;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface TypeList extends FilterableList<TypeDescription, TypeList> {
    @AlwaysNull
    @SuppressFBWarnings(justification = "Null reference cannot be mutated.", value = {"MS_MUTABLE_ARRAY", "MS_OOI_PKGPROTECT"})
    public static final String[] NO_INTERFACES = null;
    @AlwaysNull
    public static final TypeList UNDEFINED = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase extends FilterableList.AbstractBase<TypeDescription, TypeList> implements TypeList {
        @Override // net.bytebuddy.description.type.TypeList
        public int getStackSize() {
            return StackSize.m14976of(this);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public TypeList wrap(List<TypeDescription> list) {
            return new Explicit(list);
        }

        @Override // net.bytebuddy.description.type.TypeList
        @MaybeNull
        public String[] toInternalNames() {
            int size = size();
            String[] strArr = new String[size];
            Iterator<TypeDescription> it = iterator();
            int i = 0;
            while (it.hasNext()) {
                strArr[i] = it.next().getInternalName();
                i++;
            }
            if (size == 0) {
                return TypeList.NO_INTERFACES;
            }
            return strArr;
        }
    }

    /* loaded from: classes2.dex */
    public static class Empty extends FilterableList.Empty<TypeDescription, TypeList> implements TypeList {
        @Override // net.bytebuddy.description.type.TypeList
        public int getStackSize() {
            return 0;
        }

        @Override // net.bytebuddy.description.type.TypeList
        @SuppressFBWarnings(justification = "Value is null", value = {"EI_EXPOSE_REP"})
        public String[] toInternalNames() {
            return TypeList.NO_INTERFACES;
        }
    }

    /* loaded from: classes2.dex */
    public static class Explicit extends AbstractBase {
        private final List<? extends TypeDescription> typeDescriptions;

        public Explicit(TypeDescription... typeDescriptionArr) {
            this(Arrays.asList(typeDescriptionArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.typeDescriptions.size();
        }

        public Explicit(List<? extends TypeDescription> list) {
            this.typeDescriptions = list;
        }

        /* renamed from: of */
        public static TypeList m15179of(List<? extends JavaConstant> list) {
            ArrayList arrayList = new ArrayList(list.size());
            for (JavaConstant javaConstant : list) {
                arrayList.add(javaConstant.getTypeDescription());
            }
            return new Explicit(arrayList);
        }

        @Override // java.util.AbstractList, java.util.List
        public TypeDescription get(int i) {
            return this.typeDescriptions.get(i);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedTypes extends AbstractBase {
        private final List<? extends Class<?>> types;

        public ForLoadedTypes(Class<?>... clsArr) {
            this(Arrays.asList(clsArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.types.size();
        }

        public ForLoadedTypes(List<? extends Class<?>> list) {
            this.types = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public TypeDescription get(int i) {
            return TypeDescription.ForLoadedType.m15196of(this.types.get(i));
        }

        @Override // net.bytebuddy.description.type.TypeList.AbstractBase, net.bytebuddy.description.type.TypeList
        @MaybeNull
        public String[] toInternalNames() {
            int size = this.types.size();
            String[] strArr = new String[size];
            int i = 0;
            for (Class<?> cls : this.types) {
                strArr[i] = Type.getInternalName(cls);
                i++;
            }
            if (size == 0) {
                return TypeList.NO_INTERFACES;
            }
            return strArr;
        }
    }

    /* loaded from: classes2.dex */
    public interface Generic extends FilterableList<TypeDescription.Generic, Generic> {

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase extends FilterableList.AbstractBase<TypeDescription.Generic, Generic> implements Generic {
            @Override // net.bytebuddy.description.type.TypeList.Generic
            public Generic accept(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                ArrayList arrayList = new ArrayList(size());
                Iterator<TypeDescription.Generic> it = iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().accept(visitor));
                }
                return new Explicit(arrayList);
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public TypeList asErasures() {
                ArrayList arrayList = new ArrayList(size());
                Iterator<TypeDescription.Generic> it = iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().asErasure());
                }
                return new Explicit(arrayList);
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public Generic asRawTypes() {
                ArrayList arrayList = new ArrayList(size());
                Iterator<TypeDescription.Generic> it = iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().asRawType());
                }
                return new Explicit(arrayList);
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public ByteCodeElement.Token.TokenList<TypeVariableToken> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
                ArrayList arrayList = new ArrayList(size());
                Iterator<TypeDescription.Generic> it = iterator();
                while (it.hasNext()) {
                    arrayList.add(TypeVariableToken.m15177of(it.next(), elementMatcher));
                }
                return new ByteCodeElement.Token.TokenList<>(arrayList);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
            public Generic wrap(List<TypeDescription.Generic> list) {
                return new Explicit(list);
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public int getStackSize() {
                Iterator<TypeDescription.Generic> it = iterator();
                int i = 0;
                while (it.hasNext()) {
                    i += it.next().getStackSize().getSize();
                }
                return i;
            }
        }

        /* loaded from: classes2.dex */
        public static class Empty extends FilterableList.Empty<TypeDescription.Generic, Generic> implements Generic {
            @Override // net.bytebuddy.description.type.TypeList.Generic
            public Generic accept(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                return new Empty();
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public TypeList asErasures() {
                return new Empty();
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public Generic asRawTypes() {
                return this;
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public ByteCodeElement.Token.TokenList<TypeVariableToken> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
                return new ByteCodeElement.Token.TokenList<>(new TypeVariableToken[0]);
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic
            public int getStackSize() {
                return 0;
            }
        }

        /* loaded from: classes2.dex */
        public static class Explicit extends AbstractBase {
            private final List<? extends TypeDefinition> typeDefinitions;

            public Explicit(TypeDefinition... typeDefinitionArr) {
                this(Arrays.asList(typeDefinitionArr));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.typeDefinitions.size();
            }

            public Explicit(List<? extends TypeDefinition> list) {
                this.typeDefinitions = list;
            }

            @Override // java.util.AbstractList, java.util.List
            public TypeDescription.Generic get(int i) {
                return this.typeDefinitions.get(i).asGenericType();
            }
        }

        /* loaded from: classes2.dex */
        public static class ForDetachedTypes extends AbstractBase {
            private final List<? extends TypeDescription.Generic> detachedTypes;
            private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

            /* loaded from: classes2.dex */
            public static class OfTypeVariables extends AbstractBase {
                private final List<? extends TypeVariableToken> detachedTypeVariables;
                private final TypeVariableSource typeVariableSource;
                private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return this.detachedTypeVariables.size();
                }

                /* loaded from: classes2.dex */
                public static class AttachedTypeVariable extends TypeDescription.Generic.OfTypeVariable {
                    private final TypeVariableSource typeVariableSource;
                    private final TypeVariableToken typeVariableToken;
                    private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return this.typeVariableToken.getAnnotations();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public String getSymbol() {
                        return this.typeVariableToken.getSymbol();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public TypeVariableSource getTypeVariableSource() {
                        return this.typeVariableSource;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public Generic getUpperBounds() {
                        return this.typeVariableToken.getBounds().accept(this.visitor);
                    }

                    public AttachedTypeVariable(TypeVariableSource typeVariableSource, TypeVariableToken typeVariableToken, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                        this.typeVariableSource = typeVariableSource;
                        this.typeVariableToken = typeVariableToken;
                        this.visitor = visitor;
                    }
                }

                @Override // java.util.AbstractList, java.util.List
                public TypeDescription.Generic get(int i) {
                    return new AttachedTypeVariable(this.typeVariableSource, this.detachedTypeVariables.get(i), this.visitor);
                }

                public OfTypeVariables(TypeVariableSource typeVariableSource, List<? extends TypeVariableToken> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                    this.typeVariableSource = typeVariableSource;
                    this.detachedTypeVariables = list;
                    this.visitor = visitor;
                }
            }

            /* loaded from: classes2.dex */
            public static class WithResolvedErasure extends AbstractBase {
                private final List<? extends TypeDescription.Generic> detachedTypes;
                private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return this.detachedTypes.size();
                }

                @Override // java.util.AbstractList, java.util.List
                public TypeDescription.Generic get(int i) {
                    return new TypeDescription.Generic.LazyProjection.WithResolvedErasure(this.detachedTypes.get(i), this.visitor);
                }

                public WithResolvedErasure(List<? extends TypeDescription.Generic> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                    this.detachedTypes = list;
                    this.visitor = visitor;
                }
            }

            public static Generic attach(FieldDescription fieldDescription, List<? extends TypeDescription.Generic> list) {
                return new ForDetachedTypes(list, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15186of(fieldDescription));
            }

            public static Generic attachVariables(TypeDescription typeDescription, List<? extends TypeVariableToken> list) {
                return new OfTypeVariables(typeDescription, list, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15182of(typeDescription));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.detachedTypes.size();
            }

            public static Generic attach(MethodDescription methodDescription, List<? extends TypeDescription.Generic> list) {
                return new ForDetachedTypes(list, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15185of(methodDescription));
            }

            public static Generic attachVariables(MethodDescription methodDescription, List<? extends TypeVariableToken> list) {
                return new OfTypeVariables(methodDescription, list, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15185of(methodDescription));
            }

            @Override // java.util.AbstractList, java.util.List
            public TypeDescription.Generic get(int i) {
                return (TypeDescription.Generic) this.detachedTypes.get(i).accept(this.visitor);
            }

            public ForDetachedTypes(List<? extends TypeDescription.Generic> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                this.detachedTypes = list;
                this.visitor = visitor;
            }

            public static Generic attach(ParameterDescription parameterDescription, List<? extends TypeDescription.Generic> list) {
                return new ForDetachedTypes(list, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15184of(parameterDescription));
            }
        }

        /* loaded from: classes2.dex */
        public static class ForLoadedTypes extends AbstractBase {
            private final List<? extends java.lang.reflect.Type> types;

            /* loaded from: classes2.dex */
            public static class OfTypeVariables extends AbstractBase {
                private final List<TypeVariable<?>> typeVariables;

                public OfTypeVariables(TypeVariable<?>... typeVariableArr) {
                    this(Arrays.asList(typeVariableArr));
                }

                /* renamed from: of */
                public static Generic m15178of(GenericDeclaration genericDeclaration) {
                    return new OfTypeVariables(genericDeclaration.getTypeParameters());
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return this.typeVariables.size();
                }

                public OfTypeVariables(List<TypeVariable<?>> list) {
                    this.typeVariables = list;
                }

                @Override // java.util.AbstractList, java.util.List
                public TypeDescription.Generic get(int i) {
                    TypeVariable<?> typeVariable = this.typeVariables.get(i);
                    return TypeDefinition.Sort.describe(typeVariable, new TypeDescription.Generic.AnnotationReader.Delegator.ForLoadedTypeVariable(typeVariable));
                }
            }

            public ForLoadedTypes(java.lang.reflect.Type... typeArr) {
                this(Arrays.asList(typeArr));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.types.size();
            }

            public ForLoadedTypes(List<? extends java.lang.reflect.Type> list) {
                this.types = list;
            }

            @Override // java.util.AbstractList, java.util.List
            public TypeDescription.Generic get(int i) {
                return TypeDefinition.Sort.describe(this.types.get(i));
            }
        }

        /* loaded from: classes2.dex */
        public static class OfConstructorExceptionTypes extends AbstractBase {
            private final Constructor<?> constructor;

            /* loaded from: classes2.dex */
            public static class TypeProjection extends TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement {
                private final Constructor<?> constructor;
                private final Class<?>[] erasure;
                private final int index;
                private transient /* synthetic */ TypeDescription.Generic resolved;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return TypeDescription.ForLoadedType.m15196of(this.erasure[this.index]);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public TypeDescription.Generic.AnnotationReader getAnnotationReader() {
                    return new TypeDescription.Generic.AnnotationReader.Delegator.ForLoadedExecutableExceptionType(this.constructor, this.index);
                }

                private TypeProjection(Constructor<?> constructor, int i, Class<?>[] clsArr) {
                    this.constructor = constructor;
                    this.index = i;
                    this.erasure = clsArr;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public TypeDescription.Generic resolve() {
                    TypeDescription.Generic asRawType;
                    if (this.resolved != null) {
                        asRawType = null;
                    } else {
                        java.lang.reflect.Type[] genericExceptionTypes = this.constructor.getGenericExceptionTypes();
                        if (this.erasure.length == genericExceptionTypes.length) {
                            asRawType = TypeDefinition.Sort.describe(genericExceptionTypes[this.index], getAnnotationReader());
                        } else {
                            asRawType = asRawType();
                        }
                    }
                    if (asRawType == null) {
                        return this.resolved;
                    }
                    this.resolved = asRawType;
                    return asRawType;
                }
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
            public TypeList asErasures() {
                return new ForLoadedTypes(this.constructor.getExceptionTypes());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.constructor.getExceptionTypes().length;
            }

            @Override // java.util.AbstractList, java.util.List
            public TypeDescription.Generic get(int i) {
                Constructor<?> constructor = this.constructor;
                return new TypeProjection(constructor, i, constructor.getExceptionTypes());
            }

            public OfConstructorExceptionTypes(Constructor<?> constructor) {
                this.constructor = constructor;
            }
        }

        /* loaded from: classes2.dex */
        public static class OfLoadedInterfaceTypes extends AbstractBase {
            private final Class<?> type;

            /* loaded from: classes2.dex */
            public static class TypeProjection extends TypeDescription.Generic.LazyProjection.WithLazyNavigation.OfAnnotatedElement {
                private final Class<?>[] erasure;
                private final int index;
                private transient /* synthetic */ TypeDescription.Generic resolved;
                private final Class<?> type;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return TypeDescription.ForLoadedType.m15196of(this.erasure[this.index]);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithLazyNavigation.OfAnnotatedElement
                public TypeDescription.Generic.AnnotationReader getAnnotationReader() {
                    return new TypeDescription.Generic.AnnotationReader.Delegator.ForLoadedInterface(this.type, this.index);
                }

                private TypeProjection(Class<?> cls, int i, Class<?>[] clsArr) {
                    this.type = cls;
                    this.index = i;
                    this.erasure = clsArr;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public TypeDescription.Generic resolve() {
                    TypeDescription.Generic asRawType;
                    if (this.resolved != null) {
                        asRawType = null;
                    } else {
                        java.lang.reflect.Type[] genericInterfaces = this.type.getGenericInterfaces();
                        if (this.erasure.length == genericInterfaces.length) {
                            asRawType = TypeDefinition.Sort.describe(genericInterfaces[this.index], getAnnotationReader());
                        } else {
                            asRawType = asRawType();
                        }
                    }
                    if (asRawType == null) {
                        return this.resolved;
                    }
                    this.resolved = asRawType;
                    return asRawType;
                }
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
            public TypeList asErasures() {
                return new ForLoadedTypes(this.type.getInterfaces());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.type.getInterfaces().length;
            }

            @Override // java.util.AbstractList, java.util.List
            public TypeDescription.Generic get(int i) {
                Class<?> cls = this.type;
                return new TypeProjection(cls, i, cls.getInterfaces());
            }

            public OfLoadedInterfaceTypes(Class<?> cls) {
                this.type = cls;
            }
        }

        /* loaded from: classes2.dex */
        public static class OfMethodExceptionTypes extends AbstractBase {
            private final Method method;

            /* loaded from: classes2.dex */
            public static class TypeProjection extends TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement {
                private final Class<?>[] erasure;
                private final int index;
                private final Method method;
                private transient /* synthetic */ TypeDescription.Generic resolved;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return TypeDescription.ForLoadedType.m15196of(this.erasure[this.index]);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public TypeDescription.Generic.AnnotationReader getAnnotationReader() {
                    return new TypeDescription.Generic.AnnotationReader.Delegator.ForLoadedExecutableExceptionType(this.method, this.index);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public TypeDescription.Generic resolve() {
                    TypeDescription.Generic asRawType;
                    if (this.resolved != null) {
                        asRawType = null;
                    } else {
                        java.lang.reflect.Type[] genericExceptionTypes = this.method.getGenericExceptionTypes();
                        if (this.erasure.length == genericExceptionTypes.length) {
                            asRawType = TypeDefinition.Sort.describe(genericExceptionTypes[this.index], getAnnotationReader());
                        } else {
                            asRawType = asRawType();
                        }
                    }
                    if (asRawType == null) {
                        return this.resolved;
                    }
                    this.resolved = asRawType;
                    return asRawType;
                }

                public TypeProjection(Method method, int i, Class<?>[] clsArr) {
                    this.method = method;
                    this.index = i;
                    this.erasure = clsArr;
                }
            }

            @Override // net.bytebuddy.description.type.TypeList.Generic.AbstractBase, net.bytebuddy.description.type.TypeList.Generic
            public TypeList asErasures() {
                return new ForLoadedTypes(this.method.getExceptionTypes());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.method.getExceptionTypes().length;
            }

            @Override // java.util.AbstractList, java.util.List
            public TypeDescription.Generic get(int i) {
                Method method = this.method;
                return new TypeProjection(method, i, method.getExceptionTypes());
            }

            public OfMethodExceptionTypes(Method method) {
                this.method = method;
            }
        }

        Generic accept(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor);

        TypeList asErasures();

        Generic asRawTypes();

        ByteCodeElement.Token.TokenList<TypeVariableToken> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher);

        int getStackSize();
    }

    int getStackSize();

    @MaybeNull
    String[] toInternalNames();
}
