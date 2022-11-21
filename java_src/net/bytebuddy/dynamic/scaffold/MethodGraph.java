package net.bytebuddy.dynamic.scaffold;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.FilterableList;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface MethodGraph {

    @SuppressFBWarnings(justification = "Safe initialization is implied.", value = {"IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"})
    /* loaded from: classes2.dex */
    public interface Compiler {
        public static final Compiler DEFAULT = Default.forJavaHierarchy();

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase implements Compiler {
            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            public Linked compile(TypeDefinition typeDefinition) {
                return compile(typeDefinition, typeDefinition.asErasure());
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            @Deprecated
            public Linked compile(TypeDescription typeDescription) {
                return compile((TypeDefinition) typeDescription, typeDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            @Deprecated
            public Linked compile(TypeDescription typeDescription, TypeDescription typeDescription2) {
                return compile((TypeDefinition) typeDescription, typeDescription2);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Default<T> extends AbstractBase {
            private final Harmonizer<T> harmonizer;
            private final Merger merger;
            private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

            /* loaded from: classes2.dex */
            public interface Harmonizer<S> {

                /* loaded from: classes2.dex */
                public enum ForJVMMethod implements Harmonizer<Token> {
                    INSTANCE;

                    /* loaded from: classes2.dex */
                    public static class Token {
                        private final int hashCode;
                        private final MethodDescription.TypeToken typeToken;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (!(obj instanceof Token)) {
                                return false;
                            }
                            Token token = (Token) obj;
                            return this.typeToken.getReturnType().equals(token.typeToken.getReturnType()) && this.typeToken.getParameterTypes().equals(token.typeToken.getParameterTypes());
                        }

                        public int hashCode() {
                            return this.hashCode;
                        }

                        public String toString() {
                            return this.typeToken.toString();
                        }

                        public Token(MethodDescription.TypeToken typeToken) {
                            this.typeToken = typeToken;
                            this.hashCode = typeToken.getReturnType().hashCode() + (typeToken.getParameterTypes().hashCode() * 31);
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Harmonizer
                    public Token harmonize(MethodDescription.TypeToken typeToken) {
                        return new Token(typeToken);
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForJavaMethod implements Harmonizer<Token> {
                    INSTANCE;

                    /* loaded from: classes2.dex */
                    public static class Token {
                        private final int hashCode;
                        private final MethodDescription.TypeToken typeToken;

                        public boolean equals(@MaybeNull Object obj) {
                            return this == obj || ((obj instanceof Token) && this.typeToken.getParameterTypes().equals(((Token) obj).typeToken.getParameterTypes()));
                        }

                        public int hashCode() {
                            return this.hashCode;
                        }

                        public String toString() {
                            return this.typeToken.getParameterTypes().toString();
                        }

                        public Token(MethodDescription.TypeToken typeToken) {
                            this.typeToken = typeToken;
                            this.hashCode = typeToken.getParameterTypes().hashCode();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Harmonizer
                    public Token harmonize(MethodDescription.TypeToken typeToken) {
                        return new Token(typeToken);
                    }
                }

                S harmonize(MethodDescription.TypeToken typeToken);
            }

            /* loaded from: classes2.dex */
            public static abstract class Key<S> {
                public final String internalName;
                public final int parameterCount;

                /* loaded from: classes2.dex */
                public static class Harmonized<V> extends Key<V> {
                    private final Map<V, Set<MethodDescription.TypeToken>> identifiers;

                    @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key
                    public Set<V> getIdentifiers() {
                        return this.identifiers.keySet();
                    }

                    public Harmonized<V> combineWith(Harmonized<V> harmonized) {
                        HashMap hashMap = new HashMap(this.identifiers);
                        for (Map.Entry<V, Set<MethodDescription.TypeToken>> entry : harmonized.identifiers.entrySet()) {
                            Set set = (Set) hashMap.get(entry.getKey());
                            if (set == null) {
                                hashMap.put(entry.getKey(), entry.getValue());
                            } else {
                                HashSet hashSet = new HashSet(set);
                                hashSet.addAll(entry.getValue());
                                hashMap.put(entry.getKey(), hashSet);
                            }
                        }
                        return new Harmonized<>(this.internalName, this.parameterCount, hashMap);
                    }

                    public Detached detach(MethodDescription.TypeToken typeToken) {
                        HashSet hashSet = new HashSet();
                        for (Set<MethodDescription.TypeToken> set : this.identifiers.values()) {
                            hashSet.addAll(set);
                        }
                        hashSet.add(typeToken);
                        return new Detached(this.internalName, this.parameterCount, hashSet);
                    }

                    public Harmonized<V> extend(MethodDescription.InDefinedShape inDefinedShape, Harmonizer<V> harmonizer) {
                        HashMap hashMap = new HashMap(this.identifiers);
                        MethodDescription.TypeToken asTypeToken = inDefinedShape.asTypeToken();
                        V harmonize = harmonizer.harmonize(asTypeToken);
                        Set set = (Set) hashMap.get(harmonize);
                        if (set == null) {
                            hashMap.put(harmonize, Collections.singleton(asTypeToken));
                        } else {
                            HashSet hashSet = new HashSet(set);
                            hashSet.add(asTypeToken);
                            hashMap.put(harmonize, hashSet);
                        }
                        return new Harmonized<>(this.internalName, this.parameterCount, hashMap);
                    }

                    public Harmonized(String str, int i, Map<V, Set<MethodDescription.TypeToken>> map) {
                        super(str, i);
                        this.identifiers = map;
                    }

                    /* renamed from: of */
                    public static <Q> Harmonized<Q> m15133of(MethodDescription methodDescription, Harmonizer<Q> harmonizer) {
                        return new Harmonized<>(methodDescription.getInternalName(), methodDescription.getParameters().size(), Collections.singletonMap(harmonizer.harmonize(methodDescription.asTypeToken()), Collections.emptySet()));
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Store<V> {
                    private final LinkedHashMap<Harmonized<V>, Entry<V>> entries;

                    /* loaded from: classes2.dex */
                    public interface Entry<W> {

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class Ambiguous<U> implements Entry<U> {
                            private final Harmonized<U> key;
                            private final LinkedHashSet<MethodDescription> methodDescriptions;
                            private final Visibility visibility;

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                if (obj != null && getClass() == obj.getClass()) {
                                    Ambiguous ambiguous = (Ambiguous) obj;
                                    return this.visibility.equals(ambiguous.visibility) && this.key.equals(ambiguous.key) && this.methodDescriptions.equals(ambiguous.methodDescriptions);
                                }
                                return false;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Set<MethodDescription> getCandidates() {
                                return this.methodDescriptions;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Harmonized<U> getKey() {
                                return this.key;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Visibility getVisibility() {
                                return this.visibility;
                            }

                            public int hashCode() {
                                return (((((getClass().hashCode() * 31) + this.key.hashCode()) * 31) + this.methodDescriptions.hashCode()) * 31) + this.visibility.hashCode();
                            }

                            @HashCodeAndEqualsPlugin.Enhance
                            /* loaded from: classes.dex */
                            public static class Node implements Node {
                                private final Detached key;
                                private final MethodDescription methodDescription;
                                private final Visibility visibility;

                                public boolean equals(@MaybeNull Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    if (obj != null && getClass() == obj.getClass()) {
                                        Node node = (Node) obj;
                                        return this.visibility.equals(node.visibility) && this.key.equals(node.key) && this.methodDescription.equals(node.methodDescription);
                                    }
                                    return false;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public Set<MethodDescription.TypeToken> getMethodTypes() {
                                    return this.key.getIdentifiers();
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public MethodDescription getRepresentative() {
                                    return this.methodDescription;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public Node.Sort getSort() {
                                    return Node.Sort.AMBIGUOUS;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public Visibility getVisibility() {
                                    return this.visibility;
                                }

                                public int hashCode() {
                                    return (((((getClass().hashCode() * 31) + this.key.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.visibility.hashCode();
                                }

                                public Node(Detached detached, MethodDescription methodDescription, Visibility visibility) {
                                    this.key = detached;
                                    this.methodDescription = methodDescription;
                                    this.visibility = visibility;
                                }
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Node asNode(Merger merger) {
                                Iterator<MethodDescription> it = this.methodDescriptions.iterator();
                                MethodDescription next = it.next();
                                while (it.hasNext()) {
                                    next = merger.merge(next, it.next());
                                }
                                return new Node(this.key.detach(next.asTypeToken()), next, this.visibility);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Entry<U> extendBy(MethodDescription methodDescription, Harmonizer<U> harmonizer) {
                                MethodDescription methodDescription2;
                                Harmonized<U> extend = this.key.extend(methodDescription.asDefined(), harmonizer);
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                TypeDescription asErasure = methodDescription.getDeclaringType().asErasure();
                                boolean isBridge = methodDescription.isBridge();
                                Visibility visibility = this.visibility;
                                Iterator<MethodDescription> it = this.methodDescriptions.iterator();
                                while (it.hasNext()) {
                                    MethodDescription next = it.next();
                                    if (next.getDeclaringType().asErasure().equals(asErasure)) {
                                        if (next.isBridge() ^ isBridge) {
                                            if (isBridge) {
                                                methodDescription2 = next;
                                            } else {
                                                methodDescription2 = methodDescription;
                                            }
                                            linkedHashSet.add(methodDescription2);
                                        } else {
                                            linkedHashSet.add(methodDescription);
                                            linkedHashSet.add(next);
                                        }
                                    }
                                    visibility = visibility.expandTo(next.getVisibility());
                                }
                                if (linkedHashSet.isEmpty()) {
                                    return new Resolved(extend, methodDescription, visibility, isBridge);
                                }
                                if (linkedHashSet.size() == 1) {
                                    return new Resolved(extend, (MethodDescription) linkedHashSet.iterator().next(), visibility, false);
                                }
                                return new Ambiguous(extend, linkedHashSet, visibility);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Entry<U> inject(Entry<U> entry) {
                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                Iterator<MethodDescription> it = this.methodDescriptions.iterator();
                                while (it.hasNext()) {
                                    MethodDescription next = it.next();
                                    TypeDescription asErasure = next.getDeclaringType().asErasure();
                                    Iterator<MethodDescription> it2 = entry.getCandidates().iterator();
                                    while (true) {
                                        if (it2.hasNext()) {
                                            TypeDescription asErasure2 = it2.next().getDeclaringType().asErasure();
                                            if (asErasure2.equals(asErasure) || !asErasure2.isAssignableTo(asErasure)) {
                                            }
                                        } else {
                                            linkedHashSet.add(next);
                                            break;
                                        }
                                    }
                                }
                                for (MethodDescription methodDescription : entry.getCandidates()) {
                                    TypeDescription asErasure3 = methodDescription.getDeclaringType().asErasure();
                                    Iterator<MethodDescription> it3 = this.methodDescriptions.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (it3.next().getDeclaringType().asErasure().isAssignableTo(asErasure3)) {
                                                break;
                                            }
                                        } else {
                                            linkedHashSet.add(methodDescription);
                                            break;
                                        }
                                    }
                                }
                                if (linkedHashSet.size() == 1) {
                                    return new Resolved(this.key.combineWith(entry.getKey()), (MethodDescription) linkedHashSet.iterator().next(), this.visibility.expandTo(entry.getVisibility()));
                                }
                                return new Ambiguous(this.key.combineWith(entry.getKey()), linkedHashSet, this.visibility.expandTo(entry.getVisibility()));
                            }

                            public Ambiguous(Harmonized<U> harmonized, LinkedHashSet<MethodDescription> linkedHashSet, Visibility visibility) {
                                this.key = harmonized;
                                this.methodDescriptions = linkedHashSet;
                                this.visibility = visibility;
                            }

                            /* renamed from: of */
                            public static <Q> Entry<Q> m15132of(Harmonized<Q> harmonized, MethodDescription methodDescription, MethodDescription methodDescription2, Visibility visibility) {
                                Visibility expandTo = visibility.expandTo(methodDescription.getVisibility()).expandTo(methodDescription2.getVisibility());
                                if (methodDescription.isBridge() ^ methodDescription2.isBridge()) {
                                    if (methodDescription.isBridge()) {
                                        methodDescription = methodDescription2;
                                    }
                                    return new Resolved(harmonized, methodDescription, expandTo, false);
                                }
                                return new Ambiguous(harmonized, new LinkedHashSet(Arrays.asList(methodDescription, methodDescription2)), expandTo);
                            }
                        }

                        /* loaded from: classes2.dex */
                        public static class Initial<U> implements Entry<U> {
                            private final Harmonized<U> key;

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Node asNode(Merger merger) {
                                throw new IllegalStateException("Cannot transform initial entry without a registered method: " + this);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Set<MethodDescription> getCandidates() {
                                throw new IllegalStateException("Cannot extract method from initial entry:" + this);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Harmonized<U> getKey() {
                                throw new IllegalStateException("Cannot extract key from initial entry:" + this);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Visibility getVisibility() {
                                throw new IllegalStateException("Cannot extract visibility from initial entry:" + this);
                            }

                            public int hashCode() {
                                return this.key.hashCode();
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Entry<U> inject(Entry<U> entry) {
                                throw new IllegalStateException("Cannot inject into initial entry without a registered method: " + this);
                            }

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                if (obj != null && getClass() == obj.getClass()) {
                                    return this.key.equals(((Initial) obj).key);
                                }
                                return false;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Entry<U> extendBy(MethodDescription methodDescription, Harmonizer<U> harmonizer) {
                                return new Resolved(this.key.extend(methodDescription.asDefined(), harmonizer), methodDescription, methodDescription.getVisibility(), false);
                            }

                            public Initial(Harmonized<U> harmonized) {
                                this.key = harmonized;
                            }
                        }

                        @HashCodeAndEqualsPlugin.Enhance
                        /* loaded from: classes.dex */
                        public static class Resolved<U> implements Entry<U> {
                            private static final int MADE_VISIBLE = 5;
                            private static final boolean NOT_MADE_VISIBLE = false;
                            private final Harmonized<U> key;
                            private final boolean madeVisible;
                            private final MethodDescription methodDescription;
                            private final Visibility visibility;

                            public Resolved(Harmonized<U> harmonized, MethodDescription methodDescription, Visibility visibility) {
                                this(harmonized, methodDescription, visibility, false);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Node asNode(Merger merger) {
                                return new Node(this.key.detach(this.methodDescription.asTypeToken()), this.methodDescription, this.visibility, this.madeVisible);
                            }

                            public boolean equals(@MaybeNull Object obj) {
                                if (this == obj) {
                                    return true;
                                }
                                if (obj != null && getClass() == obj.getClass()) {
                                    Resolved resolved = (Resolved) obj;
                                    return this.madeVisible == resolved.madeVisible && this.visibility.equals(resolved.visibility) && this.key.equals(resolved.key) && this.methodDescription.equals(resolved.methodDescription);
                                }
                                return false;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Set<MethodDescription> getCandidates() {
                                return Collections.singleton(this.methodDescription);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Harmonized<U> getKey() {
                                return this.key;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Visibility getVisibility() {
                                return this.visibility;
                            }

                            public int hashCode() {
                                return (((((((getClass().hashCode() * 31) + this.key.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.visibility.hashCode()) * 31) + (this.madeVisible ? 1 : 0);
                            }

                            @HashCodeAndEqualsPlugin.Enhance
                            /* loaded from: classes.dex */
                            public static class Node implements Node {
                                private final Detached key;
                                private final MethodDescription methodDescription;
                                private final Visibility visibility;
                                private final boolean visible;

                                public boolean equals(@MaybeNull Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    if (obj != null && getClass() == obj.getClass()) {
                                        Node node = (Node) obj;
                                        return this.visible == node.visible && this.visibility.equals(node.visibility) && this.key.equals(node.key) && this.methodDescription.equals(node.methodDescription);
                                    }
                                    return false;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public Set<MethodDescription.TypeToken> getMethodTypes() {
                                    return this.key.getIdentifiers();
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public MethodDescription getRepresentative() {
                                    return this.methodDescription;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public Node.Sort getSort() {
                                    return this.visible ? Node.Sort.VISIBLE : Node.Sort.RESOLVED;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
                                public Visibility getVisibility() {
                                    return this.visibility;
                                }

                                public int hashCode() {
                                    return (((((((getClass().hashCode() * 31) + this.key.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.visibility.hashCode()) * 31) + (this.visible ? 1 : 0);
                                }

                                public Node(Detached detached, MethodDescription methodDescription, Visibility visibility, boolean z) {
                                    this.key = detached;
                                    this.methodDescription = methodDescription;
                                    this.visibility = visibility;
                                    this.visible = z;
                                }
                            }

                            public Resolved(Harmonized<U> harmonized, MethodDescription methodDescription, Visibility visibility, boolean z) {
                                this.key = harmonized;
                                this.methodDescription = methodDescription;
                                this.visibility = visibility;
                                this.madeVisible = z;
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Entry<U> extendBy(MethodDescription methodDescription, Harmonizer<U> harmonizer) {
                                Harmonized<U> extend = this.key.extend(methodDescription.asDefined(), harmonizer);
                                Visibility expandTo = this.visibility.expandTo(methodDescription.getVisibility());
                                if (methodDescription.getDeclaringType().equals(this.methodDescription.getDeclaringType())) {
                                    return Ambiguous.m15132of(extend, methodDescription, this.methodDescription, expandTo);
                                }
                                return m15131of(extend, methodDescription, this.methodDescription, expandTo);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key.Store.Entry
                            public Entry<U> inject(Entry<U> entry) {
                                if (this.methodDescription.getDeclaringType().isInterface()) {
                                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                                    linkedHashSet.add(this.methodDescription);
                                    TypeDescription asErasure = this.methodDescription.getDeclaringType().asErasure();
                                    for (MethodDescription methodDescription : entry.getCandidates()) {
                                        if (methodDescription.getDeclaringType().asErasure().isAssignableTo(asErasure)) {
                                            linkedHashSet.remove(this.methodDescription);
                                            linkedHashSet.add(methodDescription);
                                        } else if (!methodDescription.getDeclaringType().asErasure().isAssignableFrom(asErasure)) {
                                            linkedHashSet.add(methodDescription);
                                        }
                                    }
                                    if (linkedHashSet.size() == 1) {
                                        return new Resolved(this.key.combineWith(entry.getKey()), (MethodDescription) linkedHashSet.iterator().next(), this.visibility.expandTo(entry.getVisibility()), this.madeVisible);
                                    }
                                    return new Ambiguous(this.key.combineWith(entry.getKey()), linkedHashSet, this.visibility.expandTo(entry.getVisibility()));
                                }
                                return new Resolved(this.key.combineWith(entry.getKey()), this.methodDescription, this.visibility.expandTo(entry.getVisibility()), this.madeVisible);
                            }

                            /* renamed from: of */
                            private static <V> Entry<V> m15131of(Harmonized<V> harmonized, MethodDescription methodDescription, MethodDescription methodDescription2, Visibility visibility) {
                                Visibility expandTo = visibility.expandTo(methodDescription2.getVisibility()).expandTo(methodDescription.getVisibility());
                                boolean z = false;
                                if (methodDescription.isBridge()) {
                                    if ((methodDescription2.getDeclaringType().getModifiers() & 5) == 0) {
                                        z = true;
                                    }
                                    return new Resolved(harmonized, methodDescription2, expandTo, z);
                                }
                                return new Resolved(harmonized, methodDescription, expandTo, false);
                            }
                        }

                        Node asNode(Merger merger);

                        Entry<W> extendBy(MethodDescription methodDescription, Harmonizer<W> harmonizer);

                        Set<MethodDescription> getCandidates();

                        Harmonized<W> getKey();

                        Visibility getVisibility();

                        Entry<W> inject(Entry<W> entry);
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class Graph implements MethodGraph {
                        private final LinkedHashMap<Key<MethodDescription.TypeToken>, Node> entries;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.entries.equals(((Graph) obj).entries);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.entries.hashCode();
                        }

                        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
                        public NodeList listNodes() {
                            return new NodeList(new ArrayList(this.entries.values()));
                        }

                        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
                        public Node locate(MethodDescription.SignatureToken signatureToken) {
                            Node node = this.entries.get(Detached.m15134of(signatureToken));
                            if (node == null) {
                                return Node.Unresolved.INSTANCE;
                            }
                            return node;
                        }

                        public Graph(LinkedHashMap<Key<MethodDescription.TypeToken>, Node> linkedHashMap) {
                            this.entries = linkedHashMap;
                        }
                    }

                    public Store() {
                        this(new LinkedHashMap());
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.entries.equals(((Store) obj).entries);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.entries.hashCode();
                    }

                    private Store(LinkedHashMap<Harmonized<V>, Entry<V>> linkedHashMap) {
                        this.entries = linkedHashMap;
                    }

                    public MethodGraph asGraph(Merger merger) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Entry<V> entry : this.entries.values()) {
                            Node asNode = entry.asNode(merger);
                            linkedHashMap.put(entry.getKey().detach(asNode.getRepresentative().asTypeToken()), asNode);
                        }
                        return new Graph(linkedHashMap);
                    }

                    public Store<V> combineWith(Store<V> store) {
                        if (this.entries.isEmpty()) {
                            return store;
                        }
                        if (store.entries.isEmpty()) {
                            return this;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(this.entries);
                        for (Entry<V> entry : store.entries.values()) {
                            Entry entry2 = (Entry) linkedHashMap.remove(entry.getKey());
                            if (entry2 != null) {
                                entry = combine(entry2, entry);
                            }
                            linkedHashMap.put(entry.getKey(), entry);
                        }
                        return new Store<>(linkedHashMap);
                    }

                    public Store<V> inject(Store<V> store) {
                        if (this.entries.isEmpty()) {
                            return store;
                        }
                        if (store.entries.isEmpty()) {
                            return this;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(this.entries);
                        for (Entry<V> entry : store.entries.values()) {
                            Entry entry2 = (Entry) linkedHashMap.remove(entry.getKey());
                            if (entry2 != null) {
                                entry = entry2.inject(entry);
                            }
                            linkedHashMap.put(entry.getKey(), entry);
                        }
                        return new Store<>(linkedHashMap);
                    }

                    private static <W> Entry<W> combine(Entry<W> entry, Entry<W> entry2) {
                        Set<MethodDescription> candidates = entry.getCandidates();
                        Set<MethodDescription> candidates2 = entry2.getCandidates();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        linkedHashSet.addAll(candidates);
                        linkedHashSet.addAll(candidates2);
                        for (MethodDescription methodDescription : candidates) {
                            TypeDescription asErasure = methodDescription.getDeclaringType().asErasure();
                            Iterator<MethodDescription> it = candidates2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    MethodDescription next = it.next();
                                    TypeDescription asErasure2 = next.getDeclaringType().asErasure();
                                    if (!asErasure.equals(asErasure2)) {
                                        if (asErasure.isAssignableTo(asErasure2)) {
                                            linkedHashSet.remove(next);
                                            break;
                                        } else if (asErasure.isAssignableFrom(asErasure2)) {
                                            linkedHashSet.remove(methodDescription);
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        Harmonized<W> combineWith = entry.getKey().combineWith(entry2.getKey());
                        Visibility expandTo = entry.getVisibility().expandTo(entry2.getVisibility());
                        if (linkedHashSet.size() == 1) {
                            return new Entry.Resolved(combineWith, (MethodDescription) linkedHashSet.iterator().next(), expandTo, false);
                        }
                        return new Entry.Ambiguous(combineWith, linkedHashSet, expandTo);
                    }

                    public Store<V> registerTopLevel(List<? extends MethodDescription> list, Harmonizer<V> harmonizer) {
                        if (list.isEmpty()) {
                            return this;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(this.entries);
                        for (MethodDescription methodDescription : list) {
                            Harmonized m15133of = Harmonized.m15133of(methodDescription, harmonizer);
                            Entry entry = (Entry) linkedHashMap.remove(m15133of);
                            if (entry == null) {
                                entry = new Entry.Initial(m15133of);
                            }
                            Entry extendBy = entry.extendBy(methodDescription, harmonizer);
                            linkedHashMap.put(extendBy.getKey(), extendBy);
                        }
                        return new Store<>(linkedHashMap);
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof Key)) {
                        return false;
                    }
                    Key key = (Key) obj;
                    return this.internalName.equals(key.internalName) && this.parameterCount == key.parameterCount && !Collections.disjoint(getIdentifiers(), key.getIdentifiers());
                }

                public abstract Set<S> getIdentifiers();

                public int hashCode() {
                    return this.internalName.hashCode() + (this.parameterCount * 31);
                }

                /* loaded from: classes2.dex */
                public static class Detached extends Key<MethodDescription.TypeToken> {
                    private final Set<MethodDescription.TypeToken> identifiers;

                    /* renamed from: of */
                    public static Detached m15134of(MethodDescription.SignatureToken signatureToken) {
                        return new Detached(signatureToken.getName(), signatureToken.getParameterTypes().size(), Collections.singleton(signatureToken.asTypeToken()));
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Key
                    public Set<MethodDescription.TypeToken> getIdentifiers() {
                        return this.identifiers;
                    }

                    public Detached(String str, int i, Set<MethodDescription.TypeToken> set) {
                        super(str, i);
                        this.identifiers = set;
                    }
                }

                public Key(String str, int i) {
                    this.internalName = str;
                    this.parameterCount = i;
                }
            }

            /* loaded from: classes2.dex */
            public interface Merger {
                MethodDescription merge(MethodDescription methodDescription, MethodDescription methodDescription2);

                /* loaded from: classes2.dex */
                public enum Directional implements Merger {
                    LEFT(true),
                    RIGHT(false);
                    
                    private final boolean left;

                    @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler.Default.Merger
                    public MethodDescription merge(MethodDescription methodDescription, MethodDescription methodDescription2) {
                        return this.left ? methodDescription : methodDescription2;
                    }

                    Directional(boolean z) {
                        this.left = z;
                    }
                }
            }

            public static Compiler forJVMHierarchy() {
                return m15136of(Harmonizer.ForJVMMethod.INSTANCE, Merger.Directional.LEFT);
            }

            public static Compiler forJavaHierarchy() {
                return m15136of(Harmonizer.ForJavaMethod.INSTANCE, Merger.Directional.LEFT);
            }

            /* renamed from: of */
            public static <S> Compiler m15136of(Harmonizer<S> harmonizer, Merger merger) {
                return new Default(harmonizer, merger, TypeDescription.Generic.Visitor.Reifying.INITIATING);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Default r5 = (Default) obj;
                    return this.harmonizer.equals(r5.harmonizer) && this.merger.equals(r5.merger) && this.visitor.equals(r5.visitor);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.harmonizer.hashCode()) * 31) + this.merger.hashCode()) * 31) + this.visitor.hashCode();
            }

            /* renamed from: of */
            public static <S> Compiler m15135of(Harmonizer<S> harmonizer, Merger merger, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                return new Default(harmonizer, merger, visitor);
            }

            public Key.Store<T> analyzeNullable(@MaybeNull TypeDescription.Generic generic, Map<TypeDefinition, Key.Store<T>> map, ElementMatcher<? super MethodDescription> elementMatcher) {
                if (generic == null) {
                    return new Key.Store<>();
                }
                return analyze((TypeDefinition) generic.accept(this.visitor), generic, map, elementMatcher);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            public Linked compile(TypeDefinition typeDefinition, TypeDescription typeDescription) {
                Key.Store<T> store;
                MethodGraph asGraph;
                Map<TypeDefinition, Key.Store<T>> hashMap = new HashMap<>();
                Key.Store<T> doAnalyze = doAnalyze(typeDefinition, hashMap, ElementMatchers.isVirtual().and(ElementMatchers.isVisibleTo(typeDescription)));
                TypeDescription.Generic superClass = typeDefinition.getSuperClass();
                TypeList.Generic interfaces = typeDefinition.getInterfaces();
                HashMap hashMap2 = new HashMap();
                for (TypeDescription.Generic generic : interfaces) {
                    Key.Store<T> store2 = hashMap.get(generic);
                    if (store2 != null) {
                        hashMap2.put(generic.asErasure(), store2.asGraph(this.merger));
                    } else {
                        throw new IllegalStateException("Failed to resolve interface type " + generic + " from " + hashMap.keySet());
                    }
                }
                if (superClass == null) {
                    store = null;
                } else {
                    store = hashMap.get(superClass);
                    if (store == null) {
                        throw new IllegalStateException("Failed to resolve super class " + superClass + " from " + hashMap.keySet());
                    }
                }
                MethodGraph asGraph2 = doAnalyze.asGraph(this.merger);
                if (store == null) {
                    asGraph = Empty.INSTANCE;
                } else {
                    asGraph = store.asGraph(this.merger);
                }
                return new Linked.Delegation(asGraph2, asGraph, hashMap2);
            }

            public Default(Harmonizer<T> harmonizer, Merger merger, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
                this.harmonizer = harmonizer;
                this.merger = merger;
                this.visitor = visitor;
            }

            public Key.Store<T> analyze(TypeDefinition typeDefinition, TypeDefinition typeDefinition2, Map<TypeDefinition, Key.Store<T>> map, ElementMatcher<? super MethodDescription> elementMatcher) {
                Key.Store<T> store = map.get(typeDefinition2);
                if (store == null) {
                    Key.Store<T> doAnalyze = doAnalyze(typeDefinition, map, elementMatcher);
                    map.put(typeDefinition2, doAnalyze);
                    return doAnalyze;
                }
                return store;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Key.Store<T> doAnalyze(TypeDefinition typeDefinition, Map<TypeDefinition, Key.Store<T>> map, ElementMatcher<? super MethodDescription> elementMatcher) {
                Key.Store<T> analyzeNullable = analyzeNullable(typeDefinition.getSuperClass(), map, elementMatcher);
                Key.Store<T> store = new Key.Store<>();
                for (TypeDescription.Generic generic : typeDefinition.getInterfaces()) {
                    store = store.combineWith(analyze((TypeDefinition) generic.accept(this.visitor), generic, map, elementMatcher));
                }
                return analyzeNullable.inject(store).registerTopLevel(typeDefinition.getDeclaredMethods().filter(elementMatcher), this.harmonizer);
            }
        }

        /* loaded from: classes2.dex */
        public enum ForDeclaredMethods implements Compiler {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            public Linked compile(TypeDefinition typeDefinition) {
                return compile(typeDefinition, typeDefinition.asErasure());
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            @Deprecated
            public Linked compile(TypeDescription typeDescription) {
                return compile((TypeDefinition) typeDescription, typeDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            public Linked compile(TypeDefinition typeDefinition, TypeDescription typeDescription) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (MethodDescription methodDescription : typeDefinition.getDeclaredMethods().filter(ElementMatchers.isVirtual().and(ElementMatchers.not(ElementMatchers.isBridge())).and(ElementMatchers.isVisibleTo(typeDescription)))) {
                    linkedHashMap.put(methodDescription.asSignatureToken(), new Node.Simple(methodDescription));
                }
                return new Linked.Delegation(new Simple(linkedHashMap), Empty.INSTANCE, Collections.emptyMap());
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
            @Deprecated
            public Linked compile(TypeDescription typeDescription, TypeDescription typeDescription2) {
                return compile((TypeDefinition) typeDescription, typeDescription2);
            }
        }

        Linked compile(TypeDefinition typeDefinition);

        Linked compile(TypeDefinition typeDefinition, TypeDescription typeDescription);

        @Deprecated
        Linked compile(TypeDescription typeDescription);

        @Deprecated
        Linked compile(TypeDescription typeDescription, TypeDescription typeDescription2);
    }

    /* loaded from: classes2.dex */
    public enum Empty implements Linked, Compiler {
        INSTANCE;

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        public Linked compile(TypeDefinition typeDefinition) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        public Linked compile(TypeDefinition typeDefinition, TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        @Deprecated
        public Linked compile(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Compiler
        @Deprecated
        public Linked compile(TypeDescription typeDescription, TypeDescription typeDescription2) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Linked
        public MethodGraph getInterfaceGraph(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Linked
        public MethodGraph getSuperClassGraph() {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
        public NodeList listNodes() {
            return new NodeList(Collections.emptyList());
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
        public Node locate(MethodDescription.SignatureToken signatureToken) {
            return Node.Unresolved.INSTANCE;
        }
    }

    /* loaded from: classes2.dex */
    public interface Linked extends MethodGraph {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Delegation implements Linked {
            private final Map<TypeDescription, MethodGraph> interfaceGraphs;
            private final MethodGraph methodGraph;
            private final MethodGraph superClassGraph;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Delegation delegation = (Delegation) obj;
                    return this.methodGraph.equals(delegation.methodGraph) && this.superClassGraph.equals(delegation.superClassGraph) && this.interfaceGraphs.equals(delegation.interfaceGraphs);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Linked
            public MethodGraph getSuperClassGraph() {
                return this.superClassGraph;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.methodGraph.hashCode()) * 31) + this.superClassGraph.hashCode()) * 31) + this.interfaceGraphs.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
            public NodeList listNodes() {
                return this.methodGraph.listNodes();
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
            public Node locate(MethodDescription.SignatureToken signatureToken) {
                return this.methodGraph.locate(signatureToken);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Linked
            public MethodGraph getInterfaceGraph(TypeDescription typeDescription) {
                MethodGraph methodGraph = this.interfaceGraphs.get(typeDescription);
                if (methodGraph == null) {
                    return Empty.INSTANCE;
                }
                return methodGraph;
            }

            public Delegation(MethodGraph methodGraph, MethodGraph methodGraph2, Map<TypeDescription, MethodGraph> map) {
                this.methodGraph = methodGraph;
                this.superClassGraph = methodGraph2;
                this.interfaceGraphs = map;
            }
        }

        MethodGraph getInterfaceGraph(TypeDescription typeDescription);

        MethodGraph getSuperClassGraph();
    }

    /* loaded from: classes2.dex */
    public interface Node {

        /* loaded from: classes2.dex */
        public enum Unresolved implements Node {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public Set<MethodDescription.TypeToken> getMethodTypes() {
                throw new IllegalStateException("Cannot resolve bridge method of an illegal node");
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public MethodDescription getRepresentative() {
                throw new IllegalStateException("Cannot resolve the method of an illegal node");
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public Sort getSort() {
                return Sort.UNRESOLVED;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public Visibility getVisibility() {
                throw new IllegalStateException("Cannot resolve visibility of an illegal node");
            }
        }

        Set<MethodDescription.TypeToken> getMethodTypes();

        MethodDescription getRepresentative();

        Sort getSort();

        Visibility getVisibility();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements Node {
            private final MethodDescription methodDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((Simple) obj).methodDescription);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public Set<MethodDescription.TypeToken> getMethodTypes() {
                return Collections.emptySet();
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public MethodDescription getRepresentative() {
                return this.methodDescription;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public Sort getSort() {
                return Sort.RESOLVED;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodGraph.Node
            public Visibility getVisibility() {
                return this.methodDescription.getVisibility();
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
            }

            public Simple(MethodDescription methodDescription) {
                this.methodDescription = methodDescription;
            }
        }

        /* loaded from: classes2.dex */
        public enum Sort {
            VISIBLE(true, true, true),
            RESOLVED(true, true, false),
            AMBIGUOUS(true, false, false),
            UNRESOLVED(false, false, false);
            
            private final boolean madeVisible;
            private final boolean resolved;
            private final boolean unique;

            public boolean isMadeVisible() {
                return this.madeVisible;
            }

            public boolean isResolved() {
                return this.resolved;
            }

            public boolean isUnique() {
                return this.unique;
            }

            Sort(boolean z, boolean z2, boolean z3) {
                this.resolved = z;
                this.unique = z2;
                this.madeVisible = z3;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class NodeList extends FilterableList.AbstractBase<Node, NodeList> {
        private final List<? extends Node> nodes;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.nodes.size();
        }

        public MethodList<?> asMethodList() {
            ArrayList arrayList = new ArrayList(size());
            for (Node node : this.nodes) {
                arrayList.add(node.getRepresentative());
            }
            return new MethodList.Explicit(arrayList);
        }

        @Override // java.util.AbstractList, java.util.List
        public Node get(int i) {
            return this.nodes.get(i);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // net.bytebuddy.matcher.FilterableList.AbstractBase
        public NodeList wrap(List<Node> list) {
            return new NodeList(list);
        }

        public NodeList(List<? extends Node> list) {
            this.nodes = list;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Simple implements MethodGraph {
        private final LinkedHashMap<MethodDescription.SignatureToken, Node> nodes;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.nodes.equals(((Simple) obj).nodes);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.nodes.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
        public NodeList listNodes() {
            return new NodeList(new ArrayList(this.nodes.values()));
        }

        /* renamed from: of */
        public static MethodGraph m15130of(List<? extends MethodDescription> list) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (MethodDescription methodDescription : list) {
                linkedHashMap.put(methodDescription.asSignatureToken(), new Node.Simple(methodDescription));
            }
            return new Simple(linkedHashMap);
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodGraph
        public Node locate(MethodDescription.SignatureToken signatureToken) {
            Node node = this.nodes.get(signatureToken);
            if (node == null) {
                return Node.Unresolved.INSTANCE;
            }
            return node;
        }

        public Simple(LinkedHashMap<MethodDescription.SignatureToken, Node> linkedHashMap) {
            this.nodes = linkedHashMap;
        }
    }

    NodeList listNodes();

    Node locate(MethodDescription.SignatureToken signatureToken);
}
