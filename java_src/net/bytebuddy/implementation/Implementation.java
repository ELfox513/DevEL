package net.bytebuddy.implementation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.dynamic.scaffold.TypeInitializer;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.implementation.MethodAccessorFactory;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface Implementation extends InstrumentedType.Prepareable {

    /* loaded from: classes.dex */
    public interface Composable extends Implementation {
        Composable andThen(Composable composable);

        Implementation andThen(Implementation implementation);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements Implementation {
        private final List<Implementation> implementations;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Composable implements Composable {
            private final Composable composable;
            private final List<Implementation> implementations;

            public Composable(Implementation implementation, Composable composable) {
                this(Collections.singletonList(implementation), composable);
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Implementation andThen(Implementation implementation) {
                return new Compound(CompoundList.m14777of(this.implementations, this.composable.andThen(implementation)));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Composable composable = (Composable) obj;
                    return this.composable.equals(composable.composable) && this.implementations.equals(composable.implementations);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.composable.hashCode()) * 31) + this.implementations.hashCode();
            }

            public Composable(List<? extends Implementation> list, Composable composable) {
                this.implementations = new ArrayList();
                for (Implementation implementation : list) {
                    if (implementation instanceof Composable) {
                        Composable composable2 = (Composable) implementation;
                        this.implementations.addAll(composable2.implementations);
                        this.implementations.add(composable2.composable);
                    } else if (implementation instanceof Compound) {
                        this.implementations.addAll(((Compound) implementation).implementations);
                    } else {
                        this.implementations.add(implementation);
                    }
                }
                if (composable instanceof Composable) {
                    Composable composable3 = (Composable) composable;
                    this.implementations.addAll(composable3.implementations);
                    this.composable = composable3.composable;
                    return;
                }
                this.composable = composable;
            }

            @Override // net.bytebuddy.implementation.Implementation.Composable
            public Composable andThen(Composable composable) {
                return new Composable(this.implementations, this.composable.andThen(composable));
            }

            @Override // net.bytebuddy.implementation.Implementation
            public ByteCodeAppender appender(Target target) {
                ByteCodeAppender[] byteCodeAppenderArr = new ByteCodeAppender[this.implementations.size() + 1];
                int i = 0;
                for (Implementation implementation : this.implementations) {
                    byteCodeAppenderArr[i] = implementation.appender(target);
                    i++;
                }
                byteCodeAppenderArr[i] = this.composable.appender(target);
                return new ByteCodeAppender.Compound(byteCodeAppenderArr);
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                for (Implementation implementation : this.implementations) {
                    instrumentedType = implementation.prepare(instrumentedType);
                }
                return this.composable.prepare(instrumentedType);
            }
        }

        public Compound(Implementation... implementationArr) {
            this(Arrays.asList(implementationArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.implementations.equals(((Compound) obj).implementations);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.implementations.hashCode();
        }

        public Compound(List<? extends Implementation> list) {
            this.implementations = new ArrayList();
            for (Implementation implementation : list) {
                if (implementation instanceof Composable) {
                    Composable composable = (Composable) implementation;
                    this.implementations.addAll(composable.implementations);
                    this.implementations.add(composable.composable);
                } else if (implementation instanceof Compound) {
                    this.implementations.addAll(((Compound) implementation).implementations);
                } else {
                    this.implementations.add(implementation);
                }
            }
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Target target) {
            ByteCodeAppender[] byteCodeAppenderArr = new ByteCodeAppender[this.implementations.size()];
            int i = 0;
            for (Implementation implementation : this.implementations) {
                byteCodeAppenderArr[i] = implementation.appender(target);
                i++;
            }
            return new ByteCodeAppender.Compound(byteCodeAppenderArr);
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            for (Implementation implementation : this.implementations) {
                instrumentedType = implementation.prepare(instrumentedType);
            }
            return instrumentedType;
        }
    }

    /* loaded from: classes.dex */
    public interface Context extends MethodAccessorFactory {

        /* loaded from: classes.dex */
        public static class Default extends ExtractableView.AbstractBase {
            public static final String ACCESSOR_METHOD_SUFFIX = "accessor";
            public static final String FIELD_CACHE_PREFIX = "cachedValue";
            private final ClassFileVersion auxiliaryClassFileVersion;
            private final AuxiliaryType.NamingStrategy auxiliaryTypeNamingStrategy;
            private final Map<AuxiliaryType, DynamicType> auxiliaryTypes;
            private boolean fieldCacheCanAppendEntries;
            private final Map<SpecialMethodInvocation, DelegationRecord> registeredAccessorMethods;
            private final Map<FieldCacheEntry, FieldDescription.InDefinedShape> registeredFieldCacheEntries;
            private final Set<FieldDescription.InDefinedShape> registeredFieldCacheFields;
            private final Map<FieldDescription, DelegationRecord> registeredGetters;
            private final Map<FieldDescription, DelegationRecord> registeredSetters;
            private final String suffix;
            private final TypeInitializer typeInitializer;

            /* loaded from: classes.dex */
            public static abstract class AbstractPropertyAccessorMethod extends MethodDescription.InDefinedShape.AbstractBase {
                public abstract int getBaseModifiers();

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    return getBaseModifiers() | 4096 | (getDeclaringType().isInterface() ? 1 : 16);
                }
            }

            /* loaded from: classes.dex */
            public static class AccessorMethod extends AbstractPropertyAccessorMethod {
                private final TypeDescription instrumentedType;
                private final MethodDescription methodDescription;
                private final String name;

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.AbstractPropertyAccessorMethod
                public int getBaseModifiers() {
                    return this.methodDescription.isStatic() ? 8 : 0;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                @MaybeNull
                public AnnotationValue<?, ?> getDefaultValue() {
                    return AnnotationValue.UNDEFINED;
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeList.Generic getExceptionTypes() {
                    return this.methodDescription.getExceptionTypes().asRawTypes();
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getInternalName() {
                    return this.name;
                }

                @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                    return new ParameterList.Explicit.ForTypes(this, this.methodDescription.getParameters().asTypeList().asRawTypes());
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReturnType() {
                    return this.methodDescription.getReturnType().asRawType();
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return this.instrumentedType;
                }

                public AccessorMethod(TypeDescription typeDescription, MethodDescription methodDescription, TypeDescription typeDescription2, String str) {
                    String str2;
                    this.instrumentedType = typeDescription;
                    this.methodDescription = methodDescription;
                    StringBuilder sb = new StringBuilder();
                    sb.append(methodDescription.getInternalName());
                    sb.append("$");
                    sb.append(Default.ACCESSOR_METHOD_SUFFIX);
                    sb.append("$");
                    sb.append(str);
                    if (typeDescription2.isInterface()) {
                        str2 = "$" + RandomString.hashOf(typeDescription2.hashCode());
                    } else {
                        str2 = "";
                    }
                    sb.append(str2);
                    this.name = sb.toString();
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class AccessorMethodDelegation extends DelegationRecord {
                private final StackManipulation accessorMethodInvocation;

                public AccessorMethodDelegation(TypeDescription typeDescription, String str, MethodAccessorFactory.AccessType accessType, SpecialMethodInvocation specialMethodInvocation) {
                    this(new AccessorMethod(typeDescription, specialMethodInvocation.getMethodDescription(), specialMethodInvocation.getTypeDescription(), str), accessType.getVisibility(), specialMethodInvocation);
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.accessorMethodInvocation.equals(((AccessorMethodDelegation) obj).accessorMethodInvocation);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public int hashCode() {
                    return (super.hashCode() * 31) + this.accessorMethodInvocation.hashCode();
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public DelegationRecord with(MethodAccessorFactory.AccessType accessType) {
                    return new AccessorMethodDelegation(this.methodDescription, this.visibility.expandTo(accessType.getVisibility()), this.accessorMethodInvocation);
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Context context, MethodDescription methodDescription) {
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference(), this.accessorMethodInvocation, MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }

                private AccessorMethodDelegation(MethodDescription.InDefinedShape inDefinedShape, Visibility visibility, StackManipulation stackManipulation) {
                    super(inDefinedShape, visibility);
                    this.accessorMethodInvocation = stackManipulation;
                }
            }

            /* loaded from: classes.dex */
            public static class CacheValueField extends FieldDescription.InDefinedShape.AbstractBase {
                private final TypeDescription.Generic fieldType;
                private final TypeDescription instrumentedType;
                private final String name;

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    return (this.instrumentedType.isInterface() ? 1 : 2) | 4120;
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getName() {
                    return this.name;
                }

                @Override // net.bytebuddy.description.field.FieldDescription
                public TypeDescription.Generic getType() {
                    return this.fieldType;
                }

                @Override // net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return this.instrumentedType;
                }

                public CacheValueField(TypeDescription typeDescription, TypeDescription.Generic generic, String str, int i) {
                    this.instrumentedType = typeDescription;
                    this.fieldType = generic;
                    this.name = "cachedValue$" + str + "$" + RandomString.hashOf(i);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class DelegationRecord extends TypeWriter.MethodPool.Record.ForDefinedMethod implements ByteCodeAppender {
                public final MethodDescription.InDefinedShape methodDescription;
                public final Visibility visibility;

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Context context) {
                    return apply(methodVisitor, context, getMethod());
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyHead(MethodVisitor methodVisitor) {
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        DelegationRecord delegationRecord = (DelegationRecord) obj;
                        return this.visibility.equals(delegationRecord.visibility) && this.methodDescription.equals(delegationRecord.methodDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public TypeWriter.MethodPool.Record.Sort getSort() {
                    return TypeWriter.MethodPool.Record.Sort.IMPLEMENTED;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Visibility getVisibility() {
                    return this.visibility;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.visibility.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public TypeWriter.MethodPool.Record prepend(ByteCodeAppender byteCodeAppender) {
                    throw new UnsupportedOperationException("Cannot prepend code to a delegation for " + this.methodDescription);
                }

                public abstract DelegationRecord with(MethodAccessorFactory.AccessType accessType);

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public MethodDescription.InDefinedShape getMethod() {
                    return this.methodDescription;
                }

                public DelegationRecord(MethodDescription.InDefinedShape inDefinedShape, Visibility visibility) {
                    this.methodDescription = inDefinedShape;
                    this.visibility = visibility;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyBody(MethodVisitor methodVisitor, Context context, AnnotationValueFilter.Factory factory) {
                    methodVisitor.visitCode();
                    ByteCodeAppender.Size applyCode = applyCode(methodVisitor, context);
                    methodVisitor.visitMaxs(applyCode.getOperandStackSize(), applyCode.getLocalVariableSize());
                }
            }

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithFixedSuffix implements Factory {
                    private final String suffix;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.suffix.equals(((WithFixedSuffix) obj).suffix);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.suffix.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.Implementation.Context.Factory
                    public ExtractableView make(TypeDescription typeDescription, AuxiliaryType.NamingStrategy namingStrategy, TypeInitializer typeInitializer, ClassFileVersion classFileVersion, ClassFileVersion classFileVersion2) {
                        return new Default(typeDescription, classFileVersion, namingStrategy, typeInitializer, classFileVersion2, this.suffix);
                    }

                    public WithFixedSuffix(String str) {
                        this.suffix = str;
                    }
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Factory
                public ExtractableView make(TypeDescription typeDescription, AuxiliaryType.NamingStrategy namingStrategy, TypeInitializer typeInitializer, ClassFileVersion classFileVersion, ClassFileVersion classFileVersion2) {
                    return new Default(typeDescription, classFileVersion, namingStrategy, typeInitializer, classFileVersion2, RandomString.make());
                }
            }

            /* loaded from: classes.dex */
            public static class FieldCacheEntry implements StackManipulation {
                private final TypeDescription fieldType;
                private final StackManipulation fieldValue;

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public StackManipulation.Size apply(MethodVisitor methodVisitor, Context context) {
                    return this.fieldValue.apply(methodVisitor, context);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj == null || getClass() != obj.getClass()) {
                        return false;
                    }
                    FieldCacheEntry fieldCacheEntry = (FieldCacheEntry) obj;
                    return this.fieldValue.equals(fieldCacheEntry.fieldValue) && this.fieldType.equals(fieldCacheEntry.fieldType);
                }

                public TypeDescription getFieldType() {
                    return this.fieldType;
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public boolean isValid() {
                    return this.fieldValue.isValid();
                }

                public ByteCodeAppender storeIn(FieldDescription fieldDescription) {
                    return new ByteCodeAppender.Simple(this, FieldAccess.forField(fieldDescription).write());
                }

                public int hashCode() {
                    return (this.fieldValue.hashCode() * 31) + this.fieldType.hashCode();
                }

                public FieldCacheEntry(StackManipulation stackManipulation, TypeDescription typeDescription) {
                    this.fieldValue = stackManipulation;
                    this.fieldType = typeDescription;
                }
            }

            /* loaded from: classes.dex */
            public static class FieldGetter extends AbstractPropertyAccessorMethod {
                private final FieldDescription fieldDescription;
                private final TypeDescription instrumentedType;
                private final String name;

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.AbstractPropertyAccessorMethod
                public int getBaseModifiers() {
                    return this.fieldDescription.isStatic() ? 8 : 0;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                @MaybeNull
                public AnnotationValue<?, ?> getDefaultValue() {
                    return AnnotationValue.UNDEFINED;
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeList.Generic getExceptionTypes() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getInternalName() {
                    return this.name;
                }

                @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                    return new ParameterList.Empty();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReturnType() {
                    return this.fieldDescription.getType().asRawType();
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return this.instrumentedType;
                }

                public FieldGetter(TypeDescription typeDescription, FieldDescription fieldDescription, String str) {
                    this.instrumentedType = typeDescription;
                    this.fieldDescription = fieldDescription;
                    this.name = fieldDescription.getName() + "$" + Default.ACCESSOR_METHOD_SUFFIX + "$" + str;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class FieldGetterDelegation extends DelegationRecord {
                private final FieldDescription fieldDescription;

                public FieldGetterDelegation(TypeDescription typeDescription, String str, MethodAccessorFactory.AccessType accessType, FieldDescription fieldDescription) {
                    this(new FieldGetter(typeDescription, fieldDescription, str), accessType.getVisibility(), fieldDescription);
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((FieldGetterDelegation) obj).fieldDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public int hashCode() {
                    return (super.hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public DelegationRecord with(MethodAccessorFactory.AccessType accessType) {
                    return new FieldGetterDelegation(this.methodDescription, this.visibility.expandTo(accessType.getVisibility()), this.fieldDescription);
                }

                private FieldGetterDelegation(MethodDescription.InDefinedShape inDefinedShape, Visibility visibility, FieldDescription fieldDescription) {
                    super(inDefinedShape, visibility);
                    this.fieldDescription = fieldDescription;
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Context context, MethodDescription methodDescription) {
                    StackManipulation loadThis;
                    StackManipulation[] stackManipulationArr = new StackManipulation[3];
                    if (this.fieldDescription.isStatic()) {
                        loadThis = StackManipulation.Trivial.INSTANCE;
                    } else {
                        loadThis = MethodVariableAccess.loadThis();
                    }
                    stackManipulationArr[0] = loadThis;
                    stackManipulationArr[1] = FieldAccess.forField(this.fieldDescription).read();
                    stackManipulationArr[2] = MethodReturn.m14940of(this.fieldDescription.getType());
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
            }

            /* loaded from: classes.dex */
            public static class FieldSetter extends AbstractPropertyAccessorMethod {
                private final FieldDescription fieldDescription;
                private final TypeDescription instrumentedType;
                private final String name;

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.AbstractPropertyAccessorMethod
                public int getBaseModifiers() {
                    return this.fieldDescription.isStatic() ? 8 : 0;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                @MaybeNull
                public AnnotationValue<?, ?> getDefaultValue() {
                    return AnnotationValue.UNDEFINED;
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeList.Generic getExceptionTypes() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                public String getInternalName() {
                    return this.name;
                }

                @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                    return new ParameterList.Explicit.ForTypes(this, Collections.singletonList(this.fieldDescription.getType().asRawType()));
                }

                @Override // net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReturnType() {
                    return TypeDescription.Generic.VOID;
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return new TypeList.Generic.Empty();
                }

                @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                public TypeDescription getDeclaringType() {
                    return this.instrumentedType;
                }

                public FieldSetter(TypeDescription typeDescription, FieldDescription fieldDescription, String str) {
                    this.instrumentedType = typeDescription;
                    this.fieldDescription = fieldDescription;
                    this.name = fieldDescription.getName() + "$" + Default.ACCESSOR_METHOD_SUFFIX + "$" + str;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class FieldSetterDelegation extends DelegationRecord {
                private final FieldDescription fieldDescription;

                public FieldSetterDelegation(TypeDescription typeDescription, String str, MethodAccessorFactory.AccessType accessType, FieldDescription fieldDescription) {
                    this(new FieldSetter(typeDescription, fieldDescription, str), accessType.getVisibility(), fieldDescription);
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((FieldSetterDelegation) obj).fieldDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public int hashCode() {
                    return (super.hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.Implementation.Context.Default.DelegationRecord
                public DelegationRecord with(MethodAccessorFactory.AccessType accessType) {
                    return new FieldSetterDelegation(this.methodDescription, this.visibility.expandTo(accessType.getVisibility()), this.fieldDescription);
                }

                private FieldSetterDelegation(MethodDescription.InDefinedShape inDefinedShape, Visibility visibility, FieldDescription fieldDescription) {
                    super(inDefinedShape, visibility);
                    this.fieldDescription = fieldDescription;
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Context context, MethodDescription methodDescription) {
                    return new ByteCodeAppender.Size(new StackManipulation.Compound(MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference(), FieldAccess.forField(this.fieldDescription).write(), MethodReturn.VOID).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
            }

            @Override // net.bytebuddy.implementation.Implementation.Context.ExtractableView
            public void drain(TypeInitializer.Drain drain, ClassVisitor classVisitor, AnnotationValueFilter.Factory factory) {
                this.fieldCacheCanAppendEntries = false;
                TypeInitializer typeInitializer = this.typeInitializer;
                for (Map.Entry<FieldCacheEntry, FieldDescription.InDefinedShape> entry : this.registeredFieldCacheEntries.entrySet()) {
                    FieldVisitor visitField = classVisitor.visitField(entry.getValue().getModifiers(), entry.getValue().getInternalName(), entry.getValue().getDescriptor(), entry.getValue().getGenericSignature(), FieldDescription.NO_DEFAULT_VALUE);
                    if (visitField != null) {
                        visitField.visitEnd();
                        typeInitializer = typeInitializer.expandWith(entry.getKey().storeIn(entry.getValue()));
                    }
                }
                drain.apply(classVisitor, typeInitializer, this);
                for (DelegationRecord delegationRecord : this.registeredAccessorMethods.values()) {
                    delegationRecord.apply(classVisitor, this, factory);
                }
                for (DelegationRecord delegationRecord2 : this.registeredGetters.values()) {
                    delegationRecord2.apply(classVisitor, this, factory);
                }
                for (DelegationRecord delegationRecord3 : this.registeredSetters.values()) {
                    delegationRecord3.apply(classVisitor, this, factory);
                }
            }

            @Override // net.bytebuddy.implementation.Implementation.Context.ExtractableView
            public List<DynamicType> getAuxiliaryTypes() {
                return new ArrayList(this.auxiliaryTypes.values());
            }

            @Override // net.bytebuddy.implementation.Implementation.Context.ExtractableView
            public boolean isEnabled() {
                return true;
            }

            @Override // net.bytebuddy.implementation.Implementation.Context
            public FieldDescription.InDefinedShape cache(StackManipulation stackManipulation, TypeDescription typeDescription) {
                FieldCacheEntry fieldCacheEntry = new FieldCacheEntry(stackManipulation, typeDescription);
                FieldDescription.InDefinedShape inDefinedShape = this.registeredFieldCacheEntries.get(fieldCacheEntry);
                if (inDefinedShape != null) {
                    return inDefinedShape;
                }
                if (this.fieldCacheCanAppendEntries) {
                    int hashCode = stackManipulation.hashCode();
                    while (true) {
                        int i = hashCode + 1;
                        CacheValueField cacheValueField = new CacheValueField(this.instrumentedType, typeDescription.asGenericType(), this.suffix, hashCode);
                        if (this.registeredFieldCacheFields.add(cacheValueField)) {
                            this.registeredFieldCacheEntries.put(fieldCacheEntry, cacheValueField);
                            return cacheValueField;
                        }
                        hashCode = i;
                    }
                } else {
                    throw new IllegalStateException("Cached values cannot be registered after defining the type initializer for " + this.instrumentedType);
                }
            }

            @Override // net.bytebuddy.implementation.Implementation.Context
            public TypeDescription register(AuxiliaryType auxiliaryType) {
                DynamicType dynamicType = this.auxiliaryTypes.get(auxiliaryType);
                if (dynamicType == null) {
                    dynamicType = auxiliaryType.make(this.auxiliaryTypeNamingStrategy.name(this.instrumentedType, auxiliaryType), this.auxiliaryClassFileVersion, this);
                    this.auxiliaryTypes.put(auxiliaryType, dynamicType);
                }
                return dynamicType.getTypeDescription();
            }

            @Override // net.bytebuddy.implementation.MethodAccessorFactory
            public MethodDescription.InDefinedShape registerAccessorFor(SpecialMethodInvocation specialMethodInvocation, MethodAccessorFactory.AccessType accessType) {
                DelegationRecord with;
                DelegationRecord delegationRecord = this.registeredAccessorMethods.get(specialMethodInvocation);
                if (delegationRecord == null) {
                    with = new AccessorMethodDelegation(this.instrumentedType, this.suffix, accessType, specialMethodInvocation);
                } else {
                    with = delegationRecord.with(accessType);
                }
                this.registeredAccessorMethods.put(specialMethodInvocation, with);
                return with.getMethod();
            }

            @Override // net.bytebuddy.implementation.MethodAccessorFactory
            public MethodDescription.InDefinedShape registerGetterFor(FieldDescription fieldDescription, MethodAccessorFactory.AccessType accessType) {
                DelegationRecord with;
                DelegationRecord delegationRecord = this.registeredGetters.get(fieldDescription);
                if (delegationRecord == null) {
                    with = new FieldGetterDelegation(this.instrumentedType, this.suffix, accessType, fieldDescription);
                } else {
                    with = delegationRecord.with(accessType);
                }
                this.registeredGetters.put(fieldDescription, with);
                return with.getMethod();
            }

            @Override // net.bytebuddy.implementation.MethodAccessorFactory
            public MethodDescription.InDefinedShape registerSetterFor(FieldDescription fieldDescription, MethodAccessorFactory.AccessType accessType) {
                DelegationRecord with;
                DelegationRecord delegationRecord = this.registeredSetters.get(fieldDescription);
                if (delegationRecord == null) {
                    with = new FieldSetterDelegation(this.instrumentedType, this.suffix, accessType, fieldDescription);
                } else {
                    with = delegationRecord.with(accessType);
                }
                this.registeredSetters.put(fieldDescription, with);
                return with.getMethod();
            }

            public Default(TypeDescription typeDescription, ClassFileVersion classFileVersion, AuxiliaryType.NamingStrategy namingStrategy, TypeInitializer typeInitializer, ClassFileVersion classFileVersion2, String str) {
                super(typeDescription, classFileVersion);
                this.auxiliaryTypeNamingStrategy = namingStrategy;
                this.typeInitializer = typeInitializer;
                this.auxiliaryClassFileVersion = classFileVersion2;
                this.suffix = str;
                this.registeredAccessorMethods = new HashMap();
                this.registeredGetters = new HashMap();
                this.registeredSetters = new HashMap();
                this.auxiliaryTypes = new HashMap();
                this.registeredFieldCacheEntries = new HashMap();
                this.registeredFieldCacheFields = new HashSet();
                this.fieldCacheCanAppendEntries = true;
            }
        }

        /* loaded from: classes.dex */
        public static class Disabled extends ExtractableView.AbstractBase {
            public Disabled(TypeDescription typeDescription, ClassFileVersion classFileVersion) {
                super(typeDescription, classFileVersion);
            }

            @Override // net.bytebuddy.implementation.Implementation.Context
            public FieldDescription.InDefinedShape cache(StackManipulation stackManipulation, TypeDescription typeDescription) {
                throw new IllegalStateException("Field values caching was disabled: " + typeDescription);
            }

            @Override // net.bytebuddy.implementation.Implementation.Context.ExtractableView
            public void drain(TypeInitializer.Drain drain, ClassVisitor classVisitor, AnnotationValueFilter.Factory factory) {
                drain.apply(classVisitor, TypeInitializer.None.INSTANCE, this);
            }

            @Override // net.bytebuddy.implementation.Implementation.Context.ExtractableView
            public List<DynamicType> getAuxiliaryTypes() {
                return Collections.emptyList();
            }

            @Override // net.bytebuddy.implementation.Implementation.Context.ExtractableView
            public boolean isEnabled() {
                return false;
            }

            @Override // net.bytebuddy.implementation.Implementation.Context
            public TypeDescription register(AuxiliaryType auxiliaryType) {
                throw new IllegalStateException("Registration of auxiliary types was disabled: " + auxiliaryType);
            }

            @Override // net.bytebuddy.implementation.MethodAccessorFactory
            public MethodDescription.InDefinedShape registerAccessorFor(SpecialMethodInvocation specialMethodInvocation, MethodAccessorFactory.AccessType accessType) {
                throw new IllegalStateException("Registration of method accessors was disabled: " + specialMethodInvocation.getMethodDescription());
            }

            @Override // net.bytebuddy.implementation.MethodAccessorFactory
            public MethodDescription.InDefinedShape registerGetterFor(FieldDescription fieldDescription, MethodAccessorFactory.AccessType accessType) {
                throw new IllegalStateException("Registration of field accessor was disabled: " + fieldDescription);
            }

            @Override // net.bytebuddy.implementation.MethodAccessorFactory
            public MethodDescription.InDefinedShape registerSetterFor(FieldDescription fieldDescription, MethodAccessorFactory.AccessType accessType) {
                throw new IllegalStateException("Registration of field accessor was disabled: " + fieldDescription);
            }

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.Implementation.Context.Factory
                public ExtractableView make(TypeDescription typeDescription, AuxiliaryType.NamingStrategy namingStrategy, TypeInitializer typeInitializer, ClassFileVersion classFileVersion, ClassFileVersion classFileVersion2) {
                    if (!typeInitializer.isDefined()) {
                        return new Disabled(typeDescription, classFileVersion);
                    }
                    throw new IllegalStateException("Cannot define type initializer which was explicitly disabled: " + typeInitializer);
                }
            }
        }

        /* loaded from: classes.dex */
        public interface ExtractableView extends Context {
            void drain(TypeInitializer.Drain drain, ClassVisitor classVisitor, AnnotationValueFilter.Factory factory);

            List<DynamicType> getAuxiliaryTypes();

            boolean isEnabled();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class AbstractBase implements ExtractableView {
                public final ClassFileVersion classFileVersion;
                public final TypeDescription instrumentedType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        AbstractBase abstractBase = (AbstractBase) obj;
                        return this.instrumentedType.equals(abstractBase.instrumentedType) && this.classFileVersion.equals(abstractBase.classFileVersion);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.Implementation.Context
                public ClassFileVersion getClassFileVersion() {
                    return this.classFileVersion;
                }

                @Override // net.bytebuddy.implementation.Implementation.Context
                public TypeDescription getInstrumentedType() {
                    return this.instrumentedType;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.classFileVersion.hashCode();
                }

                public AbstractBase(TypeDescription typeDescription, ClassFileVersion classFileVersion) {
                    this.instrumentedType = typeDescription;
                    this.classFileVersion = classFileVersion;
                }
            }
        }

        /* loaded from: classes.dex */
        public interface Factory {
            ExtractableView make(TypeDescription typeDescription, AuxiliaryType.NamingStrategy namingStrategy, TypeInitializer typeInitializer, ClassFileVersion classFileVersion, ClassFileVersion classFileVersion2);
        }

        FieldDescription.InDefinedShape cache(StackManipulation stackManipulation, TypeDescription typeDescription);

        ClassFileVersion getClassFileVersion();

        TypeDescription getInstrumentedType();

        TypeDescription register(AuxiliaryType auxiliaryType);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Simple implements Implementation {
        private static final int NO_ADDITIONAL_VARIABLES = 0;
        private final ByteCodeAppender byteCodeAppender;

        /* loaded from: classes.dex */
        public interface Dispatcher {
            StackManipulation apply(Target target, MethodDescription methodDescription);
        }

        public Simple(ByteCodeAppender... byteCodeAppenderArr) {
            this.byteCodeAppender = new ByteCodeAppender.Compound(byteCodeAppenderArr);
        }

        /* renamed from: of */
        public static Implementation m15077of(Dispatcher dispatcher) {
            return m15076of(dispatcher, 0);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Target target) {
            return this.byteCodeAppender;
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.byteCodeAppender.equals(((Simple) obj).byteCodeAppender);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.byteCodeAppender.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForDispatcher implements Implementation {
            private final int additionalVariableLength;
            private final Dispatcher dispatcher;
            private final InstrumentedType.Prepareable prepareable;

            @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
            /* loaded from: classes.dex */
            public class Appender implements ByteCodeAppender {
                private final Target implementationTarget;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Appender appender = (Appender) obj;
                        return this.implementationTarget.equals(appender.implementationTarget) && ForDispatcher.this.equals(ForDispatcher.this);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.implementationTarget.hashCode()) * 31) + ForDispatcher.this.hashCode();
                }

                public Appender(Target target) {
                    this.implementationTarget = target;
                }

                @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Context context, MethodDescription methodDescription) {
                    return new ByteCodeAppender.Size(ForDispatcher.this.dispatcher.apply(this.implementationTarget, methodDescription).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize() + ForDispatcher.this.additionalVariableLength);
                }
            }

            @Override // net.bytebuddy.implementation.Implementation
            public ByteCodeAppender appender(Target target) {
                return new Appender(target);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForDispatcher forDispatcher = (ForDispatcher) obj;
                    return this.additionalVariableLength == forDispatcher.additionalVariableLength && this.dispatcher.equals(forDispatcher.dispatcher) && this.prepareable.equals(forDispatcher.prepareable);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.dispatcher.hashCode()) * 31) + this.prepareable.hashCode()) * 31) + this.additionalVariableLength;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return this.prepareable.prepare(instrumentedType);
            }

            public ForDispatcher(Dispatcher dispatcher, InstrumentedType.Prepareable prepareable, int i) {
                this.dispatcher = dispatcher;
                this.prepareable = prepareable;
                this.additionalVariableLength = i;
            }
        }

        /* renamed from: of */
        public static Implementation m15076of(Dispatcher dispatcher, int i) {
            return m15074of(dispatcher, InstrumentedType.Prepareable.NoOp.INSTANCE, i);
        }

        public Simple(StackManipulation... stackManipulationArr) {
            this.byteCodeAppender = new ByteCodeAppender.Simple(stackManipulationArr);
        }

        /* renamed from: of */
        public static Implementation m15075of(Dispatcher dispatcher, InstrumentedType.Prepareable prepareable) {
            return m15074of(dispatcher, prepareable, 0);
        }

        /* renamed from: of */
        public static Implementation m15074of(Dispatcher dispatcher, InstrumentedType.Prepareable prepareable, int i) {
            if (i >= 0) {
                return new ForDispatcher(dispatcher, prepareable, i);
            }
            throw new IllegalArgumentException("Additional variable length cannot be negative: " + i);
        }
    }

    /* loaded from: classes.dex */
    public interface SpecialMethodInvocation extends StackManipulation {

        /* loaded from: classes.dex */
        public static abstract class AbstractBase extends StackManipulation.AbstractBase implements SpecialMethodInvocation {
            private transient /* synthetic */ int hashCode;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof SpecialMethodInvocation)) {
                    return false;
                }
                SpecialMethodInvocation specialMethodInvocation = (SpecialMethodInvocation) obj;
                return getMethodDescription().asSignatureToken().equals(specialMethodInvocation.getMethodDescription().asSignatureToken()) && getTypeDescription().equals(specialMethodInvocation.getTypeDescription());
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int hashCode = this.hashCode != 0 ? 0 : (getMethodDescription().asSignatureToken().hashCode() * 31) + getTypeDescription().hashCode();
                if (hashCode == 0) {
                    return this.hashCode;
                }
                this.hashCode = hashCode;
                return hashCode;
            }
        }

        /* loaded from: classes.dex */
        public enum Illegal implements SpecialMethodInvocation {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Context context) {
                throw new IllegalStateException("Cannot implement an undefined method");
            }

            @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
            public MethodDescription getMethodDescription() {
                throw new IllegalStateException("An illegal special method invocation must not be applied");
            }

            @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
            public TypeDescription getTypeDescription() {
                throw new IllegalStateException("An illegal special method invocation must not be applied");
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return false;
            }

            @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
            public SpecialMethodInvocation withCheckedCompatibilityTo(MethodDescription.TypeToken typeToken) {
                return this;
            }
        }

        /* loaded from: classes.dex */
        public static class Simple extends AbstractBase {
            private final MethodDescription methodDescription;
            private final StackManipulation stackManipulation;
            private final TypeDescription typeDescription;

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Context context) {
                return this.stackManipulation.apply(methodVisitor, context);
            }

            @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
            public MethodDescription getMethodDescription() {
                return this.methodDescription;
            }

            @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
            public TypeDescription getTypeDescription() {
                return this.typeDescription;
            }

            @Override // net.bytebuddy.implementation.Implementation.SpecialMethodInvocation
            public SpecialMethodInvocation withCheckedCompatibilityTo(MethodDescription.TypeToken typeToken) {
                if (this.methodDescription.asTypeToken().equals(typeToken)) {
                    return this;
                }
                return Illegal.INSTANCE;
            }

            public Simple(MethodDescription methodDescription, TypeDescription typeDescription, StackManipulation stackManipulation) {
                this.methodDescription = methodDescription;
                this.typeDescription = typeDescription;
                this.stackManipulation = stackManipulation;
            }

            /* renamed from: of */
            public static SpecialMethodInvocation m15071of(MethodDescription methodDescription, TypeDescription typeDescription) {
                StackManipulation special = MethodInvocation.invoke(methodDescription).special(typeDescription);
                if (special.isValid()) {
                    return new Simple(methodDescription, typeDescription, special);
                }
                return Illegal.INSTANCE;
            }
        }

        MethodDescription getMethodDescription();

        TypeDescription getTypeDescription();

        SpecialMethodInvocation withCheckedCompatibilityTo(MethodDescription.TypeToken typeToken);
    }

    /* loaded from: classes.dex */
    public interface Target {

        /* loaded from: classes.dex */
        public interface Factory {
            Target make(TypeDescription typeDescription, MethodGraph.Linked linked, ClassFileVersion classFileVersion);
        }

        TypeDescription getInstrumentedType();

        TypeDefinition getOriginType();

        SpecialMethodInvocation invokeDefault(MethodDescription.SignatureToken signatureToken);

        SpecialMethodInvocation invokeDefault(MethodDescription.SignatureToken signatureToken, TypeDescription typeDescription);

        SpecialMethodInvocation invokeDominant(MethodDescription.SignatureToken signatureToken);

        SpecialMethodInvocation invokeSuper(MethodDescription.SignatureToken signatureToken);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class AbstractBase implements Target {
            public final DefaultMethodInvocation defaultMethodInvocation;
            public final TypeDescription instrumentedType;
            public final MethodGraph.Linked methodGraph;

            /* loaded from: classes.dex */
            public enum DefaultMethodInvocation {
                ENABLED { // from class: net.bytebuddy.implementation.Implementation.Target.AbstractBase.DefaultMethodInvocation.1
                    @Override // net.bytebuddy.implementation.Implementation.Target.AbstractBase.DefaultMethodInvocation
                    public SpecialMethodInvocation apply(MethodGraph.Node node, TypeDescription typeDescription) {
                        if (node.getSort().isUnique()) {
                            return SpecialMethodInvocation.Simple.m15071of(node.getRepresentative(), typeDescription);
                        }
                        return SpecialMethodInvocation.Illegal.INSTANCE;
                    }
                },
                DISABLED { // from class: net.bytebuddy.implementation.Implementation.Target.AbstractBase.DefaultMethodInvocation.2
                    @Override // net.bytebuddy.implementation.Implementation.Target.AbstractBase.DefaultMethodInvocation
                    public SpecialMethodInvocation apply(MethodGraph.Node node, TypeDescription typeDescription) {
                        return SpecialMethodInvocation.Illegal.INSTANCE;
                    }
                };

                /* renamed from: of */
                public static DefaultMethodInvocation m15070of(ClassFileVersion classFileVersion) {
                    return classFileVersion.isAtLeast(ClassFileVersion.JAVA_V8) ? ENABLED : DISABLED;
                }

                public abstract SpecialMethodInvocation apply(MethodGraph.Node node, TypeDescription typeDescription);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    AbstractBase abstractBase = (AbstractBase) obj;
                    return this.defaultMethodInvocation.equals(abstractBase.defaultMethodInvocation) && this.instrumentedType.equals(abstractBase.instrumentedType) && this.methodGraph.equals(abstractBase.methodGraph);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.Implementation.Target
            public TypeDescription getInstrumentedType() {
                return this.instrumentedType;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.methodGraph.hashCode()) * 31) + this.defaultMethodInvocation.hashCode();
            }

            @Override // net.bytebuddy.implementation.Implementation.Target
            public SpecialMethodInvocation invokeDefault(MethodDescription.SignatureToken signatureToken) {
                SpecialMethodInvocation specialMethodInvocation = SpecialMethodInvocation.Illegal.INSTANCE;
                for (TypeDescription typeDescription : this.instrumentedType.getInterfaces().asErasures()) {
                    SpecialMethodInvocation withCheckedCompatibilityTo = invokeDefault(signatureToken, typeDescription).withCheckedCompatibilityTo(signatureToken.asTypeToken());
                    if (withCheckedCompatibilityTo.isValid()) {
                        if (specialMethodInvocation.isValid()) {
                            return SpecialMethodInvocation.Illegal.INSTANCE;
                        }
                        specialMethodInvocation = withCheckedCompatibilityTo;
                    }
                }
                return specialMethodInvocation;
            }

            public AbstractBase(TypeDescription typeDescription, MethodGraph.Linked linked, DefaultMethodInvocation defaultMethodInvocation) {
                this.instrumentedType = typeDescription;
                this.methodGraph = linked;
                this.defaultMethodInvocation = defaultMethodInvocation;
            }

            @Override // net.bytebuddy.implementation.Implementation.Target
            public SpecialMethodInvocation invokeDominant(MethodDescription.SignatureToken signatureToken) {
                SpecialMethodInvocation invokeSuper = invokeSuper(signatureToken);
                if (!invokeSuper.isValid()) {
                    return invokeDefault(signatureToken);
                }
                return invokeSuper;
            }

            @Override // net.bytebuddy.implementation.Implementation.Target
            public SpecialMethodInvocation invokeDefault(MethodDescription.SignatureToken signatureToken, TypeDescription typeDescription) {
                return this.defaultMethodInvocation.apply(this.methodGraph.getInterfaceGraph(typeDescription).locate(signatureToken), typeDescription);
            }
        }
    }

    ByteCodeAppender appender(Target target);
}
