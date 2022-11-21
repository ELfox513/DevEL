package net.bytebuddy.description.field;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
/* loaded from: classes2.dex */
public interface FieldList<T extends FieldDescription> extends FilterableList<T, FieldList<T>> {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase<S extends FieldDescription> extends FilterableList.AbstractBase<S, FieldList<S>> implements FieldList<S> {
        @Override // net.bytebuddy.description.field.FieldList
        public FieldList<FieldDescription.InDefinedShape> asDefined() {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((FieldDescription) it.next()).asDefined());
            }
            return new Explicit(arrayList);
        }

        @Override // net.bytebuddy.description.field.FieldList
        public ByteCodeElement.Token.TokenList<FieldDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<S> it = iterator();
            while (it.hasNext()) {
                arrayList.add(((FieldDescription) it.next()).asToken(elementMatcher));
            }
            return new ByteCodeElement.Token.TokenList<>(arrayList);
        }

        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public FieldList<S> wrap(List<S> list) {
            return new Explicit(list);
        }
    }

    /* loaded from: classes2.dex */
    public static class Empty<S extends FieldDescription> extends FilterableList.Empty<S, FieldList<S>> implements FieldList<S> {
        @Override // net.bytebuddy.description.field.FieldList
        public FieldList<FieldDescription.InDefinedShape> asDefined() {
            return this;
        }

        @Override // net.bytebuddy.description.field.FieldList
        public ByteCodeElement.Token.TokenList<FieldDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new ByteCodeElement.Token.TokenList<>(new FieldDescription.Token[0]);
        }
    }

    /* loaded from: classes2.dex */
    public static class Explicit<S extends FieldDescription> extends AbstractBase<S> {
        private final List<? extends S> fieldDescriptions;

        public Explicit(S... sArr) {
            this(Arrays.asList(sArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fieldDescriptions.size();
        }

        public Explicit(List<? extends S> list) {
            this.fieldDescriptions = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public S get(int i) {
            return this.fieldDescriptions.get(i);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedFields extends AbstractBase<FieldDescription.InDefinedShape> {
        private final List<? extends Field> fields;

        public ForLoadedFields(Field... fieldArr) {
            this(Arrays.asList(fieldArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fields.size();
        }

        public ForLoadedFields(List<? extends Field> list) {
            this.fields = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public FieldDescription.InDefinedShape get(int i) {
            return new FieldDescription.ForLoadedField(this.fields.get(i));
        }
    }

    /* loaded from: classes2.dex */
    public static class ForTokens extends AbstractBase<FieldDescription.InDefinedShape> {
        private final TypeDescription declaringType;
        private final List<? extends FieldDescription.Token> tokens;

        public ForTokens(TypeDescription typeDescription, FieldDescription.Token... tokenArr) {
            this(typeDescription, Arrays.asList(tokenArr));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.tokens.size();
        }

        public ForTokens(TypeDescription typeDescription, List<? extends FieldDescription.Token> list) {
            this.declaringType = typeDescription;
            this.tokens = list;
        }

        @Override // java.util.AbstractList, java.util.List
        public FieldDescription.InDefinedShape get(int i) {
            return new FieldDescription.Latent(this.declaringType, this.tokens.get(i));
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase<FieldDescription.InGenericShape> {
        private final TypeDescription.Generic declaringType;
        private final List<? extends FieldDescription> fieldDescriptions;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fieldDescriptions.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public FieldDescription.InGenericShape get(int i) {
            return new FieldDescription.TypeSubstituting(this.declaringType, this.fieldDescriptions.get(i), this.visitor);
        }

        public TypeSubstituting(TypeDescription.Generic generic, List<? extends FieldDescription> list, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringType = generic;
            this.fieldDescriptions = list;
            this.visitor = visitor;
        }
    }

    FieldList<FieldDescription.InDefinedShape> asDefined();

    ByteCodeElement.Token.TokenList<FieldDescription.Token> asTokenList(ElementMatcher<? super TypeDescription> elementMatcher);
}
