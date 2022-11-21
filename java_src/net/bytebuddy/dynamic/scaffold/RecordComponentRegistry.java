package net.bytebuddy.dynamic.scaffold;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.Transformer;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface RecordComponentRegistry {

    /* loaded from: classes2.dex */
    public interface Compiled extends TypeWriter.RecordComponentPool {

        /* loaded from: classes2.dex */
        public enum NoOp implements Compiled {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool
            public TypeWriter.RecordComponentPool.Record target(RecordComponentDescription recordComponentDescription) {
                return new TypeWriter.RecordComponentPool.Record.ForImplicitRecordComponent(recordComponentDescription);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements RecordComponentRegistry {
        private final List<Entry> entries;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compiled implements Compiled {
            private final List<Entry> entries;
            private final TypeDescription instrumentedType;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Entry implements ElementMatcher<RecordComponentDescription> {
                private final ElementMatcher<? super RecordComponentDescription> matcher;
                private final RecordComponentAttributeAppender recordComponentAttributeAppender;
                private final Transformer<RecordComponentDescription> transformer;

                public TypeWriter.RecordComponentPool.Record bind(TypeDescription typeDescription, RecordComponentDescription recordComponentDescription) {
                    return new TypeWriter.RecordComponentPool.Record.ForExplicitRecordComponent(this.recordComponentAttributeAppender, this.transformer.transform(typeDescription, recordComponentDescription));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Entry entry = (Entry) obj;
                        return this.matcher.equals(entry.matcher) && this.recordComponentAttributeAppender.equals(entry.recordComponentAttributeAppender) && this.transformer.equals(entry.transformer);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.recordComponentAttributeAppender.hashCode()) * 31) + this.transformer.hashCode();
                }

                @Override // net.bytebuddy.matcher.ElementMatcher
                public boolean matches(@MaybeNull RecordComponentDescription recordComponentDescription) {
                    return this.matcher.matches(recordComponentDescription);
                }

                public Entry(ElementMatcher<? super RecordComponentDescription> elementMatcher, RecordComponentAttributeAppender recordComponentAttributeAppender, Transformer<RecordComponentDescription> transformer) {
                    this.matcher = elementMatcher;
                    this.recordComponentAttributeAppender = recordComponentAttributeAppender;
                    this.transformer = transformer;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Compiled compiled = (Compiled) obj;
                    return this.instrumentedType.equals(compiled.instrumentedType) && this.entries.equals(compiled.entries);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.entries.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool
            public TypeWriter.RecordComponentPool.Record target(RecordComponentDescription recordComponentDescription) {
                for (Entry entry : this.entries) {
                    if (entry.matches(recordComponentDescription)) {
                        return entry.bind(this.instrumentedType, recordComponentDescription);
                    }
                }
                return new TypeWriter.RecordComponentPool.Record.ForImplicitRecordComponent(recordComponentDescription);
            }

            public Compiled(TypeDescription typeDescription, List<Entry> list) {
                this.instrumentedType = typeDescription;
                this.entries = list;
            }
        }

        public Default() {
            this(Collections.emptyList());
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

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Entry implements LatentMatcher<RecordComponentDescription> {
            private final LatentMatcher<? super RecordComponentDescription> matcher;
            private final RecordComponentAttributeAppender.Factory recordComponentAttributeAppender;
            private final Transformer<RecordComponentDescription> transformer;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Entry entry = (Entry) obj;
                    return this.matcher.equals(entry.matcher) && this.recordComponentAttributeAppender.equals(entry.recordComponentAttributeAppender) && this.transformer.equals(entry.transformer);
                }
                return false;
            }

            public RecordComponentAttributeAppender.Factory getRecordComponentAttributeAppender() {
                return this.recordComponentAttributeAppender;
            }

            public Transformer<RecordComponentDescription> getTransformer() {
                return this.transformer;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.recordComponentAttributeAppender.hashCode()) * 31) + this.transformer.hashCode();
            }

            @Override // net.bytebuddy.matcher.LatentMatcher
            public ElementMatcher<? super RecordComponentDescription> resolve(TypeDescription typeDescription) {
                return this.matcher.resolve(typeDescription);
            }

            public Entry(LatentMatcher<? super RecordComponentDescription> latentMatcher, RecordComponentAttributeAppender.Factory factory, Transformer<RecordComponentDescription> transformer) {
                this.matcher = latentMatcher;
                this.recordComponentAttributeAppender = factory;
                this.transformer = transformer;
            }
        }

        private Default(List<Entry> list) {
            this.entries = list;
        }

        @Override // net.bytebuddy.dynamic.scaffold.RecordComponentRegistry
        public Compiled compile(TypeDescription typeDescription) {
            ArrayList arrayList = new ArrayList(this.entries.size());
            HashMap hashMap = new HashMap();
            for (Entry entry : this.entries) {
                RecordComponentAttributeAppender recordComponentAttributeAppender = (RecordComponentAttributeAppender) hashMap.get(entry.getRecordComponentAttributeAppender());
                if (recordComponentAttributeAppender == null) {
                    recordComponentAttributeAppender = entry.getRecordComponentAttributeAppender().make(typeDescription);
                    hashMap.put(entry.getRecordComponentAttributeAppender(), recordComponentAttributeAppender);
                }
                arrayList.add(new Compiled.Entry(entry.resolve(typeDescription), recordComponentAttributeAppender, entry.getTransformer()));
            }
            return new Compiled(typeDescription, arrayList);
        }

        @Override // net.bytebuddy.dynamic.scaffold.RecordComponentRegistry
        public RecordComponentRegistry prepend(LatentMatcher<? super RecordComponentDescription> latentMatcher, RecordComponentAttributeAppender.Factory factory, Transformer<RecordComponentDescription> transformer) {
            ArrayList arrayList = new ArrayList(this.entries.size() + 1);
            arrayList.add(new Entry(latentMatcher, factory, transformer));
            arrayList.addAll(this.entries);
            return new Default(arrayList);
        }
    }

    Compiled compile(TypeDescription typeDescription);

    RecordComponentRegistry prepend(LatentMatcher<? super RecordComponentDescription> latentMatcher, RecordComponentAttributeAppender.Factory factory, Transformer<RecordComponentDescription> transformer);
}
