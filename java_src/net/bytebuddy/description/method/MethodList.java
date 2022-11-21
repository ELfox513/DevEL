package net.bytebuddy.description.method;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
import net.bytebuddy.utility.ConstructorComparator;
import net.bytebuddy.utility.GraalImageCode;
import net.bytebuddy.utility.MethodComparator;
/* loaded from: classes2.dex */
public interface MethodList<T extends MethodDescription> extends FilterableList<T, MethodList<T>> {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase<S extends MethodDescription> extends FilterableList.AbstractBase<S, MethodList<S>> implements MethodList<S> {
        @Override // net.bytebuddy.description.method.MethodList
        public List<MethodDescription.SignatureToken> asSignatureTokenList() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((MethodDescription) it.next()).asSignatureToken());
            }
            return arrayList;
        }

        @Override // net.bytebuddy.description.method.MethodList
        public MethodList<MethodDescription.InDefinedShape> asDefined() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((MethodDescription) it.next()).asDefined());
            }
            return new Explicit(arrayList);
        }

        @Override // net.bytebuddy.description.method.MethodList
        public ByteCodeElement.Token.TokenList<MethodDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((MethodDescription) it.next()).asToken(elementMatcher));
            }
            return new ByteCodeElement.Token.TokenList<>(arrayList);
        }

        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public MethodList<S> wrap(List<S> list) {
            return new Explicit(list);
        }

        @Override // net.bytebuddy.description.method.MethodList
        public List<MethodDescription.SignatureToken> asSignatureTokenList(ElementMatcher<? super TypeDescription> elementMatcher, TypeDescription typeDescription) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((MethodDescription) it.next()).asToken(elementMatcher).asSignatureToken(typeDescription));
            }
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static class Empty<S extends MethodDescription> extends FilterableList.Empty<S, MethodList<S>> implements MethodList<S> {
        @Override // net.bytebuddy.description.method.MethodList
        public MethodList<MethodDescription.InDefinedShape> asDefined() {
            return this;
        }

        @Override // net.bytebuddy.description.method.MethodList
        public List<MethodDescription.SignatureToken> asSignatureTokenList() {
            return Collections.emptyList();
        }

        @Override // net.bytebuddy.description.method.MethodList
        public ByteCodeElement.Token.TokenList<MethodDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new ByteCodeElement.Token.TokenList<>(new MethodDescription.Token[0]);
        }

        @Override // net.bytebuddy.description.method.MethodList
        public List<MethodDescription.SignatureToken> asSignatureTokenList(ElementMatcher<? super TypeDescription> elementMatcher, TypeDescription typeDescription) {
            return Collections.emptyList();
        }
    }

    /* loaded from: classes2.dex */
    public static class Explicit<S extends MethodDescription> extends AbstractBase<S> {
        private final List<? extends S> methodDescriptions;

        public Explicit(S... sArr) {
            this(Arrays.asList(sArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.methodDescriptions.size();
        }

        public Explicit(List<? extends S> list) {
            this.methodDescriptions = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public S get(int i) {
            return this.methodDescriptions.get(i);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedMethods extends AbstractBase<MethodDescription.InDefinedShape> {
        private final List<? extends Constructor<?>> constructors;
        private final List<? extends Method> methods;

        public ForLoadedMethods(Class<?> cls) {
            this((Constructor[]) GraalImageCode.getCurrent().sorted(cls.getDeclaredConstructors(), ConstructorComparator.INSTANCE), (Method[]) GraalImageCode.getCurrent().sorted(cls.getDeclaredMethods(), MethodComparator.INSTANCE));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.constructors.size() + this.methods.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public MethodDescription.InDefinedShape get(int i) {
            if (i < this.constructors.size()) {
                return new MethodDescription.ForLoadedConstructor(this.constructors.get(i));
            }
            return new MethodDescription.ForLoadedMethod(this.methods.get(i - this.constructors.size()));
        }

        public ForLoadedMethods(Constructor<?>[] constructorArr, Method[] methodArr) {
            this(Arrays.asList(constructorArr), Arrays.asList(methodArr));
        }

        public ForLoadedMethods(List<? extends Constructor<?>> list, List<? extends Method> list2) {
            this.constructors = list;
            this.methods = list2;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForTokens extends AbstractBase<MethodDescription.InDefinedShape> {
        private final TypeDescription declaringType;
        private final List<? extends MethodDescription.Token> tokens;

        public ForTokens(TypeDescription typeDescription, MethodDescription.Token... tokenArr) {
            this(typeDescription, Arrays.asList(tokenArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.tokens.size();
        }

        public ForTokens(TypeDescription typeDescription, List<? extends MethodDescription.Token> list) {
            this.declaringType = typeDescription;
            this.tokens = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public MethodDescription.InDefinedShape get(int i) {
            return new MethodDescription.Latent(this.declaringType, this.tokens.get(i));
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase<MethodDescription.InGenericShape> {
        public final TypeDescription.Generic declaringType;
        public final List<? extends MethodDescription> methodDescriptions;
        public final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.methodDescriptions.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public MethodDescription.InGenericShape get(int i) {
            return new MethodDescription.TypeSubstituting(this.declaringType, this.methodDescriptions.get(i), this.visitor);
        }

        public TypeSubstituting(TypeDescription.Generic generic, List<? extends MethodDescription> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringType = generic;
            this.methodDescriptions = list;
            this.visitor = visitor;
        }
    }

    MethodList<MethodDescription.InDefinedShape> asDefined();

    List<MethodDescription.SignatureToken> asSignatureTokenList();

    List<MethodDescription.SignatureToken> asSignatureTokenList(ElementMatcher<? super TypeDescription> elementMatcher, TypeDescription typeDescription);

    ByteCodeElement.Token.TokenList<MethodDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher);
}
