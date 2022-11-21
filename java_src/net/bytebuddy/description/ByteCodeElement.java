package net.bytebuddy.description;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.annotation.AnnotationSource;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.FilterableList;
/* loaded from: classes2.dex */
public interface ByteCodeElement extends NamedElement.WithRuntimeName, NamedElement.WithDescriptor, ModifierReviewable, DeclaredByType, AnnotationSource {

    /* loaded from: classes2.dex */
    public interface Token<T extends Token<T>> {

        /* loaded from: classes2.dex */
        public static class TokenList<S extends Token<S>> extends FilterableList.AbstractBase<S, TokenList<S>> {
            private final List<? extends S> tokens;

            public TokenList(S... sArr) {
                this(Arrays.asList(sArr));
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.tokens.size();
            }

            public TokenList(List<? extends S> list) {
                this.tokens = list;
            }

            public TokenList<S> accept(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                ArrayList arrayList = new ArrayList(this.tokens.size());
                for (S s : this.tokens) {
                    arrayList.add(s.accept(visitor));
                }
                return new TokenList<>(arrayList);
            }

            @Override // java.util.AbstractList, java.util.List
            public S get(int i) {
                return this.tokens.get(i);
            }

            @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
            public TokenList<S> wrap(List<S> list) {
                return new TokenList<>(list);
            }
        }

        T accept(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor);
    }

    /* loaded from: classes2.dex */
    public interface TypeDependant<T extends TypeDependant<?, S>, S extends Token<S>> {
        T asDefined();

        S asToken(ElementMatcher<? super TypeDescription> elementMatcher);
    }

    boolean isAccessibleTo(TypeDescription typeDescription);

    boolean isVisibleTo(TypeDescription typeDescription);
}
