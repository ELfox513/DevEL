package net.bytebuddy.description.type;

import java.lang.reflect.AnnotatedElement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
/* loaded from: classes2.dex */
public interface RecordComponentList<T extends RecordComponentDescription> extends FilterableList<T, RecordComponentList<T>> {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase<S extends RecordComponentDescription> extends FilterableList.AbstractBase<S, RecordComponentList<S>> implements RecordComponentList<S> {
        @Override // net.bytebuddy.description.type.RecordComponentList
        public RecordComponentList<RecordComponentDescription.InDefinedShape> asDefined() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((RecordComponentDescription) it.next()).asDefined());
            }
            return new Explicit(arrayList);
        }

        @Override // net.bytebuddy.description.type.RecordComponentList
        public ByteCodeElement.Token.TokenList<RecordComponentDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((RecordComponentDescription) it.next()).asToken(elementMatcher));
            }
            return new ByteCodeElement.Token.TokenList<>(arrayList);
        }

        @Override // net.bytebuddy.description.type.RecordComponentList
        public TypeList.Generic asTypeList() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((RecordComponentDescription) it.next()).getType());
            }
            return new TypeList.Generic.Explicit(arrayList);
        }

        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public RecordComponentList<S> wrap(List<S> list) {
            return new Explicit(list);
        }
    }

    /* loaded from: classes2.dex */
    public static class Empty<S extends RecordComponentDescription> extends FilterableList.Empty<S, RecordComponentList<S>> implements RecordComponentList<S> {
        @Override // net.bytebuddy.description.type.RecordComponentList
        public RecordComponentList<RecordComponentDescription.InDefinedShape> asDefined() {
            return new Empty();
        }

        @Override // net.bytebuddy.description.type.RecordComponentList
        public ByteCodeElement.Token.TokenList<RecordComponentDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new ByteCodeElement.Token.TokenList<>(new RecordComponentDescription.Token[0]);
        }

        @Override // net.bytebuddy.description.type.RecordComponentList
        public TypeList.Generic asTypeList() {
            return new TypeList.Generic.Empty();
        }
    }

    /* loaded from: classes2.dex */
    public static class Explicit<S extends RecordComponentDescription> extends AbstractBase<S> {
        private final List<? extends S> recordComponents;

        public Explicit(S... sArr) {
            this(Arrays.asList(sArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.recordComponents.size();
        }

        public Explicit(List<? extends S> list) {
            this.recordComponents = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public S get(int i) {
            return this.recordComponents.get(i);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedRecordComponents extends AbstractBase<RecordComponentDescription.InDefinedShape> {
        private final List<?> recordComponents;

        public ForLoadedRecordComponents(Object... objArr) {
            this(Arrays.asList(objArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.recordComponents.size();
        }

        public ForLoadedRecordComponents(List<?> list) {
            this.recordComponents = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public RecordComponentDescription.InDefinedShape get(int i) {
            return new RecordComponentDescription.ForLoadedRecordComponent((AnnotatedElement) this.recordComponents.get(i));
        }
    }

    /* loaded from: classes2.dex */
    public static class ForTokens extends AbstractBase<RecordComponentDescription.InDefinedShape> {
        private final List<? extends RecordComponentDescription.Token> tokens;
        private final TypeDescription typeDescription;

        public ForTokens(TypeDescription typeDescription, RecordComponentDescription.Token... tokenArr) {
            this(typeDescription, Arrays.asList(tokenArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.tokens.size();
        }

        public ForTokens(TypeDescription typeDescription, List<? extends RecordComponentDescription.Token> list) {
            this.typeDescription = typeDescription;
            this.tokens = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public RecordComponentDescription.InDefinedShape get(int i) {
            return new RecordComponentDescription.Latent(this.typeDescription, this.tokens.get(i));
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase<RecordComponentDescription.InGenericShape> {
        private final TypeDescription.Generic declaringType;
        private final List<? extends RecordComponentDescription> recordComponentDescriptions;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.recordComponentDescriptions.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public RecordComponentDescription.InGenericShape get(int i) {
            return new RecordComponentDescription.TypeSubstituting(this.declaringType, this.recordComponentDescriptions.get(i), this.visitor);
        }

        public TypeSubstituting(TypeDescription.Generic generic, List<? extends RecordComponentDescription> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringType = generic;
            this.recordComponentDescriptions = list;
            this.visitor = visitor;
        }
    }

    RecordComponentList<RecordComponentDescription.InDefinedShape> asDefined();

    ByteCodeElement.Token.TokenList<RecordComponentDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher);

    TypeList.Generic asTypeList();
}
