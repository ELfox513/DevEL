package net.bytebuddy.dynamic.scaffold;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.RecordComponentList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.dynamic.TypeResolutionStrategy;
import net.bytebuddy.dynamic.scaffold.MethodRegistry;
import net.bytebuddy.dynamic.scaffold.TypeInitializer;
import net.bytebuddy.dynamic.scaffold.inline.MethodRebaseResolver;
import net.bytebuddy.dynamic.scaffold.inline.RebaseImplementationTarget;
import net.bytebuddy.dynamic.scaffold.subclass.SubclassImplementationTarget;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.attribute.AnnotationAppender;
import net.bytebuddy.implementation.attribute.AnnotationRetention;
import net.bytebuddy.implementation.attribute.AnnotationValueFilter;
import net.bytebuddy.implementation.attribute.FieldAttributeAppender;
import net.bytebuddy.implementation.attribute.MethodAttributeAppender;
import net.bytebuddy.implementation.attribute.RecordComponentAttributeAppender;
import net.bytebuddy.implementation.attribute.TypeAttributeAppender;
import net.bytebuddy.implementation.auxiliary.AuxiliaryType;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.ClassReader;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.ClassWriter;
import net.bytebuddy.jar.asm.ConstantDynamic;
import net.bytebuddy.jar.asm.FieldVisitor;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.RecordComponentVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.jar.asm.TypePath;
import net.bytebuddy.jar.asm.commons.ClassRemapper;
import net.bytebuddy.jar.asm.commons.Remapper;
import net.bytebuddy.jar.asm.commons.SimpleRemapper;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.nullability.UnknownNull;
import net.bytebuddy.utility.visitor.MetadataAwareClassVisitor;
/* loaded from: classes2.dex */
public interface TypeWriter<T> {
    public static final String DUMP_PROPERTY = "net.bytebuddy.dump";

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class Default<S> implements TypeWriter<S> {
        private static final boolean ACCESS_CONTROLLER;
        @MaybeNull
        public static final String DUMP_FOLDER;
        @AlwaysNull
        private static final String NO_REFERENCE;
        public final AnnotationRetention annotationRetention;
        public final AnnotationValueFilter.Factory annotationValueFilterFactory;
        public final AsmVisitorWrapper asmVisitorWrapper;
        public final AuxiliaryType.NamingStrategy auxiliaryTypeNamingStrategy;
        public final List<? extends DynamicType> auxiliaryTypes;
        public final ClassFileVersion classFileVersion;
        public final ClassWriterStrategy classWriterStrategy;
        public final FieldPool fieldPool;
        public final FieldList<FieldDescription.InDefinedShape> fields;
        public final Implementation.Context.Factory implementationContextFactory;
        public final MethodList<?> instrumentedMethods;
        public final TypeDescription instrumentedType;
        public final LoadedTypeInitializer loadedTypeInitializer;
        public final MethodList<?> methods;
        public final RecordComponentPool recordComponentPool;
        public final RecordComponentList<RecordComponentDescription.InDefinedShape> recordComponents;
        public final TypeAttributeAppender typeAttributeAppender;
        public final TypeInitializer typeInitializer;
        public final TypePool typePool;
        public final TypeValidation typeValidation;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ClassDumpAction implements PrivilegedExceptionAction<Void> {
            @AlwaysNull
            private static final Void NOTHING = null;
            private final byte[] binaryRepresentation;
            private final TypeDescription instrumentedType;
            private final boolean original;
            private final long suffix;
            private final String target;

            /* loaded from: classes2.dex */
            public interface Dispatcher {

                /* loaded from: classes2.dex */
                public enum Disabled implements Dispatcher {
                    INSTANCE;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ClassDumpAction.Dispatcher
                    public void dump(TypeDescription typeDescription, boolean z, byte[] bArr) {
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Enabled implements Dispatcher {
                    private final String folder;
                    private final long timestamp;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Enabled enabled = (Enabled) obj;
                            return this.timestamp == enabled.timestamp && this.folder.equals(enabled.folder);
                        }
                        return false;
                    }

                    public int hashCode() {
                        long j = this.timestamp;
                        return (((getClass().hashCode() * 31) + this.folder.hashCode()) * 31) + ((int) (j ^ (j >>> 32)));
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ClassDumpAction.Dispatcher
                    public void dump(TypeDescription typeDescription, boolean z, byte[] bArr) {
                        try {
                            Default.doPrivileged(new ClassDumpAction(this.folder, typeDescription, z, this.timestamp, bArr));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }

                    public Enabled(String str, long j) {
                        this.folder = str;
                        this.timestamp = j;
                    }
                }

                void dump(TypeDescription typeDescription, boolean z, byte[] bArr);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ClassDumpAction classDumpAction = (ClassDumpAction) obj;
                    return this.original == classDumpAction.original && this.suffix == classDumpAction.suffix && this.target.equals(classDumpAction.target) && this.instrumentedType.equals(classDumpAction.instrumentedType) && Arrays.equals(this.binaryRepresentation, classDumpAction.binaryRepresentation);
                }
                return false;
            }

            public int hashCode() {
                long j = this.suffix;
                return (((((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.instrumentedType.hashCode()) * 31) + (this.original ? 1 : 0)) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + Arrays.hashCode(this.binaryRepresentation);
            }

            @Override // java.security.PrivilegedExceptionAction
            public Void run() {
                String str = this.target;
                StringBuilder sb = new StringBuilder();
                sb.append(this.instrumentedType.getName());
                sb.append(this.original ? "-original." : ".");
                sb.append(this.suffix);
                sb.append(".class");
                FileOutputStream fileOutputStream = new FileOutputStream(new File(str, sb.toString()));
                try {
                    fileOutputStream.write(this.binaryRepresentation);
                    return NOTHING;
                } finally {
                    fileOutputStream.close();
                }
            }

            public ClassDumpAction(String str, TypeDescription typeDescription, boolean z, long j, byte[] bArr) {
                this.target = str;
                this.instrumentedType = typeDescription;
                this.original = z;
                this.suffix = j;
                this.binaryRepresentation = bArr;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForCreation<U> extends Default<U> {
            private final MethodPool methodPool;

            public ForCreation(TypeDescription typeDescription, ClassFileVersion classFileVersion, FieldPool fieldPool, MethodPool methodPool, RecordComponentPool recordComponentPool, List<? extends DynamicType> list, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, MethodList<?> methodList2, RecordComponentList<RecordComponentDescription.InDefinedShape> recordComponentList, LoadedTypeInitializer loadedTypeInitializer, TypeInitializer typeInitializer, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool) {
                super(typeDescription, classFileVersion, fieldPool, recordComponentPool, list, fieldList, methodList, methodList2, recordComponentList, loadedTypeInitializer, typeInitializer, typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool);
                this.methodPool = methodPool;
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.methodPool.equals(((ForCreation) obj).methodPool);
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default
            public int hashCode() {
                return (super.hashCode() * 31) + this.methodPool.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default
            @SuppressFBWarnings(justification = "Relying on correlated type properties.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public Default<U>.UnresolvedType create(TypeInitializer typeInitializer, ClassDumpAction.Dispatcher dispatcher) {
                TypeDescription asErasure;
                String str;
                String simpleName;
                int mergeWriter = this.asmVisitorWrapper.mergeWriter(0);
                ClassWriter resolve = this.classWriterStrategy.resolve(mergeWriter, this.typePool);
                Implementation.Context.Factory factory = this.implementationContextFactory;
                TypeDescription typeDescription = this.instrumentedType;
                AuxiliaryType.NamingStrategy namingStrategy = this.auxiliaryTypeNamingStrategy;
                ClassFileVersion classFileVersion = this.classFileVersion;
                Implementation.Context.ExtractableView make = factory.make(typeDescription, namingStrategy, typeInitializer, classFileVersion, classFileVersion);
                ClassVisitor wrap = this.asmVisitorWrapper.wrap(this.instrumentedType, ValidatingClassVisitor.m15112of(resolve, this.typeValidation), make, this.typePool, this.fields, this.methods, mergeWriter, this.asmVisitorWrapper.mergeReader(0));
                int minorMajorVersion = this.classFileVersion.getMinorMajorVersion();
                TypeDescription typeDescription2 = this.instrumentedType;
                int actualModifiers = typeDescription2.getActualModifiers(!typeDescription2.isInterface());
                String internalName = this.instrumentedType.getInternalName();
                String genericSignature = this.instrumentedType.getGenericSignature();
                if (this.instrumentedType.getSuperClass() == null) {
                    asErasure = TypeDescription.OBJECT;
                } else {
                    asErasure = this.instrumentedType.getSuperClass().asErasure();
                }
                wrap.visit(minorMajorVersion, actualModifiers, internalName, genericSignature, asErasure.getInternalName(), this.instrumentedType.getInterfaces().asErasures().toInternalNames());
                if (!this.instrumentedType.isNestHost()) {
                    wrap.visitNestHost(this.instrumentedType.getNestHost().getInternalName());
                }
                MethodDescription.InDefinedShape enclosingMethod = this.instrumentedType.getEnclosingMethod();
                if (enclosingMethod != null) {
                    wrap.visitOuterClass(enclosingMethod.getDeclaringType().getInternalName(), enclosingMethod.getInternalName(), enclosingMethod.getDescriptor());
                } else if (this.instrumentedType.isLocalType() || this.instrumentedType.isAnonymousType()) {
                    wrap.visitOuterClass(this.instrumentedType.getEnclosingType().getInternalName(), Default.NO_REFERENCE, Default.NO_REFERENCE);
                }
                TypeAttributeAppender typeAttributeAppender = this.typeAttributeAppender;
                TypeDescription typeDescription3 = this.instrumentedType;
                typeAttributeAppender.apply(wrap, typeDescription3, this.annotationValueFilterFactory.mo15016on(typeDescription3));
                if (this.instrumentedType.isNestHost()) {
                    for (TypeDescription typeDescription4 : this.instrumentedType.getNestMembers().filter(ElementMatchers.not(ElementMatchers.m14829is(this.instrumentedType)))) {
                        wrap.visitNestMember(typeDescription4.getInternalName());
                    }
                }
                for (TypeDescription typeDescription5 : this.instrumentedType.getPermittedSubtypes()) {
                    wrap.visitPermittedSubclass(typeDescription5.getInternalName());
                }
                TypeDescription declaringType = this.instrumentedType.getDeclaringType();
                if (declaringType != null) {
                    wrap.visitInnerClass(this.instrumentedType.getInternalName(), declaringType.getInternalName(), this.instrumentedType.getSimpleName(), this.instrumentedType.getModifiers());
                } else if (this.instrumentedType.isLocalType()) {
                    wrap.visitInnerClass(this.instrumentedType.getInternalName(), Default.NO_REFERENCE, this.instrumentedType.getSimpleName(), this.instrumentedType.getModifiers());
                } else if (this.instrumentedType.isAnonymousType()) {
                    wrap.visitInnerClass(this.instrumentedType.getInternalName(), Default.NO_REFERENCE, Default.NO_REFERENCE, this.instrumentedType.getModifiers());
                }
                for (TypeDescription typeDescription6 : this.instrumentedType.getDeclaredTypes()) {
                    String internalName2 = typeDescription6.getInternalName();
                    if (typeDescription6.isMemberType()) {
                        str = this.instrumentedType.getInternalName();
                    } else {
                        str = Default.NO_REFERENCE;
                    }
                    if (typeDescription6.isAnonymousType()) {
                        simpleName = Default.NO_REFERENCE;
                    } else {
                        simpleName = typeDescription6.getSimpleName();
                    }
                    wrap.visitInnerClass(internalName2, str, simpleName, typeDescription6.getModifiers());
                }
                for (RecordComponentDescription recordComponentDescription : this.recordComponents) {
                    this.recordComponentPool.target(recordComponentDescription).apply(wrap, this.annotationValueFilterFactory);
                }
                for (FieldDescription fieldDescription : this.fields) {
                    this.fieldPool.target(fieldDescription).apply(wrap, this.annotationValueFilterFactory);
                }
                Iterator<T> it = this.instrumentedMethods.iterator();
                while (it.hasNext()) {
                    this.methodPool.target((MethodDescription) it.next()).apply(wrap, make, this.annotationValueFilterFactory);
                }
                make.drain(new TypeInitializer.Drain.Default(this.instrumentedType, this.methodPool, this.annotationValueFilterFactory), wrap, this.annotationValueFilterFactory);
                wrap.visitEnd();
                return new UnresolvedType(resolve.toByteArray(), make.getAuxiliaryTypes());
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class ForInlining<U> extends Default<U> {
            @AlwaysNull
            private static final AnnotationVisitor IGNORE_ANNOTATION = null;
            @AlwaysNull
            private static final FieldVisitor IGNORE_FIELD = null;
            @AlwaysNull
            private static final MethodVisitor IGNORE_METHOD = null;
            @AlwaysNull
            private static final RecordComponentVisitor IGNORE_RECORD_COMPONENT = null;
            public final ClassFileLocator classFileLocator;
            public final TypeDescription originalType;

            /* loaded from: classes2.dex */
            public static class ContextRegistry {
                @UnknownNull
                private Implementation.Context.ExtractableView implementationContext;

                @SuppressFBWarnings(justification = "Lazy value definition is intended.", value = {"UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"})
                public List<DynamicType> getAuxiliaryTypes() {
                    return this.implementationContext.getAuxiliaryTypes();
                }

                public void setImplementationContext(Implementation.Context.ExtractableView extractableView) {
                    this.implementationContext = extractableView;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class WithFullProcessing<V> extends ForInlining<V> {
                private static final Object[] EMPTY = new Object[0];
                private final Implementation.Target.Factory implementationTargetFactory;
                private final MethodRebaseResolver methodRebaseResolver;
                private final MethodRegistry.Prepared methodRegistry;

                /* loaded from: classes2.dex */
                public interface InitializationHandler {

                    /* loaded from: classes2.dex */
                    public static abstract class Appending extends MethodVisitor implements InitializationHandler, TypeInitializer.Drain {
                        public final AnnotationValueFilter.Factory annotationValueFilterFactory;
                        public final FrameWriter frameWriter;
                        public final TypeDescription instrumentedType;
                        public int localVariableLength;
                        public final MethodPool.Record record;
                        public int stackSize;

                        /* loaded from: classes2.dex */
                        public interface FrameWriter {
                            public static final Object[] EMPTY = new Object[0];

                            /* loaded from: classes2.dex */
                            public static class Active implements FrameWriter {
                                private int currentLocalVariableLength;

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.FrameWriter
                                public void onFrame(int i, int i2) {
                                    if (i != -1 && i != 0) {
                                        if (i != 1) {
                                            if (i != 2) {
                                                if (i != 3 && i != 4) {
                                                    throw new IllegalStateException("Unexpected frame type: " + i);
                                                }
                                                return;
                                            }
                                            this.currentLocalVariableLength -= i2;
                                            return;
                                        }
                                        this.currentLocalVariableLength += i2;
                                        return;
                                    }
                                    this.currentLocalVariableLength = i2;
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.FrameWriter
                                public void emitFrame(MethodVisitor methodVisitor) {
                                    int i = this.currentLocalVariableLength;
                                    if (i == 0) {
                                        Object[] objArr = FrameWriter.EMPTY;
                                        methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
                                    } else if (i > 3) {
                                        Object[] objArr2 = FrameWriter.EMPTY;
                                        methodVisitor.visitFrame(0, objArr2.length, objArr2, objArr2.length, objArr2);
                                    } else {
                                        Object[] objArr3 = FrameWriter.EMPTY;
                                        methodVisitor.visitFrame(2, i, objArr3, objArr3.length, objArr3);
                                    }
                                    methodVisitor.visitInsn(0);
                                    this.currentLocalVariableLength = 0;
                                }
                            }

                            /* loaded from: classes2.dex */
                            public enum Expanding implements FrameWriter {
                                INSTANCE;

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.FrameWriter
                                public void onFrame(int i, int i2) {
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.FrameWriter
                                public void emitFrame(MethodVisitor methodVisitor) {
                                    Object[] objArr = FrameWriter.EMPTY;
                                    methodVisitor.visitFrame(-1, objArr.length, objArr, objArr.length, objArr);
                                    methodVisitor.visitInsn(0);
                                }
                            }

                            /* loaded from: classes2.dex */
                            public enum NoOp implements FrameWriter {
                                INSTANCE;

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.FrameWriter
                                public void emitFrame(MethodVisitor methodVisitor) {
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.FrameWriter
                                public void onFrame(int i, int i2) {
                                }
                            }

                            void emitFrame(MethodVisitor methodVisitor);

                            void onFrame(int i, int i2);
                        }

                        /* loaded from: classes2.dex */
                        public static abstract class WithDrain extends Appending {
                            public final Label appended;
                            public final Label original;

                            /* loaded from: classes2.dex */
                            public static class WithActiveRecord extends WithDrain {
                                private final Label label;

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.WithDrain
                                public void onAfterComplete(Implementation.Context context) {
                                    this.f19219mv.visitLabel(this.label);
                                    this.frameWriter.emitFrame(this.f19219mv);
                                    ByteCodeAppender.Size applyCode = this.record.applyCode(this.f19219mv, context);
                                    this.stackSize = Math.max(this.stackSize, applyCode.getOperandStackSize());
                                    this.localVariableLength = Math.max(this.localVariableLength, applyCode.getLocalVariableSize());
                                }

                                @Override // net.bytebuddy.jar.asm.MethodVisitor
                                public void visitInsn(int i) {
                                    if (i == 177) {
                                        this.f19219mv.visitJumpInsn(167, this.label);
                                    } else {
                                        super.visitInsn(i);
                                    }
                                }

                                public WithActiveRecord(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                                    super(methodVisitor, typeDescription, record, factory, z, z2);
                                    this.label = new Label();
                                }
                            }

                            /* loaded from: classes2.dex */
                            public static class WithoutActiveRecord extends WithDrain {
                                public WithoutActiveRecord(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                                    super(methodVisitor, typeDescription, record, factory, z, z2);
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending.WithDrain
                                public void onAfterComplete(Implementation.Context context) {
                                }
                            }

                            public abstract void onAfterComplete(Implementation.Context context);

                            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending
                            public void onComplete(Implementation.Context context) {
                                this.f19219mv.visitJumpInsn(167, this.original);
                                onAfterComplete(context);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending
                            public void onStart() {
                                this.f19219mv.visitJumpInsn(167, this.appended);
                                this.f19219mv.visitLabel(this.original);
                                this.frameWriter.emitFrame(this.f19219mv);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending, net.bytebuddy.jar.asm.MethodVisitor
                            public void visitEnd() {
                                this.f19219mv.visitLabel(this.appended);
                                this.frameWriter.emitFrame(this.f19219mv);
                            }

                            public WithDrain(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                                super(methodVisitor, typeDescription, record, factory, z, z2);
                                this.appended = new Label();
                                this.original = new Label();
                            }
                        }

                        /* loaded from: classes2.dex */
                        public static abstract class WithoutDrain extends Appending {

                            /* loaded from: classes2.dex */
                            public static class WithActiveRecord extends WithoutDrain {
                                private final Label label;

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending
                                public void onComplete(Implementation.Context context) {
                                    this.f19219mv.visitLabel(this.label);
                                    this.frameWriter.emitFrame(this.f19219mv);
                                    ByteCodeAppender.Size applyCode = this.record.applyCode(this.f19219mv, context);
                                    this.stackSize = Math.max(this.stackSize, applyCode.getOperandStackSize());
                                    this.localVariableLength = Math.max(this.localVariableLength, applyCode.getLocalVariableSize());
                                }

                                @Override // net.bytebuddy.jar.asm.MethodVisitor
                                public void visitInsn(int i) {
                                    if (i == 177) {
                                        this.f19219mv.visitJumpInsn(167, this.label);
                                    } else {
                                        super.visitInsn(i);
                                    }
                                }

                                public WithActiveRecord(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                                    super(methodVisitor, typeDescription, record, factory, z, z2);
                                    this.label = new Label();
                                }
                            }

                            /* loaded from: classes2.dex */
                            public static class WithoutActiveRecord extends WithoutDrain {
                                public WithoutActiveRecord(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory) {
                                    super(methodVisitor, typeDescription, record, factory, false, false);
                                }

                                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending
                                public void onComplete(Implementation.Context context) {
                                }
                            }

                            public WithoutDrain(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                                super(methodVisitor, typeDescription, record, factory, z, z2);
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending
                            public void onStart() {
                            }

                            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler.Appending, net.bytebuddy.jar.asm.MethodVisitor
                            public void visitEnd() {
                            }
                        }

                        public abstract void onComplete(Implementation.Context context);

                        public abstract void onStart();

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public abstract void visitEnd();

                        public Appending(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool.Record record, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                            super(OpenedClassReader.ASM_API, methodVisitor);
                            this.instrumentedType = typeDescription;
                            this.record = record;
                            this.annotationValueFilterFactory = factory;
                            if (!z) {
                                this.frameWriter = FrameWriter.NoOp.INSTANCE;
                            } else if (z2) {
                                this.frameWriter = FrameWriter.Expanding.INSTANCE;
                            } else {
                                this.frameWriter = new FrameWriter.Active();
                            }
                        }

                        /* renamed from: of */
                        public static InitializationHandler m15118of(boolean z, MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool methodPool, AnnotationValueFilter.Factory factory, boolean z2, boolean z3) {
                            if (z) {
                                return withDrain(methodVisitor, typeDescription, methodPool, factory, z2, z3);
                            }
                            return withoutDrain(methodVisitor, typeDescription, methodPool, factory, z2, z3);
                        }

                        private static WithDrain withDrain(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool methodPool, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                            MethodPool.Record target = methodPool.target(new MethodDescription.Latent.TypeInitializer(typeDescription));
                            if (target.getSort().isImplemented()) {
                                return new WithDrain.WithActiveRecord(methodVisitor, typeDescription, target, factory, z, z2);
                            }
                            return new WithDrain.WithoutActiveRecord(methodVisitor, typeDescription, target, factory, z, z2);
                        }

                        private static WithoutDrain withoutDrain(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodPool methodPool, AnnotationValueFilter.Factory factory, boolean z, boolean z2) {
                            MethodPool.Record target = methodPool.target(new MethodDescription.Latent.TypeInitializer(typeDescription));
                            if (target.getSort().isImplemented()) {
                                return new WithoutDrain.WithActiveRecord(methodVisitor, typeDescription, target, factory, z, z2);
                            }
                            return new WithoutDrain.WithoutActiveRecord(methodVisitor, typeDescription, target, factory);
                        }

                        @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer.Drain
                        public void apply(ClassVisitor classVisitor, TypeInitializer typeInitializer, Implementation.Context context) {
                            ByteCodeAppender.Size apply = typeInitializer.apply(this.f19219mv, context, new MethodDescription.Latent.TypeInitializer(this.instrumentedType));
                            this.stackSize = Math.max(this.stackSize, apply.getOperandStackSize());
                            this.localVariableLength = Math.max(this.localVariableLength, apply.getLocalVariableSize());
                            onComplete(context);
                        }

                        @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler
                        public void complete(ClassVisitor classVisitor, Implementation.Context.ExtractableView extractableView) {
                            extractableView.drain(this, classVisitor, this.annotationValueFilterFactory);
                            this.f19219mv.visitMaxs(this.stackSize, this.localVariableLength);
                            this.f19219mv.visitEnd();
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitCode() {
                            this.record.applyAttributes(this.f19219mv, this.annotationValueFilterFactory);
                            super.visitCode();
                            onStart();
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitMaxs(int i, int i2) {
                            this.stackSize = i;
                            this.localVariableLength = i2;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitFrame(int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                            super.visitFrame(i, i2, objArr, i3, objArr2);
                            this.frameWriter.onFrame(i, i2);
                        }
                    }

                    /* loaded from: classes2.dex */
                    public static class Creating extends TypeInitializer.Drain.Default implements InitializationHandler {
                        public Creating(TypeDescription typeDescription, MethodPool methodPool, AnnotationValueFilter.Factory factory) {
                            super(typeDescription, methodPool, factory);
                        }

                        @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining.WithFullProcessing.InitializationHandler
                        public void complete(ClassVisitor classVisitor, Implementation.Context.ExtractableView extractableView) {
                            extractableView.drain(this, classVisitor, this.annotationValueFilterFactory);
                        }
                    }

                    void complete(ClassVisitor classVisitor, Implementation.Context.ExtractableView extractableView);
                }

                /* loaded from: classes2.dex */
                public static class OpenedClassRemapper extends ClassRemapper {
                    public OpenedClassRemapper(ClassVisitor classVisitor, Remapper remapper) {
                        super(OpenedClassReader.ASM_API, classVisitor, remapper);
                    }
                }

                @SuppressFBWarnings(justification = "Field access order is implied by ASM.", value = {"UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"})
                /* loaded from: classes2.dex */
                public class RedefinitionClassVisitor extends MetadataAwareClassVisitor {
                    private final ContextRegistry contextRegistry;
                    private final LinkedHashMap<SignatureKey, FieldDescription> declarableFields;
                    private final LinkedHashMap<SignatureKey, MethodDescription> declarableMethods;
                    private final LinkedHashMap<String, RecordComponentDescription> declarableRecordComponents;
                    private final LinkedHashMap<String, TypeDescription> declaredTypes;
                    @UnknownNull
                    private Implementation.Context.ExtractableView implementationContext;
                    @UnknownNull
                    private InitializationHandler initializationHandler;
                    @UnknownNull
                    private MethodPool methodPool;
                    private final Set<String> nestMembers;
                    @MaybeNull
                    private final Set<String> permittedSubclasses;
                    private final int readerFlags;
                    private boolean retainDeprecationModifiers;
                    private final TypeInitializer typeInitializer;
                    private final int writerFlags;

                    /* loaded from: classes2.dex */
                    public class AttributeObtainingFieldVisitor extends FieldVisitor {
                        private final FieldPool.Record record;

                        public AttributeObtainingFieldVisitor(FieldVisitor fieldVisitor, FieldPool.Record record) {
                            super(OpenedClassReader.ASM_API, fieldVisitor);
                            this.record = record;
                        }

                        @Override // net.bytebuddy.jar.asm.FieldVisitor
                        @MaybeNull
                        public AnnotationVisitor visitAnnotation(String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitAnnotation(str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.FieldVisitor
                        public void visitEnd() {
                            this.record.apply(this.f19200fv, WithFullProcessing.this.annotationValueFilterFactory);
                            super.visitEnd();
                        }

                        @Override // net.bytebuddy.jar.asm.FieldVisitor
                        @MaybeNull
                        public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitTypeAnnotation(i, typePath, str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }
                    }

                    /* loaded from: classes2.dex */
                    public class AttributeObtainingMethodVisitor extends MethodVisitor {
                        private final MethodVisitor actualMethodVisitor;
                        private final MethodPool.Record record;

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitAnnotationDefault() {
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitCode() {
                            this.f19219mv = ForInlining.IGNORE_METHOD;
                        }

                        public AttributeObtainingMethodVisitor(MethodVisitor methodVisitor, MethodPool.Record record) {
                            super(OpenedClassReader.ASM_API, methodVisitor);
                            this.actualMethodVisitor = methodVisitor;
                            this.record = record;
                            record.applyHead(methodVisitor);
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitAnnotableParameterCount(int i, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                super.visitAnnotableParameterCount(i, z);
                            }
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitAnnotation(String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitAnnotation(str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitEnd() {
                            this.record.applyBody(this.actualMethodVisitor, RedefinitionClassVisitor.this.implementationContext, WithFullProcessing.this.annotationValueFilterFactory);
                            this.actualMethodVisitor.visitEnd();
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitParameterAnnotation(i, str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitTypeAnnotation(i, typePath, str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }
                    }

                    /* loaded from: classes2.dex */
                    public class AttributeObtainingRecordComponentVisitor extends RecordComponentVisitor {
                        private final RecordComponentPool.Record record;

                        public AttributeObtainingRecordComponentVisitor(RecordComponentVisitor recordComponentVisitor, RecordComponentPool.Record record) {
                            super(OpenedClassReader.ASM_API, recordComponentVisitor);
                            this.record = record;
                        }

                        @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
                        public AnnotationVisitor visitAnnotation(String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitAnnotation(str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
                        public void visitEnd() {
                            this.record.apply(getDelegate(), WithFullProcessing.this.annotationValueFilterFactory);
                            super.visitEnd();
                        }

                        @Override // net.bytebuddy.jar.asm.RecordComponentVisitor
                        public AnnotationVisitor visitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitTypeAnnotation(i, typePath, str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }
                    }

                    /* loaded from: classes2.dex */
                    public class CodePreservingMethodVisitor extends MethodVisitor {
                        private final MethodVisitor actualMethodVisitor;
                        private final MethodPool.Record record;
                        private final MethodRebaseResolver.Resolution resolution;

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitAnnotationDefault() {
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitMaxs(int i, int i2) {
                            super.visitMaxs(i, Math.max(i2, this.resolution.getResolvedMethod().getStackSize()));
                        }

                        public CodePreservingMethodVisitor(MethodVisitor methodVisitor, MethodPool.Record record, MethodRebaseResolver.Resolution resolution) {
                            super(OpenedClassReader.ASM_API, methodVisitor);
                            this.actualMethodVisitor = methodVisitor;
                            this.record = record;
                            this.resolution = resolution;
                            record.applyHead(methodVisitor);
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitAnnotableParameterCount(int i, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                super.visitAnnotableParameterCount(i, z);
                            }
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitAnnotation(String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitAnnotation(str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitCode() {
                            int i;
                            this.record.applyBody(this.actualMethodVisitor, RedefinitionClassVisitor.this.implementationContext, WithFullProcessing.this.annotationValueFilterFactory);
                            this.actualMethodVisitor.visitEnd();
                            if (this.resolution.isRebased()) {
                                this.f19219mv = RedefinitionClassVisitor.this.f19177cv.visitMethod(this.resolution.getResolvedMethod().getActualModifiers(), this.resolution.getResolvedMethod().getInternalName(), this.resolution.getResolvedMethod().getDescriptor(), this.resolution.getResolvedMethod().getGenericSignature(), this.resolution.getResolvedMethod().getExceptionTypes().asErasures().toInternalNames());
                                super.visitCode();
                                if (!this.resolution.getAppendedParameters().isEmpty() && (RedefinitionClassVisitor.this.writerFlags & 2) == 0 && RedefinitionClassVisitor.this.implementationContext.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V6)) {
                                    if ((RedefinitionClassVisitor.this.readerFlags & 8) == 0 && this.resolution.getAppendedParameters().size() < 4) {
                                        super.visitFrame(2, this.resolution.getAppendedParameters().size(), WithFullProcessing.EMPTY, WithFullProcessing.EMPTY.length, WithFullProcessing.EMPTY);
                                    } else {
                                        int size = (this.resolution.getResolvedMethod().getParameters().size() - this.resolution.getAppendedParameters().size()) + 1;
                                        Object[] objArr = new Object[size];
                                        objArr[0] = Opcodes.UNINITIALIZED_THIS;
                                        for (int i2 = 1; i2 < size; i2++) {
                                            TypeDescription.Generic type = ((ParameterDescription.InDefinedShape) this.resolution.getResolvedMethod().getParameters().get(i2 - 1)).getType();
                                            if (!type.represents(Boolean.TYPE) && !type.represents(Byte.TYPE) && !type.represents(Short.TYPE) && !type.represents(Character.TYPE) && !type.represents(Integer.TYPE)) {
                                                if (type.represents(Long.TYPE)) {
                                                    objArr[i2] = Opcodes.LONG;
                                                } else if (type.represents(Float.TYPE)) {
                                                    objArr[i2] = Opcodes.FLOAT;
                                                } else if (type.represents(Double.TYPE)) {
                                                    objArr[i2] = Opcodes.DOUBLE;
                                                } else {
                                                    objArr[i2] = type.asErasure().getInternalName();
                                                }
                                            } else {
                                                objArr[i2] = Opcodes.INTEGER;
                                            }
                                        }
                                        if ((RedefinitionClassVisitor.this.readerFlags & 8) == 0) {
                                            i = 0;
                                        } else {
                                            i = -1;
                                        }
                                        super.visitFrame(i, size, objArr, WithFullProcessing.EMPTY.length, WithFullProcessing.EMPTY);
                                    }
                                    super.visitInsn(0);
                                    return;
                                }
                                return;
                            }
                            this.f19219mv = ForInlining.IGNORE_METHOD;
                            super.visitCode();
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitParameterAnnotation(i, str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                            if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                                return super.visitTypeAnnotation(i, typePath, str, z);
                            }
                            return ForInlining.IGNORE_ANNOTATION;
                        }
                    }

                    private int resolveDeprecationModifiers(int i) {
                        return (!this.retainDeprecationModifiers || (i & 131072) == 0) ? 0 : 131072;
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onAfterAttributes() {
                        WithFullProcessing withFullProcessing = WithFullProcessing.this;
                        TypeAttributeAppender typeAttributeAppender = withFullProcessing.typeAttributeAppender;
                        ClassVisitor classVisitor = this.f19177cv;
                        TypeDescription typeDescription = withFullProcessing.instrumentedType;
                        typeAttributeAppender.apply(classVisitor, typeDescription, withFullProcessing.annotationValueFilterFactory.mo15016on(typeDescription));
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitNestHost(String str) {
                        onNestHost();
                    }

                    @MaybeNull
                    public RecordComponentVisitor redefine(RecordComponentPool.Record record, @MaybeNull String str) {
                        RecordComponentDescription recordComponent = record.getRecordComponent();
                        ClassVisitor classVisitor = this.f19177cv;
                        String actualName = recordComponent.getActualName();
                        String descriptor = recordComponent.getDescriptor();
                        if (!TypeDescription.AbstractBase.RAW_TYPES) {
                            str = recordComponent.getGenericSignature();
                        }
                        RecordComponentVisitor visitRecordComponent = classVisitor.visitRecordComponent(actualName, descriptor, str);
                        return visitRecordComponent == null ? ForInlining.IGNORE_RECORD_COMPONENT : new AttributeObtainingRecordComponentVisitor(visitRecordComponent, record);
                    }

                    public RedefinitionClassVisitor(ClassVisitor classVisitor, TypeInitializer typeInitializer, ContextRegistry contextRegistry, int i, int i2) {
                        super(OpenedClassReader.ASM_API, classVisitor);
                        this.typeInitializer = typeInitializer;
                        this.contextRegistry = contextRegistry;
                        this.writerFlags = i;
                        this.readerFlags = i2;
                        double size = WithFullProcessing.this.fields.size();
                        Double.isNaN(size);
                        this.declarableFields = new LinkedHashMap<>((int) Math.ceil(size / 0.75d));
                        for (FieldDescription fieldDescription : WithFullProcessing.this.fields) {
                            this.declarableFields.put(new SignatureKey(fieldDescription.getInternalName(), fieldDescription.getDescriptor()), fieldDescription);
                        }
                        double size2 = WithFullProcessing.this.instrumentedMethods.size();
                        Double.isNaN(size2);
                        this.declarableMethods = new LinkedHashMap<>((int) Math.ceil(size2 / 0.75d));
                        Iterator<T> it = WithFullProcessing.this.instrumentedMethods.iterator();
                        while (it.hasNext()) {
                            MethodDescription methodDescription = (MethodDescription) it.next();
                            this.declarableMethods.put(new SignatureKey(methodDescription.getInternalName(), methodDescription.getDescriptor()), methodDescription);
                        }
                        double size3 = WithFullProcessing.this.recordComponents.size();
                        Double.isNaN(size3);
                        this.declarableRecordComponents = new LinkedHashMap<>((int) Math.ceil(size3 / 0.75d));
                        for (RecordComponentDescription recordComponentDescription : WithFullProcessing.this.recordComponents) {
                            this.declarableRecordComponents.put(recordComponentDescription.getActualName(), recordComponentDescription);
                        }
                        if (WithFullProcessing.this.instrumentedType.isNestHost()) {
                            double size4 = WithFullProcessing.this.instrumentedType.getNestMembers().size();
                            Double.isNaN(size4);
                            this.nestMembers = new LinkedHashSet((int) Math.ceil(size4 / 0.75d));
                            for (TypeDescription typeDescription : WithFullProcessing.this.instrumentedType.getNestMembers().filter(ElementMatchers.not(ElementMatchers.m14829is(WithFullProcessing.this.instrumentedType)))) {
                                this.nestMembers.add(typeDescription.getInternalName());
                            }
                        } else {
                            this.nestMembers = Collections.emptySet();
                        }
                        double size5 = WithFullProcessing.this.instrumentedType.getDeclaredTypes().size();
                        Double.isNaN(size5);
                        this.declaredTypes = new LinkedHashMap<>((int) Math.ceil(size5 / 0.75d));
                        for (TypeDescription typeDescription2 : WithFullProcessing.this.instrumentedType.getDeclaredTypes()) {
                            this.declaredTypes.put(typeDescription2.getInternalName(), typeDescription2);
                        }
                        if (WithFullProcessing.this.instrumentedType.isSealed()) {
                            double size6 = WithFullProcessing.this.instrumentedType.getPermittedSubtypes().size();
                            Double.isNaN(size6);
                            this.permittedSubclasses = new LinkedHashSet((int) Math.ceil(size6 / 0.75d));
                            for (TypeDescription typeDescription3 : WithFullProcessing.this.instrumentedType.getPermittedSubtypes()) {
                                this.permittedSubclasses.add(typeDescription3.getInternalName());
                            }
                            return;
                        }
                        this.permittedSubclasses = null;
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onNestHost() {
                        if (!WithFullProcessing.this.instrumentedType.isNestHost()) {
                            this.f19177cv.visitNestHost(WithFullProcessing.this.instrumentedType.getNestHost().getInternalName());
                        }
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @SuppressFBWarnings(justification = "Relying on correlated type properties.", value = {"NP_NULL_ON_SOME_PATH"})
                    public void onOuterType() {
                        MethodDescription.InDefinedShape enclosingMethod = WithFullProcessing.this.instrumentedType.getEnclosingMethod();
                        if (enclosingMethod != null) {
                            this.f19177cv.visitOuterClass(enclosingMethod.getDeclaringType().getInternalName(), enclosingMethod.getInternalName(), enclosingMethod.getDescriptor());
                        } else if (WithFullProcessing.this.instrumentedType.isLocalType() || WithFullProcessing.this.instrumentedType.isAnonymousType()) {
                            this.f19177cv.visitOuterClass(WithFullProcessing.this.instrumentedType.getEnclosingType().getInternalName(), Default.NO_REFERENCE, Default.NO_REFERENCE);
                        }
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public AnnotationVisitor onVisitAnnotation(String str, boolean z) {
                        if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                            return this.f19177cv.visitAnnotation(str, z);
                        }
                        return ForInlining.IGNORE_ANNOTATION;
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitEnd() {
                        String str;
                        String simpleName;
                        for (String str2 : this.nestMembers) {
                            this.f19177cv.visitNestMember(str2);
                        }
                        Set<String> set = this.permittedSubclasses;
                        if (set != null) {
                            for (String str3 : set) {
                                this.f19177cv.visitPermittedSubclass(str3);
                            }
                        }
                        TypeDescription declaringType = WithFullProcessing.this.instrumentedType.getDeclaringType();
                        if (declaringType != null) {
                            this.f19177cv.visitInnerClass(WithFullProcessing.this.instrumentedType.getInternalName(), declaringType.getInternalName(), WithFullProcessing.this.instrumentedType.getSimpleName(), WithFullProcessing.this.instrumentedType.getModifiers());
                        } else if (WithFullProcessing.this.instrumentedType.isLocalType()) {
                            this.f19177cv.visitInnerClass(WithFullProcessing.this.instrumentedType.getInternalName(), Default.NO_REFERENCE, WithFullProcessing.this.instrumentedType.getSimpleName(), WithFullProcessing.this.instrumentedType.getModifiers());
                        } else if (WithFullProcessing.this.instrumentedType.isAnonymousType()) {
                            this.f19177cv.visitInnerClass(WithFullProcessing.this.instrumentedType.getInternalName(), Default.NO_REFERENCE, Default.NO_REFERENCE, WithFullProcessing.this.instrumentedType.getModifiers());
                        }
                        for (TypeDescription typeDescription : this.declaredTypes.values()) {
                            ClassVisitor classVisitor = this.f19177cv;
                            String internalName = typeDescription.getInternalName();
                            if (typeDescription.isMemberType()) {
                                str = WithFullProcessing.this.instrumentedType.getInternalName();
                            } else {
                                str = Default.NO_REFERENCE;
                            }
                            if (typeDescription.isAnonymousType()) {
                                simpleName = Default.NO_REFERENCE;
                            } else {
                                simpleName = typeDescription.getSimpleName();
                            }
                            classVisitor.visitInnerClass(internalName, str, simpleName, typeDescription.getModifiers());
                        }
                        for (RecordComponentDescription recordComponentDescription : this.declarableRecordComponents.values()) {
                            WithFullProcessing.this.recordComponentPool.target(recordComponentDescription).apply(this.f19177cv, WithFullProcessing.this.annotationValueFilterFactory);
                        }
                        for (FieldDescription fieldDescription : this.declarableFields.values()) {
                            WithFullProcessing.this.fieldPool.target(fieldDescription).apply(this.f19177cv, WithFullProcessing.this.annotationValueFilterFactory);
                        }
                        for (MethodDescription methodDescription : this.declarableMethods.values()) {
                            this.methodPool.target(methodDescription).apply(this.f19177cv, this.implementationContext, WithFullProcessing.this.annotationValueFilterFactory);
                        }
                        this.initializationHandler.complete(this.f19177cv, this.implementationContext);
                        this.f19177cv.visitEnd();
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public FieldVisitor onVisitField(int i, String str, String str2, @MaybeNull String str3, @MaybeNull Object obj) {
                        FieldDescription remove = this.declarableFields.remove(new SignatureKey(str, str2));
                        if (remove != null) {
                            FieldPool.Record target = WithFullProcessing.this.fieldPool.target(remove);
                            if (!target.isImplicit()) {
                                return redefine(target, obj, i, str3);
                            }
                        }
                        return this.f19177cv.visitField(i, str, str2, str3, obj);
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitInnerClass(String str, @MaybeNull String str2, @MaybeNull String str3, int i) {
                        String internalName;
                        String simpleName;
                        if (!str.equals(WithFullProcessing.this.instrumentedType.getInternalName())) {
                            TypeDescription remove = this.declaredTypes.remove(str);
                            if (remove == null) {
                                this.f19177cv.visitInnerClass(str, str2, str3, i);
                                return;
                            }
                            ClassVisitor classVisitor = this.f19177cv;
                            if (!remove.isMemberType() && (str2 == null || str3 != null || !remove.isAnonymousType())) {
                                internalName = Default.NO_REFERENCE;
                            } else {
                                internalName = WithFullProcessing.this.instrumentedType.getInternalName();
                            }
                            if (remove.isAnonymousType()) {
                                simpleName = Default.NO_REFERENCE;
                            } else {
                                simpleName = remove.getSimpleName();
                            }
                            classVisitor.visitInnerClass(str, internalName, simpleName, remove.getModifiers());
                        }
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public MethodVisitor onVisitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                        String str4;
                        boolean z;
                        boolean z2;
                        boolean z3 = true;
                        if (str.equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME)) {
                            MethodVisitor visitMethod = this.f19177cv.visitMethod(i, str, str2, str3, strArr);
                            if (visitMethod == null) {
                                return ForInlining.IGNORE_METHOD;
                            }
                            boolean isEnabled = this.implementationContext.isEnabled();
                            WithFullProcessing withFullProcessing = WithFullProcessing.this;
                            TypeDescription typeDescription = withFullProcessing.instrumentedType;
                            MethodPool methodPool = this.methodPool;
                            AnnotationValueFilter.Factory factory = withFullProcessing.annotationValueFilterFactory;
                            if ((this.writerFlags & 2) == 0 && this.implementationContext.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V6)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if ((this.readerFlags & 8) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            InitializationHandler m15118of = InitializationHandler.Appending.m15118of(isEnabled, visitMethod, typeDescription, methodPool, factory, z, z2);
                            this.initializationHandler = m15118of;
                            return (MethodVisitor) m15118of;
                        }
                        MethodDescription remove = this.declarableMethods.remove(new SignatureKey(str, str2));
                        if (remove == null) {
                            return this.f19177cv.visitMethod(i, str, str2, str3, strArr);
                        }
                        if ((i & 1024) != 0) {
                            str4 = str3;
                        } else {
                            str4 = str3;
                            z3 = false;
                        }
                        return redefine(remove, z3, i, str4);
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitNestMember(String str) {
                        if (WithFullProcessing.this.instrumentedType.isNestHost() && this.nestMembers.remove(str)) {
                            this.f19177cv.visitNestMember(str);
                        }
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitPermittedSubclass(String str) {
                        Set<String> set = this.permittedSubclasses;
                        if (set != null && set.remove(str)) {
                            this.f19177cv.visitPermittedSubclass(str);
                        }
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public RecordComponentVisitor onVisitRecordComponent(String str, String str2, @MaybeNull String str3) {
                        RecordComponentDescription remove = this.declarableRecordComponents.remove(str);
                        if (remove != null) {
                            RecordComponentPool.Record target = WithFullProcessing.this.recordComponentPool.target(remove);
                            if (!target.isImplicit()) {
                                return redefine(target, str3);
                            }
                        }
                        return this.f19177cv.visitRecordComponent(str, str2, str3);
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public AnnotationVisitor onVisitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
                        if (WithFullProcessing.this.annotationRetention.isEnabled()) {
                            return this.f19177cv.visitTypeAnnotation(i, typePath, str, z);
                        }
                        return ForInlining.IGNORE_ANNOTATION;
                    }

                    @Override // net.bytebuddy.jar.asm.ClassVisitor
                    @SuppressFBWarnings(justification = "Relying on correlated type properties.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
                        boolean z;
                        String genericSignature;
                        String internalName;
                        ClassFileVersion ofMinorMajor = ClassFileVersion.ofMinorMajor(i);
                        MethodRegistry.Compiled compile = WithFullProcessing.this.methodRegistry.compile(WithFullProcessing.this.implementationTargetFactory, ofMinorMajor);
                        this.methodPool = compile;
                        WithFullProcessing withFullProcessing = WithFullProcessing.this;
                        this.initializationHandler = new InitializationHandler.Creating(withFullProcessing.instrumentedType, compile, withFullProcessing.annotationValueFilterFactory);
                        WithFullProcessing withFullProcessing2 = WithFullProcessing.this;
                        this.implementationContext = withFullProcessing2.implementationContextFactory.make(withFullProcessing2.instrumentedType, withFullProcessing2.auxiliaryTypeNamingStrategy, this.typeInitializer, ofMinorMajor, withFullProcessing2.classFileVersion);
                        this.retainDeprecationModifiers = ofMinorMajor.isLessThan(ClassFileVersion.JAVA_V5);
                        this.contextRegistry.setImplementationContext(this.implementationContext);
                        WithFullProcessing withFullProcessing3 = WithFullProcessing.this;
                        ClassVisitor wrap = withFullProcessing3.asmVisitorWrapper.wrap(withFullProcessing3.instrumentedType, this.f19177cv, this.implementationContext, withFullProcessing3.typePool, withFullProcessing3.fields, withFullProcessing3.methods, this.writerFlags, this.readerFlags);
                        this.f19177cv = wrap;
                        TypeDescription typeDescription = WithFullProcessing.this.instrumentedType;
                        int i3 = 0;
                        if ((i2 & 32) != 0 && !typeDescription.isInterface()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int actualModifiers = typeDescription.getActualModifiers(z) | resolveDeprecationModifiers(i2);
                        if ((i2 & 16) != 0 && WithFullProcessing.this.instrumentedType.isAnonymousType()) {
                            i3 = 16;
                        }
                        int i4 = actualModifiers | i3;
                        String internalName2 = WithFullProcessing.this.instrumentedType.getInternalName();
                        if (TypeDescription.AbstractBase.RAW_TYPES) {
                            genericSignature = str2;
                        } else {
                            genericSignature = WithFullProcessing.this.instrumentedType.getGenericSignature();
                        }
                        if (WithFullProcessing.this.instrumentedType.getSuperClass() == null) {
                            if (WithFullProcessing.this.instrumentedType.isInterface()) {
                                internalName = TypeDescription.OBJECT.getInternalName();
                            } else {
                                internalName = Default.NO_REFERENCE;
                            }
                        } else {
                            internalName = WithFullProcessing.this.instrumentedType.getSuperClass().asErasure().getInternalName();
                        }
                        wrap.visit(i, i4, internalName2, genericSignature, internalName, WithFullProcessing.this.instrumentedType.getInterfaces().asErasures().toInternalNames());
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitOuterClass(String str, @MaybeNull String str2, @MaybeNull String str3) {
                        try {
                            onOuterType();
                        } catch (Throwable unused) {
                            this.f19177cv.visitOuterClass(str, str2, str3);
                        }
                    }

                    @MaybeNull
                    public FieldVisitor redefine(FieldPool.Record record, @MaybeNull Object obj, int i, @MaybeNull String str) {
                        FieldDescription field = record.getField();
                        ClassVisitor classVisitor = this.f19177cv;
                        int actualModifiers = field.getActualModifiers() | resolveDeprecationModifiers(i);
                        String internalName = field.getInternalName();
                        String descriptor = field.getDescriptor();
                        if (!TypeDescription.AbstractBase.RAW_TYPES) {
                            str = field.getGenericSignature();
                        }
                        FieldVisitor visitField = classVisitor.visitField(actualModifiers, internalName, descriptor, str, record.resolveDefault(obj));
                        return visitField == null ? ForInlining.IGNORE_FIELD : new AttributeObtainingFieldVisitor(visitField, record);
                    }

                    @MaybeNull
                    public MethodVisitor redefine(MethodDescription methodDescription, boolean z, int i, @MaybeNull String str) {
                        MethodPool.Record target = this.methodPool.target(methodDescription);
                        if (!target.getSort().isDefined()) {
                            return this.f19177cv.visitMethod(methodDescription.getActualModifiers() | resolveDeprecationModifiers(i), methodDescription.getInternalName(), methodDescription.getDescriptor(), TypeDescription.AbstractBase.RAW_TYPES ? str : methodDescription.getGenericSignature(), methodDescription.getExceptionTypes().asErasures().toInternalNames());
                        }
                        MethodDescription method = target.getMethod();
                        ClassVisitor classVisitor = this.f19177cv;
                        int resolve = ModifierContributor.Resolver.m15205of(Collections.singleton(target.getVisibility())).resolve(method.getActualModifiers(target.getSort().isImplemented())) | resolveDeprecationModifiers(i);
                        String internalName = method.getInternalName();
                        String descriptor = method.getDescriptor();
                        boolean z2 = TypeDescription.AbstractBase.RAW_TYPES;
                        MethodVisitor visitMethod = classVisitor.visitMethod(resolve, internalName, descriptor, z2 ? str : method.getGenericSignature(), method.getExceptionTypes().asErasures().toInternalNames());
                        if (visitMethod == null) {
                            return ForInlining.IGNORE_METHOD;
                        }
                        if (z) {
                            return new AttributeObtainingMethodVisitor(visitMethod, target);
                        }
                        if (methodDescription.isNative()) {
                            MethodRebaseResolver.Resolution resolve2 = WithFullProcessing.this.methodRebaseResolver.resolve(method.asDefined());
                            if (resolve2.isRebased()) {
                                MethodVisitor visitMethod2 = super.visitMethod(resolve2.getResolvedMethod().getActualModifiers() | resolveDeprecationModifiers(i), resolve2.getResolvedMethod().getInternalName(), resolve2.getResolvedMethod().getDescriptor(), z2 ? str : method.getGenericSignature(), resolve2.getResolvedMethod().getExceptionTypes().asErasures().toInternalNames());
                                if (visitMethod2 != null) {
                                    visitMethod2.visitEnd();
                                }
                            }
                            return new AttributeObtainingMethodVisitor(visitMethod, target);
                        }
                        return new CodePreservingMethodVisitor(visitMethod, target, WithFullProcessing.this.methodRebaseResolver.resolve(method.asDefined()));
                    }
                }

                public WithFullProcessing(TypeDescription typeDescription, ClassFileVersion classFileVersion, FieldPool fieldPool, RecordComponentPool recordComponentPool, List<? extends DynamicType> list, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, MethodList<?> methodList2, RecordComponentList<RecordComponentDescription.InDefinedShape> recordComponentList, LoadedTypeInitializer loadedTypeInitializer, TypeInitializer typeInitializer, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool, TypeDescription typeDescription2, ClassFileLocator classFileLocator, MethodRegistry.Prepared prepared, Implementation.Target.Factory factory3, MethodRebaseResolver methodRebaseResolver) {
                    super(typeDescription, classFileVersion, fieldPool, recordComponentPool, list, fieldList, methodList, methodList2, recordComponentList, loadedTypeInitializer, typeInitializer, typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool, typeDescription2, classFileLocator);
                    this.methodRegistry = prepared;
                    this.implementationTargetFactory = factory3;
                    this.methodRebaseResolver = methodRebaseResolver;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining, net.bytebuddy.dynamic.scaffold.TypeWriter.Default
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithFullProcessing withFullProcessing = (WithFullProcessing) obj;
                            return this.methodRegistry.equals(withFullProcessing.methodRegistry) && this.implementationTargetFactory.equals(withFullProcessing.implementationTargetFactory) && this.methodRebaseResolver.equals(withFullProcessing.methodRebaseResolver);
                        }
                        return false;
                    }
                    return false;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining, net.bytebuddy.dynamic.scaffold.TypeWriter.Default
                public int hashCode() {
                    return (((((super.hashCode() * 31) + this.methodRegistry.hashCode()) * 31) + this.implementationTargetFactory.hashCode()) * 31) + this.methodRebaseResolver.hashCode();
                }

                /* loaded from: classes2.dex */
                public static class SignatureKey {
                    private final String descriptor;
                    private final String internalName;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj == null || getClass() != obj.getClass()) {
                            return false;
                        }
                        SignatureKey signatureKey = (SignatureKey) obj;
                        return this.internalName.equals(signatureKey.internalName) && this.descriptor.equals(signatureKey.descriptor);
                    }

                    public int hashCode() {
                        return this.internalName.hashCode() + 17 + (this.descriptor.hashCode() * 31);
                    }

                    public SignatureKey(String str, String str2) {
                        this.internalName = str;
                        this.descriptor = str2;
                    }
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining
                public ClassVisitor writeTo(ClassVisitor classVisitor, TypeInitializer typeInitializer, ContextRegistry contextRegistry, int i, int i2) {
                    RedefinitionClassVisitor redefinitionClassVisitor = new RedefinitionClassVisitor(classVisitor, typeInitializer, contextRegistry, i, i2);
                    if (!this.originalType.getName().equals(this.instrumentedType.getName())) {
                        return new OpenedClassRemapper(redefinitionClassVisitor, new SimpleRemapper(this.originalType.getInternalName(), this.instrumentedType.getInternalName()));
                    }
                    return redefinitionClassVisitor;
                }
            }

            public ForInlining(TypeDescription typeDescription, ClassFileVersion classFileVersion, FieldPool fieldPool, RecordComponentPool recordComponentPool, List<? extends DynamicType> list, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, MethodList<?> methodList2, RecordComponentList<RecordComponentDescription.InDefinedShape> recordComponentList, LoadedTypeInitializer loadedTypeInitializer, TypeInitializer typeInitializer, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool, TypeDescription typeDescription2, ClassFileLocator classFileLocator) {
                super(typeDescription, classFileVersion, fieldPool, recordComponentPool, list, fieldList, methodList, methodList2, recordComponentList, loadedTypeInitializer, typeInitializer, typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool);
                this.originalType = typeDescription2;
                this.classFileLocator = classFileLocator;
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForInlining forInlining = (ForInlining) obj;
                        return this.originalType.equals(forInlining.originalType) && this.classFileLocator.equals(forInlining.classFileLocator);
                    }
                    return false;
                }
                return false;
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default
            public int hashCode() {
                return (((super.hashCode() * 31) + this.originalType.hashCode()) * 31) + this.classFileLocator.hashCode();
            }

            public abstract ClassVisitor writeTo(ClassVisitor classVisitor, TypeInitializer typeInitializer, ContextRegistry contextRegistry, int i, int i2);

            /* loaded from: classes2.dex */
            public static class WithDecorationOnly<V> extends ForInlining<V> {

                @SuppressFBWarnings(justification = "Field access order is implied by ASM.", value = {"UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"})
                /* loaded from: classes2.dex */
                public class DecorationClassVisitor extends MetadataAwareClassVisitor implements TypeInitializer.Drain {
                    private final ContextRegistry contextRegistry;
                    @UnknownNull
                    private Implementation.Context.ExtractableView implementationContext;
                    private final int readerFlags;
                    private final int writerFlags;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeInitializer.Drain
                    public void apply(ClassVisitor classVisitor, TypeInitializer typeInitializer, Implementation.Context context) {
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onAfterAttributes() {
                        WithDecorationOnly withDecorationOnly = WithDecorationOnly.this;
                        TypeAttributeAppender typeAttributeAppender = withDecorationOnly.typeAttributeAppender;
                        ClassVisitor classVisitor = this.f19177cv;
                        TypeDescription typeDescription = withDecorationOnly.instrumentedType;
                        typeAttributeAppender.apply(classVisitor, typeDescription, withDecorationOnly.annotationValueFilterFactory.mo15016on(typeDescription));
                    }

                    public DecorationClassVisitor(ClassVisitor classVisitor, ContextRegistry contextRegistry, int i, int i2) {
                        super(OpenedClassReader.ASM_API, classVisitor);
                        this.contextRegistry = contextRegistry;
                        this.writerFlags = i;
                        this.readerFlags = i2;
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public AnnotationVisitor onVisitAnnotation(String str, boolean z) {
                        if (WithDecorationOnly.this.annotationRetention.isEnabled()) {
                            return this.f19177cv.visitAnnotation(str, z);
                        }
                        return ForInlining.IGNORE_ANNOTATION;
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    public void onVisitEnd() {
                        this.implementationContext.drain(this, this.f19177cv, WithDecorationOnly.this.annotationValueFilterFactory);
                        this.f19177cv.visitEnd();
                    }

                    @Override // net.bytebuddy.utility.visitor.MetadataAwareClassVisitor
                    @MaybeNull
                    public AnnotationVisitor onVisitTypeAnnotation(int i, TypePath typePath, String str, boolean z) {
                        if (WithDecorationOnly.this.annotationRetention.isEnabled()) {
                            return this.f19177cv.visitTypeAnnotation(i, typePath, str, z);
                        }
                        return ForInlining.IGNORE_ANNOTATION;
                    }

                    @Override // net.bytebuddy.jar.asm.ClassVisitor
                    public void visit(int i, int i2, String str, String str2, String str3, String[] strArr) {
                        ClassFileVersion ofMinorMajor = ClassFileVersion.ofMinorMajor(i);
                        WithDecorationOnly withDecorationOnly = WithDecorationOnly.this;
                        Implementation.Context.ExtractableView make = withDecorationOnly.implementationContextFactory.make(withDecorationOnly.instrumentedType, withDecorationOnly.auxiliaryTypeNamingStrategy, withDecorationOnly.typeInitializer, ofMinorMajor, withDecorationOnly.classFileVersion);
                        this.implementationContext = make;
                        this.contextRegistry.setImplementationContext(make);
                        WithDecorationOnly withDecorationOnly2 = WithDecorationOnly.this;
                        ClassVisitor wrap = withDecorationOnly2.asmVisitorWrapper.wrap(withDecorationOnly2.instrumentedType, this.f19177cv, this.implementationContext, withDecorationOnly2.typePool, withDecorationOnly2.fields, withDecorationOnly2.methods, this.writerFlags, this.readerFlags);
                        this.f19177cv = wrap;
                        wrap.visit(i, i2, str, str2, str3, strArr);
                    }
                }

                /* loaded from: classes2.dex */
                public static class LazyFieldList extends FieldList.AbstractBase<FieldDescription.InDefinedShape> {
                    private final TypeDescription instrumentedType;

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.instrumentedType.getDeclaredFields().size();
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public FieldDescription.InDefinedShape get(int i) {
                        return (FieldDescription.InDefinedShape) this.instrumentedType.getDeclaredFields().get(i);
                    }

                    public LazyFieldList(TypeDescription typeDescription) {
                        this.instrumentedType = typeDescription;
                    }
                }

                public WithDecorationOnly(TypeDescription typeDescription, ClassFileVersion classFileVersion, List<? extends DynamicType> list, MethodList<?> methodList, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool, ClassFileLocator classFileLocator) {
                    super(typeDescription, classFileVersion, FieldPool.Disabled.INSTANCE, RecordComponentPool.Disabled.INSTANCE, list, new LazyFieldList(typeDescription), methodList, new MethodList.Empty(), new RecordComponentList.Empty(), LoadedTypeInitializer.NoOp.INSTANCE, TypeInitializer.None.INSTANCE, typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool, typeDescription, classFileLocator);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ForInlining
                public ClassVisitor writeTo(ClassVisitor classVisitor, TypeInitializer typeInitializer, ContextRegistry contextRegistry, int i, int i2) {
                    if (!typeInitializer.isDefined()) {
                        return new DecorationClassVisitor(classVisitor, contextRegistry, i, i2);
                    }
                    throw new UnsupportedOperationException("Cannot apply a type initializer for a decoration");
                }
            }

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default
            public Default<U>.UnresolvedType create(TypeInitializer typeInitializer, ClassDumpAction.Dispatcher dispatcher) {
                try {
                    int mergeWriter = this.asmVisitorWrapper.mergeWriter(0);
                    int mergeReader = this.asmVisitorWrapper.mergeReader(0);
                    byte[] resolve = this.classFileLocator.locate(this.originalType.getName()).resolve();
                    dispatcher.dump(this.instrumentedType, true, resolve);
                    ClassReader m14758of = OpenedClassReader.m14758of(resolve);
                    ClassWriter resolve2 = this.classWriterStrategy.resolve(mergeWriter, this.typePool, m14758of);
                    ContextRegistry contextRegistry = new ContextRegistry();
                    m14758of.accept(writeTo(ValidatingClassVisitor.m15112of(resolve2, this.typeValidation), typeInitializer, contextRegistry, mergeWriter, mergeReader), mergeReader);
                    return new UnresolvedType(resolve2.toByteArray(), contextRegistry.getAuxiliaryTypes());
                } catch (IOException e) {
                    throw new RuntimeException("The class file could not be written", e);
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class UnresolvedType {
            private final List<? extends DynamicType> auxiliaryTypes;
            private final byte[] binaryRepresentation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    UnresolvedType unresolvedType = (UnresolvedType) obj;
                    return Arrays.equals(this.binaryRepresentation, unresolvedType.binaryRepresentation) && this.auxiliaryTypes.equals(unresolvedType.auxiliaryTypes) && Default.this.equals(Default.this);
                }
                return false;
            }

            public byte[] getBinaryRepresentation() {
                return this.binaryRepresentation;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + Arrays.hashCode(this.binaryRepresentation)) * 31) + this.auxiliaryTypes.hashCode()) * 31) + Default.this.hashCode();
            }

            public UnresolvedType(byte[] bArr, List<? extends DynamicType> list) {
                this.binaryRepresentation = bArr;
                this.auxiliaryTypes = list;
            }

            public DynamicType.Unloaded<S> toDynamicType(TypeResolutionStrategy.Resolved resolved) {
                Default r0 = Default.this;
                return new DynamicType.Default.Unloaded(r0.instrumentedType, this.binaryRepresentation, r0.loadedTypeInitializer, CompoundList.m14776of((List) r0.auxiliaryTypes, (List) this.auxiliaryTypes), resolved);
            }
        }

        /* loaded from: classes2.dex */
        public static class ValidatingClassVisitor extends ClassVisitor {
            @AlwaysNull
            private static final FieldVisitor IGNORE_FIELD = null;
            @AlwaysNull
            private static final MethodVisitor IGNORE_METHOD = null;
            private static final String NO_PARAMETERS = "()";
            private static final String RETURNS_VOID = "V";
            private static final String STRING_DESCRIPTOR = "Ljava/lang/String;";
            @UnknownNull
            private Constraint constraint;

            /* loaded from: classes2.dex */
            public interface Constraint {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Compound implements Constraint {
                    private final List<Constraint> constraints = new ArrayList();

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertMethod(str, z, z2, z3, z4, z5, z6, z7, z8);
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.constraints.equals(((Compound) obj).constraints);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.constraints.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertAnnotation();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertDefaultMethodCall();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertDefaultValue(str);
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertDynamicValueInConstantPool();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertField(str, z, z2, z3, z4);
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertHandleInConstantPool();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertInvokeDynamic();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertMethodTypeInConstantPool();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertNestMate();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertPermittedSubclass();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertRecord();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertSubRoutine();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertType(i, z, z2);
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertTypeAnnotation();
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                        for (Constraint constraint : this.constraints) {
                            constraint.assertTypeInConstantPool();
                        }
                    }

                    public Compound(List<? extends Constraint> list) {
                        for (Constraint constraint : list) {
                            if (constraint instanceof Compound) {
                                this.constraints.addAll(((Compound) constraint).constraints);
                            } else {
                                this.constraints.add(constraint);
                            }
                        }
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForAnnotation implements Constraint {
                    CLASSIC(true),
                    JAVA_8(false);
                    
                    private final boolean classic;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                        if (z2 && z && z3) {
                            return;
                        }
                        throw new IllegalStateException("Cannot only define public, static, final field '" + str + "' for interface type");
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                        if ((i & 512) == 0) {
                            throw new IllegalStateException("Cannot define annotation type without interface modifier");
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                        if (!str.equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME)) {
                            if (!z6) {
                                if (this.classic && !z5) {
                                    throw new IllegalStateException("Cannot define non-virtual method '" + str + "' for a pre-Java 8 annotation type");
                                } else if (!z4 && z7) {
                                    throw new IllegalStateException("Cannot define method '" + str + "' with the given signature as an annotation type method");
                                } else {
                                    return;
                                }
                            }
                            throw new IllegalStateException("Cannot define constructor for interface type");
                        }
                    }

                    ForAnnotation(boolean z) {
                        this.classic = z;
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForClass implements Constraint {
                    MANIFEST(true),
                    ABSTRACT(false);
                    
                    private final boolean manifestType;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                        throw new IllegalStateException("Cannot define default value for '" + str + "' for non-annotation type");
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                        if (z && this.manifestType) {
                            throw new IllegalStateException("Cannot define abstract method '" + str + "' for non-abstract class");
                        }
                    }

                    ForClass(boolean z) {
                        this.manifestType = z;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForClassFileVersion implements Constraint {
                    private final ClassFileVersion classFileVersion;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.classFileVersion.equals(((ForClassFileVersion) obj).classFileVersion);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.classFileVersion.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V5)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write annotations for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V8)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot invoke default method for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V11)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write dynamic constant for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                        if (z4 && !this.classFileVersion.isAtLeast(ClassFileVersion.JAVA_V4)) {
                            throw new IllegalStateException("Cannot define generic field '" + str + "' for class file version " + this.classFileVersion);
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V7)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write method handle to constant pool for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V7)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write invoke dynamic instruction for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                        if (z8 && !this.classFileVersion.isAtLeast(ClassFileVersion.JAVA_V4)) {
                            throw new IllegalStateException("Cannot define generic method '" + str + "' for class file version " + this.classFileVersion);
                        } else if (!z5 && z) {
                            throw new IllegalStateException("Cannot define static or non-virtual method '" + str + "' to be abstract");
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V7)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write method type to constant pool for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V11)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot define nest mate for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V17)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot define permitted subclasses for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V14)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot define record for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                        if (!this.classFileVersion.isGreaterThan(ClassFileVersion.JAVA_V5)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write subroutine for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                        if ((i & 8192) != 0 && !this.classFileVersion.isAtLeast(ClassFileVersion.JAVA_V5)) {
                            throw new IllegalStateException("Cannot define annotation type for class file version " + this.classFileVersion);
                        } else if (z2 && !this.classFileVersion.isAtLeast(ClassFileVersion.JAVA_V4)) {
                            throw new IllegalStateException("Cannot define a generic type for class file version " + this.classFileVersion);
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V5)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write type annotations for class file version " + this.classFileVersion);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                        if (!this.classFileVersion.isLessThan(ClassFileVersion.JAVA_V5)) {
                            return;
                        }
                        throw new IllegalStateException("Cannot write type to constant pool for class file version " + this.classFileVersion);
                    }

                    public ForClassFileVersion(ClassFileVersion classFileVersion) {
                        this.classFileVersion = classFileVersion;
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForInterface implements Constraint {
                    CLASSIC(true),
                    JAVA_8(false);
                    
                    private final boolean classic;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                        throw new IllegalStateException("Cannot define default value for '" + str + "' for non-annotation type");
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                        if (z2 && z && z3) {
                            return;
                        }
                        throw new IllegalStateException("Cannot only define public, static, final field '" + str + "' for interface type");
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                        if (!str.equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME)) {
                            if (!z6) {
                                boolean z9 = this.classic;
                                if (z9 && !z2) {
                                    throw new IllegalStateException("Cannot define non-public method '" + str + "' for interface type");
                                } else if (z9 && !z5) {
                                    throw new IllegalStateException("Cannot define non-virtual method '" + str + "' for a pre-Java 8 interface type");
                                } else if (z9 && !z) {
                                    throw new IllegalStateException("Cannot define default method '" + str + "' for pre-Java 8 interface type");
                                } else {
                                    return;
                                }
                            }
                            throw new IllegalStateException("Cannot define constructor for interface type");
                        }
                    }

                    ForInterface(boolean z) {
                        this.classic = z;
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForPackageType implements Constraint {
                    INSTANCE;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                        throw new IllegalStateException("Cannot define a field for a package description type");
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                        throw new IllegalStateException("Cannot define a method for a package description type");
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                        if (i == 5632) {
                            if (!z) {
                                return;
                            }
                            throw new IllegalStateException("Cannot implement interface for package type");
                        }
                        throw new IllegalStateException("A package description type must define 5632 as modifier");
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForRecord implements Constraint {
                    INSTANCE;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultMethodCall() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDefaultValue(String str) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertDynamicValueInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertHandleInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertInvokeDynamic() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertMethodTypeInConstantPool() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertNestMate() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertPermittedSubclass() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertRecord() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertSubRoutine() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertType(int i, boolean z, boolean z2) {
                        if ((i & 1024) != 0) {
                            throw new IllegalStateException("Cannot define a record class as abstract");
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeAnnotation() {
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ValidatingClassVisitor.Constraint
                    public void assertTypeInConstantPool() {
                    }
                }

                void assertAnnotation();

                void assertDefaultMethodCall();

                void assertDefaultValue(String str);

                void assertDynamicValueInConstantPool();

                void assertField(String str, boolean z, boolean z2, boolean z3, boolean z4);

                void assertHandleInConstantPool();

                void assertInvokeDynamic();

                void assertMethod(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8);

                void assertMethodTypeInConstantPool();

                void assertNestMate();

                void assertPermittedSubclass();

                void assertRecord();

                void assertSubRoutine();

                void assertType(int i, boolean z, boolean z2);

                void assertTypeAnnotation();

                void assertTypeInConstantPool();
            }

            /* loaded from: classes2.dex */
            public class ValidatingFieldVisitor extends FieldVisitor {
                public ValidatingFieldVisitor(FieldVisitor fieldVisitor) {
                    super(OpenedClassReader.ASM_API, fieldVisitor);
                }

                @Override // net.bytebuddy.jar.asm.FieldVisitor
                public AnnotationVisitor visitAnnotation(String str, boolean z) {
                    ValidatingClassVisitor.this.constraint.assertAnnotation();
                    return super.visitAnnotation(str, z);
                }
            }

            /* loaded from: classes2.dex */
            public class ValidatingMethodVisitor extends MethodVisitor {
                private final String name;

                public ValidatingMethodVisitor(MethodVisitor methodVisitor, String str) {
                    super(OpenedClassReader.ASM_API, methodVisitor);
                    this.name = str;
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitAnnotation(String str, boolean z) {
                    ValidatingClassVisitor.this.constraint.assertAnnotation();
                    return super.visitAnnotation(str, z);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitAnnotationDefault() {
                    ValidatingClassVisitor.this.constraint.assertDefaultValue(this.name);
                    return super.visitAnnotationDefault();
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitInvokeDynamicInsn(String str, String str2, Handle handle, Object... objArr) {
                    ValidatingClassVisitor.this.constraint.assertInvokeDynamic();
                    for (Object obj : objArr) {
                        if (obj instanceof ConstantDynamic) {
                            ValidatingClassVisitor.this.constraint.assertDynamicValueInConstantPool();
                        }
                    }
                    super.visitInvokeDynamicInsn(str, str2, handle, objArr);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitJumpInsn(int i, Label label) {
                    if (i == 168) {
                        ValidatingClassVisitor.this.constraint.assertSubRoutine();
                    }
                    super.visitJumpInsn(i, label);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @SuppressFBWarnings(justification = "Fall through to default case is intentional.", value = {"SF_SWITCH_NO_DEFAULT"})
                public void visitLdcInsn(Object obj) {
                    if (obj instanceof Type) {
                        switch (((Type) obj).getSort()) {
                            case 9:
                            case 10:
                                ValidatingClassVisitor.this.constraint.assertTypeInConstantPool();
                                break;
                            case 11:
                                ValidatingClassVisitor.this.constraint.assertMethodTypeInConstantPool();
                                break;
                        }
                    } else if (obj instanceof Handle) {
                        ValidatingClassVisitor.this.constraint.assertHandleInConstantPool();
                    } else if (obj instanceof ConstantDynamic) {
                        ValidatingClassVisitor.this.constraint.assertDynamicValueInConstantPool();
                    }
                    super.visitLdcInsn(obj);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitMethodInsn(int i, String str, String str2, String str3, boolean z) {
                    if (z && i == 183) {
                        ValidatingClassVisitor.this.constraint.assertDefaultMethodCall();
                    }
                    super.visitMethodInsn(i, str, str2, str3, z);
                }
            }

            public ValidatingClassVisitor(ClassVisitor classVisitor) {
                super(OpenedClassReader.ASM_API, classVisitor);
            }

            /* renamed from: of */
            public static ClassVisitor m15112of(ClassVisitor classVisitor, TypeValidation typeValidation) {
                return typeValidation.isEnabled() ? new ValidatingClassVisitor(classVisitor) : classVisitor;
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public AnnotationVisitor visitAnnotation(String str, boolean z) {
                this.constraint.assertAnnotation();
                return super.visitAnnotation(str, z);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public FieldVisitor visitField(int i, String str, String str2, @MaybeNull String str3, @MaybeNull Object obj) {
                boolean z;
                boolean z2;
                boolean z3;
                boolean z4;
                Class cls;
                int i2;
                int i3;
                if (obj != null) {
                    char charAt = str2.charAt(0);
                    if (charAt != 'F') {
                        if (charAt != 'S' && charAt != 'Z' && charAt != 'I') {
                            if (charAt != 'J') {
                                switch (charAt) {
                                    case 'B':
                                    case 'C':
                                        break;
                                    case 'D':
                                        cls = Double.class;
                                        break;
                                    default:
                                        if (str2.equals(STRING_DESCRIPTOR)) {
                                            cls = String.class;
                                            break;
                                        } else {
                                            throw new IllegalStateException("Cannot define a default value for type of field " + str);
                                        }
                                }
                            } else {
                                cls = Long.class;
                            }
                        }
                        cls = Integer.class;
                    } else {
                        cls = Float.class;
                    }
                    if (cls.isInstance(obj)) {
                        if (cls == Integer.class) {
                            char charAt2 = str2.charAt(0);
                            if (charAt2 != 'B') {
                                if (charAt2 != 'C') {
                                    if (charAt2 != 'S') {
                                        if (charAt2 != 'Z') {
                                            i2 = Integer.MIN_VALUE;
                                            i3 = Integer.MAX_VALUE;
                                        } else {
                                            i2 = 0;
                                            i3 = 1;
                                        }
                                    } else {
                                        i2 = -32768;
                                        i3 = 32767;
                                    }
                                } else {
                                    i3 = MeshBuilder.MAX_INDEX;
                                    i2 = 0;
                                }
                            } else {
                                i2 = -128;
                                i3 = 127;
                            }
                            Integer num = (Integer) obj;
                            if (num.intValue() < i2 || num.intValue() > i3) {
                                throw new IllegalStateException("Field " + str + " defines an incompatible default value " + obj);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Field " + str + " defines an incompatible default value " + obj);
                    }
                }
                Constraint constraint = this.constraint;
                if ((i & 1) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if ((i & 8) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i & 16) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (str3 != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                constraint.assertField(str, z, z2, z3, z4);
                FieldVisitor visitField = super.visitField(i, str, str2, str3, obj);
                if (visitField == null) {
                    return IGNORE_FIELD;
                }
                return new ValidatingFieldVisitor(visitField);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                boolean z;
                boolean z2;
                boolean z3;
                boolean z4;
                boolean z5;
                boolean z6;
                boolean z7;
                Constraint constraint = this.constraint;
                if ((i & 1024) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if ((i & 1) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((i & 2) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if ((i & 8) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!str.equals(MethodDescription.CONSTRUCTOR_INTERNAL_NAME) && !str.equals(MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME) && (i & 10) == 0) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                boolean equals = str.equals(MethodDescription.CONSTRUCTOR_INTERNAL_NAME);
                if (str2.startsWith(NO_PARAMETERS) && !str2.endsWith(RETURNS_VOID)) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                if (str3 != null) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                constraint.assertMethod(str, z, z2, z3, z4, z5, equals, z6, z7);
                MethodVisitor visitMethod = super.visitMethod(i, str, str2, str3, strArr);
                if (visitMethod == null) {
                    return IGNORE_METHOD;
                }
                return new ValidatingMethodVisitor(visitMethod, str);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitNestHost(String str) {
                this.constraint.assertNestMate();
                super.visitNestHost(str);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitNestMember(String str) {
                this.constraint.assertNestMate();
                super.visitNestMember(str);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visitPermittedSubclass(String str) {
                this.constraint.assertPermittedSubclass();
                super.visitPermittedSubclass(str);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            @MaybeNull
            public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                this.constraint.assertTypeAnnotation();
                return super.visitTypeAnnotation(i, typePath, str, z);
            }

            @Override // net.bytebuddy.jar.asm.ClassVisitor
            public void visit(int i, int i2, String str, @MaybeNull String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                Constraint.ForInterface forInterface;
                Constraint.ForAnnotation forAnnotation;
                boolean z;
                boolean z2;
                ClassFileVersion ofMinorMajor = ClassFileVersion.ofMinorMajor(i);
                ArrayList arrayList = new ArrayList();
                arrayList.add(new Constraint.ForClassFileVersion(ofMinorMajor));
                if (str.endsWith("/package-info")) {
                    arrayList.add(Constraint.ForPackageType.INSTANCE);
                } else if ((i2 & 8192) != 0) {
                    if (ofMinorMajor.isAtLeast(ClassFileVersion.JAVA_V5)) {
                        if (ofMinorMajor.isAtLeast(ClassFileVersion.JAVA_V8)) {
                            forAnnotation = Constraint.ForAnnotation.JAVA_8;
                        } else {
                            forAnnotation = Constraint.ForAnnotation.CLASSIC;
                        }
                        arrayList.add(forAnnotation);
                    } else {
                        throw new IllegalStateException("Cannot define an annotation type for class file version " + ofMinorMajor);
                    }
                } else if ((i2 & 512) != 0) {
                    if (ofMinorMajor.isAtLeast(ClassFileVersion.JAVA_V8)) {
                        forInterface = Constraint.ForInterface.JAVA_8;
                    } else {
                        forInterface = Constraint.ForInterface.CLASSIC;
                    }
                    arrayList.add(forInterface);
                } else if ((i2 & 1024) != 0) {
                    arrayList.add(Constraint.ForClass.ABSTRACT);
                } else {
                    arrayList.add(Constraint.ForClass.MANIFEST);
                }
                boolean z3 = true;
                if ((65536 & i2) != 0) {
                    arrayList.add(Constraint.ForRecord.INSTANCE);
                    z = true;
                } else {
                    z = false;
                }
                Constraint.Compound compound = new Constraint.Compound(arrayList);
                this.constraint = compound;
                if (strArr != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (str2 == null) {
                    z3 = false;
                }
                compound.assertType(i2, z2, z3);
                if (z) {
                    this.constraint.assertRecord();
                }
                super.visit(i, i2, str, str2, str3, strArr);
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:2|3)|4|5|6|7|8|9|(1:(0))) */
        static {
            /*
                r0 = 0
                r1 = 0
                java.lang.String r2 = "java.security.AccessController"
                java.lang.Class.forName(r2, r0, r1)     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
                java.lang.String r2 = "net.bytebuddy.securitymanager"
                java.lang.String r3 = "true"
                java.lang.String r2 = java.lang.System.getProperty(r2, r3)     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
                boolean r2 = java.lang.Boolean.parseBoolean(r2)     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
                net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ACCESS_CONTROLLER = r2     // Catch: java.lang.SecurityException -> L16 java.lang.ClassNotFoundException -> L17
                goto L19
            L16:
                r0 = 1
            L17:
                net.bytebuddy.dynamic.scaffold.TypeWriter.Default.ACCESS_CONTROLLER = r0
            L19:
                net.bytebuddy.dynamic.scaffold.TypeWriter.Default.NO_REFERENCE = r1
                net.bytebuddy.utility.privilege.GetSystemPropertyAction r0 = new net.bytebuddy.utility.privilege.GetSystemPropertyAction     // Catch: java.lang.RuntimeException -> L29
                java.lang.String r2 = "net.bytebuddy.dump"
                r0.<init>(r2)     // Catch: java.lang.RuntimeException -> L29
                java.lang.Object r0 = doPrivileged(r0)     // Catch: java.lang.RuntimeException -> L29
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.RuntimeException -> L29
                r1 = r0
            L29:
                net.bytebuddy.dynamic.scaffold.TypeWriter.Default.DUMP_FOLDER = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.scaffold.TypeWriter.Default.<clinit>():void");
        }

        public Default(TypeDescription typeDescription, ClassFileVersion classFileVersion, FieldPool fieldPool, RecordComponentPool recordComponentPool, List<? extends DynamicType> list, FieldList<FieldDescription.InDefinedShape> fieldList, MethodList<?> methodList, MethodList<?> methodList2, RecordComponentList<RecordComponentDescription.InDefinedShape> recordComponentList, LoadedTypeInitializer loadedTypeInitializer, TypeInitializer typeInitializer, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool) {
            this.instrumentedType = typeDescription;
            this.classFileVersion = classFileVersion;
            this.fieldPool = fieldPool;
            this.recordComponentPool = recordComponentPool;
            this.auxiliaryTypes = list;
            this.fields = fieldList;
            this.methods = methodList;
            this.instrumentedMethods = methodList2;
            this.recordComponents = recordComponentList;
            this.loadedTypeInitializer = loadedTypeInitializer;
            this.typeInitializer = typeInitializer;
            this.typeAttributeAppender = typeAttributeAppender;
            this.asmVisitorWrapper = asmVisitorWrapper;
            this.auxiliaryTypeNamingStrategy = namingStrategy;
            this.annotationValueFilterFactory = factory;
            this.annotationRetention = annotationRetention;
            this.implementationContextFactory = factory2;
            this.typeValidation = typeValidation;
            this.classWriterStrategy = classWriterStrategy;
            this.typePool = typePool;
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static <U> TypeWriter<U> forCreation(MethodRegistry.Compiled compiled, List<? extends DynamicType> list, FieldPool fieldPool, RecordComponentPool recordComponentPool, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool) {
            return new ForCreation(compiled.getInstrumentedType(), classFileVersion, fieldPool, compiled, recordComponentPool, list, compiled.getInstrumentedType().getDeclaredFields(), compiled.getMethods(), compiled.getInstrumentedMethods(), compiled.getInstrumentedType().getRecordComponents(), compiled.getLoadedTypeInitializer(), compiled.getTypeInitializer(), typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool);
        }

        public static <U> TypeWriter<U> forDecoration(TypeDescription typeDescription, ClassFileVersion classFileVersion, List<? extends DynamicType> list, List<? extends MethodDescription> list2, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool, ClassFileLocator classFileLocator) {
            return new ForInlining.WithDecorationOnly(typeDescription, classFileVersion, list, new MethodList.Explicit(list2), typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool, classFileLocator);
        }

        public static <U> TypeWriter<U> forRebasing(MethodRegistry.Prepared prepared, List<? extends DynamicType> list, FieldPool fieldPool, RecordComponentPool recordComponentPool, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool, TypeDescription typeDescription, ClassFileLocator classFileLocator, MethodRebaseResolver methodRebaseResolver) {
            return new ForInlining.WithFullProcessing(prepared.getInstrumentedType(), classFileVersion, fieldPool, recordComponentPool, CompoundList.m14776of((List) list, (List) methodRebaseResolver.getAuxiliaryTypes()), prepared.getInstrumentedType().getDeclaredFields(), prepared.getMethods(), prepared.getInstrumentedMethods(), prepared.getInstrumentedType().getRecordComponents(), prepared.getLoadedTypeInitializer(), prepared.getTypeInitializer(), typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool, typeDescription, classFileLocator, prepared, new RebaseImplementationTarget.Factory(methodRebaseResolver), methodRebaseResolver);
        }

        public static <U> TypeWriter<U> forRedefinition(MethodRegistry.Prepared prepared, List<? extends DynamicType> list, FieldPool fieldPool, RecordComponentPool recordComponentPool, TypeAttributeAppender typeAttributeAppender, AsmVisitorWrapper asmVisitorWrapper, ClassFileVersion classFileVersion, AnnotationValueFilter.Factory factory, AnnotationRetention annotationRetention, AuxiliaryType.NamingStrategy namingStrategy, Implementation.Context.Factory factory2, TypeValidation typeValidation, ClassWriterStrategy classWriterStrategy, TypePool typePool, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
            return new ForInlining.WithFullProcessing(prepared.getInstrumentedType(), classFileVersion, fieldPool, recordComponentPool, list, prepared.getInstrumentedType().getDeclaredFields(), prepared.getMethods(), prepared.getInstrumentedMethods(), prepared.getInstrumentedType().getRecordComponents(), prepared.getLoadedTypeInitializer(), prepared.getTypeInitializer(), typeAttributeAppender, asmVisitorWrapper, factory, annotationRetention, namingStrategy, factory2, typeValidation, classWriterStrategy, typePool, typeDescription, classFileLocator, prepared, SubclassImplementationTarget.Factory.LEVEL_TYPE, MethodRebaseResolver.Disabled.INSTANCE);
        }

        public abstract Default<S>.UnresolvedType create(TypeInitializer typeInitializer, ClassDumpAction.Dispatcher dispatcher);

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Default r5 = (Default) obj;
                return this.annotationRetention.equals(r5.annotationRetention) && this.typeValidation.equals(r5.typeValidation) && this.instrumentedType.equals(r5.instrumentedType) && this.classFileVersion.equals(r5.classFileVersion) && this.fieldPool.equals(r5.fieldPool) && this.recordComponentPool.equals(r5.recordComponentPool) && this.auxiliaryTypes.equals(r5.auxiliaryTypes) && this.fields.equals(r5.fields) && this.methods.equals(r5.methods) && this.instrumentedMethods.equals(r5.instrumentedMethods) && this.recordComponents.equals(r5.recordComponents) && this.loadedTypeInitializer.equals(r5.loadedTypeInitializer) && this.typeInitializer.equals(r5.typeInitializer) && this.typeAttributeAppender.equals(r5.typeAttributeAppender) && this.asmVisitorWrapper.equals(r5.asmVisitorWrapper) && this.annotationValueFilterFactory.equals(r5.annotationValueFilterFactory) && this.auxiliaryTypeNamingStrategy.equals(r5.auxiliaryTypeNamingStrategy) && this.implementationContextFactory.equals(r5.implementationContextFactory) && this.classWriterStrategy.equals(r5.classWriterStrategy) && this.typePool.equals(r5.typePool);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.classFileVersion.hashCode()) * 31) + this.fieldPool.hashCode()) * 31) + this.recordComponentPool.hashCode()) * 31) + this.auxiliaryTypes.hashCode()) * 31) + this.fields.hashCode()) * 31) + this.methods.hashCode()) * 31) + this.instrumentedMethods.hashCode()) * 31) + this.recordComponents.hashCode()) * 31) + this.loadedTypeInitializer.hashCode()) * 31) + this.typeInitializer.hashCode()) * 31) + this.typeAttributeAppender.hashCode()) * 31) + this.asmVisitorWrapper.hashCode()) * 31) + this.annotationValueFilterFactory.hashCode()) * 31) + this.annotationRetention.hashCode()) * 31) + this.auxiliaryTypeNamingStrategy.hashCode()) * 31) + this.implementationContextFactory.hashCode()) * 31) + this.typeValidation.hashCode()) * 31) + this.classWriterStrategy.hashCode()) * 31) + this.typePool.hashCode();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @AccessControllerPlugin.Enhance
        public static <T> T doPrivileged(PrivilegedExceptionAction<T> privilegedExceptionAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedExceptionAction) : privilegedExceptionAction.run();
        }

        @Override // net.bytebuddy.dynamic.scaffold.TypeWriter
        @SuppressFBWarnings(justification = "Setting a debugging property should never change the program outcome.", value = {"REC_CATCH_EXCEPTION"})
        public DynamicType.Unloaded<S> make(TypeResolutionStrategy.Resolved resolved) {
            ClassDumpAction.Dispatcher enabled;
            String str = DUMP_FOLDER;
            if (str == null) {
                enabled = ClassDumpAction.Dispatcher.Disabled.INSTANCE;
            } else {
                enabled = new ClassDumpAction.Dispatcher.Enabled(str, System.currentTimeMillis());
            }
            Default<S>.UnresolvedType create = create(resolved.injectedInto(this.typeInitializer), enabled);
            enabled.dump(this.instrumentedType, false, create.getBinaryRepresentation());
            return create.toDynamicType(resolved);
        }
    }

    /* loaded from: classes2.dex */
    public interface FieldPool {

        /* loaded from: classes2.dex */
        public enum Disabled implements FieldPool {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool
            public Record target(FieldDescription fieldDescription) {
                throw new IllegalStateException("Cannot look up field from disabled pool");
            }
        }

        /* loaded from: classes2.dex */
        public interface Record {
            void apply(ClassVisitor classVisitor, AnnotationValueFilter.Factory factory);

            void apply(FieldVisitor fieldVisitor, AnnotationValueFilter.Factory factory);

            FieldDescription getField();

            FieldAttributeAppender getFieldAppender();

            boolean isImplicit();

            @MaybeNull
            Object resolveDefault(@MaybeNull Object obj);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForExplicitField implements Record {
                private final FieldAttributeAppender attributeAppender;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Object defaultValue;
                private final FieldDescription fieldDescription;

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public void apply(ClassVisitor classVisitor, AnnotationValueFilter.Factory factory) {
                    FieldVisitor visitField = classVisitor.visitField(this.fieldDescription.getActualModifiers(), this.fieldDescription.getInternalName(), this.fieldDescription.getDescriptor(), this.fieldDescription.getGenericSignature(), resolveDefault(FieldDescription.NO_DEFAULT_VALUE));
                    if (visitField != null) {
                        FieldAttributeAppender fieldAttributeAppender = this.attributeAppender;
                        FieldDescription fieldDescription = this.fieldDescription;
                        fieldAttributeAppender.apply(visitField, fieldDescription, factory.mo15019on(fieldDescription));
                        visitField.visitEnd();
                    }
                }

                /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
                    if (r2 != null) goto L24;
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
                        net.bytebuddy.implementation.attribute.FieldAttributeAppender r2 = r4.attributeAppender
                        net.bytebuddy.dynamic.scaffold.TypeWriter$FieldPool$Record$ForExplicitField r5 = (net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record.ForExplicitField) r5
                        net.bytebuddy.implementation.attribute.FieldAttributeAppender r3 = r5.attributeAppender
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L20
                        return r1
                    L20:
                        java.lang.Object r2 = r4.defaultValue
                        java.lang.Object r3 = r5.defaultValue
                        if (r3 == 0) goto L2f
                        if (r2 == 0) goto L31
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L32
                        return r1
                    L2f:
                        if (r2 == 0) goto L32
                    L31:
                        return r1
                    L32:
                        net.bytebuddy.description.field.FieldDescription r2 = r4.fieldDescription
                        net.bytebuddy.description.field.FieldDescription r5 = r5.fieldDescription
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L3d
                        return r1
                    L3d:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record.ForExplicitField.equals(java.lang.Object):boolean");
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public FieldDescription getField() {
                    return this.fieldDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public FieldAttributeAppender getFieldAppender() {
                    return this.attributeAppender;
                }

                public int hashCode() {
                    int hashCode = ((getClass().hashCode() * 31) + this.attributeAppender.hashCode()) * 31;
                    Object obj = this.defaultValue;
                    if (obj != null) {
                        hashCode += obj.hashCode();
                    }
                    return (hashCode * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public boolean isImplicit() {
                    return false;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                @MaybeNull
                public Object resolveDefault(@MaybeNull Object obj) {
                    Object obj2 = this.defaultValue;
                    return obj2 == null ? obj : obj2;
                }

                public ForExplicitField(FieldAttributeAppender fieldAttributeAppender, @MaybeNull Object obj, FieldDescription fieldDescription) {
                    this.attributeAppender = fieldAttributeAppender;
                    this.defaultValue = obj;
                    this.fieldDescription = fieldDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public void apply(FieldVisitor fieldVisitor, AnnotationValueFilter.Factory factory) {
                    FieldAttributeAppender fieldAttributeAppender = this.attributeAppender;
                    FieldDescription fieldDescription = this.fieldDescription;
                    fieldAttributeAppender.apply(fieldVisitor, fieldDescription, factory.mo15019on(fieldDescription));
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForImplicitField implements Record {
                private final FieldDescription fieldDescription;

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public void apply(ClassVisitor classVisitor, AnnotationValueFilter.Factory factory) {
                    FieldVisitor visitField = classVisitor.visitField(this.fieldDescription.getActualModifiers(), this.fieldDescription.getInternalName(), this.fieldDescription.getDescriptor(), this.fieldDescription.getGenericSignature(), FieldDescription.NO_DEFAULT_VALUE);
                    if (visitField != null) {
                        FieldAttributeAppender.ForInstrumentedField forInstrumentedField = FieldAttributeAppender.ForInstrumentedField.INSTANCE;
                        FieldDescription fieldDescription = this.fieldDescription;
                        forInstrumentedField.apply(visitField, fieldDescription, factory.mo15019on(fieldDescription));
                        visitField.visitEnd();
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((ForImplicitField) obj).fieldDescription);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public FieldDescription getField() {
                    return this.fieldDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public FieldAttributeAppender getFieldAppender() {
                    throw new IllegalStateException("An implicit field record does not expose a field appender: " + this);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public boolean isImplicit() {
                    return true;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public Object resolveDefault(@MaybeNull Object obj) {
                    throw new IllegalStateException("An implicit field record does not expose a default value: " + this);
                }

                public ForImplicitField(FieldDescription fieldDescription) {
                    this.fieldDescription = fieldDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.FieldPool.Record
                public void apply(FieldVisitor fieldVisitor, AnnotationValueFilter.Factory factory) {
                    throw new IllegalStateException("An implicit field record is not intended for partial application: " + this);
                }
            }
        }

        Record target(FieldDescription fieldDescription);
    }

    /* loaded from: classes2.dex */
    public interface MethodPool {

        /* loaded from: classes2.dex */
        public interface Record {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class AccessBridgeWrapper implements Record {
                private final MethodAttributeAppender attributeAppender;
                private final MethodDescription bridgeTarget;
                private final Set<MethodDescription.TypeToken> bridgeTypes;
                private final Record delegate;
                private final TypeDescription instrumentedType;

                /* loaded from: classes2.dex */
                public static class AccessorBridge extends MethodDescription.InDefinedShape.AbstractBase {
                    private final MethodDescription bridgeTarget;
                    private final MethodDescription.TypeToken bridgeType;
                    private final TypeDescription instrumentedType;

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
                        return this.bridgeTarget.getExceptionTypes().accept(TypeDescription.Generic.Visitor.TypeErasing.INSTANCE);
                    }

                    @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                    public String getInternalName() {
                        return this.bridgeTarget.getInternalName();
                    }

                    @Override // net.bytebuddy.description.ModifierReviewable
                    public int getModifiers() {
                        return (this.bridgeTarget.getModifiers() | 64 | 4096) & (-1281);
                    }

                    @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                    public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                        return new ParameterList.Explicit.ForTypes(this, this.bridgeType.getParameterTypes());
                    }

                    @Override // net.bytebuddy.description.method.MethodDescription
                    public TypeDescription.Generic getReturnType() {
                        return this.bridgeType.getReturnType().asGenericType();
                    }

                    @Override // net.bytebuddy.description.TypeVariableSource
                    public TypeList.Generic getTypeVariables() {
                        return new TypeList.Generic.Empty();
                    }

                    @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                    public TypeDescription getDeclaringType() {
                        return this.instrumentedType;
                    }

                    public AccessorBridge(MethodDescription methodDescription, MethodDescription.TypeToken typeToken, TypeDescription typeDescription) {
                        this.bridgeTarget = methodDescription;
                        this.bridgeType = typeToken;
                        this.instrumentedType = typeDescription;
                    }
                }

                /* loaded from: classes2.dex */
                public static class BridgeTarget extends MethodDescription.InDefinedShape.AbstractBase {
                    private final MethodDescription bridgeTarget;
                    private final TypeDescription instrumentedType;

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return this.bridgeTarget.getDeclaredAnnotations();
                    }

                    @Override // net.bytebuddy.description.method.MethodDescription
                    @MaybeNull
                    public AnnotationValue<?, ?> getDefaultValue() {
                        return this.bridgeTarget.getDefaultValue();
                    }

                    @Override // net.bytebuddy.description.method.MethodDescription
                    public TypeList.Generic getExceptionTypes() {
                        return this.bridgeTarget.getExceptionTypes();
                    }

                    @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                    public String getInternalName() {
                        return this.bridgeTarget.getInternalName();
                    }

                    @Override // net.bytebuddy.description.ModifierReviewable
                    public int getModifiers() {
                        return this.bridgeTarget.getModifiers();
                    }

                    @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                    public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                        return new ParameterList.ForTokens(this, this.bridgeTarget.getParameters().asTokenList(ElementMatchers.m14829is(this.instrumentedType)));
                    }

                    @Override // net.bytebuddy.description.method.MethodDescription
                    public TypeDescription.Generic getReturnType() {
                        return this.bridgeTarget.getReturnType();
                    }

                    @Override // net.bytebuddy.description.TypeVariableSource
                    public TypeList.Generic getTypeVariables() {
                        return this.bridgeTarget.getTypeVariables();
                    }

                    @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                    public TypeDescription getDeclaringType() {
                        return this.instrumentedType;
                    }

                    public BridgeTarget(MethodDescription methodDescription, TypeDescription typeDescription) {
                        this.bridgeTarget = methodDescription;
                        this.instrumentedType = typeDescription;
                    }
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                    this.delegate.applyAttributes(methodVisitor, factory);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                    this.delegate.applyBody(methodVisitor, context, factory);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context) {
                    return this.delegate.applyCode(methodVisitor, context);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyHead(MethodVisitor methodVisitor) {
                    this.delegate.applyHead(methodVisitor);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        AccessBridgeWrapper accessBridgeWrapper = (AccessBridgeWrapper) obj;
                        return this.delegate.equals(accessBridgeWrapper.delegate) && this.instrumentedType.equals(accessBridgeWrapper.instrumentedType) && this.bridgeTarget.equals(accessBridgeWrapper.bridgeTarget) && this.bridgeTypes.equals(accessBridgeWrapper.bridgeTypes) && this.attributeAppender.equals(accessBridgeWrapper.attributeAppender);
                    }
                    return false;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public MethodDescription getMethod() {
                    return this.bridgeTarget;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Sort getSort() {
                    return this.delegate.getSort();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Visibility getVisibility() {
                    return this.delegate.getVisibility();
                }

                public int hashCode() {
                    return (((((((((getClass().hashCode() * 31) + this.delegate.hashCode()) * 31) + this.instrumentedType.hashCode()) * 31) + this.bridgeTarget.hashCode()) * 31) + this.bridgeTypes.hashCode()) * 31) + this.attributeAppender.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Record prepend(ByteCodeAppender byteCodeAppender) {
                    return new AccessBridgeWrapper(this.delegate.prepend(byteCodeAppender), this.instrumentedType, this.bridgeTarget, this.bridgeTypes, this.attributeAppender);
                }

                /* renamed from: of */
                public static Record m15111of(Record record, TypeDescription typeDescription, MethodDescription methodDescription, Set<MethodDescription.TypeToken> set, MethodAttributeAppender methodAttributeAppender) {
                    HashSet hashSet = new HashSet();
                    for (MethodDescription.TypeToken typeToken : set) {
                        if (methodDescription.isBridgeCompatible(typeToken)) {
                            hashSet.add(typeToken);
                        }
                    }
                    if (!hashSet.isEmpty()) {
                        if (!typeDescription.isInterface() || record.getSort().isImplemented()) {
                            return new AccessBridgeWrapper(record, typeDescription, methodDescription, hashSet, methodAttributeAppender);
                        }
                        return record;
                    }
                    return record;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void apply(ClassVisitor classVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                    StackManipulation m14971to;
                    this.delegate.apply(classVisitor, context, factory);
                    for (MethodDescription.TypeToken typeToken : this.bridgeTypes) {
                        AccessorBridge accessorBridge = new AccessorBridge(this.bridgeTarget, typeToken, this.instrumentedType);
                        BridgeTarget bridgeTarget = new BridgeTarget(this.bridgeTarget, this.instrumentedType);
                        MethodVisitor visitMethod = classVisitor.visitMethod(accessorBridge.getActualModifiers(true, getVisibility()), accessorBridge.getInternalName(), accessorBridge.getDescriptor(), NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE, accessorBridge.getExceptionTypes().asErasures().toInternalNames());
                        if (visitMethod != null) {
                            this.attributeAppender.apply(visitMethod, accessorBridge, factory.mo15016on(this.instrumentedType));
                            visitMethod.visitCode();
                            StackManipulation[] stackManipulationArr = new StackManipulation[4];
                            stackManipulationArr[0] = MethodVariableAccess.allArgumentsOf(accessorBridge).asBridgeOf(bridgeTarget).prependThisReference();
                            stackManipulationArr[1] = MethodInvocation.invoke((MethodDescription.InDefinedShape) bridgeTarget).virtual(this.instrumentedType);
                            if (bridgeTarget.getReturnType().asErasure().isAssignableTo(accessorBridge.getReturnType().asErasure())) {
                                m14971to = StackManipulation.Trivial.INSTANCE;
                            } else {
                                m14971to = TypeCasting.m14971to(accessorBridge.getReturnType().asErasure());
                            }
                            stackManipulationArr[2] = m14971to;
                            stackManipulationArr[3] = MethodReturn.m14940of(accessorBridge.getReturnType());
                            ByteCodeAppender.Size apply = new ByteCodeAppender.Simple(stackManipulationArr).apply(visitMethod, context, accessorBridge);
                            visitMethod.visitMaxs(apply.getOperandStackSize(), apply.getLocalVariableSize());
                            visitMethod.visitEnd();
                        }
                    }
                }

                public AccessBridgeWrapper(Record record, TypeDescription typeDescription, MethodDescription methodDescription, Set<MethodDescription.TypeToken> set, MethodAttributeAppender methodAttributeAppender) {
                    this.delegate = record;
                    this.instrumentedType = typeDescription;
                    this.bridgeTarget = methodDescription;
                    this.bridgeTypes = set;
                    this.attributeAppender = methodAttributeAppender;
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class ForDefinedMethod implements Record {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class OfVisibilityBridge extends ForDefinedMethod implements ByteCodeAppender {
                    private final MethodAttributeAppender attributeAppender;
                    private final MethodDescription bridgeTarget;
                    private final TypeDescription bridgeType;
                    private final MethodDescription visibilityBridge;

                    /* loaded from: classes2.dex */
                    public static class VisibilityBridge extends MethodDescription.InDefinedShape.AbstractBase {
                        private final MethodDescription bridgeTarget;
                        private final TypeDescription instrumentedType;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return this.bridgeTarget.getDeclaredAnnotations();
                        }

                        @Override // net.bytebuddy.description.method.MethodDescription
                        @MaybeNull
                        public AnnotationValue<?, ?> getDefaultValue() {
                            return AnnotationValue.UNDEFINED;
                        }

                        @Override // net.bytebuddy.description.method.MethodDescription
                        public TypeList.Generic getExceptionTypes() {
                            return this.bridgeTarget.getExceptionTypes().asRawTypes();
                        }

                        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
                        public String getInternalName() {
                            return this.bridgeTarget.getName();
                        }

                        @Override // net.bytebuddy.description.ModifierReviewable
                        public int getModifiers() {
                            return (this.bridgeTarget.getModifiers() | 4096 | 64) & (-257);
                        }

                        @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
                        public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                            return new ParameterList.Explicit.ForTypes(this, this.bridgeTarget.getParameters().asTypeList().asRawTypes());
                        }

                        @Override // net.bytebuddy.description.method.MethodDescription
                        public TypeDescription.Generic getReturnType() {
                            return this.bridgeTarget.getReturnType().asRawType();
                        }

                        @Override // net.bytebuddy.description.TypeVariableSource
                        public TypeList.Generic getTypeVariables() {
                            return new TypeList.Generic.Empty();
                        }

                        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
                        public TypeDescription getDeclaringType() {
                            return this.instrumentedType;
                        }

                        public VisibilityBridge(TypeDescription typeDescription, MethodDescription methodDescription) {
                            this.instrumentedType = typeDescription;
                            this.bridgeTarget = methodDescription;
                        }
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                        MethodAttributeAppender methodAttributeAppender = this.attributeAppender;
                        MethodDescription methodDescription = this.visibilityBridge;
                        methodAttributeAppender.apply(methodVisitor, methodDescription, factory.mo15018on(methodDescription));
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context) {
                        return apply(methodVisitor, context, this.visibilityBridge);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyHead(MethodVisitor methodVisitor) {
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            OfVisibilityBridge ofVisibilityBridge = (OfVisibilityBridge) obj;
                            return this.visibilityBridge.equals(ofVisibilityBridge.visibilityBridge) && this.bridgeTarget.equals(ofVisibilityBridge.bridgeTarget) && this.bridgeType.equals(ofVisibilityBridge.bridgeType) && this.attributeAppender.equals(ofVisibilityBridge.attributeAppender);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public MethodDescription getMethod() {
                        return this.visibilityBridge;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Sort getSort() {
                        return Sort.IMPLEMENTED;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Visibility getVisibility() {
                        return this.bridgeTarget.getVisibility();
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.visibilityBridge.hashCode()) * 31) + this.bridgeTarget.hashCode()) * 31) + this.bridgeType.hashCode()) * 31) + this.attributeAppender.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
                    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                        return new ByteCodeAppender.Simple(MethodVariableAccess.allArgumentsOf(methodDescription).prependThisReference(), MethodInvocation.invoke(this.bridgeTarget).special(this.bridgeType), MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context, methodDescription);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Record prepend(ByteCodeAppender byteCodeAppender) {
                        return new WithBody(this.visibilityBridge, new ByteCodeAppender.Compound(this, byteCodeAppender), this.attributeAppender, this.bridgeTarget.getVisibility());
                    }

                    public OfVisibilityBridge(MethodDescription methodDescription, MethodDescription methodDescription2, TypeDescription typeDescription, MethodAttributeAppender methodAttributeAppender) {
                        this.visibilityBridge = methodDescription;
                        this.bridgeTarget = methodDescription2;
                        this.bridgeType = typeDescription;
                        this.attributeAppender = methodAttributeAppender;
                    }

                    /* renamed from: of */
                    public static Record m15110of(TypeDescription typeDescription, MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender) {
                        TypeDefinition typeDefinition = null;
                        if (methodDescription.isDefaultMethod()) {
                            TypeDescription asErasure = methodDescription.getDeclaringType().asErasure();
                            for (TypeDescription typeDescription2 : typeDescription.getInterfaces().asErasures().filter(ElementMatchers.isSubTypeOf(asErasure))) {
                                if (typeDefinition == null || asErasure.isAssignableTo(typeDefinition.asErasure())) {
                                    typeDefinition = typeDescription2;
                                }
                            }
                        }
                        if (typeDefinition == null && (typeDefinition = typeDescription.getSuperClass()) == null) {
                            typeDefinition = TypeDescription.OBJECT;
                        }
                        return new OfVisibilityBridge(new VisibilityBridge(typeDescription, methodDescription), methodDescription, typeDefinition.asErasure(), methodAttributeAppender);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                        applyAttributes(methodVisitor, factory);
                        methodVisitor.visitCode();
                        ByteCodeAppender.Size applyCode = applyCode(methodVisitor, context);
                        methodVisitor.visitMaxs(applyCode.getOperandStackSize(), applyCode.getLocalVariableSize());
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithAnnotationDefaultValue extends ForDefinedMethod {
                    private final AnnotationValue<?, ?> annotationValue;
                    private final MethodAttributeAppender methodAttributeAppender;
                    private final MethodDescription methodDescription;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                        throw new IllegalStateException("Cannot apply attributes for default value on " + this.methodDescription);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                        MethodAttributeAppender methodAttributeAppender = this.methodAttributeAppender;
                        MethodDescription methodDescription = this.methodDescription;
                        methodAttributeAppender.apply(methodVisitor, methodDescription, factory.mo15018on(methodDescription));
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context) {
                        throw new IllegalStateException("Cannot apply code for default value on " + this.methodDescription);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithAnnotationDefaultValue withAnnotationDefaultValue = (WithAnnotationDefaultValue) obj;
                            return this.methodDescription.equals(withAnnotationDefaultValue.methodDescription) && this.annotationValue.equals(withAnnotationDefaultValue.annotationValue) && this.methodAttributeAppender.equals(withAnnotationDefaultValue.methodAttributeAppender);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public MethodDescription getMethod() {
                        return this.methodDescription;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Sort getSort() {
                        return Sort.DEFINED;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Visibility getVisibility() {
                        return this.methodDescription.getVisibility();
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.annotationValue.hashCode()) * 31) + this.methodAttributeAppender.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Record prepend(ByteCodeAppender byteCodeAppender) {
                        throw new IllegalStateException("Cannot prepend code for default value on " + this.methodDescription);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyHead(MethodVisitor methodVisitor) {
                        if (this.methodDescription.isDefaultValue(this.annotationValue)) {
                            AnnotationVisitor visitAnnotationDefault = methodVisitor.visitAnnotationDefault();
                            AnnotationAppender.Default.apply(visitAnnotationDefault, this.methodDescription.getReturnType().asErasure(), AnnotationAppender.NO_NAME, this.annotationValue.resolve());
                            visitAnnotationDefault.visitEnd();
                            return;
                        }
                        throw new IllegalStateException("Cannot set " + this.annotationValue + " as default for " + this.methodDescription);
                    }

                    public WithAnnotationDefaultValue(MethodDescription methodDescription, AnnotationValue<?, ?> annotationValue, MethodAttributeAppender methodAttributeAppender) {
                        this.methodDescription = methodDescription;
                        this.annotationValue = annotationValue;
                        this.methodAttributeAppender = methodAttributeAppender;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithBody extends ForDefinedMethod {
                    private final ByteCodeAppender byteCodeAppender;
                    private final MethodAttributeAppender methodAttributeAppender;
                    private final MethodDescription methodDescription;
                    private final Visibility visibility;

                    public WithBody(MethodDescription methodDescription, ByteCodeAppender byteCodeAppender) {
                        this(methodDescription, byteCodeAppender, MethodAttributeAppender.NoOp.INSTANCE, methodDescription.getVisibility());
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                        MethodAttributeAppender methodAttributeAppender = this.methodAttributeAppender;
                        MethodDescription methodDescription = this.methodDescription;
                        methodAttributeAppender.apply(methodVisitor, methodDescription, factory.mo15018on(methodDescription));
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context) {
                        return this.byteCodeAppender.apply(methodVisitor, context, this.methodDescription);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyHead(MethodVisitor methodVisitor) {
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithBody withBody = (WithBody) obj;
                            return this.visibility.equals(withBody.visibility) && this.methodDescription.equals(withBody.methodDescription) && this.byteCodeAppender.equals(withBody.byteCodeAppender) && this.methodAttributeAppender.equals(withBody.methodAttributeAppender);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public MethodDescription getMethod() {
                        return this.methodDescription;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Sort getSort() {
                        return Sort.IMPLEMENTED;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Visibility getVisibility() {
                        return this.visibility;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.byteCodeAppender.hashCode()) * 31) + this.methodAttributeAppender.hashCode()) * 31) + this.visibility.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Record prepend(ByteCodeAppender byteCodeAppender) {
                        return new WithBody(this.methodDescription, new ByteCodeAppender.Compound(byteCodeAppender, this.byteCodeAppender), this.methodAttributeAppender, this.visibility);
                    }

                    public WithBody(MethodDescription methodDescription, ByteCodeAppender byteCodeAppender, MethodAttributeAppender methodAttributeAppender, Visibility visibility) {
                        this.methodDescription = methodDescription;
                        this.byteCodeAppender = byteCodeAppender;
                        this.methodAttributeAppender = methodAttributeAppender;
                        this.visibility = visibility;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                        applyAttributes(methodVisitor, factory);
                        methodVisitor.visitCode();
                        ByteCodeAppender.Size applyCode = applyCode(methodVisitor, context);
                        methodVisitor.visitMaxs(applyCode.getOperandStackSize(), applyCode.getLocalVariableSize());
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithoutBody extends ForDefinedMethod {
                    private final MethodAttributeAppender methodAttributeAppender;
                    private final MethodDescription methodDescription;
                    private final Visibility visibility;

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                        MethodAttributeAppender methodAttributeAppender = this.methodAttributeAppender;
                        MethodDescription methodDescription = this.methodDescription;
                        methodAttributeAppender.apply(methodVisitor, methodDescription, factory.mo15018on(methodDescription));
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                        applyAttributes(methodVisitor, factory);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context) {
                        throw new IllegalStateException("Cannot apply code for abstract method on " + this.methodDescription);
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public void applyHead(MethodVisitor methodVisitor) {
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithoutBody withoutBody = (WithoutBody) obj;
                            return this.visibility.equals(withoutBody.visibility) && this.methodDescription.equals(withoutBody.methodDescription) && this.methodAttributeAppender.equals(withoutBody.methodAttributeAppender);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public MethodDescription getMethod() {
                        return this.methodDescription;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Sort getSort() {
                        return Sort.DEFINED;
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Visibility getVisibility() {
                        return this.visibility;
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.methodAttributeAppender.hashCode()) * 31) + this.visibility.hashCode();
                    }

                    @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                    public Record prepend(ByteCodeAppender byteCodeAppender) {
                        throw new IllegalStateException("Cannot prepend code for abstract method on " + this.methodDescription);
                    }

                    public WithoutBody(MethodDescription methodDescription, MethodAttributeAppender methodAttributeAppender, Visibility visibility) {
                        this.methodDescription = methodDescription;
                        this.methodAttributeAppender = methodAttributeAppender;
                        this.visibility = visibility;
                    }
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void apply(ClassVisitor classVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                    MethodVisitor visitMethod = classVisitor.visitMethod(getMethod().getActualModifiers(getSort().isImplemented(), getVisibility()), getMethod().getInternalName(), getMethod().getDescriptor(), getMethod().getGenericSignature(), getMethod().getExceptionTypes().asErasures().toInternalNames());
                    if (visitMethod != null) {
                        ParameterList<?> parameters = getMethod().getParameters();
                        if (parameters.hasExplicitMetaData()) {
                            Iterator<T> it = parameters.iterator();
                            while (it.hasNext()) {
                                ParameterDescription parameterDescription = (ParameterDescription) it.next();
                                visitMethod.visitParameter(parameterDescription.getName(), parameterDescription.getModifiers());
                            }
                        }
                        applyHead(visitMethod);
                        applyBody(visitMethod, context, factory);
                        visitMethod.visitEnd();
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForNonImplementedMethod implements Record {
                private final MethodDescription methodDescription;

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void apply(ClassVisitor classVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory) {
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory) {
                    throw new IllegalStateException("Cannot apply body for non-implemented method on " + this.methodDescription);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context) {
                    throw new IllegalStateException("Cannot apply code for non-implemented method on " + this.methodDescription);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public void applyHead(MethodVisitor methodVisitor) {
                    throw new IllegalStateException("Cannot apply head for non-implemented method on " + this.methodDescription);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((ForNonImplementedMethod) obj).methodDescription);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public MethodDescription getMethod() {
                    return this.methodDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Sort getSort() {
                    return Sort.SKIPPED;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Visibility getVisibility() {
                    return this.methodDescription.getVisibility();
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.MethodPool.Record
                public Record prepend(ByteCodeAppender byteCodeAppender) {
                    MethodDescription methodDescription = this.methodDescription;
                    return new ForDefinedMethod.WithBody(methodDescription, new ByteCodeAppender.Compound(byteCodeAppender, new ByteCodeAppender.Simple(DefaultValue.m14957of(methodDescription.getReturnType()), MethodReturn.m14940of(this.methodDescription.getReturnType()))));
                }

                public ForNonImplementedMethod(MethodDescription methodDescription) {
                    this.methodDescription = methodDescription;
                }
            }

            void apply(ClassVisitor classVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory);

            void applyAttributes(MethodVisitor methodVisitor, AnnotationValueFilter.Factory factory);

            void applyBody(MethodVisitor methodVisitor, Implementation.Context context, AnnotationValueFilter.Factory factory);

            ByteCodeAppender.Size applyCode(MethodVisitor methodVisitor, Implementation.Context context);

            void applyHead(MethodVisitor methodVisitor);

            MethodDescription getMethod();

            Sort getSort();

            Visibility getVisibility();

            Record prepend(ByteCodeAppender byteCodeAppender);

            /* loaded from: classes2.dex */
            public enum Sort {
                SKIPPED(false, false),
                DEFINED(true, false),
                IMPLEMENTED(true, true);
                
                private final boolean define;
                private final boolean implement;

                public boolean isDefined() {
                    return this.define;
                }

                public boolean isImplemented() {
                    return this.implement;
                }

                Sort(boolean z, boolean z2) {
                    this.define = z;
                    this.implement = z2;
                }
            }
        }

        Record target(MethodDescription methodDescription);
    }

    /* loaded from: classes2.dex */
    public interface RecordComponentPool {

        /* loaded from: classes2.dex */
        public enum Disabled implements RecordComponentPool {
            INSTANCE;

            @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool
            public Record target(RecordComponentDescription recordComponentDescription) {
                throw new IllegalStateException("Cannot look up record component from disabled pool");
            }
        }

        /* loaded from: classes2.dex */
        public interface Record {
            void apply(ClassVisitor classVisitor, AnnotationValueFilter.Factory factory);

            void apply(RecordComponentVisitor recordComponentVisitor, AnnotationValueFilter.Factory factory);

            RecordComponentDescription getRecordComponent();

            RecordComponentAttributeAppender getRecordComponentAppender();

            boolean isImplicit();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForExplicitRecordComponent implements Record {
                private final RecordComponentAttributeAppender attributeAppender;
                private final RecordComponentDescription recordComponentDescription;

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public void apply(ClassVisitor classVisitor, AnnotationValueFilter.Factory factory) {
                    RecordComponentVisitor visitRecordComponent = classVisitor.visitRecordComponent(this.recordComponentDescription.getActualName(), this.recordComponentDescription.getDescriptor(), this.recordComponentDescription.getGenericSignature());
                    if (visitRecordComponent != null) {
                        RecordComponentAttributeAppender recordComponentAttributeAppender = this.attributeAppender;
                        RecordComponentDescription recordComponentDescription = this.recordComponentDescription;
                        recordComponentAttributeAppender.apply(visitRecordComponent, recordComponentDescription, factory.mo15017on(recordComponentDescription));
                        visitRecordComponent.visitEnd();
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForExplicitRecordComponent forExplicitRecordComponent = (ForExplicitRecordComponent) obj;
                        return this.attributeAppender.equals(forExplicitRecordComponent.attributeAppender) && this.recordComponentDescription.equals(forExplicitRecordComponent.recordComponentDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public RecordComponentDescription getRecordComponent() {
                    return this.recordComponentDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public RecordComponentAttributeAppender getRecordComponentAppender() {
                    return this.attributeAppender;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.attributeAppender.hashCode()) * 31) + this.recordComponentDescription.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public boolean isImplicit() {
                    return false;
                }

                public ForExplicitRecordComponent(RecordComponentAttributeAppender recordComponentAttributeAppender, RecordComponentDescription recordComponentDescription) {
                    this.attributeAppender = recordComponentAttributeAppender;
                    this.recordComponentDescription = recordComponentDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public void apply(RecordComponentVisitor recordComponentVisitor, AnnotationValueFilter.Factory factory) {
                    RecordComponentAttributeAppender recordComponentAttributeAppender = this.attributeAppender;
                    RecordComponentDescription recordComponentDescription = this.recordComponentDescription;
                    recordComponentAttributeAppender.apply(recordComponentVisitor, recordComponentDescription, factory.mo15017on(recordComponentDescription));
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForImplicitRecordComponent implements Record {
                private final RecordComponentDescription recordComponentDescription;

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public void apply(ClassVisitor classVisitor, AnnotationValueFilter.Factory factory) {
                    RecordComponentVisitor visitRecordComponent = classVisitor.visitRecordComponent(this.recordComponentDescription.getActualName(), this.recordComponentDescription.getDescriptor(), this.recordComponentDescription.getGenericSignature());
                    if (visitRecordComponent != null) {
                        RecordComponentAttributeAppender.ForInstrumentedRecordComponent forInstrumentedRecordComponent = RecordComponentAttributeAppender.ForInstrumentedRecordComponent.INSTANCE;
                        RecordComponentDescription recordComponentDescription = this.recordComponentDescription;
                        forInstrumentedRecordComponent.apply(visitRecordComponent, recordComponentDescription, factory.mo15017on(recordComponentDescription));
                        visitRecordComponent.visitEnd();
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.recordComponentDescription.equals(((ForImplicitRecordComponent) obj).recordComponentDescription);
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public RecordComponentDescription getRecordComponent() {
                    return this.recordComponentDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public RecordComponentAttributeAppender getRecordComponentAppender() {
                    throw new IllegalStateException("An implicit field record does not expose a field appender: " + this);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.recordComponentDescription.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public boolean isImplicit() {
                    return true;
                }

                public ForImplicitRecordComponent(RecordComponentDescription recordComponentDescription) {
                    this.recordComponentDescription = recordComponentDescription;
                }

                @Override // net.bytebuddy.dynamic.scaffold.TypeWriter.RecordComponentPool.Record
                public void apply(RecordComponentVisitor recordComponentVisitor, AnnotationValueFilter.Factory factory) {
                    throw new IllegalStateException("An implicit field record is not intended for partial application: " + this);
                }
            }
        }

        Record target(RecordComponentDescription recordComponentDescription);
    }

    DynamicType.Unloaded<T> make(TypeResolutionStrategy.Resolved resolved);
}
