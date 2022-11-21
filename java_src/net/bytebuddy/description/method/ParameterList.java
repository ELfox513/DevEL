package net.bytebuddy.description.method;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
/* loaded from: classes2.dex */
public interface ParameterList<T extends ParameterDescription> extends FilterableList<T, ParameterList<T>> {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase<S extends ParameterDescription> extends FilterableList.AbstractBase<S, ParameterList<S>> implements ParameterList<S> {
        @Override // net.bytebuddy.description.method.ParameterList
        public ParameterList<ParameterDescription.InDefinedShape> asDefined() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((ParameterDescription) it.next()).asDefined());
            }
            return new Explicit(arrayList);
        }

        @Override // net.bytebuddy.description.method.ParameterList
        public ByteCodeElement.Token.TokenList<ParameterDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((ParameterDescription) it.next()).asToken(elementMatcher));
            }
            return new ByteCodeElement.Token.TokenList<>(arrayList);
        }

        @Override // net.bytebuddy.description.method.ParameterList
        public TypeList.Generic asTypeList() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((ParameterDescription) it.next()).getType());
            }
            return new TypeList.Generic.Explicit(arrayList);
        }

        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public ParameterList<S> wrap(List<S> list) {
            return new Explicit(list);
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x000a  */
        @Override // net.bytebuddy.description.method.ParameterList
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean hasExplicitMetaData() {
            /*
                r3 = this;
                java.util.Iterator r0 = r3.iterator()
            L4:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L1e
                java.lang.Object r1 = r0.next()
                net.bytebuddy.description.method.ParameterDescription r1 = (net.bytebuddy.description.method.ParameterDescription) r1
                boolean r2 = r1.isNamed()
                if (r2 == 0) goto L1c
                boolean r1 = r1.hasModifiers()
                if (r1 != 0) goto L4
            L1c:
                r0 = 0
                return r0
            L1e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.method.ParameterList.AbstractBase.hasExplicitMetaData():boolean");
        }
    }

    /* loaded from: classes2.dex */
    public static class Empty<S extends ParameterDescription> extends FilterableList.Empty<S, ParameterList<S>> implements ParameterList<S> {
        @Override // net.bytebuddy.description.method.ParameterList
        public ParameterList<ParameterDescription.InDefinedShape> asDefined() {
            return this;
        }

        @Override // net.bytebuddy.description.method.ParameterList
        public ByteCodeElement.Token.TokenList<ParameterDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new ByteCodeElement.Token.TokenList<>(new ParameterDescription.Token[0]);
        }

        @Override // net.bytebuddy.description.method.ParameterList
        public TypeList.Generic asTypeList() {
            return new TypeList.Generic.Empty();
        }

        @Override // net.bytebuddy.description.method.ParameterList
        public boolean hasExplicitMetaData() {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class Explicit<S extends ParameterDescription> extends AbstractBase<S> {
        private final List<? extends S> parameterDescriptions;

        /* loaded from: classes2.dex */
        public static class ForTypes extends AbstractBase<ParameterDescription.InDefinedShape> {
            private final MethodDescription.InDefinedShape methodDescription;
            private final List<? extends TypeDefinition> typeDefinitions;

            public ForTypes(MethodDescription.InDefinedShape inDefinedShape, TypeDefinition... typeDefinitionArr) {
                this(inDefinedShape, Arrays.asList(typeDefinitionArr));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.typeDefinitions.size();
            }

            public ForTypes(MethodDescription.InDefinedShape inDefinedShape, List<? extends TypeDefinition> list) {
                this.methodDescription = inDefinedShape;
                this.typeDefinitions = list;
            }

            @Override // java.util.AbstractList, java.util.List
            public ParameterDescription.InDefinedShape get(int i) {
                int i2 = !this.methodDescription.isStatic();
                for (int i3 = 0; i3 < i; i3++) {
                    i2 += this.typeDefinitions.get(i3).getStackSize().getSize();
                }
                return new ParameterDescription.Latent(this.methodDescription, this.typeDefinitions.get(i).asGenericType(), i, i2);
            }
        }

        public Explicit(S... sArr) {
            this(Arrays.asList(sArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parameterDescriptions.size();
        }

        public Explicit(List<? extends S> list) {
            this.parameterDescriptions = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public S get(int i) {
            return this.parameterDescriptions.get(i);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ForLoadedExecutable<T> extends AbstractBase<ParameterDescription.InDefinedShape> {
        private static final boolean ACCESS_CONTROLLER;
        public static final Executable EXECUTABLE;
        public final T executable;
        public final ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource;

        @JavaDispatcher.Proxied("java.lang.reflect.Executable")
        /* loaded from: classes2.dex */
        public interface Executable {
            @JavaDispatcher.Proxied("getParameterCount")
            int getParameterCount(Object obj);

            @JavaDispatcher.Proxied("getParameters")
            Object[] getParameters(Object obj);

            @JavaDispatcher.Instance
            @JavaDispatcher.Proxied("isInstance")
            boolean isInstance(Object obj);
        }

        /* loaded from: classes2.dex */
        public static class OfConstructor extends ForLoadedExecutable<Constructor<?>> {
            public OfConstructor(Constructor<?> constructor, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
                super(constructor, parameterAnnotationSource);
            }

            @Override // java.util.AbstractList, java.util.List
            public ParameterDescription.InDefinedShape get(int i) {
                return new ParameterDescription.ForLoadedParameter.OfConstructor((Constructor) this.executable, i, this.parameterAnnotationSource);
            }
        }

        /* loaded from: classes2.dex */
        public static class OfLegacyVmConstructor extends AbstractBase<ParameterDescription.InDefinedShape> {
            private final Constructor<?> constructor;
            private final ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource;
            private final Class<?>[] parameterType;

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.parameterType.length;
            }

            @Override // java.util.AbstractList, java.util.List
            public ParameterDescription.InDefinedShape get(int i) {
                return new ParameterDescription.ForLoadedParameter.OfLegacyVmConstructor(this.constructor, i, this.parameterType, this.parameterAnnotationSource);
            }

            public OfLegacyVmConstructor(Constructor<?> constructor, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
                this.constructor = constructor;
                this.parameterType = constructor.getParameterTypes();
                this.parameterAnnotationSource = parameterAnnotationSource;
            }
        }

        /* loaded from: classes2.dex */
        public static class OfLegacyVmMethod extends AbstractBase<ParameterDescription.InDefinedShape> {
            private final Method method;
            private final ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource;
            private final Class<?>[] parameterType;

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.parameterType.length;
            }

            @Override // java.util.AbstractList, java.util.List
            public ParameterDescription.InDefinedShape get(int i) {
                return new ParameterDescription.ForLoadedParameter.OfLegacyVmMethod(this.method, i, this.parameterType, this.parameterAnnotationSource);
            }

            public OfLegacyVmMethod(Method method, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
                this.method = method;
                this.parameterType = method.getParameterTypes();
                this.parameterAnnotationSource = parameterAnnotationSource;
            }
        }

        /* loaded from: classes2.dex */
        public static class OfMethod extends ForLoadedExecutable<Method> {
            public OfMethod(Method method, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
                super(method, parameterAnnotationSource);
            }

            @Override // java.util.AbstractList, java.util.List
            public ParameterDescription.InDefinedShape get(int i) {
                return new ParameterDescription.ForLoadedParameter.OfMethod((Method) this.executable, i, this.parameterAnnotationSource);
            }
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                EXECUTABLE = (Executable) doPrivileged(JavaDispatcher.m14754of(Executable.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                EXECUTABLE = (Executable) doPrivileged(JavaDispatcher.m14754of(Executable.class));
            }
            EXECUTABLE = (Executable) doPrivileged(JavaDispatcher.m14754of(Executable.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        /* renamed from: of */
        public static ParameterList<ParameterDescription.InDefinedShape> m15209of(Constructor<?> constructor) {
            return m15208of(constructor, (ParameterDescription.ForLoadedParameter.ParameterAnnotationSource) new ParameterDescription.ForLoadedParameter.ParameterAnnotationSource.ForLoadedConstructor(constructor));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return EXECUTABLE.getParameterCount(this.executable);
        }

        /* renamed from: of */
        public static ParameterList<ParameterDescription.InDefinedShape> m15208of(Constructor<?> constructor, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
            return EXECUTABLE.isInstance(constructor) ? new OfConstructor(constructor, parameterAnnotationSource) : new OfLegacyVmConstructor(constructor, parameterAnnotationSource);
        }

        public ForLoadedExecutable(T t, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
            this.executable = t;
            this.parameterAnnotationSource = parameterAnnotationSource;
        }

        /* renamed from: of */
        public static ParameterList<ParameterDescription.InDefinedShape> m15207of(Method method) {
            return m15206of(method, (ParameterDescription.ForLoadedParameter.ParameterAnnotationSource) new ParameterDescription.ForLoadedParameter.ParameterAnnotationSource.ForLoadedMethod(method));
        }

        /* renamed from: of */
        public static ParameterList<ParameterDescription.InDefinedShape> m15206of(Method method, ParameterDescription.ForLoadedParameter.ParameterAnnotationSource parameterAnnotationSource) {
            return EXECUTABLE.isInstance(method) ? new OfMethod(method, parameterAnnotationSource) : new OfLegacyVmMethod(method, parameterAnnotationSource);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForTokens extends AbstractBase<ParameterDescription.InDefinedShape> {
        private final MethodDescription.InDefinedShape declaringMethod;
        private final List<? extends ParameterDescription.Token> tokens;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.tokens.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public ParameterDescription.InDefinedShape get(int i) {
            int i2 = !this.declaringMethod.isStatic();
            for (ParameterDescription.Token token : this.tokens.subList(0, i)) {
                i2 += token.getType().getStackSize().getSize();
            }
            return new ParameterDescription.Latent(this.declaringMethod, this.tokens.get(i), i, i2);
        }

        public ForTokens(MethodDescription.InDefinedShape inDefinedShape, List<? extends ParameterDescription.Token> list) {
            this.declaringMethod = inDefinedShape;
            this.tokens = list;
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase<ParameterDescription.InGenericShape> {
        private final MethodDescription.InGenericShape declaringMethod;
        private final List<? extends ParameterDescription> parameterDescriptions;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parameterDescriptions.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public ParameterDescription.InGenericShape get(int i) {
            return new ParameterDescription.TypeSubstituting(this.declaringMethod, this.parameterDescriptions.get(i), this.visitor);
        }

        public TypeSubstituting(MethodDescription.InGenericShape inGenericShape, List<? extends ParameterDescription> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringMethod = inGenericShape;
            this.parameterDescriptions = list;
            this.visitor = visitor;
        }
    }

    ParameterList<ParameterDescription.InDefinedShape> asDefined();

    ByteCodeElement.Token.TokenList<ParameterDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher);

    TypeList.Generic asTypeList();

    boolean hasExplicitMetaData();
}
