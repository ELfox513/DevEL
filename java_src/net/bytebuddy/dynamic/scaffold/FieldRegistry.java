package net.bytebuddy.dynamic.scaffold;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.Transformer;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.implementation.attribute.FieldAttributeAppender;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.LatentMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface FieldRegistry {

    /* loaded from: classes2.dex */
    public interface Compiled extends TypeWriter.FieldPool {

        /* loaded from: classes2.dex */
        public enum NoOp implements Compiled {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool
            public TypeWriter.FieldPool.Record target(FieldDescription fieldDescription) {
                return new TypeWriter.FieldPool.Record.ForImplicitField(fieldDescription);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Default implements FieldRegistry {
        private final List<Entry> entries;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compiled implements Compiled {
            private final List<Entry> entries;
            private final TypeDescription instrumentedType;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Entry implements ElementMatcher<FieldDescription> {
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Object defaultValue;
                private final FieldAttributeAppender fieldAttributeAppender;
                private final ElementMatcher<? super FieldDescription> matcher;
                private final Transformer<FieldDescription> transformer;

                public TypeWriter.FieldPool.Record bind(TypeDescription typeDescription, FieldDescription fieldDescription) {
                    return new TypeWriter.FieldPool.Record.ForExplicitField(this.fieldAttributeAppender, this.defaultValue, this.transformer.transform(typeDescription, fieldDescription));
                }

                /* JADX WARN: Code restructure failed: missing block: B:23:0x003a, code lost:
                    if (r2 != null) goto L27;
                 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                    /*
                        r4 = this;
                        r0 = 1
                        if (r4 != r5) goto L4
                        return r0
                    L4:
                        r1 = 0
                        if (r5 != 0) goto L8
                        return r1
                    L8:
                        java.lang.Class r2 = r4.getClass()
                        java.lang.Class r3 = r5.getClass()
                        if (r2 == r3) goto L13
                        return r1
                    L13:
                        net.bytebuddy.matcher.ElementMatcher<? super net.bytebuddy.description.field.FieldDescription> r2 = r4.matcher
                        net.bytebuddy.dynamic.scaffold.FieldRegistry$Default$Compiled$Entry r5 = (net.bytebuddy.dynamic.scaffold.FieldRegistry.Default.Compiled.Entry) r5
                        net.bytebuddy.matcher.ElementMatcher<? super net.bytebuddy.description.field.FieldDescription> r3 = r5.matcher
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L20
                        return r1
                    L20:
                        net.bytebuddy.implementation.attribute.FieldAttributeAppender r2 = r4.fieldAttributeAppender
                        net.bytebuddy.implementation.attribute.FieldAttributeAppender r3 = r5.fieldAttributeAppender
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L2b
                        return r1
                    L2b:
                        java.lang.Object r2 = r4.defaultValue
                        java.lang.Object r3 = r5.defaultValue
                        if (r3 == 0) goto L3a
                        if (r2 == 0) goto L3c
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L3d
                        return r1
                    L3a:
                        if (r2 == 0) goto L3d
                    L3c:
                        return r1
                    L3d:
                        net.bytebuddy.dynamic.Transformer<net.bytebuddy.description.field.FieldDescription> r2 = r4.transformer
                        net.bytebuddy.dynamic.Transformer<net.bytebuddy.description.field.FieldDescription> r5 = r5.transformer
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L48
                        return r1
                    L48:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.scaffold.FieldRegistry.Default.Compiled.Entry.equals(java.lang.Object):boolean");
                }

                public int hashCode() {
                    int hashCode = ((((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.fieldAttributeAppender.hashCode()) * 31;
                    Object obj = this.defaultValue;
                    if (obj != null) {
                        hashCode += obj.hashCode();
                    }
                    return (hashCode * 31) + this.transformer.hashCode();
                }

                @Override // net.bytebuddy.matcher.ElementMatcher
                public boolean matches(@MaybeNull FieldDescription fieldDescription) {
                    return this.matcher.matches(fieldDescription);
                }

                public Entry(ElementMatcher<? super FieldDescription> elementMatcher, FieldAttributeAppender fieldAttributeAppender, @MaybeNull Object obj, Transformer<FieldDescription> transformer) {
                    this.matcher = elementMatcher;
                    this.fieldAttributeAppender = fieldAttributeAppender;
                    this.defaultValue = obj;
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

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool
            public TypeWriter.FieldPool.Record target(FieldDescription fieldDescription) {
                for (Entry entry : this.entries) {
                    if (entry.matches(fieldDescription)) {
                        return entry.bind(this.instrumentedType, fieldDescription);
                    }
                }
                return new TypeWriter.FieldPool.Record.ForImplicitField(fieldDescription);
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
        public static class Entry implements LatentMatcher<FieldDescription> {
            @MaybeNull
            @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
            private final Object defaultValue;
            private final FieldAttributeAppender.Factory fieldAttributeAppenderFactory;
            private final LatentMatcher<? super FieldDescription> matcher;
            private final Transformer<FieldDescription> transformer;

            /* JADX WARN: Code restructure failed: missing block: B:23:0x003a, code lost:
                if (r2 != null) goto L27;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                /*
                    r4 = this;
                    r0 = 1
                    if (r4 != r5) goto L4
                    return r0
                L4:
                    r1 = 0
                    if (r5 != 0) goto L8
                    return r1
                L8:
                    java.lang.Class r2 = r4.getClass()
                    java.lang.Class r3 = r5.getClass()
                    if (r2 == r3) goto L13
                    return r1
                L13:
                    net.bytebuddy.matcher.LatentMatcher<? super net.bytebuddy.description.field.FieldDescription> r2 = r4.matcher
                    net.bytebuddy.dynamic.scaffold.FieldRegistry$Default$Entry r5 = (net.bytebuddy.dynamic.scaffold.FieldRegistry.Default.Entry) r5
                    net.bytebuddy.matcher.LatentMatcher<? super net.bytebuddy.description.field.FieldDescription> r3 = r5.matcher
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L20
                    return r1
                L20:
                    net.bytebuddy.implementation.attribute.FieldAttributeAppender$Factory r2 = r4.fieldAttributeAppenderFactory
                    net.bytebuddy.implementation.attribute.FieldAttributeAppender$Factory r3 = r5.fieldAttributeAppenderFactory
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L2b
                    return r1
                L2b:
                    java.lang.Object r2 = r4.defaultValue
                    java.lang.Object r3 = r5.defaultValue
                    if (r3 == 0) goto L3a
                    if (r2 == 0) goto L3c
                    boolean r2 = r2.equals(r3)
                    if (r2 != 0) goto L3d
                    return r1
                L3a:
                    if (r2 == 0) goto L3d
                L3c:
                    return r1
                L3d:
                    net.bytebuddy.dynamic.Transformer<net.bytebuddy.description.field.FieldDescription> r2 = r4.transformer
                    net.bytebuddy.dynamic.Transformer<net.bytebuddy.description.field.FieldDescription> r5 = r5.transformer
                    boolean r5 = r2.equals(r5)
                    if (r5 != 0) goto L48
                    return r1
                L48:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.scaffold.FieldRegistry.Default.Entry.equals(java.lang.Object):boolean");
            }

            @MaybeNull
            public Object getDefaultValue() {
                return this.defaultValue;
            }

            public FieldAttributeAppender.Factory getFieldAttributeAppenderFactory() {
                return this.fieldAttributeAppenderFactory;
            }

            public Transformer<FieldDescription> getTransformer() {
                return this.transformer;
            }

            public int hashCode() {
                int hashCode = ((((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.fieldAttributeAppenderFactory.hashCode()) * 31;
                Object obj = this.defaultValue;
                if (obj != null) {
                    hashCode += obj.hashCode();
                }
                return (hashCode * 31) + this.transformer.hashCode();
            }

            @Override // net.bytebuddy.matcher.LatentMatcher
            public ElementMatcher<? super FieldDescription> resolve(TypeDescription typeDescription) {
                return this.matcher.resolve(typeDescription);
            }

            public Entry(LatentMatcher<? super FieldDescription> latentMatcher, FieldAttributeAppender.Factory factory, @MaybeNull Object obj, Transformer<FieldDescription> transformer) {
                this.matcher = latentMatcher;
                this.fieldAttributeAppenderFactory = factory;
                this.defaultValue = obj;
                this.transformer = transformer;
            }
        }

        private Default(List<Entry> list) {
            this.entries = list;
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldRegistry
        public Compiled compile(TypeDescription typeDescription) {
            ArrayList arrayList = new ArrayList(this.entries.size());
            HashMap hashMap = new HashMap();
            for (Entry entry : this.entries) {
                FieldAttributeAppender fieldAttributeAppender = (FieldAttributeAppender) hashMap.get(entry.getFieldAttributeAppenderFactory());
                if (fieldAttributeAppender == null) {
                    fieldAttributeAppender = entry.getFieldAttributeAppenderFactory().make(typeDescription);
                    hashMap.put(entry.getFieldAttributeAppenderFactory(), fieldAttributeAppender);
                }
                arrayList.add(new Compiled.Entry(entry.resolve(typeDescription), fieldAttributeAppender, entry.getDefaultValue(), entry.getTransformer()));
            }
            return new Compiled(typeDescription, arrayList);
        }

        @Override // net.bytebuddy.dynamic.scaffold.FieldRegistry
        public FieldRegistry prepend(LatentMatcher<? super FieldDescription> latentMatcher, FieldAttributeAppender.Factory factory, @MaybeNull Object obj, Transformer<FieldDescription> transformer) {
            ArrayList arrayList = new ArrayList(this.entries.size() + 1);
            arrayList.add(new Entry(latentMatcher, factory, obj, transformer));
            arrayList.addAll(this.entries);
            return new Default(arrayList);
        }
    }

    Compiled compile(TypeDescription typeDescription);

    FieldRegistry prepend(LatentMatcher<? super FieldDescription> latentMatcher, FieldAttributeAppender.Factory factory, @MaybeNull Object obj, Transformer<FieldDescription> transformer);
}
