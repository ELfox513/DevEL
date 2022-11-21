package net.bytebuddy.dynamic.scaffold;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.RecordComponentList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.description.type.TypeVariableToken;
import net.bytebuddy.dynamic.TargetType;
import net.bytebuddy.dynamic.Transformer;
import net.bytebuddy.dynamic.scaffold.TypeInitializer;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface InstrumentedType extends TypeDescription {

    /* loaded from: classes2.dex */
    public static class Default extends TypeDescription.AbstractBase.OfSimpleType implements WithFlexibleName {
        private static final Set<String> KEYWORDS = new HashSet(Arrays.asList("abstract", "continue", "for", "new", "switch", "assert", "default", "goto", "package", "synchronized", "boolean", "do", "if", "private", "this", "break", "double", "implements", "protected", "throw", "byte", "else", "import", "public", "throws", "case", "enum", "instanceof", "return", "transient", "catch", "extends", "int", "short", "try", "char", "final", "interface", "static", "void", "class", "finally", "long", "strictfp", "volatile", "const", "float", "native", "super", "while"));
        private final List<? extends AnnotationDescription> annotationDescriptions;
        private final boolean anonymousClass;
        private final Map<String, Object> auxiliaryFields;
        private final List<? extends TypeDescription> declaredTypes;
        @MaybeNull
        private final TypeDescription declaringType;
        @MaybeNull
        private final MethodDescription.InDefinedShape enclosingMethod;
        @MaybeNull
        private final TypeDescription enclosingType;
        private final List<? extends FieldDescription.Token> fieldTokens;
        private final List<? extends TypeDescription.Generic> interfaceTypes;
        private final LoadedTypeInitializer loadedTypeInitializer;
        private final boolean localClass;
        private final List<? extends MethodDescription.Token> methodTokens;
        private final int modifiers;
        private final String name;
        private final TypeDescription nestHost;
        private final List<? extends TypeDescription> nestMembers;
        @MaybeNull
        private final List<? extends TypeDescription> permittedSubclasses;
        private final boolean record;
        private final List<? extends RecordComponentDescription.Token> recordComponentTokens;
        @MaybeNull
        private final TypeDescription.Generic superClass;
        private final TypeInitializer typeInitializer;
        private final List<? extends TypeVariableToken> typeVariables;

        public Default(String str, int i, @MaybeNull TypeDescription.Generic generic, List<? extends TypeVariableToken> list, List<? extends TypeDescription.Generic> list2, List<? extends FieldDescription.Token> list3, Map<String, Object> map, List<? extends MethodDescription.Token> list4, List<? extends RecordComponentDescription.Token> list5, List<? extends AnnotationDescription> list6, TypeInitializer typeInitializer, LoadedTypeInitializer loadedTypeInitializer, @MaybeNull TypeDescription typeDescription, @MaybeNull MethodDescription.InDefinedShape inDefinedShape, @MaybeNull TypeDescription typeDescription2, List<? extends TypeDescription> list7, @MaybeNull List<? extends TypeDescription> list8, boolean z, boolean z2, boolean z3, TypeDescription typeDescription3, List<? extends TypeDescription> list9) {
            this.name = str;
            this.modifiers = i;
            this.typeVariables = list;
            this.superClass = generic;
            this.interfaceTypes = list2;
            this.fieldTokens = list3;
            this.auxiliaryFields = map;
            this.methodTokens = list4;
            this.recordComponentTokens = list5;
            this.annotationDescriptions = list6;
            this.typeInitializer = typeInitializer;
            this.loadedTypeInitializer = loadedTypeInitializer;
            this.declaringType = typeDescription;
            this.enclosingMethod = inDefinedShape;
            this.enclosingType = typeDescription2;
            this.declaredTypes = list7;
            this.permittedSubclasses = list8;
            this.anonymousClass = z;
            this.localClass = z2;
            this.record = z3;
            this.nestHost = typeDescription3;
            this.nestMembers = list9;
        }

        private static boolean isValidIdentifier(String[] strArr) {
            if (strArr.length == 0) {
                return false;
            }
            for (String str : strArr) {
                if (!isValidIdentifier(str)) {
                    return false;
                }
            }
            return true;
        }

        /* renamed from: of */
        public static InstrumentedType m15137of(String str, TypeDescription.Generic generic, ModifierContributor.ForType... forTypeArr) {
            return m15138of(str, generic, ModifierContributor.Resolver.m15201of(forTypeArr).resolve());
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Explicit(this.annotationDescriptions);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            return new FieldList.ForTokens(this, this.fieldTokens);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            return new MethodList.ForTokens(this, this.methodTokens);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            return new TypeList.Explicit(this.declaredTypes);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            return this.enclosingMethod;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public TypeDescription getEnclosingType() {
            return this.enclosingType;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            return new TypeList.Generic.ForDetachedTypes.WithResolvedErasure(this.interfaceTypes, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15182of(this));
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        public LoadedTypeInitializer getLoadedTypeInitializer() {
            return this.loadedTypeInitializer;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.modifiers;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.name;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            return this.nestHost.represents(TargetType.class) ? this : this.nestHost;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            return this.permittedSubclasses == null ? new TypeList.Empty() : new TypeList.Explicit(this.permittedSubclasses);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            return new RecordComponentList.ForTokens(this, this.recordComponentTokens);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        public TypeInitializer getTypeInitializer() {
            return this.typeInitializer;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return TypeList.Generic.ForDetachedTypes.attachVariables(this, this.typeVariables);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            return this.anonymousClass;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            return this.localClass;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isSealed() {
            return this.permittedSubclasses != null;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public /* bridge */ /* synthetic */ InstrumentedType withAnnotations(List list) {
            return withAnnotations((List<? extends AnnotationDescription>) list);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName
        public WithFlexibleName withName(String str) {
            return new Default(str, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        /* renamed from: of */
        public static InstrumentedType m15138of(String str, TypeDescription.Generic generic, int i) {
            return Factory.Default.MODIFIABLE.subclass(str, i, generic);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        @MaybeNull
        public TypeDescription getDeclaringType() {
            return this.declaringType;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            if (this.nestHost.represents(TargetType.class)) {
                return new TypeList.Explicit(CompoundList.m14778of(this, (List<? extends Default>) this.nestMembers));
            }
            return this.nestHost.getNestMembers();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public PackageDescription getPackage() {
            int lastIndexOf = this.name.lastIndexOf(46);
            if (lastIndexOf == -1) {
                return PackageDescription.UNDEFINED;
            }
            return new PackageDescription.Simple(this.name.substring(0, lastIndexOf));
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public TypeDescription.Generic getSuperClass() {
            TypeDescription.Generic generic = this.superClass;
            if (generic == null) {
                return TypeDescription.Generic.UNDEFINED;
            }
            return new TypeDescription.Generic.LazyProjection.WithResolvedErasure(generic, TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15182of(this));
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @SuppressFBWarnings(justification = "Assuming super class for given instance.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isRecord() {
            if (this.record && this.superClass != null && getSuperClass().asErasure().equals(JavaType.RECORD.getTypeStub())) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:197:0x05ad, code lost:
            throw new java.lang.IllegalStateException("Cannot add " + r4 + " on " + r30);
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0272, code lost:
            throw new java.lang.IllegalStateException("Illegal interface bound " + r12 + " of " + r5 + " for " + r30);
         */
        /* JADX WARN: Removed duplicated region for block: B:175:0x0517  */
        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.bytebuddy.description.type.TypeDescription validated() {
            /*
                Method dump skipped, instructions count: 3829
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.scaffold.InstrumentedType.Default.validated():net.bytebuddy.description.type.TypeDescription");
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withAnnotations(List<? extends AnnotationDescription> list) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, CompoundList.m14776of((List) this.annotationDescriptions, (List) list), this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withAnonymousClass(boolean z) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, z, false, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withAuxiliaryField(FieldDescription.Token token, Object obj) {
            HashMap hashMap = new HashMap(this.auxiliaryFields);
            Object put = hashMap.put(token.getName(), obj);
            if (put != null) {
                if (put == obj) {
                    return this;
                }
                throw new IllegalStateException("Field " + token.getName() + " for " + this + " already mapped to " + put + " and not " + obj);
            }
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, CompoundList.m14777of(this.fieldTokens, token.accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(this))), hashMap, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, new LoadedTypeInitializer.Compound(this.loadedTypeInitializer, new LoadedTypeInitializer.ForStaticField(token.getName(), obj)), this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withDeclaredTypes(TypeList typeList) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, CompoundList.m14776of((List) this.declaredTypes, (List) typeList), this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withDeclaringType(@MaybeNull TypeDescription typeDescription) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, typeDescription, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withEnclosingMethod(MethodDescription.InDefinedShape inDefinedShape) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, inDefinedShape, inDefinedShape.getDeclaringType(), this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withEnclosingType(@MaybeNull TypeDescription typeDescription) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, MethodDescription.UNDEFINED, typeDescription, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withField(FieldDescription.Token token) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, CompoundList.m14777of(this.fieldTokens, token.accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(this))), this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withInterfaces(TypeList.Generic generic) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, CompoundList.m14776of((List) this.interfaceTypes, (List) generic.accept(TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(this))), this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withLocalClass(boolean z) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, false, z, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withMethod(MethodDescription.Token token) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, CompoundList.m14777of(this.methodTokens, token.accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(this))), this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withModifiers(int i) {
            return new Default(this.name, i, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withNestHost(TypeDescription typeDescription) {
            String str = this.name;
            int i = this.modifiers;
            TypeDescription.Generic generic = this.superClass;
            List<? extends TypeVariableToken> list = this.typeVariables;
            List<? extends TypeDescription.Generic> list2 = this.interfaceTypes;
            List<? extends FieldDescription.Token> list3 = this.fieldTokens;
            Map<String, Object> map = this.auxiliaryFields;
            List<? extends MethodDescription.Token> list4 = this.methodTokens;
            List<? extends RecordComponentDescription.Token> list5 = this.recordComponentTokens;
            List<? extends AnnotationDescription> list6 = this.annotationDescriptions;
            TypeInitializer typeInitializer = this.typeInitializer;
            LoadedTypeInitializer loadedTypeInitializer = this.loadedTypeInitializer;
            TypeDescription typeDescription2 = this.declaringType;
            MethodDescription.InDefinedShape inDefinedShape = this.enclosingMethod;
            TypeDescription typeDescription3 = this.enclosingType;
            List<? extends TypeDescription> list7 = this.declaredTypes;
            List<? extends TypeDescription> list8 = this.permittedSubclasses;
            boolean z = this.anonymousClass;
            boolean z2 = this.localClass;
            boolean z3 = this.record;
            TypeDescription typeDescription4 = typeDescription;
            if (typeDescription4.equals(this)) {
                typeDescription4 = TargetType.DESCRIPTION;
            }
            return new Default(str, i, generic, list, list2, list3, map, list4, list5, list6, typeInitializer, loadedTypeInitializer, typeDescription2, inDefinedShape, typeDescription3, list7, list8, z, z2, z3, typeDescription4, Collections.emptyList());
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withNestMembers(TypeList typeList) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, TargetType.DESCRIPTION, CompoundList.m14776of((List) this.nestMembers, (List) typeList));
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withPermittedSubclasses(@MaybeNull TypeList typeList) {
            List<? extends TypeDescription> list;
            List list2 = typeList;
            String str = this.name;
            int i = this.modifiers;
            TypeDescription.Generic generic = this.superClass;
            List<? extends TypeVariableToken> list3 = this.typeVariables;
            List<? extends TypeDescription.Generic> list4 = this.interfaceTypes;
            List<? extends FieldDescription.Token> list5 = this.fieldTokens;
            Map<String, Object> map = this.auxiliaryFields;
            List<? extends MethodDescription.Token> list6 = this.methodTokens;
            List<? extends RecordComponentDescription.Token> list7 = this.recordComponentTokens;
            List<? extends AnnotationDescription> list8 = this.annotationDescriptions;
            TypeInitializer typeInitializer = this.typeInitializer;
            LoadedTypeInitializer loadedTypeInitializer = this.loadedTypeInitializer;
            TypeDescription typeDescription = this.declaringType;
            MethodDescription.InDefinedShape inDefinedShape = this.enclosingMethod;
            TypeDescription typeDescription2 = this.enclosingType;
            List<? extends TypeDescription> list9 = this.declaredTypes;
            if (list2 != null && (list = this.permittedSubclasses) != null) {
                list2 = CompoundList.m14776of((List) list, list2);
            }
            return new Default(str, i, generic, list3, list4, list5, map, list6, list7, list8, typeInitializer, loadedTypeInitializer, typeDescription, inDefinedShape, typeDescription2, list9, list2, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withRecord(boolean z) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, z ? this.recordComponentTokens : Collections.emptyList(), this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, z, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withRecordComponent(RecordComponentDescription.Token token) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, CompoundList.m14777of(this.recordComponentTokens, token.accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(this))), this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, true, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withTypeVariable(TypeVariableToken typeVariableToken) {
            return new Default(this.name, this.modifiers, this.superClass, CompoundList.m14777of(this.typeVariables, typeVariableToken.accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(this))), this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName
        public WithFlexibleName withTypeVariables(ElementMatcher<? super TypeDescription.Generic> elementMatcher, Transformer<TypeVariableToken> transformer) {
            ArrayList arrayList = new ArrayList(this.typeVariables.size());
            int i = 0;
            for (TypeVariableToken typeVariableToken : this.typeVariables) {
                int i2 = i + 1;
                if (elementMatcher.matches(getTypeVariables().get(i))) {
                    typeVariableToken = transformer.transform(this, typeVariableToken);
                }
                arrayList.add(typeVariableToken);
                i = i2;
            }
            return new Default(this.name, this.modifiers, this.superClass, arrayList, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withInitializer(LoadedTypeInitializer loadedTypeInitializer) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer, new LoadedTypeInitializer.Compound(this.loadedTypeInitializer, loadedTypeInitializer), this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }

        private static boolean isValidIdentifier(String str) {
            if (KEYWORDS.contains(str) || str.length() == 0 || !Character.isJavaIdentifierStart(str.charAt(0))) {
                return false;
            }
            if (str.equals(PackageDescription.PACKAGE_CLASS_NAME)) {
                return true;
            }
            for (int i = 1; i < str.length(); i++) {
                if (!Character.isJavaIdentifierPart(str.charAt(i))) {
                    return false;
                }
            }
            return true;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withInitializer(ByteCodeAppender byteCodeAppender) {
            return new Default(this.name, this.modifiers, this.superClass, this.typeVariables, this.interfaceTypes, this.fieldTokens, this.auxiliaryFields, this.methodTokens, this.recordComponentTokens, this.annotationDescriptions, this.typeInitializer.expandWith(byteCodeAppender), this.loadedTypeInitializer, this.declaringType, this.enclosingMethod, this.enclosingType, this.declaredTypes, this.permittedSubclasses, this.anonymousClass, this.localClass, this.record, this.nestHost, this.nestMembers);
        }
    }

    /* loaded from: classes2.dex */
    public interface Factory {

        /* loaded from: classes2.dex */
        public enum Default implements Factory {
            MODIFIABLE { // from class: net.bytebuddy.dynamic.scaffold.InstrumentedType.Factory.Default.1
                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Factory
                public WithFlexibleName represent(TypeDescription typeDescription) {
                    TypeList typeList;
                    TypeDescription nestHost;
                    TypeDescription typeDescription2;
                    List emptyList;
                    String name = typeDescription.getName();
                    int modifiers = typeDescription.getModifiers();
                    TypeDescription.Generic superClass = typeDescription.getSuperClass();
                    ByteCodeElement.Token.TokenList<TypeVariableToken> asTokenList = typeDescription.getTypeVariables().asTokenList(ElementMatchers.m14829is(typeDescription));
                    TypeList.Generic accept = typeDescription.getInterfaces().accept(TypeDescription.Generic.Visitor.Substitutor.ForDetachment.m15181of(typeDescription));
                    ByteCodeElement.Token.TokenList<FieldDescription.Token> asTokenList2 = typeDescription.getDeclaredFields().asTokenList(ElementMatchers.m14829is(typeDescription));
                    Map emptyMap = Collections.emptyMap();
                    ByteCodeElement.Token.TokenList<MethodDescription.Token> asTokenList3 = typeDescription.getDeclaredMethods().asTokenList(ElementMatchers.m14829is(typeDescription));
                    ByteCodeElement.Token.TokenList<RecordComponentDescription.Token> asTokenList4 = typeDescription.getRecordComponents().asTokenList(ElementMatchers.m14829is(typeDescription));
                    AnnotationList declaredAnnotations = typeDescription.getDeclaredAnnotations();
                    TypeInitializer.None none = TypeInitializer.None.INSTANCE;
                    LoadedTypeInitializer.NoOp noOp = LoadedTypeInitializer.NoOp.INSTANCE;
                    TypeDescription declaringType = typeDescription.getDeclaringType();
                    MethodDescription.InDefinedShape enclosingMethod = typeDescription.getEnclosingMethod();
                    TypeDescription enclosingType = typeDescription.getEnclosingType();
                    TypeList declaredTypes = typeDescription.getDeclaredTypes();
                    if (typeDescription.isSealed()) {
                        typeList = typeDescription.getPermittedSubtypes();
                    } else {
                        typeList = TypeList.UNDEFINED;
                    }
                    TypeList typeList2 = typeList;
                    boolean isAnonymousType = typeDescription.isAnonymousType();
                    boolean isLocalType = typeDescription.isLocalType();
                    boolean isRecord = typeDescription.isRecord();
                    if (typeDescription.isNestHost()) {
                        nestHost = TargetType.DESCRIPTION;
                    } else {
                        nestHost = typeDescription.getNestHost();
                    }
                    TypeDescription typeDescription3 = nestHost;
                    if (typeDescription.isNestHost()) {
                        typeDescription2 = enclosingType;
                        emptyList = typeDescription.getNestMembers().filter(ElementMatchers.not(ElementMatchers.m14829is(typeDescription)));
                    } else {
                        typeDescription2 = enclosingType;
                        emptyList = Collections.emptyList();
                    }
                    return new Default(name, modifiers, superClass, asTokenList, accept, asTokenList2, emptyMap, asTokenList3, asTokenList4, declaredAnnotations, none, noOp, declaringType, enclosingMethod, typeDescription2, declaredTypes, typeList2, isAnonymousType, isLocalType, isRecord, typeDescription3, emptyList);
                }
            },
            FROZEN { // from class: net.bytebuddy.dynamic.scaffold.InstrumentedType.Factory.Default.2
                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Factory
                public WithFlexibleName represent(TypeDescription typeDescription) {
                    return new Frozen(typeDescription, LoadedTypeInitializer.NoOp.INSTANCE);
                }
            };

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Factory
            public WithFlexibleName subclass(String str, int i, TypeDescription.Generic generic) {
                List emptyList = Collections.emptyList();
                List emptyList2 = Collections.emptyList();
                List emptyList3 = Collections.emptyList();
                Map emptyMap = Collections.emptyMap();
                List emptyList4 = Collections.emptyList();
                List emptyList5 = Collections.emptyList();
                List emptyList6 = Collections.emptyList();
                TypeInitializer.None none = TypeInitializer.None.INSTANCE;
                LoadedTypeInitializer.NoOp noOp = LoadedTypeInitializer.NoOp.INSTANCE;
                TypeDescription typeDescription = TypeDescription.UNDEFINED;
                return new Default(str, i, generic, emptyList, emptyList2, emptyList3, emptyMap, emptyList4, emptyList5, emptyList6, none, noOp, typeDescription, MethodDescription.UNDEFINED, typeDescription, Collections.emptyList(), TypeList.UNDEFINED, false, false, false, TargetType.DESCRIPTION, Collections.emptyList());
            }
        }

        WithFlexibleName represent(TypeDescription typeDescription);

        WithFlexibleName subclass(String str, int i, TypeDescription.Generic generic);
    }

    /* loaded from: classes2.dex */
    public static class Frozen extends TypeDescription.AbstractBase.OfSimpleType implements WithFlexibleName {
        private final LoadedTypeInitializer loadedTypeInitializer;
        private final TypeDescription typeDescription;

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public int getActualModifiers(boolean z) {
            return this.typeDescription.getActualModifiers(z);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public ClassFileVersion getClassFileVersion() {
            return this.typeDescription.getClassFileVersion();
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.typeDescription.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            return this.typeDescription.getDeclaredFields();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            return this.typeDescription.getDeclaredMethods();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            return this.typeDescription.getDeclaredTypes();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            return this.typeDescription.getEnclosingMethod();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public TypeDescription getEnclosingType() {
            return this.typeDescription.getEnclosingType();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
        @MaybeNull
        public String getGenericSignature() {
            return this.typeDescription.getGenericSignature();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            return this.typeDescription.getInterfaces();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        public LoadedTypeInitializer getLoadedTypeInitializer() {
            return this.loadedTypeInitializer;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.typeDescription.getModifiers();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.typeDescription.getName();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            return this.typeDescription.getNestHost();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            return this.typeDescription.getNestMembers();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public PackageDescription getPackage() {
            return this.typeDescription.getPackage();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            return this.typeDescription.getPermittedSubtypes();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            return this.typeDescription.getRecordComponents();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public TypeDescription.Generic getSuperClass() {
            return this.typeDescription.getSuperClass();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        public TypeInitializer getTypeInitializer() {
            return TypeInitializer.None.INSTANCE;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return this.typeDescription.getTypeVariables();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            return this.typeDescription.isAnonymousType();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            return this.typeDescription.isLocalType();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isRecord() {
            return this.typeDescription.isRecord();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isSealed() {
            return this.typeDescription.isSealed();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        public TypeDescription validated() {
            return this.typeDescription;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public /* bridge */ /* synthetic */ InstrumentedType withAnnotations(List list) {
            return withAnnotations((List<? extends AnnotationDescription>) list);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName
        public WithFlexibleName withName(String str) {
            throw new IllegalStateException("Cannot change name of frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName
        public WithFlexibleName withTypeVariables(ElementMatcher<? super TypeDescription.Generic> elementMatcher, Transformer<TypeVariableToken> transformer) {
            throw new IllegalStateException("Cannot add type variables of frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        @MaybeNull
        public TypeDescription getDeclaringType() {
            return this.typeDescription.getDeclaringType();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withAnnotations(List<? extends AnnotationDescription> list) {
            throw new IllegalStateException("Cannot add annotation to frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withAnonymousClass(boolean z) {
            throw new IllegalStateException("Cannot define anonymous class state for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withAuxiliaryField(FieldDescription.Token token, Object obj) {
            throw new IllegalStateException("Cannot define auxiliary field for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withDeclaredTypes(TypeList typeList) {
            throw new IllegalStateException("Cannot add declared types to frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withDeclaringType(@MaybeNull TypeDescription typeDescription) {
            throw new IllegalStateException("Cannot add declaring type to frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withEnclosingMethod(MethodDescription.InDefinedShape inDefinedShape) {
            throw new IllegalStateException("Cannot set enclosing method of frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withEnclosingType(@MaybeNull TypeDescription typeDescription) {
            throw new IllegalStateException("Cannot set enclosing type of frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withField(FieldDescription.Token token) {
            throw new IllegalStateException("Cannot define field for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withInterfaces(TypeList.Generic generic) {
            throw new IllegalStateException("Cannot add interfaces for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withLocalClass(boolean z) {
            throw new IllegalStateException("Cannot define local class state for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withMethod(MethodDescription.Token token) {
            throw new IllegalStateException("Cannot define method for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withModifiers(int i) {
            throw new IllegalStateException("Cannot change modifiers for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withNestHost(TypeDescription typeDescription) {
            throw new IllegalStateException("Cannot set nest host of frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withNestMembers(TypeList typeList) {
            throw new IllegalStateException("Cannot add nest members to frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withPermittedSubclasses(@MaybeNull TypeList typeList) {
            throw new IllegalStateException("Cannot add permitted subclasses to frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withRecord(boolean z) {
            throw new IllegalStateException("Cannot define record state for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withRecordComponent(RecordComponentDescription.Token token) {
            throw new IllegalStateException("Cannot define record component for frozen type: " + this.typeDescription);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withTypeVariable(TypeVariableToken typeVariableToken) {
            throw new IllegalStateException("Cannot define type variable for frozen type: " + this.typeDescription);
        }

        public Frozen(TypeDescription typeDescription, LoadedTypeInitializer loadedTypeInitializer) {
            this.typeDescription = typeDescription;
            this.loadedTypeInitializer = loadedTypeInitializer;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withInitializer(LoadedTypeInitializer loadedTypeInitializer) {
            return new Frozen(this.typeDescription, new LoadedTypeInitializer.Compound(this.loadedTypeInitializer, loadedTypeInitializer));
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.WithFlexibleName, net.bytebuddy.dynamic.scaffold.InstrumentedType
        public WithFlexibleName withInitializer(ByteCodeAppender byteCodeAppender) {
            throw new IllegalStateException("Cannot add initializer to frozen type: " + this.typeDescription);
        }
    }

    /* loaded from: classes2.dex */
    public interface Prepareable {

        /* loaded from: classes2.dex */
        public enum NoOp implements Prepareable {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }
        }

        InstrumentedType prepare(InstrumentedType instrumentedType);
    }

    /* loaded from: classes2.dex */
    public interface WithFlexibleName extends InstrumentedType {
        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withAnnotations(List<? extends AnnotationDescription> list);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withAnonymousClass(boolean z);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withAuxiliaryField(FieldDescription.Token token, Object obj);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withDeclaredTypes(TypeList typeList);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withDeclaringType(@MaybeNull TypeDescription typeDescription);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withEnclosingMethod(MethodDescription.InDefinedShape inDefinedShape);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withEnclosingType(@MaybeNull TypeDescription typeDescription);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withField(FieldDescription.Token token);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withInitializer(LoadedTypeInitializer loadedTypeInitializer);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withInitializer(ByteCodeAppender byteCodeAppender);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withInterfaces(TypeList.Generic generic);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withLocalClass(boolean z);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withMethod(MethodDescription.Token token);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withModifiers(int i);

        WithFlexibleName withName(String str);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withNestHost(TypeDescription typeDescription);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withNestMembers(TypeList typeList);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withPermittedSubclasses(@MaybeNull TypeList typeList);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withRecord(boolean z);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withRecordComponent(RecordComponentDescription.Token token);

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType
        WithFlexibleName withTypeVariable(TypeVariableToken typeVariableToken);

        WithFlexibleName withTypeVariables(ElementMatcher<? super TypeDescription.Generic> elementMatcher, Transformer<TypeVariableToken> transformer);
    }

    LoadedTypeInitializer getLoadedTypeInitializer();

    TypeInitializer getTypeInitializer();

    TypeDescription validated();

    InstrumentedType withAnnotations(List<? extends AnnotationDescription> list);

    InstrumentedType withAnonymousClass(boolean z);

    InstrumentedType withAuxiliaryField(FieldDescription.Token token, Object obj);

    InstrumentedType withDeclaredTypes(TypeList typeList);

    InstrumentedType withDeclaringType(@MaybeNull TypeDescription typeDescription);

    InstrumentedType withEnclosingMethod(MethodDescription.InDefinedShape inDefinedShape);

    InstrumentedType withEnclosingType(TypeDescription typeDescription);

    InstrumentedType withField(FieldDescription.Token token);

    InstrumentedType withInitializer(LoadedTypeInitializer loadedTypeInitializer);

    InstrumentedType withInitializer(ByteCodeAppender byteCodeAppender);

    InstrumentedType withInterfaces(TypeList.Generic generic);

    InstrumentedType withLocalClass(boolean z);

    InstrumentedType withMethod(MethodDescription.Token token);

    InstrumentedType withModifiers(int i);

    InstrumentedType withNestHost(TypeDescription typeDescription);

    InstrumentedType withNestMembers(TypeList typeList);

    InstrumentedType withPermittedSubclasses(@MaybeNull TypeList typeList);

    InstrumentedType withRecord(boolean z);

    InstrumentedType withRecordComponent(RecordComponentDescription.Token token);

    InstrumentedType withTypeVariable(TypeVariableToken typeVariableToken);
}
