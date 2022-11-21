package net.bytebuddy.dynamic.scaffold;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.Transformer;
import net.bytebuddy.dynamic.VisibilityBridgeStrategy;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.attribute.MethodAttributeAppender;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface MethodRegistry {

    /* loaded from: classes2.dex */
    public interface Compiled extends TypeWriter.MethodPool {
        MethodList<?> getInstrumentedMethods();

        TypeDescription getInstrumentedType();

        LoadedTypeInitializer getLoadedTypeInitializer();

        MethodList<?> getMethods();

        TypeInitializer getTypeInitializer();
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements MethodRegistry {
        private final List<Entry> entries;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compiled implements Compiled {
            private final LinkedHashMap<MethodDescription, Entry> implementations;
            private final TypeDescription instrumentedType;
            private final LoadedTypeInitializer loadedTypeInitializer;
            private final MethodList<?> methods;
            private final boolean supportsBridges;
            private final TypeInitializer typeInitializer;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Entry {
                private final MethodAttributeAppender attributeAppender;
                private final boolean bridgeMethod;
                private final Set<MethodDescription.TypeToken> bridgeTypes;
                private final Handler.Compiled handler;
                private final MethodDescription methodDescription;
                private final Visibility visibility;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Entry entry = (Entry) obj;
                        return this.bridgeMethod == entry.bridgeMethod && this.visibility.equals(entry.visibility) && this.handler.equals(entry.handler) && this.attributeAppender.equals(entry.attributeAppender) && this.methodDescription.equals(entry.methodDescription) && this.bridgeTypes.equals(entry.bridgeTypes);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((((getClass().hashCode() * 31) + this.handler.hashCode()) * 31) + this.attributeAppender.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.bridgeTypes.hashCode()) * 31) + this.visibility.hashCode()) * 31) + (this.bridgeMethod ? 1 : 0);
                }

                public TypeWriter.MethodPool.Record bind(TypeDescription typeDescription, boolean z) {
                    if (this.bridgeMethod && !z) {
                        return new TypeWriter.MethodPool.Record.ForNonImplementedMethod(this.methodDescription);
                    }
                    TypeWriter.MethodPool.Record assemble = this.handler.assemble(this.methodDescription, this.attributeAppender, this.visibility);
                    if (z) {
                        return TypeWriter.MethodPool.Record.AccessBridgeWrapper.m15111of(assemble, typeDescription, this.methodDescription, this.bridgeTypes, this.attributeAppender);
                    }
                    return assemble;
                }

                public Entry(Handler.Compiled compiled, MethodAttributeAppender methodAttributeAppender, MethodDescription methodDescription, Set<MethodDescription.TypeToken> set, Visibility visibility, boolean z) {
                    this.handler = compiled;
                    this.attributeAppender = methodAttributeAppender;
                    this.methodDescription = methodDescription;
                    this.bridgeTypes = set;
                    this.visibility = visibility;
                    this.bridgeMethod = z;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Compiled compiled = (Compiled) obj;
                    return this.supportsBridges == compiled.supportsBridges && this.instrumentedType.equals(compiled.instrumentedType) && this.loadedTypeInitializer.equals(compiled.loadedTypeInitializer) && this.typeInitializer.equals(compiled.typeInitializer) && this.methods.equals(compiled.methods) && this.implementations.equals(compiled.implementations);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Compiled
            public MethodList<?> getInstrumentedMethods() {
                return (MethodList) new MethodList.Explicit(new ArrayList(this.implementations.keySet())).filter(ElementMatchers.not(ElementMatchers.isTypeInitializer()));
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Compiled
            public TypeDescription getInstrumentedType() {
                return this.instrumentedType;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Compiled
            public LoadedTypeInitializer getLoadedTypeInitializer() {
                return this.loadedTypeInitializer;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Compiled
            public MethodList<?> getMethods() {
                return this.methods;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Compiled
            public TypeInitializer getTypeInitializer() {
                return this.typeInitializer;
            }

            public int hashCode() {
                return (((((((((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.loadedTypeInitializer.hashCode()) * 31) + this.typeInitializer.hashCode()) * 31) + this.methods.hashCode()) * 31) + this.implementations.hashCode()) * 31) + (this.supportsBridges ? 1 : 0);
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool
            public TypeWriter.MethodPool.Record target(MethodDescription methodDescription) {
                Entry entry = this.implementations.get(methodDescription);
                if (entry == null) {
                    return new TypeWriter.MethodPool.Record.ForNonImplementedMethod(methodDescription);
                }
                return entry.bind(this.instrumentedType, this.supportsBridges);
            }

            public Compiled(TypeDescription typeDescription, LoadedTypeInitializer loadedTypeInitializer, TypeInitializer typeInitializer, MethodList<?> methodList, LinkedHashMap<MethodDescription, Entry> linkedHashMap, boolean z) {
                this.instrumentedType = typeDescription;
                this.loadedTypeInitializer = loadedTypeInitializer;
                this.typeInitializer = typeInitializer;
                this.methods = methodList;
                this.implementations = linkedHashMap;
                this.supportsBridges = z;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Entry implements LatentMatcher<MethodDescription> {
            private final MethodAttributeAppender.Factory attributeAppenderFactory;
            private final Handler handler;
            private final LatentMatcher<? super MethodDescription> matcher;
            private final Transformer<MethodDescription> transformer;

            public Prepared.Entry asPreparedEntry(TypeDescription typeDescription, MethodDescription methodDescription, Visibility visibility) {
                return asPreparedEntry(typeDescription, methodDescription, Collections.emptySet(), visibility);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Entry entry = (Entry) obj;
                    return this.matcher.equals(entry.matcher) && this.handler.equals(entry.handler) && this.attributeAppenderFactory.equals(entry.attributeAppenderFactory) && this.transformer.equals(entry.transformer);
                }
                return false;
            }

            public Handler getHandler() {
                return this.handler;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.handler.hashCode()) * 31) + this.attributeAppenderFactory.hashCode()) * 31) + this.transformer.hashCode();
            }

            @Override // net.bytebuddy.matcher.LatentMatcher
            public ElementMatcher<? super MethodDescription> resolve(TypeDescription typeDescription) {
                return this.matcher.resolve(typeDescription);
            }

            public Prepared.Entry asPreparedEntry(TypeDescription typeDescription, MethodDescription methodDescription, Set<MethodDescription.TypeToken> set, Visibility visibility) {
                return new Prepared.Entry(this.handler, this.attributeAppenderFactory, this.transformer.transform(typeDescription, methodDescription), set, visibility, false);
            }

            public Prepared.Entry asSupplementaryEntry(MethodDescription methodDescription) {
                return new Prepared.Entry(this.handler, MethodAttributeAppender.Explicit.m15015of(methodDescription), methodDescription, Collections.emptySet(), methodDescription.getVisibility(), false);
            }

            public Entry(LatentMatcher<? super MethodDescription> latentMatcher, Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
                this.matcher = latentMatcher;
                this.handler = handler;
                this.attributeAppenderFactory = factory;
                this.transformer = transformer;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Prepared implements Prepared {
            private final LinkedHashMap<MethodDescription, Entry> implementations;
            private final TypeDescription instrumentedType;
            private final LoadedTypeInitializer loadedTypeInitializer;
            private final MethodGraph.Linked methodGraph;
            private final MethodList<?> methods;
            private final TypeInitializer typeInitializer;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Entry {
                private final MethodAttributeAppender.Factory attributeAppenderFactory;
                private final boolean bridgeMethod;
                private final Handler handler;
                private final MethodDescription methodDescription;
                private final Set<MethodDescription.TypeToken> typeTokens;
                private final Visibility visibility;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Entry entry = (Entry) obj;
                        return this.bridgeMethod == entry.bridgeMethod && this.visibility.equals(entry.visibility) && this.handler.equals(entry.handler) && this.attributeAppenderFactory.equals(entry.attributeAppenderFactory) && this.methodDescription.equals(entry.methodDescription) && this.typeTokens.equals(entry.typeTokens);
                    }
                    return false;
                }

                public MethodAttributeAppender.Factory getAppenderFactory() {
                    return this.attributeAppenderFactory;
                }

                public Handler getHandler() {
                    return this.handler;
                }

                public MethodDescription getMethodDescription() {
                    return this.methodDescription;
                }

                public Visibility getVisibility() {
                    return this.visibility;
                }

                public int hashCode() {
                    return (((((((((((getClass().hashCode() * 31) + this.handler.hashCode()) * 31) + this.attributeAppenderFactory.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.typeTokens.hashCode()) * 31) + this.visibility.hashCode()) * 31) + (this.bridgeMethod ? 1 : 0);
                }

                public boolean isBridgeMethod() {
                    return this.bridgeMethod;
                }

                public static Entry forVisibilityBridge(MethodDescription methodDescription, Visibility visibility) {
                    return new Entry(Handler.ForVisibilityBridge.INSTANCE, MethodAttributeAppender.Explicit.m15015of(methodDescription), methodDescription, Collections.emptySet(), visibility, true);
                }

                public Set<MethodDescription.TypeToken> resolveBridgeTypes() {
                    HashSet hashSet = new HashSet(this.typeTokens);
                    hashSet.remove(this.methodDescription.asTypeToken());
                    return hashSet;
                }

                public Entry(Handler handler, MethodAttributeAppender.Factory factory, MethodDescription methodDescription, Set<MethodDescription.TypeToken> set, Visibility visibility, boolean z) {
                    this.handler = handler;
                    this.attributeAppenderFactory = factory;
                    this.methodDescription = methodDescription;
                    this.typeTokens = set;
                    this.visibility = visibility;
                    this.bridgeMethod = z;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Prepared prepared = (Prepared) obj;
                    return this.implementations.equals(prepared.implementations) && this.loadedTypeInitializer.equals(prepared.loadedTypeInitializer) && this.typeInitializer.equals(prepared.typeInitializer) && this.instrumentedType.equals(prepared.instrumentedType) && this.methodGraph.equals(prepared.methodGraph) && this.methods.equals(prepared.methods);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Prepared
            public MethodList<?> getInstrumentedMethods() {
                return (MethodList) new MethodList.Explicit(new ArrayList(this.implementations.keySet())).filter(ElementMatchers.not(ElementMatchers.isTypeInitializer()));
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Prepared
            public TypeDescription getInstrumentedType() {
                return this.instrumentedType;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Prepared
            public LoadedTypeInitializer getLoadedTypeInitializer() {
                return this.loadedTypeInitializer;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Prepared
            public MethodList<?> getMethods() {
                return this.methods;
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Prepared
            public TypeInitializer getTypeInitializer() {
                return this.typeInitializer;
            }

            public int hashCode() {
                return (((((((((((getClass().hashCode() * 31) + this.implementations.hashCode()) * 31) + this.loadedTypeInitializer.hashCode()) * 31) + this.typeInitializer.hashCode()) * 31) + this.instrumentedType.hashCode()) * 31) + this.methodGraph.hashCode()) * 31) + this.methods.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Prepared
            public Compiled compile(Implementation.Target.Factory factory, ClassFileVersion classFileVersion) {
                HashMap hashMap = new HashMap();
                HashMap hashMap2 = new HashMap();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Implementation.Target make = factory.make(this.instrumentedType, this.methodGraph, classFileVersion);
                for (Map.Entry<MethodDescription, Entry> entry : this.implementations.entrySet()) {
                    Handler.Compiled compiled = (Handler.Compiled) hashMap.get(entry.getValue().getHandler());
                    if (compiled == null) {
                        compiled = entry.getValue().getHandler().compile(make);
                        hashMap.put(entry.getValue().getHandler(), compiled);
                    }
                    Handler.Compiled compiled2 = compiled;
                    MethodAttributeAppender methodAttributeAppender = (MethodAttributeAppender) hashMap2.get(entry.getValue().getAppenderFactory());
                    if (methodAttributeAppender == null) {
                        methodAttributeAppender = entry.getValue().getAppenderFactory().make(this.instrumentedType);
                        hashMap2.put(entry.getValue().getAppenderFactory(), methodAttributeAppender);
                    }
                    linkedHashMap.put(entry.getKey(), new Compiled.Entry(compiled2, methodAttributeAppender, entry.getValue().getMethodDescription(), entry.getValue().resolveBridgeTypes(), entry.getValue().getVisibility(), entry.getValue().isBridgeMethod()));
                }
                return new Compiled(this.instrumentedType, this.loadedTypeInitializer, this.typeInitializer, this.methods, linkedHashMap, classFileVersion.isAtLeast(ClassFileVersion.JAVA_V5));
            }

            public Prepared(LinkedHashMap<MethodDescription, Entry> linkedHashMap, LoadedTypeInitializer loadedTypeInitializer, TypeInitializer typeInitializer, TypeDescription typeDescription, MethodGraph.Linked linked, MethodList<?> methodList) {
                this.implementations = linkedHashMap;
                this.loadedTypeInitializer = loadedTypeInitializer;
                this.typeInitializer = typeInitializer;
                this.instrumentedType = typeDescription;
                this.methodGraph = linked;
                this.methods = methodList;
            }
        }

        public Default() {
            this.entries = Collections.emptyList();
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry
        public MethodRegistry append(LatentMatcher<? super MethodDescription> latentMatcher, Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
            return new Default(CompoundList.m14777of(this.entries, new Entry(latentMatcher, handler, factory, transformer)));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.entries.equals(((Default) obj).entries);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.entries.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry
        public MethodRegistry prepend(LatentMatcher<? super MethodDescription> latentMatcher, Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer) {
            return new Default(CompoundList.m14778of(new Entry(latentMatcher, handler, factory, transformer), this.entries));
        }

        @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry
        public Prepared prepare(InstrumentedType instrumentedType, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, LatentMatcher<? super MethodDescription> latentMatcher) {
            boolean z;
            InstrumentedType prepare;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet(instrumentedType.getDeclaredMethods());
            for (Entry entry : this.entries) {
                if (hashSet.add(entry.getHandler()) && instrumentedType != (prepare = entry.getHandler().prepare(instrumentedType))) {
                    for (MethodDescription methodDescription : prepare.getDeclaredMethods()) {
                        if (!hashSet2.contains(methodDescription)) {
                            linkedHashMap.put(methodDescription, entry.asSupplementaryEntry(methodDescription));
                            hashSet2.add(methodDescription);
                        }
                    }
                    instrumentedType = prepare;
                }
            }
            MethodGraph.Linked compile = compiler.compile((TypeDefinition) instrumentedType);
            ElementMatcher.Junction and = ElementMatchers.not(ElementMatchers.anyOf(linkedHashMap.keySet())).and(ElementMatchers.returns(ElementMatchers.isVisibleTo(instrumentedType))).and(ElementMatchers.hasParameters(ElementMatchers.whereNone(ElementMatchers.hasType(ElementMatchers.not(ElementMatchers.isVisibleTo(instrumentedType)))))).and(latentMatcher.resolve(instrumentedType));
            ArrayList arrayList = new ArrayList();
            Iterator<MethodGraph.Node> it = compile.listNodes().iterator();
            while (it.hasNext()) {
                MethodGraph.Node next = it.next();
                MethodDescription representative = next.getRepresentative();
                boolean z2 = false;
                if (instrumentedType.isPublic() && !instrumentedType.isInterface()) {
                    z = true;
                } else {
                    z = false;
                }
                if (and.matches(representative)) {
                    for (Entry entry2 : this.entries) {
                        if (entry2.resolve(instrumentedType).matches(representative)) {
                            linkedHashMap.put(representative, entry2.asPreparedEntry(instrumentedType, representative, next.getMethodTypes(), next.getVisibility()));
                            break;
                        }
                    }
                }
                z2 = z;
                if (z2 && !next.getSort().isMadeVisible() && representative.isPublic() && !representative.isAbstract() && !representative.isFinal() && representative.getDeclaringType().isPackagePrivate() && visibilityBridgeStrategy.generateVisibilityBridge(representative)) {
                    linkedHashMap.put(representative, Prepared.Entry.forVisibilityBridge(representative, next.getVisibility()));
                }
                arrayList.add(representative);
            }
            for (MethodDescription methodDescription2 : CompoundList.m14777of(instrumentedType.getDeclaredMethods().filter(ElementMatchers.not(ElementMatchers.isVirtual()).and(and)), new MethodDescription.Latent.TypeInitializer(instrumentedType))) {
                Iterator<Entry> it2 = this.entries.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Entry next2 = it2.next();
                        if (next2.resolve(instrumentedType).matches(methodDescription2)) {
                            linkedHashMap.put(methodDescription2, next2.asPreparedEntry(instrumentedType, methodDescription2, methodDescription2.getVisibility()));
                            break;
                        }
                    }
                }
                arrayList.add(methodDescription2);
            }
            LoadedTypeInitializer loadedTypeInitializer = instrumentedType.getLoadedTypeInitializer();
            TypeInitializer typeInitializer = instrumentedType.getTypeInitializer();
            TypeDescription typeDescription = instrumentedType;
            if (typeValidation.isEnabled()) {
                typeDescription = instrumentedType.validated();
            }
            return new Prepared(linkedHashMap, loadedTypeInitializer, typeInitializer, typeDescription, compile, new MethodList.Explicit(arrayList));
        }

        private Default(List<Entry> list) {
            this.entries = list;
        }
    }

    /* loaded from: classes2.dex */
    public interface Handler extends InstrumentedType.Prepareable {

        /* loaded from: classes2.dex */
        public interface Compiled {
            TypeWriter.MethodPool.Record assemble(MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender, Visibility visibility);
        }

        /* loaded from: classes2.dex */
        public enum ForAbstractMethod implements Handler, Compiled {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler.Compiled
            public TypeWriter.MethodPool.Record assemble(MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender, Visibility visibility) {
                return new TypeWriter.MethodPool.Record.ForDefinedMethod.WithoutBody(methodDescription, methodAttributeAppender, visibility);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler
            public Compiled compile(Implementation.Target target) {
                return this;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForImplementation implements Handler {
            private final Implementation implementation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.implementation.equals(((ForImplementation) obj).implementation);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.implementation.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return this.implementation.prepare(instrumentedType);
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Compiled implements Compiled {
                private final ByteCodeAppender byteCodeAppender;

                @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler.Compiled
                public TypeWriter.MethodPool.Record assemble(MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender, Visibility visibility) {
                    return new TypeWriter.MethodPool.Record.ForDefinedMethod.WithBody(methodDescription, this.byteCodeAppender, methodAttributeAppender, visibility);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.byteCodeAppender.equals(((Compiled) obj).byteCodeAppender);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.byteCodeAppender.hashCode();
                }

                public Compiled(ByteCodeAppender byteCodeAppender) {
                    this.byteCodeAppender = byteCodeAppender;
                }
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler
            public Compiled compile(Implementation.Target target) {
                return new Compiled(this.implementation.appender(target));
            }

            public ForImplementation(Implementation implementation) {
                this.implementation = implementation;
            }
        }

        /* loaded from: classes2.dex */
        public enum ForVisibilityBridge implements Handler {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                throw new IllegalStateException("A visibility bridge handler must not apply any preparations");
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Compiled implements Compiled {
                private final TypeDescription instrumentedType;

                @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler.Compiled
                public TypeWriter.MethodPool.Record assemble(MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender, Visibility visibility) {
                    return TypeWriter.MethodPool.Record.ForDefinedMethod.OfVisibilityBridge.m15110of(this.instrumentedType, methodDescription, methodAttributeAppender);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((Compiled) obj).instrumentedType);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
                }

                public Compiled(TypeDescription typeDescription) {
                    this.instrumentedType = typeDescription;
                }
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler
            public Compiled compile(Implementation.Target target) {
                return new Compiled(target.getInstrumentedType());
            }
        }

        Compiled compile(Implementation.Target target);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForAnnotationValue implements Handler, Compiled {
            private final AnnotationValue<?, ?> annotationValue;

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler.Compiled
            public TypeWriter.MethodPool.Record assemble(MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender, Visibility visibility) {
                return new TypeWriter.MethodPool.Record.ForDefinedMethod.WithAnnotationDefaultValue(methodDescription, this.annotationValue, methodAttributeAppender);
            }

            @Override // net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler
            public Compiled compile(Implementation.Target target) {
                return this;
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.annotationValue.equals(((ForAnnotationValue) obj).annotationValue);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.annotationValue.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            public ForAnnotationValue(AnnotationValue<?, ?> annotationValue) {
                this.annotationValue = annotationValue;
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Prepared {
        Compiled compile(Implementation.Target.Factory factory, ClassFileVersion classFileVersion);

        MethodList<?> getInstrumentedMethods();

        TypeDescription getInstrumentedType();

        LoadedTypeInitializer getLoadedTypeInitializer();

        MethodList<?> getMethods();

        TypeInitializer getTypeInitializer();
    }

    MethodRegistry append(LatentMatcher<? super MethodDescription> latentMatcher, Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer);

    Prepared prepare(InstrumentedType instrumentedType, MethodGraph.Compiler compiler, TypeValidation typeValidation, VisibilityBridgeStrategy visibilityBridgeStrategy, LatentMatcher<? super MethodDescription> latentMatcher);

    MethodRegistry prepend(LatentMatcher<? super MethodDescription> latentMatcher, Handler handler, MethodAttributeAppender.Factory factory, Transformer<MethodDescription> transformer);
}
