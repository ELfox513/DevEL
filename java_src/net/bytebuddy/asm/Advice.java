package net.bytebuddy.asm;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Repeatable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.build.RepeatedAnnotationPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.TargetType;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.implementation.FieldAccessor;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.SuperMethodCall;
import net.bytebuddy.implementation.bytecode.Addition;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.implementation.bytecode.Throw;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.collection.ArrayAccess;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.constant.DoubleConstant;
import net.bytebuddy.implementation.bytecode.constant.FloatConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.LongConstant;
import net.bytebuddy.implementation.bytecode.constant.MethodConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.constant.SerializedConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.AnnotationVisitor;
import net.bytebuddy.jar.asm.Attribute;
import net.bytebuddy.jar.asm.ClassReader;
import net.bytebuddy.jar.asm.ClassVisitor;
import net.bytebuddy.jar.asm.Handle;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.jar.asm.TypePath;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.visitor.ExceptionTableSensitiveMethodVisitor;
import net.bytebuddy.utility.visitor.LineNumberPrependingMethodVisitor;
import net.bytebuddy.utility.visitor.StackAwareMethodVisitor;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class Advice implements AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper, Implementation {
    private static final MethodDescription.InDefinedShape BACKUP_ARGUMENTS;
    private static final MethodDescription.InDefinedShape INLINE_ENTER;
    private static final MethodDescription.InDefinedShape INLINE_EXIT;
    private static final MethodDescription.InDefinedShape ON_THROWABLE;
    private static final MethodDescription.InDefinedShape PREPEND_LINE_NUMBER;
    private static final MethodDescription.InDefinedShape REPEAT_ON;
    private static final MethodDescription.InDefinedShape SKIP_ON;
    private static final MethodDescription.InDefinedShape SUPPRESS_ENTER;
    private static final MethodDescription.InDefinedShape SUPPRESS_EXIT;
    @AlwaysNull
    private static final ClassReader UNDEFINED = null;
    private final Assigner assigner;
    private final Implementation delegate;
    private final ExceptionHandler exceptionHandler;
    private final Dispatcher.Resolved.ForMethodEnter methodEnter;
    private final Dispatcher.Resolved.ForMethodExit methodExit;

    /* loaded from: classes2.dex */
    public static abstract class AdviceVisitor extends ExceptionTableSensitiveMethodVisitor implements Dispatcher.RelocationHandler.Relocation {
        private static final int THIS_VARIABLE_INDEX = 0;
        private static final String THIS_VARIABLE_NAME = "this";
        public final ArgumentHandler.ForInstrumentedMethod argumentHandler;
        public final MethodDescription instrumentedMethod;
        private final Dispatcher.Bound methodEnter;
        public final Dispatcher.Bound methodExit;
        public final MethodSizeHandler.ForInstrumentedMethod methodSizeHandler;
        private final Label preparationStart;
        public final StackMapFrameHandler.ForInstrumentedMethod stackMapFrameHandler;

        /* loaded from: classes2.dex */
        public static abstract class WithExitAdvice extends AdviceVisitor {
            public final Label returnHandler;

            /* loaded from: classes2.dex */
            public static class WithExceptionHandling extends WithExitAdvice {
                private final Label exceptionHandler;
                private final TypeDescription throwable;
                public final Label userStart;

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public WithExceptionHandling(net.bytebuddy.jar.asm.MethodVisitor r14, net.bytebuddy.implementation.Implementation.Context r15, net.bytebuddy.implementation.bytecode.assign.Assigner r16, net.bytebuddy.implementation.bytecode.StackManipulation r17, net.bytebuddy.description.type.TypeDescription r18, net.bytebuddy.description.method.MethodDescription r19, net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter r20, net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit r21, int r22, int r23, net.bytebuddy.description.type.TypeDescription r24) {
                    /*
                        r13 = this;
                        r12 = r13
                        net.bytebuddy.description.type.TypeDescription$Generic r0 = r19.getReturnType()
                        java.lang.Class r1 = java.lang.Void.TYPE
                        boolean r0 = r0.represents(r1)
                        if (r0 == 0) goto L14
                        net.bytebuddy.description.type.TypeDescription r0 = net.bytebuddy.description.type.TypeDescription.THROWABLE
                        java.util.List r0 = java.util.Collections.singletonList(r0)
                        goto L2b
                    L14:
                        r0 = 2
                        net.bytebuddy.description.type.TypeDescription[] r0 = new net.bytebuddy.description.type.TypeDescription[r0]
                        r1 = 0
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = r19.getReturnType()
                        net.bytebuddy.description.type.TypeDescription r2 = r2.asErasure()
                        r0[r1] = r2
                        r1 = 1
                        net.bytebuddy.description.type.TypeDescription r2 = net.bytebuddy.description.type.TypeDescription.THROWABLE
                        r0[r1] = r2
                        java.util.List r0 = java.util.Arrays.asList(r0)
                    L2b:
                        r9 = r0
                        r0 = r13
                        r1 = r14
                        r2 = r15
                        r3 = r16
                        r4 = r17
                        r5 = r18
                        r6 = r19
                        r7 = r20
                        r8 = r21
                        r10 = r22
                        r11 = r23
                        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
                        r0 = r24
                        r12.throwable = r0
                        net.bytebuddy.jar.asm.Label r0 = new net.bytebuddy.jar.asm.Label
                        r0.<init>()
                        r12.exceptionHandler = r0
                        net.bytebuddy.jar.asm.Label r0 = new net.bytebuddy.jar.asm.Label
                        r0.<init>()
                        r12.userStart = r0
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.asm.Advice.AdviceVisitor.WithExitAdvice.WithExceptionHandling.<init>(net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.implementation.Implementation$Context, net.bytebuddy.implementation.bytecode.assign.Assigner, net.bytebuddy.implementation.bytecode.StackManipulation, net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.method.MethodDescription, net.bytebuddy.asm.Advice$Dispatcher$Resolved$ForMethodEnter, net.bytebuddy.asm.Advice$Dispatcher$Resolved$ForMethodExit, int, int, net.bytebuddy.description.type.TypeDescription):void");
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor
                public void onUserPrepare() {
                    this.f19219mv.visitTryCatchBlock(this.userStart, this.returnHandler, this.exceptionHandler, this.throwable.getInternalName());
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor
                public void onUserStart() {
                    this.f19219mv.visitLabel(this.userStart);
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor.WithExitAdvice
                public void onExitAdviceReturn() {
                    this.f19219mv.visitVarInsn(25, this.argumentHandler.thrown());
                    Label label = new Label();
                    this.f19219mv.visitJumpInsn(198, label);
                    this.f19219mv.visitVarInsn(25, this.argumentHandler.thrown());
                    this.f19219mv.visitInsn(191);
                    this.f19219mv.visitLabel(label);
                    this.stackMapFrameHandler.injectPostCompletionFrame(this.f19219mv);
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor.WithExitAdvice
                public void onUserReturn() {
                    this.stackMapFrameHandler.injectReturnFrame(this.f19219mv);
                    TypeDescription.Generic returnType = this.instrumentedMethod.getReturnType();
                    Class cls = Boolean.TYPE;
                    if (!returnType.represents(cls) && !this.instrumentedMethod.getReturnType().represents(Byte.TYPE) && !this.instrumentedMethod.getReturnType().represents(Short.TYPE) && !this.instrumentedMethod.getReturnType().represents(Character.TYPE) && !this.instrumentedMethod.getReturnType().represents(Integer.TYPE)) {
                        if (this.instrumentedMethod.getReturnType().represents(Long.TYPE)) {
                            this.f19219mv.visitVarInsn(55, this.argumentHandler.returned());
                        } else if (this.instrumentedMethod.getReturnType().represents(Float.TYPE)) {
                            this.f19219mv.visitVarInsn(56, this.argumentHandler.returned());
                        } else if (this.instrumentedMethod.getReturnType().represents(Double.TYPE)) {
                            this.f19219mv.visitVarInsn(57, this.argumentHandler.returned());
                        } else if (!this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                            this.f19219mv.visitVarInsn(58, this.argumentHandler.returned());
                        }
                    } else {
                        this.f19219mv.visitVarInsn(54, this.argumentHandler.returned());
                    }
                    this.f19219mv.visitInsn(1);
                    this.f19219mv.visitVarInsn(58, this.argumentHandler.thrown());
                    Label label = new Label();
                    this.f19219mv.visitJumpInsn(167, label);
                    this.f19219mv.visitLabel(this.exceptionHandler);
                    this.stackMapFrameHandler.injectExceptionFrame(this.f19219mv);
                    this.f19219mv.visitVarInsn(58, this.argumentHandler.thrown());
                    if (!this.instrumentedMethod.getReturnType().represents(cls) && !this.instrumentedMethod.getReturnType().represents(Byte.TYPE) && !this.instrumentedMethod.getReturnType().represents(Short.TYPE) && !this.instrumentedMethod.getReturnType().represents(Character.TYPE) && !this.instrumentedMethod.getReturnType().represents(Integer.TYPE)) {
                        if (this.instrumentedMethod.getReturnType().represents(Long.TYPE)) {
                            this.f19219mv.visitInsn(9);
                            this.f19219mv.visitVarInsn(55, this.argumentHandler.returned());
                        } else if (this.instrumentedMethod.getReturnType().represents(Float.TYPE)) {
                            this.f19219mv.visitInsn(11);
                            this.f19219mv.visitVarInsn(56, this.argumentHandler.returned());
                        } else if (this.instrumentedMethod.getReturnType().represents(Double.TYPE)) {
                            this.f19219mv.visitInsn(14);
                            this.f19219mv.visitVarInsn(57, this.argumentHandler.returned());
                        } else if (!this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                            this.f19219mv.visitInsn(1);
                            this.f19219mv.visitVarInsn(58, this.argumentHandler.returned());
                        }
                    } else {
                        this.f19219mv.visitInsn(3);
                        this.f19219mv.visitVarInsn(54, this.argumentHandler.returned());
                    }
                    this.f19219mv.visitLabel(label);
                    this.methodSizeHandler.requireStackSize(StackSize.SINGLE.getSize());
                }
            }

            /* loaded from: classes2.dex */
            public static class WithoutExceptionHandling extends WithExitAdvice {
                @Override // net.bytebuddy.asm.Advice.AdviceVisitor.WithExitAdvice
                public void onExitAdviceReturn() {
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor
                public void onUserPrepare() {
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor
                public void onUserStart() {
                }

                @Override // net.bytebuddy.asm.Advice.AdviceVisitor.WithExitAdvice
                public void onUserReturn() {
                    if (!this.instrumentedMethod.getReturnType().represents(Boolean.TYPE) && !this.instrumentedMethod.getReturnType().represents(Byte.TYPE) && !this.instrumentedMethod.getReturnType().represents(Short.TYPE) && !this.instrumentedMethod.getReturnType().represents(Character.TYPE) && !this.instrumentedMethod.getReturnType().represents(Integer.TYPE)) {
                        if (this.instrumentedMethod.getReturnType().represents(Long.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.f19219mv);
                            this.f19219mv.visitVarInsn(55, this.argumentHandler.returned());
                            return;
                        } else if (this.instrumentedMethod.getReturnType().represents(Float.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.f19219mv);
                            this.f19219mv.visitVarInsn(56, this.argumentHandler.returned());
                            return;
                        } else if (this.instrumentedMethod.getReturnType().represents(Double.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.f19219mv);
                            this.f19219mv.visitVarInsn(57, this.argumentHandler.returned());
                            return;
                        } else if (!this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.f19219mv);
                            this.f19219mv.visitVarInsn(58, this.argumentHandler.returned());
                            return;
                        } else {
                            return;
                        }
                    }
                    this.stackMapFrameHandler.injectReturnFrame(this.f19219mv);
                    this.f19219mv.visitVarInsn(54, this.argumentHandler.returned());
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public WithoutExceptionHandling(net.bytebuddy.jar.asm.MethodVisitor r14, net.bytebuddy.implementation.Implementation.Context r15, net.bytebuddy.implementation.bytecode.assign.Assigner r16, net.bytebuddy.implementation.bytecode.StackManipulation r17, net.bytebuddy.description.type.TypeDescription r18, net.bytebuddy.description.method.MethodDescription r19, net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter r20, net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit r21, int r22, int r23) {
                    /*
                        r13 = this;
                        net.bytebuddy.description.type.TypeDescription$Generic r0 = r19.getReturnType()
                        java.lang.Class r1 = java.lang.Void.TYPE
                        boolean r0 = r0.represents(r1)
                        if (r0 == 0) goto L11
                        java.util.List r0 = java.util.Collections.emptyList()
                        goto L1d
                    L11:
                        net.bytebuddy.description.type.TypeDescription$Generic r0 = r19.getReturnType()
                        net.bytebuddy.description.type.TypeDescription r0 = r0.asErasure()
                        java.util.List r0 = java.util.Collections.singletonList(r0)
                    L1d:
                        r10 = r0
                        r1 = r13
                        r2 = r14
                        r3 = r15
                        r4 = r16
                        r5 = r17
                        r6 = r18
                        r7 = r19
                        r8 = r20
                        r9 = r21
                        r11 = r22
                        r12 = r23
                        r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.asm.Advice.AdviceVisitor.WithExitAdvice.WithoutExceptionHandling.<init>(net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.implementation.Implementation$Context, net.bytebuddy.implementation.bytecode.assign.Assigner, net.bytebuddy.implementation.bytecode.StackManipulation, net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.method.MethodDescription, net.bytebuddy.asm.Advice$Dispatcher$Resolved$ForMethodEnter, net.bytebuddy.asm.Advice$Dispatcher$Resolved$ForMethodExit, int, int):void");
                }
            }

            public WithExitAdvice(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, StackManipulation stackManipulation, TypeDescription typeDescription, MethodDescription methodDescription, Dispatcher.Resolved.ForMethodEnter forMethodEnter, Dispatcher.Resolved.ForMethodExit forMethodExit, List<? extends TypeDescription> list, int i, int i2) {
                super(StackAwareMethodVisitor.m14749of(methodVisitor, methodDescription), context, assigner, stackManipulation, typeDescription, methodDescription, forMethodEnter, forMethodExit, list, i, i2);
                this.returnHandler = new Label();
            }

            public abstract void onExitAdviceReturn();

            public abstract void onUserReturn();

            @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.Relocation
            public void apply(MethodVisitor methodVisitor) {
                if (!this.instrumentedMethod.getReturnType().represents(Boolean.TYPE) && !this.instrumentedMethod.getReturnType().represents(Byte.TYPE) && !this.instrumentedMethod.getReturnType().represents(Short.TYPE) && !this.instrumentedMethod.getReturnType().represents(Character.TYPE) && !this.instrumentedMethod.getReturnType().represents(Integer.TYPE)) {
                    if (this.instrumentedMethod.getReturnType().represents(Long.TYPE)) {
                        methodVisitor.visitInsn(9);
                    } else if (this.instrumentedMethod.getReturnType().represents(Float.TYPE)) {
                        methodVisitor.visitInsn(11);
                    } else if (this.instrumentedMethod.getReturnType().represents(Double.TYPE)) {
                        methodVisitor.visitInsn(14);
                    } else if (!this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                        methodVisitor.visitInsn(1);
                    }
                } else {
                    methodVisitor.visitInsn(3);
                }
                methodVisitor.visitJumpInsn(167, this.returnHandler);
            }

            @Override // net.bytebuddy.asm.Advice.AdviceVisitor
            public void onUserEnd() {
                this.f19219mv.visitLabel(this.returnHandler);
                onUserReturn();
                this.stackMapFrameHandler.injectCompletionFrame(this.f19219mv);
                this.methodExit.apply();
                onExitAdviceReturn();
                if (!this.instrumentedMethod.getReturnType().represents(Boolean.TYPE) && !this.instrumentedMethod.getReturnType().represents(Byte.TYPE) && !this.instrumentedMethod.getReturnType().represents(Short.TYPE) && !this.instrumentedMethod.getReturnType().represents(Character.TYPE) && !this.instrumentedMethod.getReturnType().represents(Integer.TYPE)) {
                    if (this.instrumentedMethod.getReturnType().represents(Long.TYPE)) {
                        this.f19219mv.visitVarInsn(22, this.argumentHandler.returned());
                        this.f19219mv.visitInsn(173);
                    } else if (this.instrumentedMethod.getReturnType().represents(Float.TYPE)) {
                        this.f19219mv.visitVarInsn(23, this.argumentHandler.returned());
                        this.f19219mv.visitInsn(174);
                    } else if (this.instrumentedMethod.getReturnType().represents(Double.TYPE)) {
                        this.f19219mv.visitVarInsn(24, this.argumentHandler.returned());
                        this.f19219mv.visitInsn(175);
                    } else if (!this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                        this.f19219mv.visitVarInsn(25, this.argumentHandler.returned());
                        this.f19219mv.visitInsn(176);
                    } else {
                        this.f19219mv.visitInsn(177);
                    }
                } else {
                    this.f19219mv.visitVarInsn(21, this.argumentHandler.returned());
                    this.f19219mv.visitInsn(172);
                }
                this.methodSizeHandler.requireStackSize(this.instrumentedMethod.getReturnType().getStackSize().getSize());
            }

            @Override // net.bytebuddy.utility.visitor.ExceptionTableSensitiveMethodVisitor
            public void onVisitInsn(int i) {
                switch (i) {
                    case 172:
                        this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(54, 21, StackSize.SINGLE));
                        break;
                    case 173:
                        this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(55, 22, StackSize.DOUBLE));
                        break;
                    case 174:
                        this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(56, 23, StackSize.SINGLE));
                        break;
                    case 175:
                        this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(57, 24, StackSize.DOUBLE));
                        break;
                    case 176:
                        this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(58, 25, StackSize.SINGLE));
                        break;
                    case 177:
                        ((StackAwareMethodVisitor) this.f19219mv).drainStack();
                        break;
                    default:
                        this.f19219mv.visitInsn(i);
                        return;
                }
                this.f19219mv.visitJumpInsn(167, this.returnHandler);
            }
        }

        /* loaded from: classes2.dex */
        public static class WithoutExitAdvice extends AdviceVisitor {
            @Override // net.bytebuddy.asm.Advice.AdviceVisitor
            public void onUserEnd() {
            }

            @Override // net.bytebuddy.asm.Advice.AdviceVisitor
            public void onUserPrepare() {
            }

            @Override // net.bytebuddy.asm.Advice.AdviceVisitor
            public void onUserStart() {
            }

            public WithoutExitAdvice(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, StackManipulation stackManipulation, TypeDescription typeDescription, MethodDescription methodDescription, Dispatcher.Resolved.ForMethodEnter forMethodEnter, int i, int i2) {
                super(methodVisitor, context, assigner, stackManipulation, typeDescription, methodDescription, forMethodEnter, Dispatcher.Inactive.INSTANCE, Collections.emptyList(), i, i2);
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.Relocation
            public void apply(MethodVisitor methodVisitor) {
                if (!this.instrumentedMethod.getReturnType().represents(Boolean.TYPE) && !this.instrumentedMethod.getReturnType().represents(Byte.TYPE) && !this.instrumentedMethod.getReturnType().represents(Short.TYPE) && !this.instrumentedMethod.getReturnType().represents(Character.TYPE) && !this.instrumentedMethod.getReturnType().represents(Integer.TYPE)) {
                    if (this.instrumentedMethod.getReturnType().represents(Long.TYPE)) {
                        methodVisitor.visitInsn(9);
                        methodVisitor.visitInsn(173);
                        return;
                    } else if (this.instrumentedMethod.getReturnType().represents(Float.TYPE)) {
                        methodVisitor.visitInsn(11);
                        methodVisitor.visitInsn(174);
                        return;
                    } else if (this.instrumentedMethod.getReturnType().represents(Double.TYPE)) {
                        methodVisitor.visitInsn(14);
                        methodVisitor.visitInsn(175);
                        return;
                    } else if (this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                        methodVisitor.visitInsn(177);
                        return;
                    } else {
                        methodVisitor.visitInsn(1);
                        methodVisitor.visitInsn(176);
                        return;
                    }
                }
                methodVisitor.visitInsn(3);
                methodVisitor.visitInsn(172);
            }
        }

        public AdviceVisitor(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, StackManipulation stackManipulation, TypeDescription typeDescription, MethodDescription methodDescription, Dispatcher.Resolved.ForMethodEnter forMethodEnter, Dispatcher.Resolved.ForMethodExit forMethodExit, List<? extends TypeDescription> list, int i, int i2) {
            super(OpenedClassReader.ASM_API, methodVisitor);
            List singletonList;
            List singletonList2;
            List singletonList3;
            this.instrumentedMethod = methodDescription;
            Label label = new Label();
            this.preparationStart = label;
            TreeMap treeMap = new TreeMap();
            treeMap.putAll(forMethodEnter.getNamedTypes());
            treeMap.putAll(forMethodExit.getNamedTypes());
            ArgumentHandler.ForInstrumentedMethod resolve = forMethodExit.getArgumentHandlerFactory().resolve(methodDescription, forMethodEnter.getAdviceType(), forMethodExit.getAdviceType(), treeMap);
            this.argumentHandler = resolve;
            if (forMethodExit.getAdviceType().represents(Void.TYPE)) {
                singletonList = Collections.emptyList();
            } else {
                singletonList = Collections.singletonList(forMethodExit.getAdviceType().asErasure());
            }
            List m14776of = CompoundList.m14776of(singletonList, (List) resolve.getNamedTypes());
            if (forMethodEnter.getActualAdviceType().represents(Void.TYPE)) {
                singletonList2 = Collections.emptyList();
            } else {
                singletonList2 = Collections.singletonList(forMethodEnter.getActualAdviceType().asErasure());
            }
            List list2 = singletonList2;
            if (forMethodEnter.getAdviceType().represents(Void.TYPE)) {
                singletonList3 = Collections.emptyList();
            } else {
                singletonList3 = Collections.singletonList(forMethodEnter.getAdviceType().asErasure());
            }
            List list3 = singletonList3;
            MethodSizeHandler.ForInstrumentedMethod m15311of = MethodSizeHandler.Default.m15311of(methodDescription, m14776of, list3, list, resolve.isCopyingArguments(), i);
            this.methodSizeHandler = m15311of;
            StackMapFrameHandler.ForInstrumentedMethod m15277of = StackMapFrameHandler.Default.m15277of(typeDescription, methodDescription, m14776of, list2, list3, list, forMethodExit.isAlive(), resolve.isCopyingArguments(), context.getClassFileVersion(), i, i2);
            this.stackMapFrameHandler = m15277of;
            this.methodEnter = forMethodEnter.bind(typeDescription, methodDescription, methodVisitor, context, assigner, resolve, m15311of, m15277of, stackManipulation, this);
            this.methodExit = forMethodExit.bind(typeDescription, methodDescription, methodVisitor, context, assigner, resolve, m15311of, m15277of, stackManipulation, new Dispatcher.RelocationHandler.Relocation.ForLabel(label));
        }

        public abstract void onUserEnd();

        public abstract void onUserPrepare();

        public abstract void onUserStart();

        @Override // net.bytebuddy.utility.visitor.ExceptionTableSensitiveMethodVisitor
        public void onVisitFrame(int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
            this.stackMapFrameHandler.translateFrame(this.f19219mv, i, i2, objArr, i3, objArr2);
        }

        @Override // net.bytebuddy.utility.visitor.ExceptionTableSensitiveMethodVisitor
        public void onVisitIincInsn(int i, int i2) {
            this.f19219mv.visitIincInsn(this.argumentHandler.argument(i), i2);
        }

        @Override // net.bytebuddy.utility.visitor.ExceptionTableSensitiveMethodVisitor
        public void onVisitVarInsn(int i, int i2) {
            this.f19219mv.visitVarInsn(i, this.argumentHandler.argument(i2));
        }

        @Override // net.bytebuddy.jar.asm.MethodVisitor
        public AnnotationVisitor visitLocalVariableAnnotation(int i, TypePath typePath, Label[] labelArr, Label[] labelArr2, int[] iArr, String str, boolean z) {
            int[] iArr2 = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                iArr2[i2] = this.argumentHandler.variable(iArr[i2]);
            }
            return this.f19219mv.visitLocalVariableAnnotation(i, typePath, labelArr, labelArr2, iArr2, str, z);
        }

        @Override // net.bytebuddy.utility.visitor.ExceptionTableSensitiveMethodVisitor
        public void onAfterExceptionTable() {
            this.methodEnter.prepare();
            onUserPrepare();
            this.methodExit.prepare();
            this.methodEnter.initialize();
            this.methodExit.initialize();
            this.stackMapFrameHandler.injectInitializationFrame(this.f19219mv);
            this.methodEnter.apply();
            this.f19219mv.visitLabel(this.preparationStart);
            this.methodSizeHandler.requireStackSize(this.argumentHandler.prepare(this.f19219mv));
            this.stackMapFrameHandler.injectStartFrame(this.f19219mv);
            this.f19219mv.visitInsn(0);
            onUserStart();
        }

        @Override // net.bytebuddy.jar.asm.MethodVisitor
        public void visitLocalVariable(String str, String str2, String str3, Label label, Label label2, int i) {
            MethodVisitor methodVisitor = this.f19219mv;
            if (i != 0 || !THIS_VARIABLE_NAME.equals(str)) {
                i = this.argumentHandler.variable(i);
            }
            methodVisitor.visitLocalVariable(str, str2, str3, label, label2, i);
        }

        @Override // net.bytebuddy.jar.asm.MethodVisitor
        public void visitMaxs(int i, int i2) {
            onUserEnd();
            this.f19219mv.visitMaxs(this.methodSizeHandler.compoundStackSize(i), this.methodSizeHandler.compoundLocalVariableLength(i2));
        }
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface AllArguments {
        boolean nullIfEmpty() default false;

        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final Advice advice;
        private final ByteCodeAppender delegate;
        private final Implementation.Target implementationTarget;

        /* loaded from: classes2.dex */
        public static class EmulatingMethodVisitor extends MethodVisitor {
            private final ByteCodeAppender delegate;
            private int localVariableLength;
            private int stackSize;

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitCode() {
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitEnd() {
            }

            public EmulatingMethodVisitor(MethodVisitor methodVisitor, ByteCodeAppender byteCodeAppender) {
                super(OpenedClassReader.ASM_API, methodVisitor);
                this.delegate = byteCodeAppender;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitMaxs(int i, int i2) {
                this.stackSize = i;
                this.localVariableLength = i2;
            }

            public ByteCodeAppender.Size resolve(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                methodVisitor.visitCode();
                ByteCodeAppender.Size apply = this.delegate.apply(methodVisitor, context, methodDescription);
                methodVisitor.visitMaxs(apply.getOperandStackSize(), apply.getLocalVariableSize());
                methodVisitor.visitEnd();
                return new ByteCodeAppender.Size(this.stackSize, this.localVariableLength);
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.advice.equals(appender.advice) && this.implementationTarget.equals(appender.implementationTarget) && this.delegate.equals(appender.delegate);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.advice.hashCode()) * 31) + this.implementationTarget.hashCode()) * 31) + this.delegate.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            EmulatingMethodVisitor emulatingMethodVisitor = new EmulatingMethodVisitor(methodVisitor, this.delegate);
            return emulatingMethodVisitor.resolve(this.advice.doWrap(this.implementationTarget.getInstrumentedType(), methodDescription, emulatingMethodVisitor, context, 0, 0), context, methodDescription);
        }

        public Appender(Advice advice, Implementation.Target target, ByteCodeAppender byteCodeAppender) {
            this.advice = advice;
            this.implementationTarget = target;
            this.delegate = byteCodeAppender;
        }
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Argument {
        boolean optional() default false;

        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;

        int value();
    }

    /* loaded from: classes2.dex */
    public interface ArgumentHandler {
        public static final int THIS_REFERENCE = 0;

        /* loaded from: classes2.dex */
        public enum Factory {
            SIMPLE { // from class: net.bytebuddy.asm.Advice.ArgumentHandler.Factory.1
                @Override // net.bytebuddy.asm.Advice.ArgumentHandler.Factory
                public ForInstrumentedMethod resolve(MethodDescription methodDescription, TypeDefinition typeDefinition, TypeDefinition typeDefinition2, SortedMap<String, TypeDefinition> sortedMap) {
                    return new ForInstrumentedMethod.Default.Simple(methodDescription, typeDefinition2, sortedMap, typeDefinition);
                }
            },
            COPYING { // from class: net.bytebuddy.asm.Advice.ArgumentHandler.Factory.2
                @Override // net.bytebuddy.asm.Advice.ArgumentHandler.Factory
                public ForInstrumentedMethod resolve(MethodDescription methodDescription, TypeDefinition typeDefinition, TypeDefinition typeDefinition2, SortedMap<String, TypeDefinition> sortedMap) {
                    return new ForInstrumentedMethod.Default.Copying(methodDescription, typeDefinition2, sortedMap, typeDefinition);
                }
            };

            public abstract ForInstrumentedMethod resolve(MethodDescription methodDescription, TypeDefinition typeDefinition, TypeDefinition typeDefinition2, SortedMap<String, TypeDefinition> sortedMap);
        }

        /* loaded from: classes2.dex */
        public interface ForAdvice extends ArgumentHandler {

            /* loaded from: classes2.dex */
            public static abstract class Default implements ForAdvice {
                public final MethodDescription adviceMethod;
                public final TypeDefinition exitType;
                public final MethodDescription instrumentedMethod;
                public final SortedMap<String, TypeDefinition> namedTypes;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForMethodEnter extends Default {
                    public ForMethodEnter(MethodDescription methodDescription, MethodDescription methodDescription2, TypeDefinition typeDefinition, SortedMap<String, TypeDefinition> sortedMap) {
                        super(methodDescription, methodDescription2, typeDefinition, sortedMap);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass();
                    }

                    public int hashCode() {
                        return getClass().hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                    public int returned() {
                        throw new IllegalStateException("Cannot resolve the return value offset during enter advice");
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                    public int thrown() {
                        throw new IllegalStateException("Cannot resolve the thrown value offset during enter advice");
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForAdvice
                    public int mapped(int i) {
                        return (((this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize()) + StackSize.m14976of(this.namedTypes.values())) - this.adviceMethod.getStackSize()) + i;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForMethodExit extends Default {
                    private final TypeDefinition enterType;
                    private final StackSize throwableSize;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForMethodExit forMethodExit = (ForMethodExit) obj;
                            return this.throwableSize.equals(forMethodExit.throwableSize) && this.enterType.equals(forMethodExit.enterType);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.enterType.hashCode()) * 31) + this.throwableSize.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForAdvice
                    public int mapped(int i) {
                        return ((((((this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize()) + StackSize.m14976of(this.namedTypes.values())) + this.enterType.getStackSize().getSize()) + this.instrumentedMethod.getReturnType().getStackSize().getSize()) + this.throwableSize.getSize()) - this.adviceMethod.getStackSize()) + i;
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                    public int returned() {
                        return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize();
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                    public int thrown() {
                        return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize() + this.instrumentedMethod.getReturnType().getStackSize().getSize();
                    }

                    public ForMethodExit(MethodDescription methodDescription, MethodDescription methodDescription2, TypeDefinition typeDefinition, SortedMap<String, TypeDefinition> sortedMap, TypeDefinition typeDefinition2, StackSize stackSize) {
                        super(methodDescription, methodDescription2, typeDefinition, sortedMap);
                        this.enterType = typeDefinition2;
                        this.throwableSize = stackSize;
                    }
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int argument(int i) {
                    return i;
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int exit() {
                    return this.instrumentedMethod.getStackSize();
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int enter() {
                    return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values());
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int named(String str) {
                    return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.headMap(str).values());
                }

                public Default(MethodDescription methodDescription, MethodDescription methodDescription2, TypeDefinition typeDefinition, SortedMap<String, TypeDefinition> sortedMap) {
                    this.instrumentedMethod = methodDescription;
                    this.adviceMethod = methodDescription2;
                    this.exitType = typeDefinition;
                    this.namedTypes = sortedMap;
                }
            }

            int mapped(int i);
        }

        /* loaded from: classes2.dex */
        public interface ForInstrumentedMethod extends ArgumentHandler {

            /* loaded from: classes2.dex */
            public static abstract class Default implements ForInstrumentedMethod {
                public final TypeDefinition enterType;
                public final TypeDefinition exitType;
                public final MethodDescription instrumentedMethod;
                public final SortedMap<String, TypeDefinition> namedTypes;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Copying extends Default {
                    public Copying(MethodDescription methodDescription, TypeDefinition typeDefinition, SortedMap<String, TypeDefinition> sortedMap, TypeDefinition typeDefinition2) {
                        super(methodDescription, typeDefinition, sortedMap, typeDefinition2);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass();
                    }

                    public int hashCode() {
                        return getClass().hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                    public boolean isCopyingArguments() {
                        return true;
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                    public int argument(int i) {
                        return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize() + i;
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                    public int prepare(MethodVisitor methodVisitor) {
                        StackSize stackSize;
                        if (!this.instrumentedMethod.isStatic()) {
                            methodVisitor.visitVarInsn(25, 0);
                            methodVisitor.visitVarInsn(58, this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize());
                            stackSize = StackSize.SINGLE;
                        } else {
                            stackSize = StackSize.ZERO;
                        }
                        Iterator<T> it = this.instrumentedMethod.getParameters().iterator();
                        while (it.hasNext()) {
                            ParameterDescription parameterDescription = (ParameterDescription) it.next();
                            Type type = Type.getType(parameterDescription.getType().asErasure().getDescriptor());
                            methodVisitor.visitVarInsn(type.getOpcode(21), parameterDescription.getOffset());
                            methodVisitor.visitVarInsn(type.getOpcode(54), this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize() + parameterDescription.getOffset());
                            stackSize = stackSize.maximum(parameterDescription.getType().getStackSize());
                        }
                        return stackSize.getSize();
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                    public int variable(int i) {
                        return (!this.instrumentedMethod.isStatic()) + this.instrumentedMethod.getParameters().size() + (!this.exitType.represents(Void.TYPE)) + this.namedTypes.size() + (!this.enterType.represents(Void.TYPE)) + i;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple extends Default {
                    public Simple(MethodDescription methodDescription, TypeDefinition typeDefinition, SortedMap<String, TypeDefinition> sortedMap, TypeDefinition typeDefinition2) {
                        super(methodDescription, typeDefinition, sortedMap, typeDefinition2);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass();
                    }

                    public int hashCode() {
                        return getClass().hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                    public boolean isCopyingArguments() {
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                    public int prepare(MethodVisitor methodVisitor) {
                        return 0;
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                    public int argument(int i) {
                        if (i >= this.instrumentedMethod.getStackSize()) {
                            return i + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize();
                        }
                        return i;
                    }

                    @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                    public int variable(int i) {
                        if (i >= (!this.instrumentedMethod.isStatic()) + this.instrumentedMethod.getParameters().size()) {
                            return i + (!this.exitType.represents(Void.TYPE)) + this.namedTypes.size() + (!this.enterType.represents(Void.TYPE));
                        }
                        return i;
                    }
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                public ForAdvice bindEnter(MethodDescription methodDescription) {
                    return new ForAdvice.Default.ForMethodEnter(this.instrumentedMethod, methodDescription, this.exitType, this.namedTypes);
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                public ForAdvice bindExit(MethodDescription methodDescription, boolean z) {
                    return new ForAdvice.Default.ForMethodExit(this.instrumentedMethod, methodDescription, this.exitType, this.namedTypes, this.enterType, z ? StackSize.ZERO : StackSize.SINGLE);
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int exit() {
                    return this.instrumentedMethod.getStackSize();
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int enter() {
                    return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values());
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler.ForInstrumentedMethod
                public List<TypeDescription> getNamedTypes() {
                    ArrayList arrayList = new ArrayList(this.namedTypes.size());
                    for (TypeDefinition typeDefinition : this.namedTypes.values()) {
                        arrayList.add(typeDefinition.asErasure());
                    }
                    return arrayList;
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int named(String str) {
                    return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.headMap(str).values());
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int returned() {
                    return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize();
                }

                @Override // net.bytebuddy.asm.Advice.ArgumentHandler
                public int thrown() {
                    return this.instrumentedMethod.getStackSize() + this.exitType.getStackSize().getSize() + StackSize.m14976of(this.namedTypes.values()) + this.enterType.getStackSize().getSize() + this.instrumentedMethod.getReturnType().getStackSize().getSize();
                }

                public Default(MethodDescription methodDescription, TypeDefinition typeDefinition, SortedMap<String, TypeDefinition> sortedMap, TypeDefinition typeDefinition2) {
                    this.instrumentedMethod = methodDescription;
                    this.namedTypes = sortedMap;
                    this.exitType = typeDefinition;
                    this.enterType = typeDefinition2;
                }
            }

            ForAdvice bindEnter(MethodDescription methodDescription);

            ForAdvice bindExit(MethodDescription methodDescription, boolean z);

            List<TypeDescription> getNamedTypes();

            boolean isCopyingArguments();

            int prepare(MethodVisitor methodVisitor);

            int variable(int i);
        }

        int argument(int i);

        int enter();

        int exit();

        int named(String str);

        int returned();

        int thrown();
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class AssignReturned implements PostProcessor {
        public static final int NO_INDEX = -1;
        public final ExceptionHandler.Factory exceptionHandlerFactory;
        public final boolean exit;
        public final boolean skipOnDefaultValue;
        public final TypeDescription.Generic type;

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface AsScalar {
            boolean skipOnDefaultValue() default true;
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class DefaultValueSkip implements StackManipulation {
            private final Dispatcher dispatcher;
            private final int offset;
            private final StackManipulation stackManipulation;
            private final StackMapFrameHandler.ForPostProcessor stackMapFrameHandler;

            /* loaded from: classes2.dex */
            public enum Dispatcher {
                INTEGER { // from class: net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher.1
                    @Override // net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher
                    public StackManipulation.Size apply(MethodVisitor methodVisitor, int i, Label label) {
                        methodVisitor.visitVarInsn(21, i);
                        methodVisitor.visitJumpInsn(153, label);
                        return new StackManipulation.Size(0, 1);
                    }
                },
                LONG { // from class: net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher.2
                    @Override // net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher
                    public StackManipulation.Size apply(MethodVisitor methodVisitor, int i, Label label) {
                        methodVisitor.visitVarInsn(22, i);
                        methodVisitor.visitInsn(9);
                        methodVisitor.visitInsn(148);
                        methodVisitor.visitJumpInsn(153, label);
                        return new StackManipulation.Size(0, 4);
                    }
                },
                FLOAT { // from class: net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher.3
                    @Override // net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher
                    public StackManipulation.Size apply(MethodVisitor methodVisitor, int i, Label label) {
                        methodVisitor.visitVarInsn(23, i);
                        methodVisitor.visitInsn(11);
                        methodVisitor.visitInsn(149);
                        methodVisitor.visitJumpInsn(153, label);
                        return new StackManipulation.Size(0, 2);
                    }
                },
                DOUBLE { // from class: net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher.4
                    @Override // net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher
                    public StackManipulation.Size apply(MethodVisitor methodVisitor, int i, Label label) {
                        methodVisitor.visitVarInsn(24, i);
                        methodVisitor.visitInsn(14);
                        methodVisitor.visitInsn(151);
                        methodVisitor.visitJumpInsn(153, label);
                        return new StackManipulation.Size(0, 4);
                    }
                },
                REFERENCE { // from class: net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher.5
                    @Override // net.bytebuddy.asm.Advice.AssignReturned.DefaultValueSkip.Dispatcher
                    public StackManipulation.Size apply(MethodVisitor methodVisitor, int i, Label label) {
                        methodVisitor.visitVarInsn(25, i);
                        methodVisitor.visitJumpInsn(198, label);
                        return new StackManipulation.Size(0, 2);
                    }
                };

                public abstract StackManipulation.Size apply(MethodVisitor methodVisitor, int i, Label label);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    DefaultValueSkip defaultValueSkip = (DefaultValueSkip) obj;
                    return this.offset == defaultValueSkip.offset && this.dispatcher.equals(defaultValueSkip.dispatcher) && this.stackManipulation.equals(defaultValueSkip.stackManipulation) && this.stackMapFrameHandler.equals(defaultValueSkip.stackMapFrameHandler);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.stackMapFrameHandler.hashCode()) * 31) + this.offset) * 31) + this.dispatcher.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return this.stackManipulation.isValid();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                Label label = new Label();
                StackManipulation.Size aggregate = this.dispatcher.apply(methodVisitor, this.offset, label).aggregate(this.stackManipulation.apply(methodVisitor, context));
                methodVisitor.visitLabel(label);
                this.stackMapFrameHandler.injectIntermediateFrame(methodVisitor, Collections.emptyList());
                methodVisitor.visitInsn(0);
                return aggregate;
            }

            public DefaultValueSkip(StackManipulation stackManipulation, StackMapFrameHandler.ForPostProcessor forPostProcessor, int i, Dispatcher dispatcher) {
                this.stackManipulation = stackManipulation;
                this.stackMapFrameHandler = forPostProcessor;
                this.offset = i;
                this.dispatcher = dispatcher;
            }

            /* renamed from: of */
            public static StackManipulation m15325of(StackManipulation stackManipulation, StackMapFrameHandler.ForPostProcessor forPostProcessor, int i, TypeDefinition typeDefinition) {
                Dispatcher dispatcher;
                if (typeDefinition.isPrimitive()) {
                    if (!typeDefinition.represents(Boolean.TYPE) && !typeDefinition.represents(Byte.TYPE) && !typeDefinition.represents(Short.TYPE) && !typeDefinition.represents(Character.TYPE) && !typeDefinition.represents(Integer.TYPE)) {
                        if (typeDefinition.represents(Long.TYPE)) {
                            dispatcher = Dispatcher.LONG;
                        } else if (typeDefinition.represents(Float.TYPE)) {
                            dispatcher = Dispatcher.FLOAT;
                        } else if (typeDefinition.represents(Double.TYPE)) {
                            dispatcher = Dispatcher.DOUBLE;
                        } else {
                            throw new IllegalArgumentException("Cannot apply skip for " + typeDefinition);
                        }
                    } else {
                        dispatcher = Dispatcher.INTEGER;
                    }
                } else {
                    dispatcher = Dispatcher.REFERENCE;
                }
                return new DefaultValueSkip(stackManipulation, forPostProcessor, i, dispatcher);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ExceptionHandler implements StackManipulation {
            private final StackManipulation exceptionHandler;
            private final TypeDescription exceptionType;
            private final StackManipulation stackManipulation;
            private final StackMapFrameHandler.ForPostProcessor stackMapFrameHandler;

            /* loaded from: classes2.dex */
            public interface Factory {

                /* loaded from: classes2.dex */
                public enum NoOp implements Factory {
                    INSTANCE;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.ExceptionHandler.Factory
                    public StackManipulation wrap(StackManipulation stackManipulation, StackManipulation stackManipulation2, StackMapFrameHandler.ForPostProcessor forPostProcessor) {
                        return stackManipulation;
                    }
                }

                StackManipulation wrap(StackManipulation stackManipulation, StackManipulation stackManipulation2, StackMapFrameHandler.ForPostProcessor forPostProcessor);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Enabled implements Factory {
                    private final TypeDescription exceptionType;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.exceptionType.equals(((Enabled) obj).exceptionType);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.exceptionType.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.ExceptionHandler.Factory
                    public StackManipulation wrap(StackManipulation stackManipulation, StackManipulation stackManipulation2, StackMapFrameHandler.ForPostProcessor forPostProcessor) {
                        return new ExceptionHandler(stackManipulation, stackManipulation2, this.exceptionType, forPostProcessor);
                    }

                    public Enabled(TypeDescription typeDescription) {
                        this.exceptionType = typeDescription;
                    }
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ExceptionHandler exceptionHandler = (ExceptionHandler) obj;
                    return this.stackManipulation.equals(exceptionHandler.stackManipulation) && this.exceptionHandler.equals(exceptionHandler.exceptionHandler) && this.exceptionType.equals(exceptionHandler.exceptionType) && this.stackMapFrameHandler.equals(exceptionHandler.stackMapFrameHandler);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.exceptionHandler.hashCode()) * 31) + this.exceptionType.hashCode()) * 31) + this.stackMapFrameHandler.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return this.stackManipulation.isValid() && this.exceptionHandler.isValid();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                Label label = new Label();
                Label label2 = new Label();
                Label label3 = new Label();
                methodVisitor.visitTryCatchBlock(label, label2, label2, this.exceptionType.getInternalName());
                methodVisitor.visitLabel(label);
                StackManipulation.Size apply = this.stackManipulation.apply(methodVisitor, context);
                methodVisitor.visitJumpInsn(167, label3);
                methodVisitor.visitLabel(label2);
                this.stackMapFrameHandler.injectIntermediateFrame(methodVisitor, Collections.singletonList(this.exceptionType));
                StackManipulation.Size aggregate = this.exceptionHandler.apply(methodVisitor, context).aggregate(apply);
                methodVisitor.visitLabel(label3);
                this.stackMapFrameHandler.injectIntermediateFrame(methodVisitor, Collections.emptyList());
                return aggregate;
            }

            public ExceptionHandler(StackManipulation stackManipulation, StackManipulation stackManipulation2, TypeDescription typeDescription, StackMapFrameHandler.ForPostProcessor forPostProcessor) {
                this.stackManipulation = stackManipulation;
                this.exceptionHandler = stackManipulation2;
                this.exceptionType = typeDescription;
                this.stackMapFrameHandler = forPostProcessor;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Factory implements PostProcessor.Factory {
            private static final MethodDescription.InDefinedShape SKIP_ON_DEFAULT_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(AsScalar.class).getDeclaredMethods().filter(ElementMatchers.named("skipOnDefaultValue")).getOnly();
            private final ExceptionHandler.Factory exceptionHandlerFactory;
            private final List<? extends Handler.Factory<?>> factories;

            public Factory() {
                this(Arrays.asList(ToArguments.Handler.Factory.INSTANCE, ToAllArguments.Handler.Factory.INSTANCE, ToThis.Handler.Factory.INSTANCE, ToFields.Handler.Factory.INSTANCE, ToReturned.Handler.Factory.INSTANCE, ToThrown.Handler.Factory.INSTANCE), ExceptionHandler.Factory.NoOp.INSTANCE);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Factory factory = (Factory) obj;
                    return this.factories.equals(factory.factories) && this.exceptionHandlerFactory.equals(factory.exceptionHandlerFactory);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.factories.hashCode()) * 31) + this.exceptionHandlerFactory.hashCode();
            }

            public Factory with(Class<? extends Annotation> cls, Handler... handlerArr) {
                return with(cls, Arrays.asList(handlerArr));
            }

            public PostProcessor.Factory withSuppressed(Class<? extends Throwable> cls) {
                return withSuppressed(TypeDescription.ForLoadedType.m15196of(cls));
            }

            public Factory(List<? extends Handler.Factory<?>> list, ExceptionHandler.Factory factory) {
                this.factories = list;
                this.exceptionHandlerFactory = factory;
            }

            public Factory with(Class<? extends Annotation> cls, List<Handler> list) {
                return with(new Handler.Factory.Simple(cls, list));
            }

            public PostProcessor.Factory withSuppressed(TypeDescription typeDescription) {
                if (typeDescription.isAssignableTo(Throwable.class)) {
                    return new Factory(this.factories, new ExceptionHandler.Factory.Enabled(typeDescription));
                }
                throw new IllegalArgumentException(typeDescription + " is not a throwable type");
            }

            @Override // net.bytebuddy.asm.Advice.PostProcessor.Factory
            public PostProcessor make(MethodDescription.InDefinedShape inDefinedShape, boolean z) {
                if (inDefinedShape.getReturnType().represents(Void.TYPE)) {
                    return PostProcessor.NoOp.INSTANCE;
                }
                HashMap hashMap = new HashMap();
                for (Handler.Factory<?> factory : this.factories) {
                    if (hashMap.put(factory.getAnnotationType().getName(), factory) != null) {
                        throw new IllegalStateException("Duplicate registration of handler for " + factory.getAnnotationType());
                    }
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                boolean z2 = false;
                boolean z3 = true;
                for (AnnotationDescription annotationDescription : inDefinedShape.getDeclaredAnnotations()) {
                    if (annotationDescription.getAnnotationType().represents(AsScalar.class)) {
                        z3 = ((Boolean) annotationDescription.getValue(SKIP_ON_DEFAULT_VALUE).resolve(Boolean.class)).booleanValue();
                        z2 = true;
                    } else {
                        Handler.Factory factory2 = (Handler.Factory) hashMap.get(annotationDescription.getAnnotationType().getName());
                        if (factory2 != null && linkedHashMap.put(factory2.getAnnotationType(), factory2.make(inDefinedShape, z, annotationDescription.prepare(factory2.getAnnotationType()))) != null) {
                            throw new IllegalStateException("Duplicate handler registration for " + annotationDescription.getAnnotationType());
                        }
                    }
                }
                if (linkedHashMap.isEmpty()) {
                    return PostProcessor.NoOp.INSTANCE;
                }
                if (!z2 && inDefinedShape.getReturnType().isArray()) {
                    return new ForArray(inDefinedShape.getReturnType(), this.exceptionHandlerFactory, z, linkedHashMap.values());
                }
                return new ForScalar(inDefinedShape.getReturnType(), this.exceptionHandlerFactory, z, z3, linkedHashMap.values());
            }

            public Factory with(Handler.Factory<?> factory) {
                return new Factory(CompoundList.m14777of(this.factories, factory), this.exceptionHandlerFactory);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForArray extends AssignReturned {
            private final Map<Handler, Integer> handlers;

            public ForArray(TypeDescription.Generic generic, ExceptionHandler.Factory factory, boolean z, Collection<List<Handler>> collection) {
                super(generic, factory, z, true);
                this.handlers = new LinkedHashMap();
                for (List<Handler> list : collection) {
                    for (Handler handler : list) {
                        int index = handler.getIndex();
                        if (index > -1) {
                            this.handlers.put(handler, Integer.valueOf(index));
                        } else {
                            throw new IllegalStateException("Handler on array requires positive index for " + handler);
                        }
                    }
                }
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.handlers.equals(((ForArray) obj).handlers);
                }
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public Collection<Handler> getHandlers() {
                return this.handlers.keySet();
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public TypeDescription.Generic getType() {
                return this.type.getComponentType();
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public int hashCode() {
                return (super.hashCode() * 31) + this.handlers.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public StackManipulation toLoadInstruction(Handler handler, int i) {
                return new StackManipulation.Compound(MethodVariableAccess.REFERENCE.loadFrom(i), IntegerConstant.forValue(this.handlers.get(handler).intValue()), ArrayAccess.m14962of(this.type.getComponentType()).load());
            }
        }

        /* loaded from: classes2.dex */
        public interface Handler {

            /* loaded from: classes2.dex */
            public interface Factory<T extends Annotation> {
                Class<T> getAnnotationType();

                List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends T> loadable);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple<S extends Annotation> implements Factory<S> {
                    private final List<Handler> handlers;
                    private final Class<S> type;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Simple simple = (Simple) obj;
                            return this.type.equals(simple.type) && this.handlers.equals(simple.handlers);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<S> getAnnotationType() {
                        return this.type;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.type.hashCode()) * 31) + this.handlers.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends S> loadable) {
                        return this.handlers;
                    }

                    public Simple(Class<S> cls, List<Handler> list) {
                        this.type = cls;
                        this.handlers = list;
                    }
                }
            }

            int getIndex();

            StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation);
        }

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface ToAllArguments {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Handler implements Handler {
                private final int index;
                private final Assigner.Typing typing;

                /* loaded from: classes2.dex */
                public enum Factory implements Handler.Factory<ToAllArguments> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape TO_ALL_ARGUMENTS_INDEX;
                    private static final MethodDescription.InDefinedShape TO_ALL_ARGUMENTS_TYPING;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<ToAllArguments> getAnnotationType() {
                        return ToAllArguments.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(ToAllArguments.class).getDeclaredMethods();
                        TO_ALL_ARGUMENTS_INDEX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("index")).getOnly();
                        TO_ALL_ARGUMENTS_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends ToAllArguments> loadable) {
                        return Collections.singletonList(new Handler(((Integer) loadable.getValue(TO_ALL_ARGUMENTS_INDEX).resolve(Integer.class)).intValue(), (Assigner.Typing) loadable.getValue(TO_ALL_ARGUMENTS_TYPING).load(ToAllArguments.class.getClassLoader()).resolve(Assigner.Typing.class)));
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Handler handler = (Handler) obj;
                        return this.index == handler.index && this.typing.equals(handler.typing);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public int getIndex() {
                    return this.index;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.index) * 31) + this.typing.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                    ArrayList arrayList = new ArrayList(methodDescription.getParameters().size());
                    if (!generic.isArray()) {
                        StackManipulation assign = assigner.assign(generic, TypeDefinition.Sort.describe(Object[].class), this.typing);
                        if (assign.isValid()) {
                            generic = TypeDefinition.Sort.describe(Object[].class);
                            stackManipulation = new StackManipulation.Compound(stackManipulation, assign);
                        } else {
                            throw new IllegalStateException("Cannot assign " + generic + " to " + Object[].class);
                        }
                    }
                    Iterator<T> it = methodDescription.getParameters().iterator();
                    while (it.hasNext()) {
                        ParameterDescription parameterDescription = (ParameterDescription) it.next();
                        StackManipulation assign2 = assigner.assign(generic.getComponentType(), parameterDescription.getType(), this.typing);
                        if (assign2.isValid()) {
                            arrayList.add(new StackManipulation.Compound(assign2, MethodVariableAccess.m14936of(parameterDescription.getType()).storeAt(argumentHandler.argument(parameterDescription.getOffset()))));
                        } else {
                            throw new IllegalStateException("Cannot assign " + generic.getComponentType() + " to " + parameterDescription);
                        }
                    }
                    return new StackManipulation.Compound(stackManipulation, ArrayAccess.m14962of(generic.getComponentType()).forEach(arrayList), Removal.SINGLE);
                }

                public Handler(int i, Assigner.Typing typing) {
                    this.index = i;
                    this.typing = typing;
                }
            }

            int index() default -1;

            Assigner.Typing typing() default Assigner.Typing.STATIC;
        }

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface ToArguments {

            @Target({})
            @RepeatedAnnotationPlugin.Enhance(ToArguments.class)
            @Repeatable(ToArguments.class)
            /* loaded from: classes.dex */
            public @interface ToArgument {
                int index() default -1;

                Assigner.Typing typing() default Assigner.Typing.STATIC;

                int value();
            }

            ToArgument[] value();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Handler implements Handler {
                private final int index;
                private final Assigner.Typing typing;
                private final int value;

                /* loaded from: classes2.dex */
                public enum Factory implements Handler.Factory<ToArguments> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape TO_ARGUMENTS_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(ToArguments.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
                    private static final MethodDescription.InDefinedShape TO_ARGUMENT_INDEX;
                    private static final MethodDescription.InDefinedShape TO_ARGUMENT_TYPING;
                    private static final MethodDescription.InDefinedShape TO_ARGUMENT_VALUE;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<ToArguments> getAnnotationType() {
                        return ToArguments.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(ToArgument.class).getDeclaredMethods();
                        TO_ARGUMENT_VALUE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
                        TO_ARGUMENT_INDEX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("index")).getOnly();
                        TO_ARGUMENT_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends ToArguments> loadable) {
                        AnnotationDescription[] annotationDescriptionArr;
                        ArrayList arrayList = new ArrayList();
                        for (AnnotationDescription annotationDescription : (AnnotationDescription[]) loadable.getValue(TO_ARGUMENTS_VALUE).resolve(AnnotationDescription[].class)) {
                            int intValue = ((Integer) annotationDescription.getValue(TO_ARGUMENT_VALUE).resolve(Integer.class)).intValue();
                            if (intValue >= 0) {
                                arrayList.add(new Handler(intValue, ((Integer) annotationDescription.getValue(TO_ARGUMENT_INDEX).resolve(Integer.class)).intValue(), (Assigner.Typing) annotationDescription.getValue(TO_ARGUMENT_TYPING).load(ToArguments.class.getClassLoader()).resolve(Assigner.Typing.class)));
                            } else {
                                throw new IllegalStateException("An argument cannot have a negative index for " + inDefinedShape);
                            }
                        }
                        return arrayList;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Handler handler = (Handler) obj;
                        return this.value == handler.value && this.index == handler.index && this.typing.equals(handler.typing);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public int getIndex() {
                    return this.index;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.value) * 31) + this.index) * 31) + this.typing.hashCode();
                }

                public Handler(int i, int i2, Assigner.Typing typing) {
                    this.value = i;
                    this.index = i2;
                    this.typing = typing;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                    if (methodDescription.getParameters().size() >= this.value) {
                        StackManipulation assign = assigner.assign(generic, ((ParameterDescription) methodDescription.getParameters().get(this.value)).getType(), this.typing);
                        if (assign.isValid()) {
                            return new StackManipulation.Compound(stackManipulation, assign, MethodVariableAccess.m14936of(((ParameterDescription) methodDescription.getParameters().get(this.value)).getType()).storeAt(argumentHandler.argument(((ParameterDescription) methodDescription.getParameters().get(this.value)).getOffset())));
                        }
                        throw new IllegalStateException("Cannot assign " + generic + " to " + ((ParameterDescription) methodDescription.getParameters().get(this.value)).getType());
                    }
                    throw new IllegalStateException(methodDescription + " declares less then " + this.value + " parameters");
                }
            }
        }

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface ToFields {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Handler implements Handler {
                private final TypeDescription declaringType;
                private final int index;
                private final String name;
                private final Assigner.Typing typing;

                /* loaded from: classes2.dex */
                public enum Factory implements Handler.Factory<ToFields> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape TO_FIELDS_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(ToFields.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
                    private static final MethodDescription.InDefinedShape TO_FIELD_DECLARING_TYPE;
                    private static final MethodDescription.InDefinedShape TO_FIELD_INDEX;
                    private static final MethodDescription.InDefinedShape TO_FIELD_TYPING;
                    private static final MethodDescription.InDefinedShape TO_FIELD_VALUE;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<ToFields> getAnnotationType() {
                        return ToFields.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(ToField.class).getDeclaredMethods();
                        TO_FIELD_VALUE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
                        TO_FIELD_INDEX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("index")).getOnly();
                        TO_FIELD_DECLARING_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("declaringType")).getOnly();
                        TO_FIELD_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends ToFields> loadable) {
                        AnnotationDescription[] annotationDescriptionArr;
                        ArrayList arrayList = new ArrayList();
                        for (AnnotationDescription annotationDescription : (AnnotationDescription[]) loadable.getValue(TO_FIELDS_VALUE).resolve(AnnotationDescription[].class)) {
                            arrayList.add(new Handler(((Integer) annotationDescription.getValue(TO_FIELD_INDEX).resolve(Integer.class)).intValue(), (String) annotationDescription.getValue(TO_FIELD_VALUE).resolve(String.class), (TypeDescription) annotationDescription.getValue(TO_FIELD_DECLARING_TYPE).resolve(TypeDescription.class), (Assigner.Typing) annotationDescription.getValue(TO_FIELD_TYPING).load(ToFields.class.getClassLoader()).resolve(Assigner.Typing.class)));
                        }
                        return arrayList;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Handler handler = (Handler) obj;
                        return this.index == handler.index && this.typing.equals(handler.typing) && this.name.equals(handler.name) && this.declaringType.equals(handler.declaringType);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public int getIndex() {
                    return this.index;
                }

                public int hashCode() {
                    return (((((((getClass().hashCode() * 31) + this.index) * 31) + this.name.hashCode()) * 31) + this.declaringType.hashCode()) * 31) + this.typing.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                    FieldLocator forExactType;
                    FieldLocator.Resolution locate;
                    StackManipulation loadThis;
                    if (this.declaringType.represents(Void.TYPE)) {
                        forExactType = new FieldLocator.ForClassHierarchy(typeDescription);
                    } else {
                        forExactType = new FieldLocator.ForExactType(this.declaringType);
                    }
                    if (this.name.equals("")) {
                        locate = OffsetMapping.ForField.Unresolved.resolveAccessor(forExactType, methodDescription);
                    } else {
                        locate = forExactType.locate(this.name);
                    }
                    if (locate.isResolved()) {
                        if (locate.getField().isVisibleTo(typeDescription)) {
                            if (locate.getField().isStatic()) {
                                loadThis = StackManipulation.Trivial.INSTANCE;
                            } else if (!methodDescription.isStatic()) {
                                if (typeDescription.isAssignableTo(locate.getField().getDeclaringType().asErasure())) {
                                    loadThis = MethodVariableAccess.loadThis();
                                } else {
                                    throw new IllegalStateException(typeDescription + " does not define " + locate.getField());
                                }
                            } else {
                                throw new IllegalStateException("Cannot access member field " + locate.getField() + " from static " + methodDescription);
                            }
                            StackManipulation assign = assigner.assign(generic, locate.getField().getType(), this.typing);
                            if (assign.isValid()) {
                                return new StackManipulation.Compound(loadThis, stackManipulation, assign, FieldAccess.forField(locate.getField()).write());
                            }
                            throw new IllegalStateException("Cannot assign " + generic + " to " + locate.getField());
                        }
                        throw new IllegalStateException(locate.getField() + " is not visible to " + typeDescription);
                    }
                    throw new IllegalStateException("Cannot resolve field " + this.name + " for " + typeDescription);
                }

                public Handler(int i, String str, TypeDescription typeDescription, Assigner.Typing typing) {
                    this.index = i;
                    this.name = str;
                    this.declaringType = typeDescription;
                    this.typing = typing;
                }
            }

            @Target({})
            @RepeatedAnnotationPlugin.Enhance(ToFields.class)
            @Repeatable(ToFields.class)
            /* loaded from: classes.dex */
            public @interface ToField {
                Class<?> declaringType() default void.class;

                int index() default -1;

                Assigner.Typing typing() default Assigner.Typing.STATIC;

                String value() default "";
            }

            ToField[] value();
        }

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface ToReturned {
            int index() default -1;

            Assigner.Typing typing() default Assigner.Typing.STATIC;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Handler implements Handler {
                private final int index;
                private final Assigner.Typing typing;

                /* loaded from: classes2.dex */
                public enum Factory implements Handler.Factory<ToReturned> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape TO_RETURNED_INDEX;
                    private static final MethodDescription.InDefinedShape TO_RETURNED_TYPING;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<ToReturned> getAnnotationType() {
                        return ToReturned.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(ToReturned.class).getDeclaredMethods();
                        TO_RETURNED_INDEX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("index")).getOnly();
                        TO_RETURNED_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends ToReturned> loadable) {
                        if (z) {
                            return Collections.singletonList(new Handler(((Integer) loadable.getValue(TO_RETURNED_INDEX).resolve(Integer.class)).intValue(), (Assigner.Typing) loadable.getValue(TO_RETURNED_TYPING).load(ToReturned.class.getClassLoader()).resolve(Assigner.Typing.class)));
                        }
                        throw new IllegalStateException("Cannot write returned value from enter advice " + inDefinedShape);
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Handler handler = (Handler) obj;
                        return this.index == handler.index && this.typing.equals(handler.typing);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public int getIndex() {
                    return this.index;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.index) * 31) + this.typing.hashCode();
                }

                public Handler(int i, Assigner.Typing typing) {
                    this.index = i;
                    this.typing = typing;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                    if (methodDescription.getReturnType().represents(Void.TYPE)) {
                        return StackManipulation.Trivial.INSTANCE;
                    }
                    StackManipulation assign = assigner.assign(generic, methodDescription.getReturnType(), this.typing);
                    if (assign.isValid()) {
                        return new StackManipulation.Compound(stackManipulation, assign, MethodVariableAccess.m14936of(methodDescription.getReturnType()).storeAt(argumentHandler.returned()));
                    }
                    throw new IllegalStateException("Cannot assign " + generic + " to " + methodDescription.getReturnType());
                }
            }
        }

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface ToThis {
            int index() default -1;

            Assigner.Typing typing() default Assigner.Typing.STATIC;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Handler implements Handler {
                private final boolean exit;
                private final int index;
                private final Assigner.Typing typing;

                /* loaded from: classes2.dex */
                public enum Factory implements Handler.Factory<ToThis> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape TO_THIS_INDEX;
                    private static final MethodDescription.InDefinedShape TO_THIS_TYPING;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<ToThis> getAnnotationType() {
                        return ToThis.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(ToThis.class).getDeclaredMethods();
                        TO_THIS_INDEX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("index")).getOnly();
                        TO_THIS_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends ToThis> loadable) {
                        return Collections.singletonList(new Handler(((Integer) loadable.getValue(TO_THIS_INDEX).resolve(Integer.class)).intValue(), (Assigner.Typing) loadable.getValue(TO_THIS_TYPING).load(ToThis.class.getClassLoader()).resolve(Assigner.Typing.class), z));
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Handler handler = (Handler) obj;
                        return this.index == handler.index && this.exit == handler.exit && this.typing.equals(handler.typing);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public int getIndex() {
                    return this.index;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.index) * 31) + this.typing.hashCode()) * 31) + (this.exit ? 1 : 0);
                }

                public Handler(int i, Assigner.Typing typing, boolean z) {
                    this.index = i;
                    this.typing = typing;
                    this.exit = z;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                    if (!methodDescription.isStatic()) {
                        if (!this.exit && methodDescription.isConstructor()) {
                            throw new IllegalStateException("Cannot assign this reference in constructor prior to initialization for " + methodDescription);
                        }
                        StackManipulation assign = assigner.assign(generic, typeDescription.asGenericType(), this.typing);
                        if (assign.isValid()) {
                            return new StackManipulation.Compound(stackManipulation, assign, MethodVariableAccess.REFERENCE.storeAt(argumentHandler.argument(0)));
                        }
                        throw new IllegalStateException("Cannot assign " + generic + " to " + typeDescription);
                    }
                    throw new IllegalStateException("Cannot assign this reference for static method " + methodDescription);
                }
            }
        }

        @Target({ElementType.METHOD})
        @Documented
        @Retention(RetentionPolicy.RUNTIME)
        /* loaded from: classes.dex */
        public @interface ToThrown {
            int index() default -1;

            Assigner.Typing typing() default Assigner.Typing.STATIC;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Handler implements Handler {
                private final int index;
                private final Assigner.Typing typing;

                /* loaded from: classes2.dex */
                public enum Factory implements Handler.Factory<ToThrown> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape TO_THROWN_INDEX;
                    private static final MethodDescription.InDefinedShape TO_THROWN_TYPING;

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    public Class<ToThrown> getAnnotationType() {
                        return ToThrown.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(ToThrown.class).getDeclaredMethods();
                        TO_THROWN_INDEX = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("index")).getOnly();
                        TO_THROWN_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler.Factory
                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public List<Handler> make(MethodDescription.InDefinedShape inDefinedShape, boolean z, AnnotationDescription.Loadable<? extends ToThrown> loadable) {
                        if (z) {
                            if (!((TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.ON_THROWABLE).resolve(TypeDescription.class)).represents(NoExceptionHandler.class)) {
                                return Collections.singletonList(new Handler(((Integer) loadable.getValue(TO_THROWN_INDEX).resolve(Integer.class)).intValue(), (Assigner.Typing) loadable.getValue(TO_THROWN_TYPING).load(ToThrown.class.getClassLoader()).resolve(Assigner.Typing.class)));
                            }
                            throw new IllegalStateException("Cannot assign thrown value for non-catching exit advice " + inDefinedShape);
                        }
                        throw new IllegalStateException("Cannot assign thrown value from enter advice " + inDefinedShape);
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Handler handler = (Handler) obj;
                        return this.index == handler.index && this.typing.equals(handler.typing);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public int getIndex() {
                    return this.index;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.index) * 31) + this.typing.hashCode();
                }

                public Handler(int i, Assigner.Typing typing) {
                    this.index = i;
                    this.typing = typing;
                }

                @Override // net.bytebuddy.asm.Advice.AssignReturned.Handler
                public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, TypeDescription.Generic generic, StackManipulation stackManipulation) {
                    if (methodDescription.getReturnType().represents(Void.TYPE)) {
                        return StackManipulation.Trivial.INSTANCE;
                    }
                    StackManipulation assign = assigner.assign(generic, TypeDefinition.Sort.describe(Throwable.class), this.typing);
                    if (assign.isValid()) {
                        return new StackManipulation.Compound(stackManipulation, assign, MethodVariableAccess.REFERENCE.storeAt(argumentHandler.thrown()));
                    }
                    throw new IllegalStateException("Cannot assign " + generic + " to " + Throwable.class.getName());
                }
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                AssignReturned assignReturned = (AssignReturned) obj;
                return this.exit == assignReturned.exit && this.skipOnDefaultValue == assignReturned.skipOnDefaultValue && this.type.equals(assignReturned.type) && this.exceptionHandlerFactory.equals(assignReturned.exceptionHandlerFactory);
            }
            return false;
        }

        public abstract Collection<Handler> getHandlers();

        public abstract TypeDescription.Generic getType();

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.type.hashCode()) * 31) + this.exceptionHandlerFactory.hashCode()) * 31) + (this.exit ? 1 : 0)) * 31) + (this.skipOnDefaultValue ? 1 : 0);
        }

        @Override // net.bytebuddy.asm.Advice.PostProcessor
        public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, StackMapFrameHandler.ForPostProcessor forPostProcessor, StackManipulation stackManipulation) {
            int enter;
            int enter2;
            ArrayList arrayList = new ArrayList(getHandlers().size());
            for (Handler handler : getHandlers()) {
                TypeDescription.Generic type = getType();
                if (this.exit) {
                    enter2 = argumentHandler.exit();
                } else {
                    enter2 = argumentHandler.enter();
                }
                arrayList.add(handler.resolve(typeDescription, methodDescription, assigner, argumentHandler, type, toLoadInstruction(handler, enter2)));
            }
            StackManipulation wrap = this.exceptionHandlerFactory.wrap(new StackManipulation.Compound(arrayList), stackManipulation, forPostProcessor);
            if (this.skipOnDefaultValue) {
                if (this.exit) {
                    enter = argumentHandler.exit();
                } else {
                    enter = argumentHandler.enter();
                }
                return DefaultValueSkip.m15325of(wrap, forPostProcessor, enter, this.type);
            }
            return wrap;
        }

        public abstract StackManipulation toLoadInstruction(Handler handler, int i);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForScalar extends AssignReturned {
            private final List<Handler> handlers;

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.handlers.equals(((ForScalar) obj).handlers);
                }
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public Collection<Handler> getHandlers() {
                return this.handlers;
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public TypeDescription.Generic getType() {
                return this.type;
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public int hashCode() {
                return (super.hashCode() * 31) + this.handlers.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.AssignReturned
            public StackManipulation toLoadInstruction(Handler handler, int i) {
                return MethodVariableAccess.m14936of(this.type).loadFrom(i);
            }

            public ForScalar(TypeDescription.Generic generic, ExceptionHandler.Factory factory, boolean z, boolean z2, Collection<List<Handler>> collection) {
                super(generic, factory, z, z2);
                this.handlers = new ArrayList();
                for (List<Handler> list : collection) {
                    for (Handler handler : list) {
                        if (handler.getIndex() <= -1) {
                            this.handlers.add(handler);
                        } else {
                            throw new IllegalStateException("Handler on array requires negative index for " + handler);
                        }
                    }
                }
            }
        }

        public AssignReturned(TypeDescription.Generic generic, ExceptionHandler.Factory factory, boolean z, boolean z2) {
            this.type = generic;
            this.exceptionHandlerFactory = factory;
            this.exit = z;
            this.skipOnDefaultValue = z2;
        }
    }

    /* loaded from: classes2.dex */
    public interface Delegator {
        void apply(MethodVisitor methodVisitor, MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodDescription methodDescription, boolean z);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForDynamicInvocation implements Delegator {
            private final MethodDescription.InDefinedShape bootstrapMethod;

            @Override // net.bytebuddy.asm.Advice.Delegator
            public void apply(MethodVisitor methodVisitor, MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodDescription methodDescription, boolean z) {
                Object[] objArr;
                int i;
                if (methodDescription.isTypeInitializer()) {
                    MethodDescription.InDefinedShape inDefinedShape2 = this.bootstrapMethod;
                    TypeDescription typeDescription2 = TypeDescription.STRING;
                    if (!inDefinedShape2.isInvokeBootstrap(Arrays.asList(typeDescription2, TypeDescription.ForLoadedType.m15196of(Integer.TYPE), TypeDescription.CLASS, typeDescription2))) {
                        throw new IllegalArgumentException(this.bootstrapMethod + " is not accepting advice bootstrap arguments");
                    }
                    objArr = new Object[]{inDefinedShape.getDeclaringType().getName(), Integer.valueOf(z ? 1 : 0), Type.getType(typeDescription.getDescriptor()), methodDescription.getInternalName()};
                } else {
                    MethodDescription.InDefinedShape inDefinedShape3 = this.bootstrapMethod;
                    TypeDescription typeDescription3 = TypeDescription.STRING;
                    if (!inDefinedShape3.isInvokeBootstrap(Arrays.asList(typeDescription3, TypeDescription.ForLoadedType.m15196of(Integer.TYPE), TypeDescription.CLASS, typeDescription3, JavaType.METHOD_HANDLE.getTypeStub()))) {
                        throw new IllegalArgumentException(this.bootstrapMethod + " is not accepting advice bootstrap arguments");
                    }
                    objArr = new Object[]{inDefinedShape.getDeclaringType().getName(), Integer.valueOf(z ? 1 : 0), Type.getType(typeDescription.getDescriptor()), methodDescription.getInternalName(), JavaConstant.MethodHandle.m14771of(methodDescription.asDefined()).accept(JavaConstantValue.Visitor.INSTANCE)};
                }
                String internalName = inDefinedShape.getInternalName();
                String descriptor = inDefinedShape.getDescriptor();
                if (this.bootstrapMethod.isConstructor()) {
                    i = 8;
                } else {
                    i = 6;
                }
                methodVisitor.visitInvokeDynamicInsn(internalName, descriptor, new Handle(i, this.bootstrapMethod.getDeclaringType().getInternalName(), this.bootstrapMethod.getInternalName(), this.bootstrapMethod.getDescriptor(), false), objArr);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.bootstrapMethod.equals(((ForDynamicInvocation) obj).bootstrapMethod);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.bootstrapMethod.hashCode();
            }

            public ForDynamicInvocation(MethodDescription.InDefinedShape inDefinedShape) {
                this.bootstrapMethod = inDefinedShape;
            }

            /* renamed from: of */
            public static Delegator m15324of(MethodDescription.InDefinedShape inDefinedShape) {
                if (inDefinedShape.isInvokeBootstrap()) {
                    return new ForDynamicInvocation(inDefinedShape);
                }
                throw new IllegalArgumentException("Not a suitable bootstrap target: " + inDefinedShape);
            }
        }

        /* loaded from: classes2.dex */
        public enum ForStaticInvocation implements Delegator {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.Delegator
            public void apply(MethodVisitor methodVisitor, MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodDescription methodDescription, boolean z) {
                methodVisitor.visitMethodInsn(184, inDefinedShape.getDeclaringType().getInternalName(), inDefinedShape.getInternalName(), inDefinedShape.getDescriptor(), false);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface Dispatcher {
        @AlwaysNull
        public static final AnnotationVisitor IGNORE_ANNOTATION = null;
        @AlwaysNull
        public static final MethodVisitor IGNORE_METHOD = null;

        /* loaded from: classes2.dex */
        public interface Bound {
            void apply();

            void initialize();

            void prepare();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Delegating implements Unresolved {
            public final MethodDescription.InDefinedShape adviceMethod;
            public final Delegator delegator;

            /* loaded from: classes2.dex */
            public static abstract class Resolved extends Resolved.AbstractBase {
                public final Delegator delegator;

                /* loaded from: classes2.dex */
                public static abstract class AdviceMethodWriter implements Bound {
                    public final MethodDescription.InDefinedShape adviceMethod;
                    public final ArgumentHandler.ForAdvice argumentHandler;
                    private final Assigner assigner;
                    private final Delegator delegator;
                    private final StackManipulation exceptionHandler;
                    public final Implementation.Context implementationContext;
                    private final MethodDescription instrumentedMethod;
                    private final TypeDescription instrumentedType;
                    public final MethodSizeHandler.ForAdvice methodSizeHandler;
                    public final MethodVisitor methodVisitor;
                    private final List<OffsetMapping.Target> offsetMappings;
                    private final PostProcessor postProcessor;
                    private final RelocationHandler.Bound relocationHandler;
                    public final StackMapFrameHandler.ForAdvice stackMapFrameHandler;
                    private final SuppressionHandler.Bound suppressionHandler;

                    /* loaded from: classes2.dex */
                    public static class ForMethodEnter extends AdviceMethodWriter {
                        public ForMethodEnter(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, PostProcessor postProcessor, List<OffsetMapping.Target> list, MethodVisitor methodVisitor, Implementation.Context context, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation, Delegator delegator) {
                            super(inDefinedShape, typeDescription, methodDescription, assigner, postProcessor, list, methodVisitor, context, forAdvice, forAdvice2, forAdvice3, bound, bound2, stackManipulation, delegator);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                        public void initialize() {
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved.AdviceMethodWriter
                        public boolean isExitAdvice() {
                            return false;
                        }
                    }

                    /* loaded from: classes2.dex */
                    public static class ForMethodExit extends AdviceMethodWriter {
                        public ForMethodExit(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, PostProcessor postProcessor, List<OffsetMapping.Target> list, MethodVisitor methodVisitor, Implementation.Context context, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation, Delegator delegator) {
                            super(inDefinedShape, typeDescription, methodDescription, assigner, postProcessor, list, methodVisitor, context, forAdvice, forAdvice2, forAdvice3, bound, bound2, stackManipulation, delegator);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved.AdviceMethodWriter
                        public boolean isExitAdvice() {
                            return true;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                        public void initialize() {
                            if (!this.adviceMethod.getReturnType().represents(Boolean.TYPE) && !this.adviceMethod.getReturnType().represents(Byte.TYPE) && !this.adviceMethod.getReturnType().represents(Short.TYPE) && !this.adviceMethod.getReturnType().represents(Character.TYPE) && !this.adviceMethod.getReturnType().represents(Integer.TYPE)) {
                                if (this.adviceMethod.getReturnType().represents(Long.TYPE)) {
                                    this.methodVisitor.visitInsn(9);
                                    this.methodVisitor.visitVarInsn(55, this.argumentHandler.exit());
                                } else if (this.adviceMethod.getReturnType().represents(Float.TYPE)) {
                                    this.methodVisitor.visitInsn(11);
                                    this.methodVisitor.visitVarInsn(56, this.argumentHandler.exit());
                                } else if (this.adviceMethod.getReturnType().represents(Double.TYPE)) {
                                    this.methodVisitor.visitInsn(14);
                                    this.methodVisitor.visitVarInsn(57, this.argumentHandler.exit());
                                } else if (!this.adviceMethod.getReturnType().represents(Void.TYPE)) {
                                    this.methodVisitor.visitInsn(1);
                                    this.methodVisitor.visitVarInsn(58, this.argumentHandler.exit());
                                }
                            } else {
                                this.methodVisitor.visitInsn(3);
                                this.methodVisitor.visitVarInsn(54, this.argumentHandler.exit());
                            }
                            this.methodSizeHandler.requireStackSize(this.adviceMethod.getReturnType().getStackSize().getSize());
                        }
                    }

                    public abstract boolean isExitAdvice();

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                    public void prepare() {
                        this.suppressionHandler.onPrepare(this.methodVisitor);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                    public void apply() {
                        int enter;
                        int enter2;
                        int enter3;
                        int enter4;
                        int enter5;
                        int enter6;
                        this.suppressionHandler.onStart(this.methodVisitor);
                        int i = 0;
                        int i2 = 0;
                        int i3 = 0;
                        for (OffsetMapping.Target target : this.offsetMappings) {
                            i += ((ParameterDescription.InDefinedShape) this.adviceMethod.getParameters().get(i2)).getType().getStackSize().getSize();
                            i3 = Math.max(i3, target.resolveRead().apply(this.methodVisitor, this.implementationContext).getMaximalSize() + i);
                            i2++;
                        }
                        this.delegator.apply(this.methodVisitor, this.adviceMethod, this.instrumentedType, this.instrumentedMethod, isExitAdvice());
                        this.suppressionHandler.onEndWithSkip(this.methodVisitor, this.implementationContext, this.methodSizeHandler, this.stackMapFrameHandler, this.adviceMethod.getReturnType());
                        if (!this.adviceMethod.getReturnType().represents(Boolean.TYPE) && !this.adviceMethod.getReturnType().represents(Byte.TYPE) && !this.adviceMethod.getReturnType().represents(Short.TYPE) && !this.adviceMethod.getReturnType().represents(Character.TYPE) && !this.adviceMethod.getReturnType().represents(Integer.TYPE)) {
                            if (this.adviceMethod.getReturnType().represents(Long.TYPE)) {
                                MethodVisitor methodVisitor = this.methodVisitor;
                                if (isExitAdvice()) {
                                    enter6 = this.argumentHandler.exit();
                                } else {
                                    enter6 = this.argumentHandler.enter();
                                }
                                methodVisitor.visitVarInsn(55, enter6);
                            } else if (this.adviceMethod.getReturnType().represents(Float.TYPE)) {
                                MethodVisitor methodVisitor2 = this.methodVisitor;
                                if (isExitAdvice()) {
                                    enter5 = this.argumentHandler.exit();
                                } else {
                                    enter5 = this.argumentHandler.enter();
                                }
                                methodVisitor2.visitVarInsn(56, enter5);
                            } else if (this.adviceMethod.getReturnType().represents(Double.TYPE)) {
                                MethodVisitor methodVisitor3 = this.methodVisitor;
                                if (isExitAdvice()) {
                                    enter4 = this.argumentHandler.exit();
                                } else {
                                    enter4 = this.argumentHandler.enter();
                                }
                                methodVisitor3.visitVarInsn(57, enter4);
                            } else if (!this.adviceMethod.getReturnType().represents(Void.TYPE)) {
                                MethodVisitor methodVisitor4 = this.methodVisitor;
                                if (isExitAdvice()) {
                                    enter3 = this.argumentHandler.exit();
                                } else {
                                    enter3 = this.argumentHandler.enter();
                                }
                                methodVisitor4.visitVarInsn(58, enter3);
                            }
                        } else {
                            MethodVisitor methodVisitor5 = this.methodVisitor;
                            if (isExitAdvice()) {
                                enter = this.argumentHandler.exit();
                            } else {
                                enter = this.argumentHandler.enter();
                            }
                            methodVisitor5.visitVarInsn(54, enter);
                        }
                        this.methodSizeHandler.requireStackSize(this.postProcessor.resolve(this.instrumentedType, this.instrumentedMethod, this.assigner, this.argumentHandler, this.stackMapFrameHandler, this.exceptionHandler).apply(this.methodVisitor, this.implementationContext).getMaximalSize());
                        MethodSizeHandler.ForAdvice forAdvice = this.methodSizeHandler;
                        RelocationHandler.Bound bound = this.relocationHandler;
                        MethodVisitor methodVisitor6 = this.methodVisitor;
                        if (isExitAdvice()) {
                            enter2 = this.argumentHandler.exit();
                        } else {
                            enter2 = this.argumentHandler.enter();
                        }
                        forAdvice.requireStackSize(bound.apply(methodVisitor6, enter2));
                        this.stackMapFrameHandler.injectCompletionFrame(this.methodVisitor);
                        this.methodSizeHandler.requireStackSize(Math.max(i3, this.adviceMethod.getReturnType().getStackSize().getSize()));
                        this.methodSizeHandler.requireLocalVariableLength(this.instrumentedMethod.getStackSize() + this.adviceMethod.getReturnType().getStackSize().getSize());
                    }

                    public AdviceMethodWriter(MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, PostProcessor postProcessor, List<OffsetMapping.Target> list, MethodVisitor methodVisitor, Implementation.Context context, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation, Delegator delegator) {
                        this.adviceMethod = inDefinedShape;
                        this.instrumentedType = typeDescription;
                        this.instrumentedMethod = methodDescription;
                        this.assigner = assigner;
                        this.postProcessor = postProcessor;
                        this.offsetMappings = list;
                        this.methodVisitor = methodVisitor;
                        this.implementationContext = context;
                        this.argumentHandler = forAdvice;
                        this.methodSizeHandler = forAdvice2;
                        this.stackMapFrameHandler = forAdvice3;
                        this.suppressionHandler = bound;
                        this.relocationHandler = bound2;
                        this.exceptionHandler = stackManipulation;
                        this.delegator = delegator;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static abstract class ForMethodEnter extends Resolved implements Resolved.ForMethodEnter {
                    private final boolean prependLineNumber;

                    /* loaded from: classes2.dex */
                    public static class WithDiscardedEnterType extends ForMethodEnter {
                        public WithDiscardedEnterType(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, Delegator delegator) {
                            super(inDefinedShape, postProcessor, list, typeDefinition, delegator);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher
                        public TypeDefinition getAdviceType() {
                            return TypeDescription.VOID;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved.ForMethodEnter
                        public Bound doResolve(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                            forAdvice2.requireLocalVariableLengthPadding(this.adviceMethod.getReturnType().getStackSize().getSize());
                            return super.doResolve(typeDescription, methodDescription, methodVisitor, context, assigner, forAdvice, forAdvice2, forAdvice3, bound, bound2, stackManipulation);
                        }
                    }

                    /* loaded from: classes2.dex */
                    public static class WithRetainedEnterType extends ForMethodEnter {
                        public WithRetainedEnterType(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, Delegator delegator) {
                            super(inDefinedShape, postProcessor, list, typeDefinition, delegator);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher
                        public TypeDefinition getAdviceType() {
                            return this.adviceMethod.getReturnType();
                        }
                    }

                    /* renamed from: of */
                    public static Resolved.ForMethodEnter m15323of(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Delegator delegator, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, boolean z) {
                        return z ? new WithRetainedEnterType(inDefinedShape, postProcessor, list, typeDefinition, delegator) : new WithDiscardedEnterType(inDefinedShape, postProcessor, list, typeDefinition, delegator);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.prependLineNumber == ((ForMethodEnter) obj).prependLineNumber;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter
                    public TypeDefinition getActualAdviceType() {
                        return this.adviceMethod.getReturnType();
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public int hashCode() {
                        return (super.hashCode() * 31) + (this.prependLineNumber ? 1 : 0);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter
                    public boolean isPrependLineNumber() {
                        return this.prependLineNumber;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved
                    public Bound resolve(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation) {
                        return doResolve(typeDescription, methodDescription, methodVisitor, context, assigner, forInstrumentedMethod.bindEnter(this.adviceMethod), forInstrumentedMethod2.bindEnter(this.adviceMethod), forInstrumentedMethod3.bindEnter(this.adviceMethod), this.suppressionHandler.bind(stackManipulation), this.relocationHandler.bind(methodDescription, relocation), stackManipulation);
                    }

                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public ForMethodEnter(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, Delegator delegator) {
                        super(inDefinedShape, postProcessor, CompoundList.m14776of(Arrays.asList(OffsetMapping.ForArgument.Unresolved.Factory.INSTANCE, OffsetMapping.ForAllArguments.Factory.INSTANCE, OffsetMapping.ForThisReference.Factory.INSTANCE, OffsetMapping.ForField.Unresolved.Factory.INSTANCE, OffsetMapping.ForOrigin.Factory.INSTANCE, OffsetMapping.ForUnusedValue.Factory.INSTANCE, OffsetMapping.ForStubValue.INSTANCE, OffsetMapping.ForExitValue.Factory.m15297of(typeDefinition), new OffsetMapping.Factory.Illegal(Thrown.class), new OffsetMapping.Factory.Illegal(Enter.class), new OffsetMapping.Factory.Illegal(Local.class), new OffsetMapping.Factory.Illegal(Return.class)), (List) list), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodEnter.class).getValue(Advice.SUPPRESS_ENTER).resolve(TypeDescription.class), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodEnter.class).getValue(Advice.SKIP_ON).resolve(TypeDescription.class), delegator);
                        this.prependLineNumber = ((Boolean) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodEnter.class).getValue(Advice.PREPEND_LINE_NUMBER).resolve(Boolean.class)).booleanValue();
                    }

                    public Bound doResolve(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                        ArrayList arrayList = new ArrayList(this.offsetMappings.size());
                        for (OffsetMapping offsetMapping : this.offsetMappings.values()) {
                            arrayList.add(offsetMapping.resolve(typeDescription, methodDescription, assigner, forAdvice, OffsetMapping.Sort.ENTER));
                        }
                        return new AdviceMethodWriter.ForMethodEnter(this.adviceMethod, typeDescription, methodDescription, assigner, this.postProcessor, arrayList, methodVisitor, context, forAdvice, forAdvice2, forAdvice3, bound, bound2, stackManipulation, this.delegator);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static abstract class ForMethodExit extends Resolved implements Resolved.ForMethodExit {
                    private final boolean backupArguments;

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class WithExceptionHandler extends ForMethodExit {
                        private final TypeDescription throwable;

                        public WithExceptionHandler(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, TypeDescription typeDescription, Delegator delegator) {
                            super(inDefinedShape, postProcessor, map, list, typeDefinition, delegator);
                            this.throwable = typeDescription;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved.ForMethodExit, net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                        public boolean equals(@MaybeNull Object obj) {
                            if (super.equals(obj)) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && this.throwable.equals(((WithExceptionHandler) obj).throwable);
                            }
                            return false;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
                        public TypeDescription getThrowable() {
                            return this.throwable;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved.ForMethodExit, net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                        public int hashCode() {
                            return (super.hashCode() * 31) + this.throwable.hashCode();
                        }
                    }

                    /* loaded from: classes2.dex */
                    public static class WithoutExceptionHandler extends ForMethodExit {
                        public WithoutExceptionHandler(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, Delegator delegator) {
                            super(inDefinedShape, postProcessor, map, list, typeDefinition, delegator);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
                        public TypeDescription getThrowable() {
                            return NoExceptionHandler.DESCRIPTION;
                        }
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.backupArguments == ((ForMethodExit) obj).backupArguments;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher
                    public TypeDefinition getAdviceType() {
                        return this.adviceMethod.getReturnType();
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
                    public ArgumentHandler.Factory getArgumentHandlerFactory() {
                        return this.backupArguments ? ArgumentHandler.Factory.COPYING : ArgumentHandler.Factory.SIMPLE;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public int hashCode() {
                        return (super.hashCode() * 31) + (this.backupArguments ? 1 : 0);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Delegating.Resolved
                    public Bound resolve(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation) {
                        return doResolve(typeDescription, methodDescription, methodVisitor, context, assigner, forInstrumentedMethod.bindExit(this.adviceMethod, getThrowable().represents(NoExceptionHandler.class)), forInstrumentedMethod2.bindExit(this.adviceMethod), forInstrumentedMethod3.bindExit(this.adviceMethod), this.suppressionHandler.bind(stackManipulation), this.relocationHandler.bind(methodDescription, relocation), stackManipulation);
                    }

                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public ForMethodExit(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, Delegator delegator) {
                        super(inDefinedShape, postProcessor, CompoundList.m14776of(Arrays.asList(OffsetMapping.ForArgument.Unresolved.Factory.INSTANCE, OffsetMapping.ForAllArguments.Factory.INSTANCE, OffsetMapping.ForThisReference.Factory.INSTANCE, OffsetMapping.ForField.Unresolved.Factory.INSTANCE, OffsetMapping.ForOrigin.Factory.INSTANCE, OffsetMapping.ForUnusedValue.Factory.INSTANCE, OffsetMapping.ForStubValue.INSTANCE, OffsetMapping.ForEnterValue.Factory.m15300of(typeDefinition), OffsetMapping.ForExitValue.Factory.m15297of(inDefinedShape.getReturnType()), new OffsetMapping.ForLocalValue.Factory(map), OffsetMapping.ForReturnValue.Factory.INSTANCE, OffsetMapping.ForThrowable.Factory.m15281of(inDefinedShape)), (List) list), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.SUPPRESS_EXIT).resolve(TypeDescription.class), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.REPEAT_ON).resolve(TypeDescription.class), delegator);
                        this.backupArguments = ((Boolean) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.BACKUP_ARGUMENTS).resolve(Boolean.class)).booleanValue();
                    }

                    private Bound doResolve(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                        ArrayList arrayList = new ArrayList(this.offsetMappings.size());
                        for (OffsetMapping offsetMapping : this.offsetMappings.values()) {
                            arrayList.add(offsetMapping.resolve(typeDescription, methodDescription, assigner, forAdvice, OffsetMapping.Sort.EXIT));
                        }
                        return new AdviceMethodWriter.ForMethodExit(this.adviceMethod, typeDescription, methodDescription, assigner, this.postProcessor, arrayList, methodVisitor, context, forAdvice, forAdvice2, forAdvice3, bound, bound2, stackManipulation, this.delegator);
                    }

                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    /* renamed from: of */
                    public static Resolved.ForMethodExit m15322of(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Delegator delegator, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition) {
                        TypeDescription typeDescription = (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.ON_THROWABLE).resolve(TypeDescription.class);
                        if (typeDescription.represents(NoExceptionHandler.class)) {
                            return new WithoutExceptionHandler(inDefinedShape, postProcessor, map, list, typeDefinition, delegator);
                        }
                        return new WithExceptionHandler(inDefinedShape, postProcessor, map, list, typeDefinition, typeDescription, delegator);
                    }
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
                public Map<String, TypeDefinition> getNamedTypes() {
                    return Collections.emptyMap();
                }

                public abstract Bound resolve(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation);

                public Resolved(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, List<? extends OffsetMapping.Factory<?>> list, TypeDescription typeDescription, TypeDescription typeDescription2, Delegator delegator) {
                    super(inDefinedShape, postProcessor, list, typeDescription, typeDescription2, OffsetMapping.Factory.AdviceType.DELEGATION);
                    this.delegator = delegator;
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
                public Bound bind(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation) {
                    if (this.adviceMethod.isVisibleTo(typeDescription)) {
                        return resolve(typeDescription, methodDescription, methodVisitor, context, assigner, forInstrumentedMethod, forInstrumentedMethod2, forInstrumentedMethod3, stackManipulation, relocation);
                    }
                    throw new IllegalStateException(this.adviceMethod + " is not visible to " + methodDescription.getDeclaringType());
                }
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Resolved.ForMethodEnter asMethodEnter(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory) {
                MethodDescription.InDefinedShape inDefinedShape = this.adviceMethod;
                return Resolved.ForMethodEnter.m15323of(inDefinedShape, factory.make(inDefinedShape, false), this.delegator, list, unresolved.getAdviceType(), unresolved.isAlive());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Delegating delegating = (Delegating) obj;
                    return this.adviceMethod.equals(delegating.adviceMethod) && this.delegator.equals(delegating.delegator);
                }
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Map<String, TypeDefinition> getNamedTypes() {
                return Collections.emptyMap();
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.adviceMethod.hashCode()) * 31) + this.delegator.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher
            public boolean isAlive() {
                return true;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public boolean isBinary() {
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher
            public TypeDescription getAdviceType() {
                return this.adviceMethod.getReturnType().asErasure();
            }

            public Delegating(MethodDescription.InDefinedShape inDefinedShape, Delegator delegator) {
                this.adviceMethod = inDefinedShape;
                this.delegator = delegator;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Resolved.ForMethodExit asMethodExit(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory) {
                Map<String, TypeDefinition> namedTypes = unresolved.getNamedTypes();
                for (ParameterDescription parameterDescription : this.adviceMethod.getParameters()) {
                    AnnotationDescription.Loadable ofType = parameterDescription.getDeclaredAnnotations().ofType(Local.class);
                    if (ofType != null) {
                        String str = (String) ofType.getValue(OffsetMapping.ForLocalValue.Factory.LOCAL_VALUE).resolve(String.class);
                        TypeDefinition typeDefinition = namedTypes.get(str);
                        if (typeDefinition != null) {
                            if (!typeDefinition.equals(parameterDescription.getType())) {
                                throw new IllegalStateException(this.adviceMethod + " does not read variable " + str + " as " + typeDefinition);
                            }
                        } else {
                            throw new IllegalStateException(this.adviceMethod + " attempts use of undeclared local variable " + str);
                        }
                    }
                }
                MethodDescription.InDefinedShape inDefinedShape = this.adviceMethod;
                return Resolved.ForMethodExit.m15322of(inDefinedShape, factory.make(inDefinedShape, true), this.delegator, namedTypes, list, unresolved.getAdviceType());
            }
        }

        /* loaded from: classes2.dex */
        public enum Inactive implements Unresolved, Resolved.ForMethodEnter, Resolved.ForMethodExit, Bound {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
            public void apply() {
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Resolved.ForMethodEnter asMethodEnter(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Resolved.ForMethodExit asMethodExit(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
            public Bound bind(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter
            public TypeDefinition getActualAdviceType() {
                return TypeDescription.VOID;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
            public ArgumentHandler.Factory getArgumentHandlerFactory() {
                return ArgumentHandler.Factory.SIMPLE;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Map<String, TypeDefinition> getNamedTypes() {
                return Collections.emptyMap();
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
            public TypeDescription getThrowable() {
                return NoExceptionHandler.DESCRIPTION;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
            public void initialize() {
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher
            public boolean isAlive() {
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public boolean isBinary() {
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter
            public boolean isPrependLineNumber() {
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
            public void prepare() {
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher
            public TypeDescription getAdviceType() {
                return TypeDescription.VOID;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Inlining implements Unresolved {
            public final MethodDescription.InDefinedShape adviceMethod;
            private final Map<String, TypeDefinition> namedTypes = new HashMap();

            /* loaded from: classes2.dex */
            public static class CodeTranslationVisitor extends MethodVisitor {
                public final MethodDescription.InDefinedShape adviceMethod;
                public final ArgumentHandler.ForAdvice argumentHandler;
                private final Assigner assigner;
                public final Label endOfMethod;
                private final StackManipulation exceptionHandler;
                private final boolean exit;
                public final Implementation.Context implementationContext;
                private final MethodDescription instrumentedMethod;
                private final TypeDescription instrumentedType;
                public final MethodSizeHandler.ForAdvice methodSizeHandler;
                public final MethodVisitor methodVisitor;
                private final Map<Integer, OffsetMapping.Target> offsetMappings;
                private final PostProcessor postProcessor;
                private final RelocationHandler.Bound relocationHandler;
                public final StackMapFrameHandler.ForAdvice stackMapFrameHandler;
                private final SuppressionHandler.Bound suppressionHandler;

                public CodeTranslationVisitor(MethodVisitor methodVisitor, Implementation.Context context, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, MethodDescription.InDefinedShape inDefinedShape, Map<Integer, OffsetMapping.Target> map, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation, PostProcessor postProcessor, boolean z) {
                    super(OpenedClassReader.ASM_API, StackAwareMethodVisitor.m14749of(methodVisitor, methodDescription));
                    this.methodVisitor = methodVisitor;
                    this.implementationContext = context;
                    this.argumentHandler = forAdvice;
                    this.methodSizeHandler = forAdvice2;
                    this.stackMapFrameHandler = forAdvice3;
                    this.instrumentedType = typeDescription;
                    this.instrumentedMethod = methodDescription;
                    this.assigner = assigner;
                    this.adviceMethod = inDefinedShape;
                    this.offsetMappings = map;
                    this.suppressionHandler = bound;
                    this.relocationHandler = bound2;
                    this.exceptionHandler = stackManipulation;
                    this.postProcessor = postProcessor;
                    this.exit = z;
                    this.endOfMethod = new Label();
                }

                public void propagateHandler(Label label) {
                    ((StackAwareMethodVisitor) this.f19219mv).register(label, Collections.singletonList(StackSize.SINGLE));
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitAnnotableParameterCount(int i, boolean z) {
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitAnnotation(String str, boolean z) {
                    return Dispatcher.IGNORE_ANNOTATION;
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitAnnotationDefault() {
                    return Dispatcher.IGNORE_ANNOTATION;
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitAttribute(Attribute attribute) {
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitCode() {
                    this.suppressionHandler.onStart(this.methodVisitor);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitFrame(int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                    this.stackMapFrameHandler.translateFrame(this.methodVisitor, i, i2, objArr, i3, objArr2);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitMaxs(int i, int i2) {
                    this.methodSizeHandler.recordMaxima(i, i2);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitParameter(String str, int i) {
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitParameterAnnotation(int i, String str, boolean z) {
                    return Dispatcher.IGNORE_ANNOTATION;
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                @MaybeNull
                public AnnotationVisitor visitTypeAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                    return Dispatcher.IGNORE_ANNOTATION;
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitEnd() {
                    int enter;
                    int enter2;
                    int enter3;
                    int enter4;
                    int enter5;
                    int enter6;
                    this.suppressionHandler.onEnd(this.methodVisitor, this.implementationContext, this.methodSizeHandler, this.stackMapFrameHandler, this.adviceMethod.getReturnType());
                    this.methodVisitor.visitLabel(this.endOfMethod);
                    if (!this.adviceMethod.getReturnType().represents(Boolean.TYPE) && !this.adviceMethod.getReturnType().represents(Byte.TYPE) && !this.adviceMethod.getReturnType().represents(Short.TYPE) && !this.adviceMethod.getReturnType().represents(Character.TYPE) && !this.adviceMethod.getReturnType().represents(Integer.TYPE)) {
                        if (this.adviceMethod.getReturnType().represents(Long.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.methodVisitor);
                            MethodVisitor methodVisitor = this.methodVisitor;
                            if (this.exit) {
                                enter6 = this.argumentHandler.exit();
                            } else {
                                enter6 = this.argumentHandler.enter();
                            }
                            methodVisitor.visitVarInsn(55, enter6);
                        } else if (this.adviceMethod.getReturnType().represents(Float.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.methodVisitor);
                            MethodVisitor methodVisitor2 = this.methodVisitor;
                            if (this.exit) {
                                enter5 = this.argumentHandler.exit();
                            } else {
                                enter5 = this.argumentHandler.enter();
                            }
                            methodVisitor2.visitVarInsn(56, enter5);
                        } else if (this.adviceMethod.getReturnType().represents(Double.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.methodVisitor);
                            MethodVisitor methodVisitor3 = this.methodVisitor;
                            if (this.exit) {
                                enter4 = this.argumentHandler.exit();
                            } else {
                                enter4 = this.argumentHandler.enter();
                            }
                            methodVisitor3.visitVarInsn(57, enter4);
                        } else if (!this.adviceMethod.getReturnType().represents(Void.TYPE)) {
                            this.stackMapFrameHandler.injectReturnFrame(this.methodVisitor);
                            MethodVisitor methodVisitor4 = this.methodVisitor;
                            if (this.exit) {
                                enter3 = this.argumentHandler.exit();
                            } else {
                                enter3 = this.argumentHandler.enter();
                            }
                            methodVisitor4.visitVarInsn(58, enter3);
                        }
                    } else {
                        this.stackMapFrameHandler.injectReturnFrame(this.methodVisitor);
                        MethodVisitor methodVisitor5 = this.methodVisitor;
                        if (this.exit) {
                            enter = this.argumentHandler.exit();
                        } else {
                            enter = this.argumentHandler.enter();
                        }
                        methodVisitor5.visitVarInsn(54, enter);
                    }
                    this.methodSizeHandler.requireStackSize(this.postProcessor.resolve(this.instrumentedType, this.instrumentedMethod, this.assigner, this.argumentHandler, this.stackMapFrameHandler, this.exceptionHandler).apply(this.methodVisitor, this.implementationContext).getMaximalSize());
                    MethodSizeHandler.ForAdvice forAdvice = this.methodSizeHandler;
                    RelocationHandler.Bound bound = this.relocationHandler;
                    MethodVisitor methodVisitor6 = this.methodVisitor;
                    if (this.exit) {
                        enter2 = this.argumentHandler.exit();
                    } else {
                        enter2 = this.argumentHandler.enter();
                    }
                    forAdvice.requireStackSize(bound.apply(methodVisitor6, enter2));
                    this.stackMapFrameHandler.injectCompletionFrame(this.methodVisitor);
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitIincInsn(int i, int i2) {
                    OffsetMapping.Target target = this.offsetMappings.get(Integer.valueOf(i));
                    if (target != null) {
                        this.methodSizeHandler.requireStackSizePadding(target.resolveIncrement(i2).apply(this.f19219mv, this.implementationContext).getMaximalSize());
                    } else {
                        this.f19219mv.visitIincInsn(this.argumentHandler.mapped(i), i2);
                    }
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitVarInsn(int i, int i2) {
                    StackManipulation resolveRead;
                    StackSize stackSize;
                    OffsetMapping.Target target = this.offsetMappings.get(Integer.valueOf(i2));
                    if (target != null) {
                        switch (i) {
                            case 21:
                            case 23:
                            case 25:
                                resolveRead = target.resolveRead();
                                stackSize = StackSize.SINGLE;
                                break;
                            case 22:
                            case 24:
                                resolveRead = target.resolveRead();
                                stackSize = StackSize.DOUBLE;
                                break;
                            default:
                                switch (i) {
                                    case 54:
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                        resolveRead = target.resolveWrite();
                                        stackSize = StackSize.ZERO;
                                        break;
                                    default:
                                        throw new IllegalStateException("Unexpected opcode: " + i);
                                }
                        }
                        this.methodSizeHandler.requireStackSizePadding(resolveRead.apply(this.f19219mv, this.implementationContext).getMaximalSize() - stackSize.getSize());
                        return;
                    }
                    this.f19219mv.visitVarInsn(i, this.argumentHandler.mapped(i2));
                }

                @Override // net.bytebuddy.jar.asm.MethodVisitor
                public void visitInsn(int i) {
                    switch (i) {
                        case 172:
                            this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(54, 21, StackSize.SINGLE));
                            break;
                        case 173:
                            this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(55, 22, StackSize.DOUBLE));
                            break;
                        case 174:
                            this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(56, 23, StackSize.SINGLE));
                            break;
                        case 175:
                            this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(57, 24, StackSize.DOUBLE));
                            break;
                        case 176:
                            this.methodSizeHandler.requireLocalVariableLength(((StackAwareMethodVisitor) this.f19219mv).drainStack(58, 25, StackSize.SINGLE));
                            break;
                        case 177:
                            ((StackAwareMethodVisitor) this.f19219mv).drainStack();
                            break;
                        default:
                            this.f19219mv.visitInsn(i);
                            return;
                    }
                    this.f19219mv.visitJumpInsn(167, this.endOfMethod);
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class Resolved extends Resolved.AbstractBase {
                public final ClassReader classReader;

                /* loaded from: classes2.dex */
                public class AdviceMethodInliner extends ClassVisitor implements Bound {
                    public final ArgumentHandler.ForInstrumentedMethod argumentHandler;
                    public final Assigner assigner;
                    public final ClassReader classReader;
                    public final StackManipulation exceptionHandler;
                    public final Implementation.Context implementationContext;
                    public final MethodDescription instrumentedMethod;
                    public final TypeDescription instrumentedType;
                    public final List<Label> labels;
                    public final MethodSizeHandler.ForInstrumentedMethod methodSizeHandler;
                    public final MethodVisitor methodVisitor;
                    public final RelocationHandler.Bound relocationHandler;
                    public final StackMapFrameHandler.ForInstrumentedMethod stackMapFrameHandler;
                    public final SuppressionHandler.Bound suppressionHandler;

                    /* loaded from: classes2.dex */
                    public class ExceptionTableCollector extends MethodVisitor {
                        private final MethodVisitor methodVisitor;

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitTryCatchAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                            return this.methodVisitor.visitTryCatchAnnotation(i, typePath, str, z);
                        }

                        public ExceptionTableCollector(MethodVisitor methodVisitor) {
                            super(OpenedClassReader.ASM_API);
                            this.methodVisitor = methodVisitor;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitTryCatchBlock(Label label, Label label2, Label label3, @MaybeNull String str) {
                            this.methodVisitor.visitTryCatchBlock(label, label2, label3, str);
                            AdviceMethodInliner.this.labels.addAll(Arrays.asList(label, label2, label3));
                        }
                    }

                    /* loaded from: classes2.dex */
                    public class ExceptionTableExtractor extends ClassVisitor {
                        @Override // net.bytebuddy.jar.asm.ClassVisitor
                        @MaybeNull
                        public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                            if (Resolved.this.adviceMethod.getInternalName().equals(str) && Resolved.this.adviceMethod.getDescriptor().equals(str2)) {
                                AdviceMethodInliner adviceMethodInliner = AdviceMethodInliner.this;
                                return new ExceptionTableCollector(adviceMethodInliner.methodVisitor);
                            }
                            return Dispatcher.IGNORE_METHOD;
                        }

                        public ExceptionTableExtractor() {
                            super(OpenedClassReader.ASM_API);
                        }
                    }

                    /* loaded from: classes2.dex */
                    public class ExceptionTableSubstitutor extends MethodVisitor {
                        private int index;
                        private final Map<Label, Label> substitutions;

                        private Label[] resolve(Label[] labelArr) {
                            Label[] labelArr2 = new Label[labelArr.length];
                            int length = labelArr.length;
                            int i = 0;
                            int i2 = 0;
                            while (i < length) {
                                labelArr2[i2] = resolve(labelArr[i]);
                                i++;
                                i2++;
                            }
                            return labelArr2;
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitJumpInsn(int i, Label label) {
                            super.visitJumpInsn(i, resolve(label));
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitLabel(Label label) {
                            super.visitLabel(resolve(label));
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitLookupSwitchInsn(Label label, int[] iArr, Label[] labelArr) {
                            super.visitLookupSwitchInsn(resolve(label), iArr, resolve(labelArr));
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitTableSwitchInsn(int i, int i2, Label label, Label... labelArr) {
                            super.visitTableSwitchInsn(i, i2, label, resolve(labelArr));
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        @MaybeNull
                        public AnnotationVisitor visitTryCatchAnnotation(int i, @MaybeNull TypePath typePath, String str, boolean z) {
                            return Dispatcher.IGNORE_ANNOTATION;
                        }

                        public ExceptionTableSubstitutor(MethodVisitor methodVisitor) {
                            super(OpenedClassReader.ASM_API, methodVisitor);
                            this.substitutions = new IdentityHashMap();
                        }

                        @Override // net.bytebuddy.jar.asm.MethodVisitor
                        public void visitTryCatchBlock(Label label, Label label2, Label label3, String str) {
                            Map<Label, Label> map = this.substitutions;
                            List<Label> list = AdviceMethodInliner.this.labels;
                            int i = this.index;
                            this.index = i + 1;
                            map.put(label, list.get(i));
                            Map<Label, Label> map2 = this.substitutions;
                            List<Label> list2 = AdviceMethodInliner.this.labels;
                            int i2 = this.index;
                            this.index = i2 + 1;
                            map2.put(label2, list2.get(i2));
                            List<Label> list3 = AdviceMethodInliner.this.labels;
                            int i3 = this.index;
                            this.index = i3 + 1;
                            Label label4 = list3.get(i3);
                            this.substitutions.put(label3, label4);
                            ((CodeTranslationVisitor) this.f19219mv).propagateHandler(label4);
                        }

                        private Label resolve(Label label) {
                            Label label2 = this.substitutions.get(label);
                            return label2 == null ? label : label2;
                        }
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                    public void apply() {
                        this.classReader.accept(this, this.stackMapFrameHandler.getReaderHint() | 2);
                    }

                    @Override // net.bytebuddy.jar.asm.ClassVisitor
                    @MaybeNull
                    public MethodVisitor visitMethod(int i, String str, String str2, @MaybeNull String str3, @MaybeNull String[] strArr) {
                        if (Resolved.this.adviceMethod.getInternalName().equals(str) && Resolved.this.adviceMethod.getDescriptor().equals(str2)) {
                            return new ExceptionTableSubstitutor(Resolved.this.apply(this.methodVisitor, this.implementationContext, this.assigner, this.argumentHandler, this.methodSizeHandler, this.stackMapFrameHandler, this.instrumentedType, this.instrumentedMethod, this.suppressionHandler, this.relocationHandler, this.exceptionHandler));
                        }
                        return Dispatcher.IGNORE_METHOD;
                    }

                    public AdviceMethodInliner(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation, ClassReader classReader) {
                        super(OpenedClassReader.ASM_API);
                        this.instrumentedType = typeDescription;
                        this.instrumentedMethod = methodDescription;
                        this.methodVisitor = methodVisitor;
                        this.implementationContext = context;
                        this.assigner = assigner;
                        this.argumentHandler = forInstrumentedMethod;
                        this.methodSizeHandler = forInstrumentedMethod2;
                        this.stackMapFrameHandler = forInstrumentedMethod3;
                        this.suppressionHandler = bound;
                        this.relocationHandler = bound2;
                        this.exceptionHandler = stackManipulation;
                        this.classReader = classReader;
                        this.labels = new ArrayList();
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                    public void initialize() {
                        for (Map.Entry<Integer, TypeDefinition> entry : Resolved.this.resolveInitializationTypes(this.argumentHandler).entrySet()) {
                            if (!entry.getValue().represents(Boolean.TYPE) && !entry.getValue().represents(Byte.TYPE) && !entry.getValue().represents(Short.TYPE) && !entry.getValue().represents(Character.TYPE) && !entry.getValue().represents(Integer.TYPE)) {
                                if (entry.getValue().represents(Long.TYPE)) {
                                    this.methodVisitor.visitInsn(9);
                                    this.methodVisitor.visitVarInsn(55, entry.getKey().intValue());
                                } else if (entry.getValue().represents(Float.TYPE)) {
                                    this.methodVisitor.visitInsn(11);
                                    this.methodVisitor.visitVarInsn(56, entry.getKey().intValue());
                                } else if (entry.getValue().represents(Double.TYPE)) {
                                    this.methodVisitor.visitInsn(14);
                                    this.methodVisitor.visitVarInsn(57, entry.getKey().intValue());
                                } else {
                                    this.methodVisitor.visitInsn(1);
                                    this.methodVisitor.visitVarInsn(58, entry.getKey().intValue());
                                }
                            } else {
                                this.methodVisitor.visitInsn(3);
                                this.methodVisitor.visitVarInsn(54, entry.getKey().intValue());
                            }
                            this.methodSizeHandler.requireStackSize(entry.getValue().getStackSize().getSize());
                        }
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Bound
                    public void prepare() {
                        this.classReader.accept(new ExceptionTableExtractor(), 6);
                        this.suppressionHandler.onPrepare(this.methodVisitor);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static abstract class ForMethodEnter extends Resolved implements Resolved.ForMethodEnter {
                    private final Map<String, TypeDefinition> namedTypes;
                    private final boolean prependLineNumber;

                    /* loaded from: classes2.dex */
                    public static class WithDiscardedEnterType extends ForMethodEnter {
                        public WithDiscardedEnterType(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, ClassReader classReader) {
                            super(inDefinedShape, postProcessor, map, list, typeDefinition, classReader);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher
                        public TypeDefinition getAdviceType() {
                            return TypeDescription.VOID;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved.ForMethodEnter
                        public MethodVisitor doApply(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, TypeDescription typeDescription, MethodDescription methodDescription, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                            forAdvice2.requireLocalVariableLengthPadding(this.adviceMethod.getReturnType().getStackSize().getSize());
                            return super.doApply(methodVisitor, context, assigner, forAdvice, forAdvice2, forAdvice3, typeDescription, methodDescription, bound, bound2, stackManipulation);
                        }
                    }

                    /* loaded from: classes2.dex */
                    public static class WithRetainedEnterType extends ForMethodEnter {
                        public WithRetainedEnterType(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, ClassReader classReader) {
                            super(inDefinedShape, postProcessor, map, list, typeDefinition, classReader);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher
                        public TypeDefinition getAdviceType() {
                            return this.adviceMethod.getReturnType();
                        }
                    }

                    /* renamed from: of */
                    public static Resolved.ForMethodEnter m15321of(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, ClassReader classReader, boolean z) {
                        return z ? new WithRetainedEnterType(inDefinedShape, postProcessor, map, list, typeDefinition, classReader) : new WithDiscardedEnterType(inDefinedShape, postProcessor, map, list, typeDefinition, classReader);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved
                    public MethodVisitor apply(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, TypeDescription typeDescription, MethodDescription methodDescription, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                        return doApply(methodVisitor, context, assigner, forInstrumentedMethod.bindEnter(this.adviceMethod), forInstrumentedMethod2.bindEnter(this.adviceMethod), forInstrumentedMethod3.bindEnter(this.adviceMethod), typeDescription, methodDescription, bound, bound2, stackManipulation);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                ForMethodEnter forMethodEnter = (ForMethodEnter) obj;
                                return this.prependLineNumber == forMethodEnter.prependLineNumber && this.namedTypes.equals(forMethodEnter.namedTypes);
                            }
                            return false;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter
                    public TypeDefinition getActualAdviceType() {
                        return this.adviceMethod.getReturnType();
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
                    public Map<String, TypeDefinition> getNamedTypes() {
                        return this.namedTypes;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public int hashCode() {
                        return (((super.hashCode() * 31) + this.namedTypes.hashCode()) * 31) + (this.prependLineNumber ? 1 : 0);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodEnter
                    public boolean isPrependLineNumber() {
                        return this.prependLineNumber;
                    }

                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public ForMethodEnter(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, List<? extends OffsetMapping.Factory<?>> list, TypeDefinition typeDefinition, ClassReader classReader) {
                        super(inDefinedShape, postProcessor, CompoundList.m14776of(Arrays.asList(OffsetMapping.ForArgument.Unresolved.Factory.INSTANCE, OffsetMapping.ForAllArguments.Factory.INSTANCE, OffsetMapping.ForThisReference.Factory.INSTANCE, OffsetMapping.ForField.Unresolved.Factory.INSTANCE, OffsetMapping.ForOrigin.Factory.INSTANCE, OffsetMapping.ForUnusedValue.Factory.INSTANCE, OffsetMapping.ForStubValue.INSTANCE, OffsetMapping.ForThrowable.Factory.INSTANCE, OffsetMapping.ForExitValue.Factory.m15297of(typeDefinition), new OffsetMapping.ForLocalValue.Factory(map), new OffsetMapping.Factory.Illegal(Thrown.class), new OffsetMapping.Factory.Illegal(Enter.class), new OffsetMapping.Factory.Illegal(Return.class)), (List) list), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodEnter.class).getValue(Advice.SUPPRESS_ENTER).resolve(TypeDescription.class), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodEnter.class).getValue(Advice.SKIP_ON).resolve(TypeDescription.class), classReader);
                        this.namedTypes = map;
                        this.prependLineNumber = ((Boolean) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodEnter.class).getValue(Advice.PREPEND_LINE_NUMBER).resolve(Boolean.class)).booleanValue();
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
                    public Bound bind(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation) {
                        return new AdviceMethodInliner(typeDescription, methodDescription, methodVisitor, context, assigner, forInstrumentedMethod, forInstrumentedMethod2, forInstrumentedMethod3, this.suppressionHandler.bind(stackManipulation), this.relocationHandler.bind(methodDescription, relocation), stackManipulation, this.classReader);
                    }

                    public MethodVisitor doApply(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, TypeDescription typeDescription, MethodDescription methodDescription, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                        HashMap hashMap = new HashMap();
                        for (Map.Entry<Integer, OffsetMapping> entry : this.offsetMappings.entrySet()) {
                            hashMap.put(entry.getKey(), entry.getValue().resolve(typeDescription, methodDescription, assigner, forAdvice, OffsetMapping.Sort.ENTER));
                        }
                        return new CodeTranslationVisitor(methodVisitor, context, forAdvice, forAdvice2, forAdvice3, typeDescription, methodDescription, assigner, this.adviceMethod, hashMap, bound, bound2, stackManipulation, this.postProcessor, false);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved
                    public Map<Integer, TypeDefinition> resolveInitializationTypes(ArgumentHandler argumentHandler) {
                        TreeMap treeMap = new TreeMap();
                        for (Map.Entry<String, TypeDefinition> entry : this.namedTypes.entrySet()) {
                            treeMap.put(Integer.valueOf(argumentHandler.named(entry.getKey())), entry.getValue());
                        }
                        return treeMap;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static abstract class ForMethodExit extends Resolved implements Resolved.ForMethodExit {
                    private final boolean backupArguments;
                    private final Map<String, TypeDefinition> uninitializedNamedTypes;

                    /* loaded from: classes2.dex */
                    public static class WithoutExceptionHandler extends ForMethodExit {
                        public WithoutExceptionHandler(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, Map<String, TypeDefinition> map2, List<? extends OffsetMapping.Factory<?>> list, ClassReader classReader, TypeDefinition typeDefinition) {
                            super(inDefinedShape, postProcessor, map, map2, list, classReader, typeDefinition);
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
                        public TypeDescription getThrowable() {
                            return NoExceptionHandler.DESCRIPTION;
                        }
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved
                    public MethodVisitor apply(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, TypeDescription typeDescription, MethodDescription methodDescription, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                        return doApply(methodVisitor, context, assigner, forInstrumentedMethod.bindExit(this.adviceMethod, getThrowable().represents(NoExceptionHandler.class)), forInstrumentedMethod2.bindExit(this.adviceMethod), forInstrumentedMethod3.bindExit(this.adviceMethod), typeDescription, methodDescription, bound, bound2, stackManipulation);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                ForMethodExit forMethodExit = (ForMethodExit) obj;
                                return this.backupArguments == forMethodExit.backupArguments && this.uninitializedNamedTypes.equals(forMethodExit.uninitializedNamedTypes);
                            }
                            return false;
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher
                    public TypeDefinition getAdviceType() {
                        return this.adviceMethod.getReturnType();
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
                    public ArgumentHandler.Factory getArgumentHandlerFactory() {
                        return this.backupArguments ? ArgumentHandler.Factory.COPYING : ArgumentHandler.Factory.SIMPLE;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
                    public Map<String, TypeDefinition> getNamedTypes() {
                        return this.uninitializedNamedTypes;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                    public int hashCode() {
                        return (((super.hashCode() * 31) + this.uninitializedNamedTypes.hashCode()) * 31) + (this.backupArguments ? 1 : 0);
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class WithExceptionHandler extends ForMethodExit {
                        private final TypeDescription throwable;

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved.ForMethodExit, net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                        public boolean equals(@MaybeNull Object obj) {
                            if (super.equals(obj)) {
                                if (this == obj) {
                                    return true;
                                }
                                return obj != null && getClass() == obj.getClass() && this.throwable.equals(((WithExceptionHandler) obj).throwable);
                            }
                            return false;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved.ForMethodExit
                        public TypeDescription getThrowable() {
                            return this.throwable;
                        }

                        @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved.ForMethodExit, net.bytebuddy.asm.Advice.Dispatcher.Resolved.AbstractBase
                        public int hashCode() {
                            return (super.hashCode() * 31) + this.throwable.hashCode();
                        }

                        public WithExceptionHandler(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, Map<String, TypeDefinition> map2, List<? extends OffsetMapping.Factory<?>> list, ClassReader classReader, TypeDefinition typeDefinition, TypeDescription typeDescription) {
                            super(inDefinedShape, postProcessor, map, map2, list, classReader, typeDefinition);
                            this.throwable = typeDescription;
                        }
                    }

                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public ForMethodExit(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, Map<String, TypeDefinition> map2, List<? extends OffsetMapping.Factory<?>> list, ClassReader classReader, TypeDefinition typeDefinition) {
                        super(inDefinedShape, postProcessor, CompoundList.m14776of(Arrays.asList(OffsetMapping.ForArgument.Unresolved.Factory.INSTANCE, OffsetMapping.ForAllArguments.Factory.INSTANCE, OffsetMapping.ForThisReference.Factory.INSTANCE, OffsetMapping.ForField.Unresolved.Factory.INSTANCE, OffsetMapping.ForOrigin.Factory.INSTANCE, OffsetMapping.ForUnusedValue.Factory.INSTANCE, OffsetMapping.ForStubValue.INSTANCE, OffsetMapping.ForEnterValue.Factory.m15300of(typeDefinition), OffsetMapping.ForExitValue.Factory.m15297of(inDefinedShape.getReturnType()), new OffsetMapping.ForLocalValue.Factory(map), OffsetMapping.ForReturnValue.Factory.INSTANCE, OffsetMapping.ForThrowable.Factory.m15281of(inDefinedShape)), (List) list), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.SUPPRESS_EXIT).resolve(TypeDescription.class), (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.REPEAT_ON).resolve(TypeDescription.class), classReader);
                        this.uninitializedNamedTypes = map2;
                        this.backupArguments = ((Boolean) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.BACKUP_ARGUMENTS).resolve(Boolean.class)).booleanValue();
                    }

                    private MethodVisitor doApply(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForAdvice forAdvice, MethodSizeHandler.ForAdvice forAdvice2, StackMapFrameHandler.ForAdvice forAdvice3, TypeDescription typeDescription, MethodDescription methodDescription, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation) {
                        HashMap hashMap = new HashMap();
                        for (Map.Entry<Integer, OffsetMapping> entry : this.offsetMappings.entrySet()) {
                            hashMap.put(entry.getKey(), entry.getValue().resolve(typeDescription, methodDescription, assigner, forAdvice, OffsetMapping.Sort.EXIT));
                        }
                        return new CodeTranslationVisitor(methodVisitor, context, forAdvice, forAdvice2, forAdvice3, typeDescription, methodDescription, assigner, this.adviceMethod, hashMap, bound, bound2, stackManipulation, this.postProcessor, true);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Resolved
                    public Bound bind(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation) {
                        return new AdviceMethodInliner(typeDescription, methodDescription, methodVisitor, context, assigner, forInstrumentedMethod, forInstrumentedMethod2, forInstrumentedMethod3, this.suppressionHandler.bind(stackManipulation), this.relocationHandler.bind(methodDescription, relocation), stackManipulation, this.classReader);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.Inlining.Resolved
                    public Map<Integer, TypeDefinition> resolveInitializationTypes(ArgumentHandler argumentHandler) {
                        TreeMap treeMap = new TreeMap();
                        for (Map.Entry<String, TypeDefinition> entry : this.uninitializedNamedTypes.entrySet()) {
                            treeMap.put(Integer.valueOf(argumentHandler.named(entry.getKey())), entry.getValue());
                        }
                        if (!this.adviceMethod.getReturnType().represents(Void.TYPE)) {
                            treeMap.put(Integer.valueOf(argumentHandler.exit()), this.adviceMethod.getReturnType());
                        }
                        return treeMap;
                    }

                    @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    /* renamed from: of */
                    public static Resolved.ForMethodExit m15320of(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, Map<String, TypeDefinition> map, Map<String, TypeDefinition> map2, List<? extends OffsetMapping.Factory<?>> list, ClassReader classReader, TypeDefinition typeDefinition) {
                        TypeDescription typeDescription = (TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.ON_THROWABLE).resolve(TypeDescription.class);
                        if (typeDescription.represents(NoExceptionHandler.class)) {
                            return new WithoutExceptionHandler(inDefinedShape, postProcessor, map, map2, list, classReader, typeDefinition);
                        }
                        return new WithExceptionHandler(inDefinedShape, postProcessor, map, map2, list, classReader, typeDefinition, typeDescription);
                    }
                }

                public abstract MethodVisitor apply(MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, TypeDescription typeDescription, MethodDescription methodDescription, SuppressionHandler.Bound bound, RelocationHandler.Bound bound2, StackManipulation stackManipulation);

                public abstract Map<Integer, TypeDefinition> resolveInitializationTypes(ArgumentHandler argumentHandler);

                public Resolved(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, List<? extends OffsetMapping.Factory<?>> list, TypeDescription typeDescription, TypeDescription typeDescription2, ClassReader classReader) {
                    super(inDefinedShape, postProcessor, list, typeDescription, typeDescription2, OffsetMapping.Factory.AdviceType.INLINING);
                    this.classReader = classReader;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Inlining inlining = (Inlining) obj;
                    return this.adviceMethod.equals(inlining.adviceMethod) && this.namedTypes.equals(inlining.namedTypes);
                }
                return false;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Map<String, TypeDefinition> getNamedTypes() {
                return this.namedTypes;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.adviceMethod.hashCode()) * 31) + this.namedTypes.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher
            public boolean isAlive() {
                return true;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public boolean isBinary() {
                return true;
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Resolved.ForMethodEnter asMethodEnter(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory) {
                if (classReader != null) {
                    MethodDescription.InDefinedShape inDefinedShape = this.adviceMethod;
                    return Resolved.ForMethodEnter.m15321of(inDefinedShape, factory.make(inDefinedShape, false), this.namedTypes, list, unresolved.getAdviceType(), classReader, unresolved.isAlive());
                }
                throw new IllegalStateException("Class reader not expected null");
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher.Unresolved
            public Resolved.ForMethodExit asMethodExit(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory) {
                HashMap hashMap = new HashMap(unresolved.getNamedTypes());
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<String, TypeDefinition> entry : this.namedTypes.entrySet()) {
                    TypeDefinition typeDefinition = (TypeDefinition) hashMap.get(entry.getKey());
                    TypeDefinition typeDefinition2 = (TypeDefinition) hashMap2.get(entry.getKey());
                    if (typeDefinition == null && typeDefinition2 == null) {
                        hashMap.put(entry.getKey(), entry.getValue());
                        hashMap2.put(entry.getKey(), entry.getValue());
                    } else {
                        if (typeDefinition == null) {
                            typeDefinition = typeDefinition2;
                        }
                        if (!typeDefinition.equals(entry.getValue())) {
                            throw new IllegalStateException("Local variable for " + entry.getKey() + " is defined with inconsistent types");
                        }
                    }
                }
                MethodDescription.InDefinedShape inDefinedShape = this.adviceMethod;
                return Resolved.ForMethodExit.m15320of(inDefinedShape, factory.make(inDefinedShape, true), hashMap, hashMap2, list, classReader, unresolved.getAdviceType());
            }

            @Override // net.bytebuddy.asm.Advice.Dispatcher
            public TypeDescription getAdviceType() {
                return this.adviceMethod.getReturnType().asErasure();
            }

            public Inlining(MethodDescription.InDefinedShape inDefinedShape) {
                String str;
                TypeDefinition put;
                this.adviceMethod = inDefinedShape;
                for (ParameterDescription parameterDescription : inDefinedShape.getParameters()) {
                    AnnotationDescription.Loadable ofType = parameterDescription.getDeclaredAnnotations().ofType(Local.class);
                    if (ofType != null && (put = this.namedTypes.put((str = (String) ofType.getValue(OffsetMapping.ForLocalValue.Factory.LOCAL_VALUE).resolve(String.class)), parameterDescription.getType())) != null && !put.equals(parameterDescription.getType())) {
                        throw new IllegalStateException("Local variable for " + str + " is defined with inconsistent types");
                    }
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface RelocationHandler {

            /* loaded from: classes2.dex */
            public interface Bound {
                public static final int NO_REQUIRED_SIZE = 0;

                int apply(MethodVisitor methodVisitor, int i);
            }

            /* loaded from: classes2.dex */
            public enum Disabled implements RelocationHandler, Bound {
                INSTANCE;

                @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.Bound
                public int apply(MethodVisitor methodVisitor, int i) {
                    return 0;
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler
                public Bound bind(MethodDescription methodDescription, Relocation relocation) {
                    return this;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForType implements RelocationHandler {
                private final TypeDescription typeDescription;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class Bound implements Bound {
                    private final MethodDescription instrumentedMethod;
                    private final Relocation relocation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Bound bound = (Bound) obj;
                            return this.instrumentedMethod.equals(bound.instrumentedMethod) && this.relocation.equals(bound.relocation) && ForType.this.equals(ForType.this);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((getClass().hashCode() * 31) + this.instrumentedMethod.hashCode()) * 31) + this.relocation.hashCode()) * 31) + ForType.this.hashCode();
                    }

                    public Bound(MethodDescription methodDescription, Relocation relocation) {
                        this.instrumentedMethod = methodDescription;
                        this.relocation = relocation;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.Bound
                    public int apply(MethodVisitor methodVisitor, int i) {
                        if (!this.instrumentedMethod.isConstructor()) {
                            methodVisitor.visitVarInsn(25, i);
                            methodVisitor.visitTypeInsn(193, ForType.this.typeDescription.getInternalName());
                            Label label = new Label();
                            methodVisitor.visitJumpInsn(153, label);
                            this.relocation.apply(methodVisitor);
                            methodVisitor.visitLabel(label);
                            return 0;
                        }
                        throw new IllegalStateException("Cannot skip code execution from constructor: " + this.instrumentedMethod);
                    }
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler
                public Bound bind(MethodDescription methodDescription, Relocation relocation) {
                    return new Bound(methodDescription, relocation);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForType) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                /* renamed from: of */
                public static RelocationHandler m15318of(TypeDescription typeDescription, TypeDefinition typeDefinition) {
                    if (typeDescription.represents(Void.TYPE)) {
                        return Disabled.INSTANCE;
                    }
                    if (typeDescription.represents(OnDefaultValue.class)) {
                        return ForValue.m15313of(typeDefinition, false);
                    }
                    if (typeDescription.represents(OnNonDefaultValue.class)) {
                        return ForValue.m15313of(typeDefinition, true);
                    }
                    if (!typeDescription.isPrimitive() && !typeDefinition.isPrimitive()) {
                        return new ForType(typeDescription);
                    }
                    throw new IllegalStateException("Cannot skip method by instance type for primitive return type " + typeDefinition);
                }

                public ForType(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            /* loaded from: classes2.dex */
            public enum ForValue implements RelocationHandler {
                INTEGER(21, 154, 153, 0) { // from class: net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue.1
                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue
                    public void convertValue(MethodVisitor methodVisitor) {
                    }
                },
                LONG(22, 154, 153, 0) { // from class: net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue.2
                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue
                    public void convertValue(MethodVisitor methodVisitor) {
                        methodVisitor.visitInsn(136);
                    }
                },
                FLOAT(23, 154, 153, 2) { // from class: net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue.3
                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue
                    public void convertValue(MethodVisitor methodVisitor) {
                        methodVisitor.visitInsn(11);
                        methodVisitor.visitInsn(149);
                    }
                },
                DOUBLE(24, 154, 153, 4) { // from class: net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue.4
                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue
                    public void convertValue(MethodVisitor methodVisitor) {
                        methodVisitor.visitInsn(14);
                        methodVisitor.visitInsn(151);
                    }
                },
                REFERENCE(25, 199, 198, 0) { // from class: net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue.5
                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.ForValue
                    public void convertValue(MethodVisitor methodVisitor) {
                    }
                };
                
                private final int defaultJump;
                private final int load;
                private final int nonDefaultJump;
                private final int requiredSize;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class Bound implements Bound {
                    private final MethodDescription instrumentedMethod;
                    private final boolean inverted;
                    private final Relocation relocation;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Bound bound = (Bound) obj;
                            return this.inverted == bound.inverted && ForValue.this.equals(ForValue.this) && this.instrumentedMethod.equals(bound.instrumentedMethod) && this.relocation.equals(bound.relocation);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.instrumentedMethod.hashCode()) * 31) + this.relocation.hashCode()) * 31) + (this.inverted ? 1 : 0)) * 31) + ForValue.this.hashCode();
                    }

                    public Bound(MethodDescription methodDescription, Relocation relocation, boolean z) {
                        this.instrumentedMethod = methodDescription;
                        this.relocation = relocation;
                        this.inverted = z;
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.Bound
                    public int apply(MethodVisitor methodVisitor, int i) {
                        int i2;
                        if (!this.instrumentedMethod.isConstructor()) {
                            methodVisitor.visitVarInsn(ForValue.this.load, i);
                            ForValue.this.convertValue(methodVisitor);
                            Label label = new Label();
                            if (this.inverted) {
                                i2 = ForValue.this.nonDefaultJump;
                            } else {
                                i2 = ForValue.this.defaultJump;
                            }
                            methodVisitor.visitJumpInsn(i2, label);
                            this.relocation.apply(methodVisitor);
                            methodVisitor.visitLabel(label);
                            return ForValue.this.requiredSize;
                        }
                        throw new IllegalStateException("Cannot skip code execution from constructor: " + this.instrumentedMethod);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public class Inverted implements RelocationHandler {
                    public Inverted() {
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler
                    public Bound bind(MethodDescription methodDescription, Relocation relocation) {
                        return new Bound(methodDescription, relocation, true);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && ForValue.this.equals(ForValue.this);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + ForValue.this.hashCode();
                    }
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler
                public Bound bind(MethodDescription methodDescription, Relocation relocation) {
                    return new Bound(methodDescription, relocation, false);
                }

                public abstract void convertValue(MethodVisitor methodVisitor);

                ForValue(int i, int i2, int i3, int i4) {
                    this.load = i;
                    this.defaultJump = i2;
                    this.nonDefaultJump = i3;
                    this.requiredSize = i4;
                }

                /* renamed from: of */
                public static RelocationHandler m15313of(TypeDefinition typeDefinition, boolean z) {
                    ForValue forValue;
                    if (typeDefinition.represents(Long.TYPE)) {
                        forValue = LONG;
                    } else if (typeDefinition.represents(Float.TYPE)) {
                        forValue = FLOAT;
                    } else if (typeDefinition.represents(Double.TYPE)) {
                        forValue = DOUBLE;
                    } else if (!typeDefinition.represents(Void.TYPE)) {
                        if (typeDefinition.isPrimitive()) {
                            forValue = INTEGER;
                        } else {
                            forValue = REFERENCE;
                        }
                    } else {
                        throw new IllegalStateException("Cannot skip on default value for void return type");
                    }
                    if (z) {
                        forValue.getClass();
                        return new Inverted();
                    }
                    return forValue;
                }
            }

            /* loaded from: classes2.dex */
            public interface Relocation {
                void apply(MethodVisitor methodVisitor);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForLabel implements Relocation {
                    private final Label label;

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.RelocationHandler.Relocation
                    public void apply(MethodVisitor methodVisitor) {
                        methodVisitor.visitJumpInsn(167, this.label);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.label.equals(((ForLabel) obj).label);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.label.hashCode();
                    }

                    public ForLabel(Label label) {
                        this.label = label;
                    }
                }
            }

            Bound bind(MethodDescription methodDescription, Relocation relocation);
        }

        /* loaded from: classes2.dex */
        public interface Resolved extends Dispatcher {

            /* loaded from: classes2.dex */
            public interface ForMethodEnter extends Resolved {
                TypeDefinition getActualAdviceType();

                boolean isPrependLineNumber();
            }

            /* loaded from: classes2.dex */
            public interface ForMethodExit extends Resolved {
                ArgumentHandler.Factory getArgumentHandlerFactory();

                TypeDescription getThrowable();
            }

            Bound bind(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, Assigner assigner, ArgumentHandler.ForInstrumentedMethod forInstrumentedMethod, MethodSizeHandler.ForInstrumentedMethod forInstrumentedMethod2, StackMapFrameHandler.ForInstrumentedMethod forInstrumentedMethod3, StackManipulation stackManipulation, RelocationHandler.Relocation relocation);

            Map<String, TypeDefinition> getNamedTypes();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class AbstractBase implements Resolved {
                public final MethodDescription.InDefinedShape adviceMethod;
                public final Map<Integer, OffsetMapping> offsetMappings;
                public final PostProcessor postProcessor;
                public final RelocationHandler relocationHandler;
                public final SuppressionHandler suppressionHandler;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        AbstractBase abstractBase = (AbstractBase) obj;
                        return this.adviceMethod.equals(abstractBase.adviceMethod) && this.postProcessor.equals(abstractBase.postProcessor) && this.offsetMappings.equals(abstractBase.offsetMappings) && this.suppressionHandler.equals(abstractBase.suppressionHandler) && this.relocationHandler.equals(abstractBase.relocationHandler);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((((getClass().hashCode() * 31) + this.adviceMethod.hashCode()) * 31) + this.postProcessor.hashCode()) * 31) + this.offsetMappings.hashCode()) * 31) + this.suppressionHandler.hashCode()) * 31) + this.relocationHandler.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher
                public boolean isAlive() {
                    return true;
                }

                public AbstractBase(MethodDescription.InDefinedShape inDefinedShape, PostProcessor postProcessor, List<? extends OffsetMapping.Factory<?>> list, TypeDescription typeDescription, TypeDescription typeDescription2, OffsetMapping.Factory.AdviceType adviceType) {
                    this.adviceMethod = inDefinedShape;
                    this.postProcessor = postProcessor;
                    HashMap hashMap = new HashMap();
                    for (OffsetMapping.Factory<?> factory : list) {
                        hashMap.put(TypeDescription.ForLoadedType.m15196of(factory.getAnnotationType()), factory);
                    }
                    this.offsetMappings = new LinkedHashMap();
                    for (ParameterDescription.InDefinedShape inDefinedShape2 : inDefinedShape.getParameters()) {
                        OffsetMapping offsetMapping = null;
                        for (AnnotationDescription annotationDescription : inDefinedShape2.getDeclaredAnnotations()) {
                            OffsetMapping.Factory factory2 = (OffsetMapping.Factory) hashMap.get(annotationDescription.getAnnotationType());
                            if (factory2 != null) {
                                OffsetMapping make = factory2.make(inDefinedShape2, annotationDescription.prepare(factory2.getAnnotationType()), adviceType);
                                if (offsetMapping == null) {
                                    offsetMapping = make;
                                } else {
                                    throw new IllegalStateException(inDefinedShape2 + " is bound to both " + make + " and " + offsetMapping);
                                }
                            }
                        }
                        Map<Integer, OffsetMapping> map = this.offsetMappings;
                        Integer valueOf = Integer.valueOf(inDefinedShape2.getOffset());
                        if (offsetMapping == null) {
                            offsetMapping = new OffsetMapping.ForArgument.Unresolved(inDefinedShape2);
                        }
                        map.put(valueOf, offsetMapping);
                    }
                    this.suppressionHandler = SuppressionHandler.Suppressing.m15312of(typeDescription);
                    this.relocationHandler = RelocationHandler.ForType.m15318of(typeDescription2, inDefinedShape.getReturnType());
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface SuppressionHandler {

            /* loaded from: classes2.dex */
            public interface Bound {
                void onEnd(MethodVisitor methodVisitor, Implementation.Context context, MethodSizeHandler.ForAdvice forAdvice, StackMapFrameHandler.ForAdvice forAdvice2, TypeDefinition typeDefinition);

                void onEndWithSkip(MethodVisitor methodVisitor, Implementation.Context context, MethodSizeHandler.ForAdvice forAdvice, StackMapFrameHandler.ForAdvice forAdvice2, TypeDefinition typeDefinition);

                void onPrepare(MethodVisitor methodVisitor);

                void onStart(MethodVisitor methodVisitor);
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements SuppressionHandler, Bound {
                INSTANCE;

                @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler
                public Bound bind(StackManipulation stackManipulation) {
                    return this;
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                public void onEnd(MethodVisitor methodVisitor, Implementation.Context context, MethodSizeHandler.ForAdvice forAdvice, StackMapFrameHandler.ForAdvice forAdvice2, TypeDefinition typeDefinition) {
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                public void onEndWithSkip(MethodVisitor methodVisitor, Implementation.Context context, MethodSizeHandler.ForAdvice forAdvice, StackMapFrameHandler.ForAdvice forAdvice2, TypeDefinition typeDefinition) {
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                public void onPrepare(MethodVisitor methodVisitor) {
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                public void onStart(MethodVisitor methodVisitor) {
                }
            }

            Bound bind(StackManipulation stackManipulation);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Suppressing implements SuppressionHandler {
                private final TypeDescription suppressedType;

                /* loaded from: classes2.dex */
                public static class Bound implements Bound {
                    private final StackManipulation exceptionHandler;
                    private final TypeDescription suppressedType;
                    private final Label startOfMethod = new Label();
                    private final Label endOfMethod = new Label();

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                    public void onPrepare(MethodVisitor methodVisitor) {
                        Label label = this.startOfMethod;
                        Label label2 = this.endOfMethod;
                        methodVisitor.visitTryCatchBlock(label, label2, label2, this.suppressedType.getInternalName());
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                    public void onStart(MethodVisitor methodVisitor) {
                        methodVisitor.visitLabel(this.startOfMethod);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                    public void onEnd(MethodVisitor methodVisitor, Implementation.Context context, MethodSizeHandler.ForAdvice forAdvice, StackMapFrameHandler.ForAdvice forAdvice2, TypeDefinition typeDefinition) {
                        methodVisitor.visitLabel(this.endOfMethod);
                        forAdvice2.injectExceptionFrame(methodVisitor);
                        forAdvice.requireStackSize(this.exceptionHandler.apply(methodVisitor, context).getMaximalSize() + 1);
                        if (!typeDefinition.represents(Boolean.TYPE) && !typeDefinition.represents(Byte.TYPE) && !typeDefinition.represents(Short.TYPE) && !typeDefinition.represents(Character.TYPE) && !typeDefinition.represents(Integer.TYPE)) {
                            if (typeDefinition.represents(Long.TYPE)) {
                                methodVisitor.visitInsn(9);
                                return;
                            } else if (typeDefinition.represents(Float.TYPE)) {
                                methodVisitor.visitInsn(11);
                                return;
                            } else if (typeDefinition.represents(Double.TYPE)) {
                                methodVisitor.visitInsn(14);
                                return;
                            } else if (!typeDefinition.represents(Void.TYPE)) {
                                methodVisitor.visitInsn(1);
                                return;
                            } else {
                                return;
                            }
                        }
                        methodVisitor.visitInsn(3);
                    }

                    @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler.Bound
                    public void onEndWithSkip(MethodVisitor methodVisitor, Implementation.Context context, MethodSizeHandler.ForAdvice forAdvice, StackMapFrameHandler.ForAdvice forAdvice2, TypeDefinition typeDefinition) {
                        Label label = new Label();
                        methodVisitor.visitJumpInsn(167, label);
                        onEnd(methodVisitor, context, forAdvice, forAdvice2, typeDefinition);
                        methodVisitor.visitLabel(label);
                        forAdvice2.injectReturnFrame(methodVisitor);
                    }

                    public Bound(TypeDescription typeDescription, StackManipulation stackManipulation) {
                        this.suppressedType = typeDescription;
                        this.exceptionHandler = stackManipulation;
                    }
                }

                /* renamed from: of */
                public static SuppressionHandler m15312of(TypeDescription typeDescription) {
                    return typeDescription.represents(NoExceptionHandler.class) ? NoOp.INSTANCE : new Suppressing(typeDescription);
                }

                @Override // net.bytebuddy.asm.Advice.Dispatcher.SuppressionHandler
                public Bound bind(StackManipulation stackManipulation) {
                    return new Bound(this.suppressedType, stackManipulation);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.suppressedType.equals(((Suppressing) obj).suppressedType);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.suppressedType.hashCode();
                }

                public Suppressing(TypeDescription typeDescription) {
                    this.suppressedType = typeDescription;
                }
            }
        }

        /* loaded from: classes2.dex */
        public interface Unresolved extends Dispatcher {
            Resolved.ForMethodEnter asMethodEnter(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory);

            Resolved.ForMethodExit asMethodExit(List<? extends OffsetMapping.Factory<?>> list, @MaybeNull ClassReader classReader, Unresolved unresolved, PostProcessor.Factory factory);

            Map<String, TypeDefinition> getNamedTypes();

            boolean isBinary();
        }

        TypeDefinition getAdviceType();

        boolean isAlive();
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Enter {
        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;
    }

    /* loaded from: classes2.dex */
    public interface ExceptionHandler {

        /* loaded from: classes2.dex */
        public enum Default implements ExceptionHandler {
            SUPPRESSING { // from class: net.bytebuddy.asm.Advice.ExceptionHandler.Default.1
                @Override // net.bytebuddy.asm.Advice.ExceptionHandler
                public StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription) {
                    return Removal.SINGLE;
                }
            },
            PRINTING { // from class: net.bytebuddy.asm.Advice.ExceptionHandler.Default.2
                @Override // net.bytebuddy.asm.Advice.ExceptionHandler
                public StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription) {
                    try {
                        return MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(Throwable.class.getMethod("printStackTrace", new Class[0])));
                    } catch (NoSuchMethodException unused) {
                        throw new IllegalStateException("Cannot locate Throwable::printStackTrace");
                    }
                }
            },
            RETHROWING { // from class: net.bytebuddy.asm.Advice.ExceptionHandler.Default.3
                @Override // net.bytebuddy.asm.Advice.ExceptionHandler
                public StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription) {
                    return Throw.INSTANCE;
                }
            }
        }

        StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements ExceptionHandler {
            private final StackManipulation stackManipulation;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.stackManipulation.equals(((Simple) obj).stackManipulation);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.stackManipulation.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.ExceptionHandler
            public StackManipulation resolve(MethodDescription methodDescription, TypeDescription typeDescription) {
                return this.stackManipulation;
            }

            public Simple(StackManipulation stackManipulation) {
                this.stackManipulation = stackManipulation;
            }
        }
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Exit {
        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface FieldValue {
        Class<?> declaringType() default void.class;

        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;

        String value() default "";
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Local {
        String value();
    }

    /* loaded from: classes2.dex */
    public interface MethodSizeHandler {
        public static final int UNDEFINED_SIZE = 32767;

        /* loaded from: classes2.dex */
        public static abstract class Default implements ForInstrumentedMethod {
            public final List<? extends TypeDescription> initialTypes;
            public final MethodDescription instrumentedMethod;
            public int localVariableLength;
            public final List<? extends TypeDescription> postMethodTypes;
            public final List<? extends TypeDescription> preMethodTypes;
            public int stackSize;

            /* loaded from: classes2.dex */
            public class ForAdvice implements ForAdvice {
                private final MethodDescription.InDefinedShape adviceMethod;
                private final int baseLocalVariableLength;
                private int localVariableLengthPadding;
                private int stackSizePadding;

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler
                public void requireLocalVariableLength(int i) {
                    Default.this.requireLocalVariableLength(i);
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForAdvice
                public void requireLocalVariableLengthPadding(int i) {
                    this.localVariableLengthPadding = Math.max(this.localVariableLengthPadding, i);
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler
                public void requireStackSize(int i) {
                    Default.this.requireStackSize(i);
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForAdvice
                public void requireStackSizePadding(int i) {
                    this.stackSizePadding = Math.max(this.stackSizePadding, i);
                }

                public ForAdvice(MethodDescription.InDefinedShape inDefinedShape, int i) {
                    this.adviceMethod = inDefinedShape;
                    this.baseLocalVariableLength = i;
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForAdvice
                public void recordMaxima(int i, int i2) {
                    Default.this.requireStackSize(i + this.stackSizePadding);
                    Default.this.requireLocalVariableLength((i2 - this.adviceMethod.getStackSize()) + this.baseLocalVariableLength + this.localVariableLengthPadding);
                }
            }

            /* loaded from: classes2.dex */
            public static class WithCopiedArguments extends Default {
                public WithCopiedArguments(MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3) {
                    super(methodDescription, list, list2, list3);
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
                public ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape) {
                    return new ForAdvice(inDefinedShape, (this.instrumentedMethod.getStackSize() * 2) + StackSize.m14976of(this.initialTypes) + StackSize.m14976of(this.preMethodTypes) + StackSize.m14976of(this.postMethodTypes));
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.Default, net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
                public int compoundLocalVariableLength(int i) {
                    return Math.max(this.localVariableLength, i + this.instrumentedMethod.getStackSize() + StackSize.m14976of(this.postMethodTypes) + StackSize.m14976of(this.initialTypes) + StackSize.m14976of(this.preMethodTypes));
                }
            }

            /* loaded from: classes2.dex */
            public static class WithRetainedArguments extends Default {
                public WithRetainedArguments(MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3) {
                    super(methodDescription, list, list2, list3);
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
                public ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape) {
                    return new ForAdvice(inDefinedShape, this.instrumentedMethod.getStackSize() + StackSize.m14976of(this.postMethodTypes) + StackSize.m14976of(this.initialTypes) + StackSize.m14976of(this.preMethodTypes));
                }

                @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.Default, net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
                public int compoundLocalVariableLength(int i) {
                    return Math.max(this.localVariableLength, i + StackSize.m14976of(this.postMethodTypes) + StackSize.m14976of(this.initialTypes) + StackSize.m14976of(this.preMethodTypes));
                }
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public ForAdvice bindEnter(MethodDescription.InDefinedShape inDefinedShape) {
                return new ForAdvice(inDefinedShape, this.instrumentedMethod.getStackSize() + StackSize.m14976of(this.initialTypes));
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public int compoundStackSize(int i) {
                return Math.max(this.stackSize, i);
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler
            public void requireLocalVariableLength(int i) {
                this.localVariableLength = Math.max(this.localVariableLength, i);
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler
            public void requireStackSize(int i) {
                this.stackSize = Math.max(this.stackSize, i);
            }

            /* renamed from: of */
            public static ForInstrumentedMethod m15311of(MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, boolean z, int i) {
                if ((i & 3) != 0) {
                    return NoOp.INSTANCE;
                }
                if (z) {
                    return new WithCopiedArguments(methodDescription, list, list2, list3);
                }
                return new WithRetainedArguments(methodDescription, list, list2, list3);
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public int compoundLocalVariableLength(int i) {
                return Math.max(this.localVariableLength, i + StackSize.m14976of(this.postMethodTypes) + StackSize.m14976of(this.initialTypes) + StackSize.m14976of(this.preMethodTypes));
            }

            public Default(MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3) {
                this.instrumentedMethod = methodDescription;
                this.initialTypes = list;
                this.preMethodTypes = list2;
                this.postMethodTypes = list3;
            }
        }

        /* loaded from: classes2.dex */
        public interface ForAdvice extends MethodSizeHandler {
            void recordMaxima(int i, int i2);

            void requireLocalVariableLengthPadding(int i);

            void requireStackSizePadding(int i);
        }

        /* loaded from: classes2.dex */
        public interface ForInstrumentedMethod extends MethodSizeHandler {
            ForAdvice bindEnter(MethodDescription.InDefinedShape inDefinedShape);

            ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape);

            int compoundLocalVariableLength(int i);

            int compoundStackSize(int i);
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements ForInstrumentedMethod, ForAdvice {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public ForAdvice bindEnter(MethodDescription.InDefinedShape inDefinedShape) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public int compoundLocalVariableLength(int i) {
                return 32767;
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForInstrumentedMethod
            public int compoundStackSize(int i) {
                return 32767;
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForAdvice
            public void recordMaxima(int i, int i2) {
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler
            public void requireLocalVariableLength(int i) {
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForAdvice
            public void requireLocalVariableLengthPadding(int i) {
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler
            public void requireStackSize(int i) {
            }

            @Override // net.bytebuddy.asm.Advice.MethodSizeHandler.ForAdvice
            public void requireStackSizePadding(int i) {
            }
        }

        void requireLocalVariableLength(int i);

        void requireStackSize(int i);
    }

    /* loaded from: classes2.dex */
    public interface OffsetMapping {

        /* loaded from: classes2.dex */
        public interface Factory<T extends Annotation> {
            Class<T> getAnnotationType();

            OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, AdviceType adviceType);

            /* loaded from: classes2.dex */
            public enum AdviceType {
                DELEGATION(true),
                INLINING(false);
                
                private final boolean delegation;

                public boolean isDelegation() {
                    return this.delegation;
                }

                AdviceType(boolean z) {
                    this.delegation = z;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Illegal<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.annotationType.equals(((Illegal) obj).annotationType);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.annotationType.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, AdviceType adviceType) {
                    throw new IllegalStateException("Usage of " + this.annotationType + " is not allowed on " + inDefinedShape);
                }

                public Illegal(Class<T> cls) {
                    this.annotationType = cls;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Simple<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;
                private final OffsetMapping offsetMapping;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Simple simple = (Simple) obj;
                        return this.annotationType.equals(simple.annotationType) && this.offsetMapping.equals(simple.offsetMapping);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.offsetMapping.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, AdviceType adviceType) {
                    return this.offsetMapping;
                }

                public Simple(Class<T> cls, OffsetMapping offsetMapping) {
                    this.annotationType = cls;
                    this.offsetMapping = offsetMapping;
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForAllArguments implements OffsetMapping {
            private final boolean nullIfEmpty;
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            /* loaded from: classes2.dex */
            public enum Factory implements Factory<AllArguments> {
                INSTANCE;
                
                private static final MethodDescription.InDefinedShape ALL_ARGUMENTS_NULL_IF_EMPTY;
                private static final MethodDescription.InDefinedShape ALL_ARGUMENTS_READ_ONLY;
                private static final MethodDescription.InDefinedShape ALL_ARGUMENTS_TYPING;

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<AllArguments> getAnnotationType() {
                    return AllArguments.class;
                }

                static {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(AllArguments.class).getDeclaredMethods();
                    ALL_ARGUMENTS_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                    ALL_ARGUMENTS_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    ALL_ARGUMENTS_NULL_IF_EMPTY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("nullIfEmpty")).getOnly();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<AllArguments> loadable, Factory.AdviceType adviceType) {
                    TypeDescription.Generic componentType;
                    if (!inDefinedShape.getType().represents(Object.class) && !inDefinedShape.getType().isArray()) {
                        throw new IllegalStateException("Cannot use AllArguments annotation on a non-array type");
                    }
                    if (adviceType.isDelegation() && !((Boolean) loadable.getValue(ALL_ARGUMENTS_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                        throw new IllegalStateException("Cannot define writable field access for " + inDefinedShape);
                    }
                    if (inDefinedShape.getType().represents(Object.class)) {
                        componentType = TypeDescription.Generic.OBJECT;
                    } else {
                        componentType = inDefinedShape.getType().getComponentType();
                    }
                    return new ForAllArguments(componentType, loadable);
                }
            }

            public ForAllArguments(TypeDescription.Generic generic, AnnotationDescription.Loadable<AllArguments> loadable) {
                this(generic, ((Boolean) loadable.getValue(Factory.ALL_ARGUMENTS_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.ALL_ARGUMENTS_TYPING).load(AllArguments.class.getClassLoader()).resolve(Assigner.Typing.class), ((Boolean) loadable.getValue(Factory.ALL_ARGUMENTS_NULL_IF_EMPTY).resolve(Boolean.class)).booleanValue());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForAllArguments forAllArguments = (ForAllArguments) obj;
                    return this.readOnly == forAllArguments.readOnly && this.nullIfEmpty == forAllArguments.nullIfEmpty && this.typing.equals(forAllArguments.typing) && this.target.equals(forAllArguments.target);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode()) * 31) + (this.nullIfEmpty ? 1 : 0);
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                if (this.nullIfEmpty && methodDescription.getParameters().isEmpty()) {
                    if (this.readOnly) {
                        return new Target.ForStackManipulation(NullConstant.INSTANCE);
                    }
                    return new Target.ForStackManipulation.Writable(NullConstant.INSTANCE, Removal.SINGLE);
                }
                ArrayList arrayList = new ArrayList(methodDescription.getParameters().size());
                Iterator<T> it = methodDescription.getParameters().iterator();
                while (it.hasNext()) {
                    ParameterDescription parameterDescription = (ParameterDescription) it.next();
                    StackManipulation assign = assigner.assign(parameterDescription.getType(), this.target, this.typing);
                    if (assign.isValid()) {
                        arrayList.add(new StackManipulation.Compound(MethodVariableAccess.m14936of(parameterDescription.getType()).loadFrom(argumentHandler.argument(parameterDescription.getOffset())), assign));
                    } else {
                        throw new IllegalStateException("Cannot assign " + parameterDescription + " to " + this.target);
                    }
                }
                if (this.readOnly) {
                    return new Target.ForArray.ReadOnly(this.target, arrayList);
                }
                ArrayList arrayList2 = new ArrayList(methodDescription.getParameters().size());
                Iterator<T> it2 = methodDescription.getParameters().iterator();
                while (it2.hasNext()) {
                    ParameterDescription parameterDescription2 = (ParameterDescription) it2.next();
                    StackManipulation assign2 = assigner.assign(this.target, parameterDescription2.getType(), this.typing);
                    if (assign2.isValid()) {
                        arrayList2.add(new StackManipulation.Compound(assign2, MethodVariableAccess.m14936of(parameterDescription2.getType()).storeAt(argumentHandler.argument(parameterDescription2.getOffset()))));
                    } else {
                        throw new IllegalStateException("Cannot assign " + this.target + " to " + parameterDescription2);
                    }
                }
                return new Target.ForArray.ReadWrite(this.target, arrayList, arrayList2);
            }

            public ForAllArguments(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, boolean z2) {
                this.target = generic;
                this.readOnly = z;
                this.typing = typing;
                this.nullIfEmpty = z2;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForEnterValue implements OffsetMapping {
            private final TypeDescription.Generic enterType;
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory<Enter> {
                private static final MethodDescription.InDefinedShape ENTER_READ_ONLY;
                private static final MethodDescription.InDefinedShape ENTER_TYPING;
                private final TypeDefinition enterType;

                /* renamed from: of */
                public static Factory<Enter> m15300of(TypeDefinition typeDefinition) {
                    return typeDefinition.represents(Void.TYPE) ? new Factory.Illegal(Enter.class) : new Factory(typeDefinition);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.enterType.equals(((Factory) obj).enterType);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Enter> getAnnotationType() {
                    return Enter.class;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.enterType.hashCode();
                }

                static {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Enter.class).getDeclaredMethods();
                    ENTER_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                    ENTER_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                }

                public Factory(TypeDefinition typeDefinition) {
                    this.enterType = typeDefinition;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Enter> loadable, Factory.AdviceType adviceType) {
                    if (adviceType.isDelegation() && !((Boolean) loadable.getValue(ENTER_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                        throw new IllegalStateException("Cannot use writable " + inDefinedShape + " on read-only parameter");
                    }
                    return new ForEnterValue(inDefinedShape.getType(), this.enterType.asGenericType(), loadable);
                }
            }

            public ForEnterValue(TypeDescription.Generic generic, TypeDescription.Generic generic2, AnnotationDescription.Loadable<Enter> loadable) {
                this(generic, generic2, ((Boolean) loadable.getValue(Factory.ENTER_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.ENTER_TYPING).load(Enter.class.getClassLoader()).resolve(Assigner.Typing.class));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForEnterValue forEnterValue = (ForEnterValue) obj;
                    return this.readOnly == forEnterValue.readOnly && this.typing.equals(forEnterValue.typing) && this.target.equals(forEnterValue.target) && this.enterType.equals(forEnterValue.enterType);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.enterType.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                StackManipulation assign = assigner.assign(this.enterType, this.target, this.typing);
                if (assign.isValid()) {
                    if (this.readOnly) {
                        return new Target.ForVariable.ReadOnly(this.target, argumentHandler.enter(), assign);
                    }
                    StackManipulation assign2 = assigner.assign(this.target, this.enterType, this.typing);
                    if (assign2.isValid()) {
                        return new Target.ForVariable.ReadWrite(this.target, argumentHandler.enter(), assign, assign2);
                    }
                    throw new IllegalStateException("Cannot assign " + this.target + " to " + this.enterType);
                }
                throw new IllegalStateException("Cannot assign " + this.enterType + " to " + this.target);
            }

            public ForEnterValue(TypeDescription.Generic generic, TypeDescription.Generic generic2, boolean z, Assigner.Typing typing) {
                this.target = generic;
                this.enterType = generic2;
                this.readOnly = z;
                this.typing = typing;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForExitValue implements OffsetMapping {
            private final TypeDescription.Generic exitType;
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory<Exit> {
                private static final MethodDescription.InDefinedShape EXIT_READ_ONLY;
                private static final MethodDescription.InDefinedShape EXIT_TYPING;
                private final TypeDefinition exitType;

                /* renamed from: of */
                public static Factory<Exit> m15297of(TypeDefinition typeDefinition) {
                    return typeDefinition.represents(Void.TYPE) ? new Factory.Illegal(Exit.class) : new Factory(typeDefinition);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.exitType.equals(((Factory) obj).exitType);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Exit> getAnnotationType() {
                    return Exit.class;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.exitType.hashCode();
                }

                static {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Exit.class).getDeclaredMethods();
                    EXIT_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                    EXIT_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                }

                public Factory(TypeDefinition typeDefinition) {
                    this.exitType = typeDefinition;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Exit> loadable, Factory.AdviceType adviceType) {
                    if (adviceType.isDelegation() && !((Boolean) loadable.getValue(EXIT_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                        throw new IllegalStateException("Cannot use writable " + inDefinedShape + " on read-only parameter");
                    }
                    return new ForExitValue(inDefinedShape.getType(), this.exitType.asGenericType(), loadable);
                }
            }

            public ForExitValue(TypeDescription.Generic generic, TypeDescription.Generic generic2, AnnotationDescription.Loadable<Exit> loadable) {
                this(generic, generic2, ((Boolean) loadable.getValue(Factory.EXIT_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.EXIT_TYPING).load(Exit.class.getClassLoader()).resolve(Assigner.Typing.class));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForExitValue forExitValue = (ForExitValue) obj;
                    return this.readOnly == forExitValue.readOnly && this.typing.equals(forExitValue.typing) && this.target.equals(forExitValue.target) && this.exitType.equals(forExitValue.exitType);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.exitType.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                StackManipulation assign = assigner.assign(this.exitType, this.target, this.typing);
                if (assign.isValid()) {
                    if (this.readOnly) {
                        return new Target.ForVariable.ReadOnly(this.target, argumentHandler.exit(), assign);
                    }
                    StackManipulation assign2 = assigner.assign(this.target, this.exitType, this.typing);
                    if (assign2.isValid()) {
                        return new Target.ForVariable.ReadWrite(this.target, argumentHandler.exit(), assign, assign2);
                    }
                    throw new IllegalStateException("Cannot assign " + this.target + " to " + this.exitType);
                }
                throw new IllegalStateException("Cannot assign " + this.exitType + " to " + this.target);
            }

            public ForExitValue(TypeDescription.Generic generic, TypeDescription.Generic generic2, boolean z, Assigner.Typing typing) {
                this.target = generic;
                this.exitType = generic2;
                this.readOnly = z;
                this.typing = typing;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class ForField implements OffsetMapping {
            private static final MethodDescription.InDefinedShape DECLARING_TYPE;
            private static final MethodDescription.InDefinedShape READ_ONLY;
            private static final MethodDescription.InDefinedShape TYPING;
            private static final MethodDescription.InDefinedShape VALUE;
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Resolved extends ForField {
                private final FieldDescription fieldDescription;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Factory<T extends Annotation> implements Factory<T> {
                    private final Class<T> annotationType;
                    private final FieldDescription fieldDescription;
                    private final boolean readOnly;
                    private final Assigner.Typing typing;

                    public Factory(Class<T> cls, FieldDescription fieldDescription) {
                        this(cls, fieldDescription, true, Assigner.Typing.STATIC);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Factory factory = (Factory) obj;
                            return this.readOnly == factory.readOnly && this.typing.equals(factory.typing) && this.annotationType.equals(factory.annotationType) && this.fieldDescription.equals(factory.fieldDescription);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public Class<T> getAnnotationType() {
                        return this.annotationType;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.fieldDescription.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                        return new Resolved(inDefinedShape.getType(), this.readOnly, this.typing, this.fieldDescription);
                    }

                    public Factory(Class<T> cls, FieldDescription fieldDescription, boolean z, Assigner.Typing typing) {
                        this.annotationType = cls;
                        this.fieldDescription = fieldDescription;
                        this.readOnly = z;
                        this.typing = typing;
                    }
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((Resolved) obj).fieldDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField
                public int hashCode() {
                    return (super.hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField
                @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public FieldDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription) {
                    if (!this.fieldDescription.isStatic() && !this.fieldDescription.getDeclaringType().asErasure().isAssignableFrom(typeDescription)) {
                        throw new IllegalStateException(this.fieldDescription + " is no member of " + typeDescription);
                    } else if (this.fieldDescription.isVisibleTo(typeDescription)) {
                        return this.fieldDescription;
                    } else {
                        throw new IllegalStateException("Cannot access " + this.fieldDescription + " from " + typeDescription);
                    }
                }

                public Resolved(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, FieldDescription fieldDescription) {
                    super(generic, z, typing);
                    this.fieldDescription = fieldDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class Unresolved extends ForField {
                public static final String BEAN_PROPERTY = "";
                private final String name;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class WithExplicitType extends Unresolved {
                    private final TypeDescription declaringType;

                    public WithExplicitType(TypeDescription.Generic generic, AnnotationDescription.Loadable<FieldValue> loadable, TypeDescription typeDescription) {
                        this(generic, ((Boolean) loadable.getValue(ForField.READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(ForField.TYPING).load(Assigner.Typing.class.getClassLoader()).resolve(Assigner.Typing.class), (String) loadable.getValue(ForField.VALUE).resolve(String.class), typeDescription);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField.Unresolved, net.bytebuddy.asm.Advice.OffsetMapping.ForField
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.declaringType.equals(((WithExplicitType) obj).declaringType);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField.Unresolved, net.bytebuddy.asm.Advice.OffsetMapping.ForField
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.declaringType.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField.Unresolved
                    public FieldLocator fieldLocator(TypeDescription typeDescription) {
                        if (!this.declaringType.represents(TargetType.class) && !typeDescription.isAssignableTo(this.declaringType)) {
                            throw new IllegalStateException(this.declaringType + " is no super type of " + typeDescription);
                        }
                        return new FieldLocator.ForExactType(TargetType.resolve(this.declaringType, typeDescription));
                    }

                    public WithExplicitType(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, String str, TypeDescription typeDescription) {
                        super(generic, z, typing, str);
                        this.declaringType = typeDescription;
                    }
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.name.equals(((Unresolved) obj).name);
                    }
                    return false;
                }

                public abstract FieldLocator fieldLocator(TypeDescription typeDescription);

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField
                public int hashCode() {
                    return (super.hashCode() * 31) + this.name.hashCode();
                }

                /* loaded from: classes2.dex */
                public enum Factory implements Factory<FieldValue> {
                    INSTANCE;

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public Class<FieldValue> getAnnotationType() {
                        return FieldValue.class;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<FieldValue> loadable, Factory.AdviceType adviceType) {
                        if (adviceType.isDelegation() && !((Boolean) loadable.getValue(ForField.READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                            throw new IllegalStateException("Cannot write to field for " + inDefinedShape + " in read-only context");
                        }
                        TypeDescription typeDescription = (TypeDescription) loadable.getValue(ForField.DECLARING_TYPE).resolve(TypeDescription.class);
                        if (typeDescription.represents(Void.TYPE)) {
                            return new WithImplicitType(inDefinedShape.getType(), loadable);
                        }
                        return new WithExplicitType(inDefinedShape.getType(), loadable, typeDescription);
                    }
                }

                public Unresolved(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, String str) {
                    super(generic, z, typing);
                    this.name = str;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static FieldLocator.Resolution resolveAccessor(FieldLocator fieldLocator, MethodDescription methodDescription) {
                    String substring;
                    int i = 3;
                    if (ElementMatchers.isSetter().matches(methodDescription)) {
                        substring = methodDescription.getInternalName().substring(3);
                    } else if (ElementMatchers.isGetter().matches(methodDescription)) {
                        String internalName = methodDescription.getInternalName();
                        if (methodDescription.getInternalName().startsWith("is")) {
                            i = 2;
                        }
                        substring = internalName.substring(i);
                    } else {
                        return FieldLocator.Resolution.Illegal.INSTANCE;
                    }
                    return fieldLocator.locate(Character.toLowerCase(substring.charAt(0)) + substring.substring(1));
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField
                public FieldDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription) {
                    FieldLocator.Resolution locate;
                    FieldLocator fieldLocator = fieldLocator(typeDescription);
                    if (this.name.equals("")) {
                        locate = resolveAccessor(fieldLocator, methodDescription);
                    } else {
                        locate = fieldLocator.locate(this.name);
                    }
                    if (locate.isResolved()) {
                        return locate.getField();
                    }
                    throw new IllegalStateException("Cannot locate field named " + this.name + " for " + typeDescription);
                }

                /* loaded from: classes2.dex */
                public static class WithImplicitType extends Unresolved {
                    public WithImplicitType(TypeDescription.Generic generic, AnnotationDescription.Loadable<FieldValue> loadable) {
                        this(generic, ((Boolean) loadable.getValue(ForField.READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(ForField.TYPING).load(Assigner.Typing.class.getClassLoader()).resolve(Assigner.Typing.class), (String) loadable.getValue(ForField.VALUE).resolve(String.class));
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForField.Unresolved
                    public FieldLocator fieldLocator(TypeDescription typeDescription) {
                        return new FieldLocator.ForClassHierarchy(typeDescription);
                    }

                    public WithImplicitType(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, String str) {
                        super(generic, z, typing, str);
                    }
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForField forField = (ForField) obj;
                    return this.readOnly == forField.readOnly && this.typing.equals(forField.typing) && this.target.equals(forField.target);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
            }

            public abstract FieldDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription);

            static {
                MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(FieldValue.class).getDeclaredMethods();
                VALUE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
                DECLARING_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("declaringType")).getOnly();
                READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
            }

            public ForField(TypeDescription.Generic generic, boolean z, Assigner.Typing typing) {
                this.target = generic;
                this.readOnly = z;
                this.typing = typing;
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                FieldDescription resolve = resolve(typeDescription, methodDescription);
                if (!resolve.isStatic() && methodDescription.isStatic()) {
                    throw new IllegalStateException("Cannot read non-static field " + resolve + " from static method " + methodDescription);
                } else if (sort.isPremature(methodDescription) && !resolve.isStatic()) {
                    throw new IllegalStateException("Cannot access non-static field before calling constructor: " + methodDescription);
                } else {
                    StackManipulation assign = assigner.assign(resolve.getType(), this.target, this.typing);
                    if (assign.isValid()) {
                        if (this.readOnly) {
                            return new Target.ForField.ReadOnly(resolve, assign);
                        }
                        StackManipulation assign2 = assigner.assign(this.target, resolve.getType(), this.typing);
                        if (assign2.isValid()) {
                            return new Target.ForField.ReadWrite(resolve.asDefined(), assign, assign2);
                        }
                        throw new IllegalStateException("Cannot assign " + this.target + " to " + resolve);
                    }
                    throw new IllegalStateException("Cannot assign " + resolve + " to " + this.target);
                }
            }
        }

        /* loaded from: classes2.dex */
        public enum ForInstrumentedType implements OffsetMapping {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                return Target.ForStackManipulation.m15278of(typeDescription);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForLocalValue implements OffsetMapping {
            private final TypeDescription.Generic localType;
            private final String name;
            private final TypeDescription.Generic target;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory<Local> {
                public static final MethodDescription.InDefinedShape LOCAL_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Local.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();
                private final Map<String, TypeDefinition> namedTypes;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.namedTypes.equals(((Factory) obj).namedTypes);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Local> getAnnotationType() {
                    return Local.class;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.namedTypes.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Local> loadable, Factory.AdviceType adviceType) {
                    String str = (String) loadable.getValue(LOCAL_VALUE).resolve(String.class);
                    TypeDefinition typeDefinition = this.namedTypes.get(str);
                    if (typeDefinition != null) {
                        return new ForLocalValue(inDefinedShape.getType(), typeDefinition.asGenericType(), str);
                    }
                    throw new IllegalStateException("Named local variable is unknown: " + str);
                }

                public Factory(Map<String, TypeDefinition> map) {
                    this.namedTypes = map;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForLocalValue forLocalValue = (ForLocalValue) obj;
                    return this.name.equals(forLocalValue.name) && this.target.equals(forLocalValue.target) && this.localType.equals(forLocalValue.localType);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.localType.hashCode()) * 31) + this.name.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                TypeDescription.Generic generic = this.localType;
                TypeDescription.Generic generic2 = this.target;
                Assigner.Typing typing = Assigner.Typing.STATIC;
                StackManipulation assign = assigner.assign(generic, generic2, typing);
                StackManipulation assign2 = assigner.assign(this.target, this.localType, typing);
                if (assign.isValid() && assign2.isValid()) {
                    return new Target.ForVariable.ReadWrite(this.target, argumentHandler.named(this.name), assign, assign2);
                }
                throw new IllegalStateException("Cannot assign " + this.localType + " to " + this.target);
            }

            public ForLocalValue(TypeDescription.Generic generic, TypeDescription.Generic generic2, String str) {
                this.target = generic;
                this.localType = generic2;
                this.name = str;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForOrigin implements OffsetMapping {
            private static final char DELIMITER = '#';
            private static final char ESCAPE = '\\';
            private final List<Renderer> renderers;

            /* loaded from: classes2.dex */
            public enum Factory implements Factory<Origin> {
                INSTANCE;
                
                private static final MethodDescription.InDefinedShape ORIGIN_VALUE = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(Origin.class).getDeclaredMethods().filter(ElementMatchers.named("value")).getOnly();

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Origin> getAnnotationType() {
                    return Origin.class;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Origin> loadable, Factory.AdviceType adviceType) {
                    if (inDefinedShape.getType().asErasure().represents(Class.class)) {
                        return ForInstrumentedType.INSTANCE;
                    }
                    if (inDefinedShape.getType().asErasure().represents(Method.class)) {
                        return ForInstrumentedMethod.METHOD;
                    }
                    if (inDefinedShape.getType().asErasure().represents(Constructor.class)) {
                        return ForInstrumentedMethod.CONSTRUCTOR;
                    }
                    if (JavaType.EXECUTABLE.getTypeStub().equals(inDefinedShape.getType().asErasure())) {
                        return ForInstrumentedMethod.EXECUTABLE;
                    }
                    if (inDefinedShape.getType().asErasure().isAssignableFrom(String.class)) {
                        return ForOrigin.parse((String) loadable.getValue(ORIGIN_VALUE).resolve(String.class));
                    }
                    throw new IllegalStateException("Non-supported type " + inDefinedShape.getType() + " for @Origin annotation");
                }
            }

            /* loaded from: classes2.dex */
            public interface Renderer {

                /* loaded from: classes2.dex */
                public enum ForDescriptor implements Renderer {
                    INSTANCE;
                    
                    public static final char SYMBOL = 'd';

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return methodDescription.getDescriptor();
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForJavaSignature implements Renderer {
                    INSTANCE;
                    
                    public static final char SYMBOL = 's';

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        StringBuilder sb = new StringBuilder("(");
                        boolean z = false;
                        for (TypeDescription typeDescription2 : methodDescription.getParameters().asTypeList().asErasures()) {
                            if (z) {
                                sb.append(',');
                            } else {
                                z = true;
                            }
                            sb.append(typeDescription2.getName());
                        }
                        sb.append(')');
                        return sb.toString();
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForMethodName implements Renderer {
                    INSTANCE;
                    
                    public static final char SYMBOL = 'm';

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return methodDescription.getInternalName();
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForPropertyName implements Renderer {
                    INSTANCE;
                    
                    public static final char SYMBOL = 'p';

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return FieldAccessor.FieldNameExtractor.ForBeanProperty.INSTANCE.resolve(methodDescription);
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForReturnTypeName implements Renderer {
                    INSTANCE;
                    
                    public static final char SYMBOL = 'r';

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return methodDescription.getReturnType().asErasure().getName();
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForStringRepresentation implements Renderer {
                    INSTANCE;

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return methodDescription.toString();
                    }
                }

                /* loaded from: classes2.dex */
                public enum ForTypeName implements Renderer {
                    INSTANCE;
                    
                    public static final char SYMBOL = 't';

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return typeDescription.getName();
                    }
                }

                String apply(TypeDescription typeDescription, MethodDescription methodDescription);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForConstantValue implements Renderer {
                    private final String value;

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer
                    public String apply(TypeDescription typeDescription, MethodDescription methodDescription) {
                        return this.value;
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.value.equals(((ForConstantValue) obj).value);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.value.hashCode();
                    }

                    public ForConstantValue(String str) {
                        this.value = str;
                    }
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.renderers.equals(((ForOrigin) obj).renderers);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.renderers.hashCode();
            }

            public static OffsetMapping parse(String str) {
                int i;
                int i2;
                if (str.equals("")) {
                    return new ForOrigin(Collections.singletonList(Renderer.ForStringRepresentation.INSTANCE));
                }
                ArrayList arrayList = new ArrayList(str.length());
                int indexOf = str.indexOf(35);
                int i3 = 0;
                while (indexOf != -1) {
                    if (indexOf != 0) {
                        if (str.charAt(indexOf - 1) == '\\' && (indexOf == 1 || str.charAt(indexOf - 2) != '\\')) {
                            arrayList.add(new Renderer.ForConstantValue(str.substring(i3, Math.max(0, i2)) + DELIMITER));
                            i = indexOf + 1;
                            i3 = i;
                            indexOf = str.indexOf(35, i3);
                        }
                    }
                    int i4 = indexOf + 1;
                    if (str.length() != i4) {
                        arrayList.add(new Renderer.ForConstantValue(str.substring(i3, indexOf).replace("\\\\", "\\")));
                        char charAt = str.charAt(i4);
                        if (charAt != 'd') {
                            if (charAt != 'm') {
                                if (charAt != 'p') {
                                    switch (charAt) {
                                        case 'r':
                                            arrayList.add(Renderer.ForReturnTypeName.INSTANCE);
                                            break;
                                        case 's':
                                            arrayList.add(Renderer.ForJavaSignature.INSTANCE);
                                            break;
                                        case 't':
                                            arrayList.add(Renderer.ForTypeName.INSTANCE);
                                            break;
                                        default:
                                            throw new IllegalStateException("Illegal sort descriptor " + str.charAt(i4) + " for " + str);
                                    }
                                } else {
                                    arrayList.add(Renderer.ForPropertyName.INSTANCE);
                                }
                            } else {
                                arrayList.add(Renderer.ForMethodName.INSTANCE);
                            }
                        } else {
                            arrayList.add(Renderer.ForDescriptor.INSTANCE);
                        }
                        i = indexOf + 2;
                        i3 = i;
                        indexOf = str.indexOf(35, i3);
                    } else {
                        throw new IllegalStateException("Missing sort descriptor for " + str + " at index " + indexOf);
                    }
                }
                arrayList.add(new Renderer.ForConstantValue(str.substring(i3)));
                return new ForOrigin(arrayList);
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                StringBuilder sb = new StringBuilder();
                for (Renderer renderer : this.renderers) {
                    sb.append(renderer.apply(typeDescription, methodDescription));
                }
                return Target.ForStackManipulation.m15280of(sb.toString());
            }

            public ForOrigin(List<Renderer> list) {
                this.renderers = list;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForSerializedValue implements OffsetMapping {
            private final StackManipulation deserialization;
            private final TypeDescription.Generic target;
            private final TypeDescription typeDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForSerializedValue forSerializedValue = (ForSerializedValue) obj;
                    return this.target.equals(forSerializedValue.target) && this.typeDescription.equals(forSerializedValue.typeDescription) && this.deserialization.equals(forSerializedValue.deserialization);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.typeDescription.hashCode()) * 31) + this.deserialization.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;
                private final StackManipulation deserialization;
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Factory factory = (Factory) obj;
                        return this.annotationType.equals(factory.annotationType) && this.typeDescription.equals(factory.typeDescription) && this.deserialization.equals(factory.deserialization);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.typeDescription.hashCode()) * 31) + this.deserialization.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                    return new ForSerializedValue(inDefinedShape.getType(), this.typeDescription, this.deserialization);
                }

                public Factory(Class<T> cls, TypeDescription typeDescription, StackManipulation stackManipulation) {
                    this.annotationType = cls;
                    this.typeDescription = typeDescription;
                    this.deserialization = stackManipulation;
                }

                /* renamed from: of */
                public static <S extends Annotation> Factory<S> m15289of(Class<S> cls, Serializable serializable, Class<?> cls2) {
                    if (cls2.isInstance(serializable)) {
                        return new Factory(cls, TypeDescription.ForLoadedType.m15196of(cls2), SerializedConstant.m14951of(serializable));
                    }
                    throw new IllegalArgumentException(serializable + " is no instance of " + cls2);
                }
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                StackManipulation assign = assigner.assign(this.typeDescription.asGenericType(), this.target, Assigner.Typing.DYNAMIC);
                if (assign.isValid()) {
                    return new Target.ForStackManipulation(new StackManipulation.Compound(this.deserialization, assign));
                }
                throw new IllegalStateException("Cannot assign " + this.typeDescription + " to " + this.target);
            }

            public ForSerializedValue(TypeDescription.Generic generic, TypeDescription typeDescription, StackManipulation stackManipulation) {
                this.target = generic;
                this.typeDescription = typeDescription;
                this.deserialization = stackManipulation;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForStackManipulation implements OffsetMapping {
            private final StackManipulation stackManipulation;
            private final TypeDescription.Generic targetType;
            private final TypeDescription.Generic typeDescription;
            private final Assigner.Typing typing;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;
                private final StackManipulation stackManipulation;
                private final TypeDescription.Generic typeDescription;

                public Factory(Class<T> cls, TypeDescription typeDescription) {
                    this(cls, ClassConstant.m14958of(typeDescription), TypeDescription.CLASS.asGenericType());
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Factory factory = (Factory) obj;
                        return this.annotationType.equals(factory.annotationType) && this.stackManipulation.equals(factory.stackManipulation) && this.typeDescription.equals(factory.typeDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.stackManipulation.hashCode()) * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                    return new ForStackManipulation(this.stackManipulation, this.typeDescription, inDefinedShape.getType(), Assigner.Typing.STATIC);
                }

                public Factory(Class<T> cls, EnumerationDescription enumerationDescription) {
                    this(cls, FieldAccess.forEnumeration(enumerationDescription), enumerationDescription.getEnumerationType().asGenericType());
                }

                /* renamed from: of */
                public static <S extends Annotation> Factory<S> m15288of(Class<S> cls, Object obj) {
                    StackManipulation javaConstantValue;
                    TypeDescription typeDescription;
                    StackManipulation m14958of;
                    TypeDescription typeDescription2;
                    if (obj == null) {
                        return new OfDefaultValue(cls);
                    }
                    if (obj instanceof Boolean) {
                        m14958of = IntegerConstant.forValue(((Boolean) obj).booleanValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Boolean.TYPE);
                    } else if (obj instanceof Byte) {
                        m14958of = IntegerConstant.forValue(((Byte) obj).byteValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Byte.TYPE);
                    } else if (obj instanceof Short) {
                        m14958of = IntegerConstant.forValue(((Short) obj).shortValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Short.TYPE);
                    } else if (obj instanceof Character) {
                        m14958of = IntegerConstant.forValue(((Character) obj).charValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Character.TYPE);
                    } else if (obj instanceof Integer) {
                        m14958of = IntegerConstant.forValue(((Integer) obj).intValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Integer.TYPE);
                    } else if (obj instanceof Long) {
                        m14958of = LongConstant.forValue(((Long) obj).longValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Long.TYPE);
                    } else if (obj instanceof Float) {
                        m14958of = FloatConstant.forValue(((Float) obj).floatValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Float.TYPE);
                    } else if (obj instanceof Double) {
                        m14958of = DoubleConstant.forValue(((Double) obj).doubleValue());
                        typeDescription2 = TypeDescription.ForLoadedType.m15196of(Double.TYPE);
                    } else {
                        if (obj instanceof String) {
                            javaConstantValue = new TextConstant((String) obj);
                            typeDescription = TypeDescription.STRING;
                        } else if (obj instanceof Class) {
                            m14958of = ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of((Class) obj));
                            typeDescription2 = TypeDescription.CLASS;
                        } else if (obj instanceof TypeDescription) {
                            m14958of = ClassConstant.m14958of((TypeDescription) obj);
                            typeDescription2 = TypeDescription.CLASS;
                        } else if (obj instanceof Enum) {
                            Enum r4 = (Enum) obj;
                            javaConstantValue = FieldAccess.forEnumeration(new EnumerationDescription.ForLoadedEnumeration(r4));
                            typeDescription = TypeDescription.ForLoadedType.m15196of(r4.getDeclaringClass());
                        } else if (obj instanceof EnumerationDescription) {
                            EnumerationDescription enumerationDescription = (EnumerationDescription) obj;
                            javaConstantValue = FieldAccess.forEnumeration(enumerationDescription);
                            typeDescription = enumerationDescription.getEnumerationType();
                        } else if (JavaType.METHOD_HANDLE.isInstance(obj)) {
                            JavaConstant.MethodHandle ofLoaded = JavaConstant.MethodHandle.ofLoaded(obj);
                            javaConstantValue = new JavaConstantValue(ofLoaded);
                            typeDescription = ofLoaded.getTypeDescription();
                        } else if (JavaType.METHOD_TYPE.isInstance(obj)) {
                            JavaConstant.MethodType ofLoaded2 = JavaConstant.MethodType.ofLoaded(obj);
                            javaConstantValue = new JavaConstantValue(ofLoaded2);
                            typeDescription = ofLoaded2.getTypeDescription();
                        } else if (obj instanceof JavaConstant) {
                            JavaConstant javaConstant = (JavaConstant) obj;
                            javaConstantValue = new JavaConstantValue(javaConstant);
                            typeDescription = javaConstant.getTypeDescription();
                        } else {
                            throw new IllegalStateException("Not a constant value: " + obj);
                        }
                        StackManipulation stackManipulation = javaConstantValue;
                        typeDescription2 = typeDescription;
                        m14958of = stackManipulation;
                    }
                    return new Factory(cls, m14958of, typeDescription2.asGenericType());
                }

                public Factory(Class<T> cls, StackManipulation stackManipulation, TypeDescription.Generic generic) {
                    this.annotationType = cls;
                    this.stackManipulation = stackManipulation;
                    this.typeDescription = generic;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfAnnotationProperty<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;
                private final MethodDescription.InDefinedShape property;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        OfAnnotationProperty ofAnnotationProperty = (OfAnnotationProperty) obj;
                        return this.annotationType.equals(ofAnnotationProperty.annotationType) && this.property.equals(ofAnnotationProperty.property);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.property.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                    Factory m15288of;
                    Object resolve = loadable.getValue(this.property).resolve();
                    if (resolve instanceof TypeDescription) {
                        m15288of = new Factory(this.annotationType, (TypeDescription) resolve);
                    } else if (resolve instanceof EnumerationDescription) {
                        m15288of = new Factory(this.annotationType, (EnumerationDescription) resolve);
                    } else if (!(resolve instanceof AnnotationDescription)) {
                        m15288of = Factory.m15288of(this.annotationType, resolve);
                    } else {
                        throw new IllegalStateException("Cannot bind annotation as fixed value for " + this.property);
                    }
                    return m15288of.make(inDefinedShape, loadable, adviceType);
                }

                public OfAnnotationProperty(Class<T> cls, MethodDescription.InDefinedShape inDefinedShape) {
                    this.annotationType = cls;
                    this.property = inDefinedShape;
                }

                /* renamed from: of */
                public static <S extends Annotation> Factory<S> m15287of(Class<S> cls, String str) {
                    if (cls.isAnnotation()) {
                        try {
                            return new OfAnnotationProperty(cls, new MethodDescription.ForLoadedMethod(cls.getMethod(str, new Class[0])));
                        } catch (NoSuchMethodException e) {
                            throw new IllegalArgumentException("Cannot find a property " + str + " on " + cls, e);
                        }
                    }
                    throw new IllegalArgumentException("Not an annotation type: " + cls);
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForStackManipulation forStackManipulation = (ForStackManipulation) obj;
                    return this.typing.equals(forStackManipulation.typing) && this.stackManipulation.equals(forStackManipulation.stackManipulation) && this.typeDescription.equals(forStackManipulation.typeDescription) && this.targetType.equals(forStackManipulation.targetType);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.typeDescription.hashCode()) * 31) + this.targetType.hashCode()) * 31) + this.typing.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfDefaultValue<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.annotationType.equals(((OfDefaultValue) obj).annotationType);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.annotationType.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                    return new ForStackManipulation(DefaultValue.m14957of(inDefinedShape.getType()), inDefinedShape.getType(), inDefinedShape.getType(), Assigner.Typing.STATIC);
                }

                public OfDefaultValue(Class<T> cls) {
                    this.annotationType = cls;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfDynamicInvocation<T extends Annotation> implements Factory<T> {
                private final Class<T> annotationType;
                private final List<? extends JavaConstant> arguments;
                private final MethodDescription.InDefinedShape bootstrapMethod;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        OfDynamicInvocation ofDynamicInvocation = (OfDynamicInvocation) obj;
                        return this.annotationType.equals(ofDynamicInvocation.annotationType) && this.bootstrapMethod.equals(ofDynamicInvocation.bootstrapMethod) && this.arguments.equals(ofDynamicInvocation.arguments);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<T> getAnnotationType() {
                    return this.annotationType;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.bootstrapMethod.hashCode()) * 31) + this.arguments.hashCode();
                }

                public OfDynamicInvocation(Class<T> cls, MethodDescription.InDefinedShape inDefinedShape, List<? extends JavaConstant> list) {
                    this.annotationType = cls;
                    this.bootstrapMethod = inDefinedShape;
                    this.arguments = list;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                    if (inDefinedShape.getType().isInterface()) {
                        if (inDefinedShape.getType().getInterfaces().isEmpty()) {
                            if (inDefinedShape.getType().isPublic()) {
                                MethodList filter = inDefinedShape.getType().getDeclaredMethods().filter(ElementMatchers.isAbstract());
                                if (filter.size() == 1) {
                                    return new ForStackManipulation(MethodInvocation.invoke(this.bootstrapMethod).dynamic(((MethodDescription) filter.getOnly()).getInternalName(), inDefinedShape.getType().asErasure(), ((MethodDescription) filter.getOnly()).getParameters().asTypeList().asErasures(), this.arguments), inDefinedShape.getType(), inDefinedShape.getType(), Assigner.Typing.STATIC);
                                }
                                throw new IllegalArgumentException(inDefinedShape.getType() + " must declare exactly one abstract method");
                            }
                            throw new IllegalArgumentException(inDefinedShape.getType() + " is mot public");
                        }
                        throw new IllegalArgumentException(inDefinedShape.getType() + " must not extend other interfaces");
                    }
                    throw new IllegalArgumentException(inDefinedShape.getType() + " is not an interface");
                }
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                StackManipulation assign = assigner.assign(this.typeDescription, this.targetType, this.typing);
                if (assign.isValid()) {
                    return new Target.ForStackManipulation(new StackManipulation.Compound(this.stackManipulation, assign));
                }
                throw new IllegalStateException("Cannot assign " + this.typeDescription + " to " + this.targetType);
            }

            public ForStackManipulation(StackManipulation stackManipulation, TypeDescription.Generic generic, TypeDescription.Generic generic2, Assigner.Typing typing) {
                this.stackManipulation = stackManipulation;
                this.typeDescription = generic;
                this.targetType = generic2;
                this.typing = typing;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForThrowable implements OffsetMapping {
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            /* loaded from: classes2.dex */
            public enum Factory implements Factory<Thrown> {
                INSTANCE;
                
                private static final MethodDescription.InDefinedShape THROWN_READ_ONLY;
                private static final MethodDescription.InDefinedShape THROWN_TYPING;

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Thrown> getAnnotationType() {
                    return Thrown.class;
                }

                static {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Thrown.class).getDeclaredMethods();
                    THROWN_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                    THROWN_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                }

                @SuppressFBWarnings(justification = "Assuming annotation for exit advice.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                /* renamed from: of */
                public static Factory<?> m15281of(MethodDescription.InDefinedShape inDefinedShape) {
                    if (((TypeDescription) inDefinedShape.getDeclaredAnnotations().ofType(OnMethodExit.class).getValue(Advice.ON_THROWABLE).resolve(TypeDescription.class)).represents(NoExceptionHandler.class)) {
                        return new Factory.Illegal(Thrown.class);
                    }
                    return INSTANCE;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Thrown> loadable, Factory.AdviceType adviceType) {
                    if (adviceType.isDelegation() && !((Boolean) loadable.getValue(THROWN_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                        throw new IllegalStateException("Cannot use writable " + inDefinedShape + " on read-only parameter");
                    }
                    return new ForThrowable(inDefinedShape.getType(), loadable);
                }
            }

            public ForThrowable(TypeDescription.Generic generic, AnnotationDescription.Loadable<Thrown> loadable) {
                this(generic, ((Boolean) loadable.getValue(Factory.THROWN_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.THROWN_TYPING).load(Thrown.class.getClassLoader()).resolve(Assigner.Typing.class));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForThrowable forThrowable = (ForThrowable) obj;
                    return this.readOnly == forThrowable.readOnly && this.typing.equals(forThrowable.typing) && this.target.equals(forThrowable.target);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                TypeDescription typeDescription2 = TypeDescription.THROWABLE;
                StackManipulation assign = assigner.assign(typeDescription2.asGenericType(), this.target, this.typing);
                if (assign.isValid()) {
                    if (this.readOnly) {
                        return new Target.ForVariable.ReadOnly(typeDescription2, argumentHandler.thrown(), assign);
                    }
                    StackManipulation assign2 = assigner.assign(this.target, typeDescription2.asGenericType(), this.typing);
                    if (assign2.isValid()) {
                        return new Target.ForVariable.ReadWrite(typeDescription2, argumentHandler.thrown(), assign, assign2);
                    }
                    throw new IllegalStateException("Cannot assign " + this.target + " to Throwable");
                }
                throw new IllegalStateException("Cannot assign Throwable to " + this.target);
            }

            public ForThrowable(TypeDescription.Generic generic, boolean z, Assigner.Typing typing) {
                this.target = generic;
                this.readOnly = z;
                this.typing = typing;
            }
        }

        /* loaded from: classes2.dex */
        public enum Sort {
            ENTER { // from class: net.bytebuddy.asm.Advice.OffsetMapping.Sort.1
                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Sort
                public boolean isPremature(MethodDescription methodDescription) {
                    return methodDescription.isConstructor();
                }
            },
            EXIT { // from class: net.bytebuddy.asm.Advice.OffsetMapping.Sort.2
                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Sort
                public boolean isPremature(MethodDescription methodDescription) {
                    return false;
                }
            };

            public abstract boolean isPremature(MethodDescription methodDescription);
        }

        /* loaded from: classes2.dex */
        public interface Target {

            /* loaded from: classes2.dex */
            public static abstract class AbstractReadOnlyAdapter implements Target {
                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveIncrement(int i) {
                    throw new IllegalStateException("Cannot write to read-only value");
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveWrite() {
                    throw new IllegalStateException("Cannot write to read-only value");
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class ForArray implements Target {
                public final TypeDescription.Generic target;
                public final List<? extends StackManipulation> valueReads;

                /* loaded from: classes2.dex */
                public static class ReadOnly extends ForArray {
                    public ReadOnly(TypeDescription.Generic generic, List<? extends StackManipulation> list) {
                        super(generic, list);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        throw new IllegalStateException("Cannot write to read-only array value");
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForArray forArray = (ForArray) obj;
                        return this.target.equals(forArray.target) && this.valueReads.equals(forArray.valueReads);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.valueReads.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveIncrement(int i) {
                    throw new IllegalStateException("Cannot increment read-only array value");
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveRead() {
                    return ArrayFactory.forType(this.target).withValues(this.valueReads);
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ReadWrite extends ForArray {
                    private final List<? extends StackManipulation> valueWrites;

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target.ForArray
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.valueWrites.equals(((ReadWrite) obj).valueWrites);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target.ForArray
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.valueWrites.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        return new StackManipulation.Compound(ArrayAccess.m14962of(this.target).forEach(this.valueWrites), Removal.SINGLE);
                    }

                    public ReadWrite(TypeDescription.Generic generic, List<? extends StackManipulation> list, List<? extends StackManipulation> list2) {
                        super(generic, list);
                        this.valueWrites = list2;
                    }
                }

                public ForArray(TypeDescription.Generic generic, List<? extends StackManipulation> list) {
                    this.target = generic;
                    this.valueReads = list;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class ForField implements Target {
                public final FieldDescription fieldDescription;
                public final StackManipulation readAssignment;

                /* loaded from: classes2.dex */
                public static class ReadOnly extends ForField {
                    public ReadOnly(FieldDescription fieldDescription) {
                        this(fieldDescription, StackManipulation.Trivial.INSTANCE);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        throw new IllegalStateException("Cannot write to read-only field value");
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        throw new IllegalStateException("Cannot write to read-only field value");
                    }

                    public ReadOnly(FieldDescription fieldDescription, StackManipulation stackManipulation) {
                        super(fieldDescription, stackManipulation);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ReadWrite extends ForField {
                    private final StackManipulation writeAssignment;

                    /* JADX WARN: Illegal instructions before constructor call */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public ReadWrite(net.bytebuddy.description.field.FieldDescription r2) {
                        /*
                            r1 = this;
                            net.bytebuddy.implementation.bytecode.StackManipulation$Trivial r0 = net.bytebuddy.implementation.bytecode.StackManipulation.Trivial.INSTANCE
                            r1.<init>(r2, r0, r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.asm.Advice.OffsetMapping.Target.ForField.ReadWrite.<init>(net.bytebuddy.description.field.FieldDescription):void");
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target.ForField
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.writeAssignment.equals(((ReadWrite) obj).writeAssignment);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target.ForField
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.writeAssignment.hashCode();
                    }

                    public ReadWrite(FieldDescription fieldDescription, StackManipulation stackManipulation, StackManipulation stackManipulation2) {
                        super(fieldDescription, stackManipulation);
                        this.writeAssignment = stackManipulation2;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        return new StackManipulation.Compound(resolveRead(), IntegerConstant.forValue(i), Addition.INTEGER, resolveWrite());
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        StackManipulation compound;
                        if (this.fieldDescription.isStatic()) {
                            compound = StackManipulation.Trivial.INSTANCE;
                        } else {
                            compound = new StackManipulation.Compound(MethodVariableAccess.loadThis(), Duplication.SINGLE.flipOver(this.fieldDescription.getType()), Removal.SINGLE);
                        }
                        return new StackManipulation.Compound(this.writeAssignment, compound, FieldAccess.forField(this.fieldDescription).write());
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForField forField = (ForField) obj;
                        return this.fieldDescription.equals(forField.fieldDescription) && this.readAssignment.equals(forField.readAssignment);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + this.readAssignment.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveRead() {
                    StackManipulation loadThis;
                    StackManipulation[] stackManipulationArr = new StackManipulation[3];
                    if (this.fieldDescription.isStatic()) {
                        loadThis = StackManipulation.Trivial.INSTANCE;
                    } else {
                        loadThis = MethodVariableAccess.loadThis();
                    }
                    stackManipulationArr[0] = loadThis;
                    stackManipulationArr[1] = FieldAccess.forField(this.fieldDescription).read();
                    stackManipulationArr[2] = this.readAssignment;
                    return new StackManipulation.Compound(stackManipulationArr);
                }

                public ForField(FieldDescription fieldDescription, StackManipulation stackManipulation) {
                    this.fieldDescription = fieldDescription;
                    this.readAssignment = stackManipulation;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForStackManipulation implements Target {
                private final StackManipulation stackManipulation;

                /* renamed from: of */
                public static Target m15279of(MethodDescription.InDefinedShape inDefinedShape) {
                    return new ForStackManipulation(MethodConstant.m14952of(inDefinedShape));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.stackManipulation.equals(((ForStackManipulation) obj).stackManipulation);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.stackManipulation.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveIncrement(int i) {
                    throw new IllegalStateException("Cannot write to constant value: " + this.stackManipulation);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveRead() {
                    return this.stackManipulation;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveWrite() {
                    throw new IllegalStateException("Cannot write to constant value: " + this.stackManipulation);
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Writable implements Target {
                    private final StackManipulation read;
                    private final StackManipulation write;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Writable writable = (Writable) obj;
                            return this.read.equals(writable.read) && this.write.equals(writable.write);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.read.hashCode()) * 31) + this.write.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        throw new IllegalStateException("Cannot increment mutable constant value: " + this.write);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveRead() {
                        return this.read;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        return this.write;
                    }

                    public Writable(StackManipulation stackManipulation, StackManipulation stackManipulation2) {
                        this.read = stackManipulation;
                        this.write = stackManipulation2;
                    }
                }

                /* renamed from: of */
                public static Target m15278of(TypeDescription typeDescription) {
                    return new ForStackManipulation(ClassConstant.m14958of(typeDescription));
                }

                public ForStackManipulation(StackManipulation stackManipulation) {
                    this.stackManipulation = stackManipulation;
                }

                /* renamed from: of */
                public static Target m15280of(Object obj) {
                    if (obj == null) {
                        return new ForStackManipulation(NullConstant.INSTANCE);
                    }
                    if (obj instanceof Boolean) {
                        return new ForStackManipulation(IntegerConstant.forValue(((Boolean) obj).booleanValue()));
                    }
                    if (obj instanceof Byte) {
                        return new ForStackManipulation(IntegerConstant.forValue(((Byte) obj).byteValue()));
                    }
                    if (obj instanceof Short) {
                        return new ForStackManipulation(IntegerConstant.forValue(((Short) obj).shortValue()));
                    }
                    if (obj instanceof Character) {
                        return new ForStackManipulation(IntegerConstant.forValue(((Character) obj).charValue()));
                    }
                    if (obj instanceof Integer) {
                        return new ForStackManipulation(IntegerConstant.forValue(((Integer) obj).intValue()));
                    }
                    if (obj instanceof Long) {
                        return new ForStackManipulation(LongConstant.forValue(((Long) obj).longValue()));
                    }
                    if (obj instanceof Float) {
                        return new ForStackManipulation(FloatConstant.forValue(((Float) obj).floatValue()));
                    }
                    if (obj instanceof Double) {
                        return new ForStackManipulation(DoubleConstant.forValue(((Double) obj).doubleValue()));
                    }
                    if (obj instanceof String) {
                        return new ForStackManipulation(new TextConstant((String) obj));
                    }
                    if (obj instanceof Enum) {
                        return new ForStackManipulation(FieldAccess.forEnumeration(new EnumerationDescription.ForLoadedEnumeration((Enum) obj)));
                    }
                    if (obj instanceof EnumerationDescription) {
                        return new ForStackManipulation(FieldAccess.forEnumeration((EnumerationDescription) obj));
                    }
                    if (obj instanceof Class) {
                        return new ForStackManipulation(ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of((Class) obj)));
                    }
                    if (obj instanceof TypeDescription) {
                        return new ForStackManipulation(ClassConstant.m14958of((TypeDescription) obj));
                    }
                    if (JavaType.METHOD_HANDLE.isInstance(obj)) {
                        return new ForStackManipulation(new JavaConstantValue(JavaConstant.MethodHandle.ofLoaded(obj)));
                    }
                    if (JavaType.METHOD_TYPE.isInstance(obj)) {
                        return new ForStackManipulation(new JavaConstantValue(JavaConstant.MethodType.ofLoaded(obj)));
                    }
                    if (obj instanceof JavaConstant) {
                        return new ForStackManipulation(new JavaConstantValue((JavaConstant) obj));
                    }
                    throw new IllegalArgumentException("Not a constant value: " + obj);
                }
            }

            StackManipulation resolveIncrement(int i);

            StackManipulation resolveRead();

            StackManipulation resolveWrite();

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class ForDefaultValue implements Target {
                public final StackManipulation readAssignment;
                public final TypeDefinition typeDefinition;

                /* loaded from: classes2.dex */
                public static class ReadOnly extends ForDefaultValue {
                    public ReadOnly(TypeDefinition typeDefinition) {
                        this(typeDefinition, StackManipulation.Trivial.INSTANCE);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        throw new IllegalStateException("Cannot write to read-only default value");
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        throw new IllegalStateException("Cannot write to read-only default value");
                    }

                    public ReadOnly(TypeDefinition typeDefinition, StackManipulation stackManipulation) {
                        super(typeDefinition, stackManipulation);
                    }
                }

                /* loaded from: classes2.dex */
                public static class ReadWrite extends ForDefaultValue {
                    public ReadWrite(TypeDefinition typeDefinition) {
                        this(typeDefinition, StackManipulation.Trivial.INSTANCE);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        return StackManipulation.Trivial.INSTANCE;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        return Removal.m14979of(this.typeDefinition);
                    }

                    public ReadWrite(TypeDefinition typeDefinition, StackManipulation stackManipulation) {
                        super(typeDefinition, stackManipulation);
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForDefaultValue forDefaultValue = (ForDefaultValue) obj;
                        return this.typeDefinition.equals(forDefaultValue.typeDefinition) && this.readAssignment.equals(forDefaultValue.readAssignment);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.typeDefinition.hashCode()) * 31) + this.readAssignment.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveRead() {
                    return new StackManipulation.Compound(DefaultValue.m14957of(this.typeDefinition), this.readAssignment);
                }

                public ForDefaultValue(TypeDefinition typeDefinition, StackManipulation stackManipulation) {
                    this.typeDefinition = typeDefinition;
                    this.readAssignment = stackManipulation;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static abstract class ForVariable implements Target {
                public final int offset;
                public final StackManipulation readAssignment;
                public final TypeDefinition typeDefinition;

                /* loaded from: classes2.dex */
                public static class ReadOnly extends ForVariable {
                    public ReadOnly(TypeDefinition typeDefinition, int i) {
                        this(typeDefinition, i, StackManipulation.Trivial.INSTANCE);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        throw new IllegalStateException("Cannot write to read-only variable " + this.typeDefinition + " at " + this.offset);
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        throw new IllegalStateException("Cannot write to read-only parameter " + this.typeDefinition + " at " + this.offset);
                    }

                    public ReadOnly(TypeDefinition typeDefinition, int i, StackManipulation stackManipulation) {
                        super(typeDefinition, i, stackManipulation);
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ReadWrite extends ForVariable {
                    private final StackManipulation writeAssignment;

                    /* JADX WARN: Illegal instructions before constructor call */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public ReadWrite(net.bytebuddy.description.type.TypeDefinition r2, int r3) {
                        /*
                            r1 = this;
                            net.bytebuddy.implementation.bytecode.StackManipulation$Trivial r0 = net.bytebuddy.implementation.bytecode.StackManipulation.Trivial.INSTANCE
                            r1.<init>(r2, r3, r0, r0)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.asm.Advice.OffsetMapping.Target.ForVariable.ReadWrite.<init>(net.bytebuddy.description.type.TypeDefinition, int):void");
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target.ForVariable
                    public boolean equals(@MaybeNull Object obj) {
                        if (super.equals(obj)) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.writeAssignment.equals(((ReadWrite) obj).writeAssignment);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target.ForVariable
                    public int hashCode() {
                        return (super.hashCode() * 31) + this.writeAssignment.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveWrite() {
                        return new StackManipulation.Compound(this.writeAssignment, MethodVariableAccess.m14936of(this.typeDefinition).storeAt(this.offset));
                    }

                    public ReadWrite(TypeDefinition typeDefinition, int i, StackManipulation stackManipulation, StackManipulation stackManipulation2) {
                        super(typeDefinition, i, stackManipulation);
                        this.writeAssignment = stackManipulation2;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                    public StackManipulation resolveIncrement(int i) {
                        if (this.typeDefinition.represents(Integer.TYPE)) {
                            return MethodVariableAccess.m14936of(this.typeDefinition).increment(this.offset, i);
                        }
                        return new StackManipulation.Compound(resolveRead(), IntegerConstant.forValue(1), Addition.INTEGER, resolveWrite());
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForVariable forVariable = (ForVariable) obj;
                        return this.offset == forVariable.offset && this.typeDefinition.equals(forVariable.typeDefinition) && this.readAssignment.equals(forVariable.readAssignment);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((getClass().hashCode() * 31) + this.typeDefinition.hashCode()) * 31) + this.offset) * 31) + this.readAssignment.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Target
                public StackManipulation resolveRead() {
                    return new StackManipulation.Compound(MethodVariableAccess.m14936of(this.typeDefinition).loadFrom(this.offset), this.readAssignment);
                }

                public ForVariable(TypeDefinition typeDefinition, int i, StackManipulation stackManipulation) {
                    this.typeDefinition = typeDefinition;
                    this.offset = i;
                    this.readAssignment = stackManipulation;
                }
            }
        }

        Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class ForArgument implements OffsetMapping {
            public final boolean readOnly;
            public final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Resolved extends ForArgument {
                private final ParameterDescription parameterDescription;

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Factory<T extends Annotation> implements Factory<T> {
                    private final Class<T> annotationType;
                    private final ParameterDescription parameterDescription;
                    private final boolean readOnly;
                    private final Assigner.Typing typing;

                    public Factory(Class<T> cls, ParameterDescription parameterDescription) {
                        this(cls, parameterDescription, true, Assigner.Typing.STATIC);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Factory factory = (Factory) obj;
                            return this.readOnly == factory.readOnly && this.typing.equals(factory.typing) && this.annotationType.equals(factory.annotationType) && this.parameterDescription.equals(factory.parameterDescription);
                        }
                        return false;
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public Class<T> getAnnotationType() {
                        return this.annotationType;
                    }

                    public int hashCode() {
                        return (((((((getClass().hashCode() * 31) + this.annotationType.hashCode()) * 31) + this.parameterDescription.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<T> loadable, Factory.AdviceType adviceType) {
                        return new Resolved(inDefinedShape.getType(), this.readOnly, this.typing, this.parameterDescription);
                    }

                    public Factory(Class<T> cls, ParameterDescription parameterDescription, boolean z, Assigner.Typing typing) {
                        this.annotationType = cls;
                        this.parameterDescription = parameterDescription;
                        this.readOnly = z;
                        this.typing = typing;
                    }
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.parameterDescription.equals(((Resolved) obj).parameterDescription);
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument
                public int hashCode() {
                    return (super.hashCode() * 31) + this.parameterDescription.hashCode();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument
                public ParameterDescription resolve(MethodDescription methodDescription) {
                    if (this.parameterDescription.getDeclaringMethod().equals(methodDescription)) {
                        return this.parameterDescription;
                    }
                    throw new IllegalStateException(this.parameterDescription + " is not a parameter of " + methodDescription);
                }

                public Resolved(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, ParameterDescription parameterDescription) {
                    super(generic, z, typing);
                    this.parameterDescription = parameterDescription;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForArgument forArgument = (ForArgument) obj;
                    return this.readOnly == forArgument.readOnly && this.typing.equals(forArgument.typing) && this.target.equals(forArgument.target);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
            }

            public abstract ParameterDescription resolve(MethodDescription methodDescription);

            public ForArgument(TypeDescription.Generic generic, boolean z, Assigner.Typing typing) {
                this.target = generic;
                this.readOnly = z;
                this.typing = typing;
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                ParameterDescription resolve = resolve(methodDescription);
                StackManipulation assign = assigner.assign(resolve.getType(), this.target, this.typing);
                if (assign.isValid()) {
                    if (this.readOnly) {
                        return new Target.ForVariable.ReadOnly(resolve.getType(), argumentHandler.argument(resolve.getOffset()), assign);
                    }
                    StackManipulation assign2 = assigner.assign(this.target, resolve.getType(), this.typing);
                    if (assign2.isValid()) {
                        return new Target.ForVariable.ReadWrite(resolve.getType(), argumentHandler.argument(resolve.getOffset()), assign, assign2);
                    }
                    throw new IllegalStateException("Cannot assign " + resolve + " to " + this.target);
                }
                throw new IllegalStateException("Cannot assign " + resolve + " to " + this.target);
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Unresolved extends ForArgument {
                private final int index;
                private final boolean optional;

                /* loaded from: classes2.dex */
                public enum Factory implements Factory<Argument> {
                    INSTANCE;
                    
                    private static final MethodDescription.InDefinedShape ARGUMENT_OPTIONAL;
                    private static final MethodDescription.InDefinedShape ARGUMENT_READ_ONLY;
                    private static final MethodDescription.InDefinedShape ARGUMENT_TYPING;
                    private static final MethodDescription.InDefinedShape ARGUMENT_VALUE;

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public Class<Argument> getAnnotationType() {
                        return Argument.class;
                    }

                    static {
                        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Argument.class).getDeclaredMethods();
                        ARGUMENT_VALUE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
                        ARGUMENT_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                        ARGUMENT_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                        ARGUMENT_OPTIONAL = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("optional")).getOnly();
                    }

                    @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                    public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Argument> loadable, Factory.AdviceType adviceType) {
                        if (adviceType.isDelegation() && !((Boolean) loadable.getValue(ARGUMENT_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                            throw new IllegalStateException("Cannot define writable field access for " + inDefinedShape + " when using delegation");
                        }
                        return new Unresolved(inDefinedShape.getType(), loadable);
                    }
                }

                public Unresolved(TypeDescription.Generic generic, AnnotationDescription.Loadable<Argument> loadable) {
                    this(generic, ((Boolean) loadable.getValue(Factory.ARGUMENT_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.ARGUMENT_TYPING).load(Argument.class.getClassLoader()).resolve(Assigner.Typing.class), ((Integer) loadable.getValue(Factory.ARGUMENT_VALUE).resolve(Integer.class)).intValue(), ((Boolean) loadable.getValue(Factory.ARGUMENT_OPTIONAL).resolve(Boolean.class)).booleanValue());
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            Unresolved unresolved = (Unresolved) obj;
                            return this.index == unresolved.index && this.optional == unresolved.optional;
                        }
                        return false;
                    }
                    return false;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument
                public int hashCode() {
                    return (((super.hashCode() * 31) + this.index) * 31) + (this.optional ? 1 : 0);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument
                public ParameterDescription resolve(MethodDescription methodDescription) {
                    ParameterList<?> parameters = methodDescription.getParameters();
                    int size = parameters.size();
                    int i = this.index;
                    if (size > i) {
                        return (ParameterDescription) parameters.get(i);
                    }
                    throw new IllegalStateException(methodDescription + " does not define an index " + this.index);
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForArgument, net.bytebuddy.asm.Advice.OffsetMapping
                public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                    if (!this.optional || methodDescription.getParameters().size() > this.index) {
                        return super.resolve(typeDescription, methodDescription, assigner, argumentHandler, sort);
                    }
                    return this.readOnly ? new Target.ForDefaultValue.ReadOnly(this.target) : new Target.ForDefaultValue.ReadWrite(this.target);
                }

                public Unresolved(ParameterDescription parameterDescription) {
                    this(parameterDescription.getType(), true, Assigner.Typing.STATIC, parameterDescription.getIndex());
                }

                public Unresolved(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, int i) {
                    this(generic, z, typing, i, false);
                }

                public Unresolved(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, int i, boolean z2) {
                    super(generic, z, typing);
                    this.index = i;
                    this.optional = z2;
                }
            }
        }

        /* loaded from: classes2.dex */
        public enum ForInstrumentedMethod implements OffsetMapping {
            METHOD { // from class: net.bytebuddy.asm.Advice.OffsetMapping.ForInstrumentedMethod.1
                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForInstrumentedMethod
                public boolean isRepresentable(MethodDescription methodDescription) {
                    return methodDescription.isMethod();
                }
            },
            CONSTRUCTOR { // from class: net.bytebuddy.asm.Advice.OffsetMapping.ForInstrumentedMethod.2
                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForInstrumentedMethod
                public boolean isRepresentable(MethodDescription methodDescription) {
                    return methodDescription.isConstructor();
                }
            },
            EXECUTABLE { // from class: net.bytebuddy.asm.Advice.OffsetMapping.ForInstrumentedMethod.3
                @Override // net.bytebuddy.asm.Advice.OffsetMapping.ForInstrumentedMethod
                public boolean isRepresentable(MethodDescription methodDescription) {
                    return true;
                }
            };

            public abstract boolean isRepresentable(MethodDescription methodDescription);

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                if (isRepresentable(methodDescription)) {
                    return Target.ForStackManipulation.m15279of(methodDescription.asDefined());
                }
                throw new IllegalStateException("Cannot represent " + methodDescription + " as given method constant");
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForReturnValue implements OffsetMapping {
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            /* loaded from: classes2.dex */
            public enum Factory implements Factory<Return> {
                INSTANCE;
                
                private static final MethodDescription.InDefinedShape RETURN_READ_ONLY;
                private static final MethodDescription.InDefinedShape RETURN_TYPING;

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Return> getAnnotationType() {
                    return Return.class;
                }

                static {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Return.class).getDeclaredMethods();
                    RETURN_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                    RETURN_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Return> loadable, Factory.AdviceType adviceType) {
                    if (adviceType.isDelegation() && !((Boolean) loadable.getValue(RETURN_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                        throw new IllegalStateException("Cannot write return value for " + inDefinedShape + " in read-only context");
                    }
                    return new ForReturnValue(inDefinedShape.getType(), loadable);
                }
            }

            public ForReturnValue(TypeDescription.Generic generic, AnnotationDescription.Loadable<Return> loadable) {
                this(generic, ((Boolean) loadable.getValue(Factory.RETURN_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.RETURN_TYPING).load(Return.class.getClassLoader()).resolve(Assigner.Typing.class));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForReturnValue forReturnValue = (ForReturnValue) obj;
                    return this.readOnly == forReturnValue.readOnly && this.typing.equals(forReturnValue.typing) && this.target.equals(forReturnValue.target);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                StackManipulation assign = assigner.assign(methodDescription.getReturnType(), this.target, this.typing);
                if (assign.isValid()) {
                    if (this.readOnly) {
                        if (methodDescription.getReturnType().represents(Void.TYPE)) {
                            return new Target.ForDefaultValue.ReadOnly(this.target);
                        }
                        return new Target.ForVariable.ReadOnly(methodDescription.getReturnType(), argumentHandler.returned(), assign);
                    }
                    StackManipulation assign2 = assigner.assign(this.target, methodDescription.getReturnType(), this.typing);
                    if (assign2.isValid()) {
                        if (methodDescription.getReturnType().represents(Void.TYPE)) {
                            return new Target.ForDefaultValue.ReadWrite(this.target);
                        }
                        return new Target.ForVariable.ReadWrite(methodDescription.getReturnType(), argumentHandler.returned(), assign, assign2);
                    }
                    throw new IllegalStateException("Cannot assign " + this.target + " to " + methodDescription.getReturnType());
                }
                throw new IllegalStateException("Cannot assign " + methodDescription.getReturnType() + " to " + this.target);
            }

            public ForReturnValue(TypeDescription.Generic generic, boolean z, Assigner.Typing typing) {
                this.target = generic;
                this.readOnly = z;
                this.typing = typing;
            }
        }

        /* loaded from: classes2.dex */
        public enum ForStubValue implements OffsetMapping, Factory<StubValue> {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
            public Class<StubValue> getAnnotationType() {
                return StubValue.class;
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                return new Target.ForDefaultValue.ReadOnly(methodDescription.getReturnType(), assigner.assign(methodDescription.getReturnType(), TypeDescription.Generic.OBJECT, Assigner.Typing.DYNAMIC));
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
            public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<StubValue> loadable, Factory.AdviceType adviceType) {
                if (inDefinedShape.getType().represents(Object.class)) {
                    return this;
                }
                throw new IllegalStateException("Cannot use StubValue on non-Object parameter type " + inDefinedShape);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForThisReference implements OffsetMapping {
            private final boolean optional;
            private final boolean readOnly;
            private final TypeDescription.Generic target;
            private final Assigner.Typing typing;

            /* loaded from: classes2.dex */
            public enum Factory implements Factory<This> {
                INSTANCE;
                
                private static final MethodDescription.InDefinedShape THIS_OPTIONAL;
                private static final MethodDescription.InDefinedShape THIS_READ_ONLY;
                private static final MethodDescription.InDefinedShape THIS_TYPING;

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<This> getAnnotationType() {
                    return This.class;
                }

                static {
                    MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(This.class).getDeclaredMethods();
                    THIS_READ_ONLY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("readOnly")).getOnly();
                    THIS_TYPING = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("typing")).getOnly();
                    THIS_OPTIONAL = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("optional")).getOnly();
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<This> loadable, Factory.AdviceType adviceType) {
                    if (adviceType.isDelegation() && !((Boolean) loadable.getValue(THIS_READ_ONLY).resolve(Boolean.class)).booleanValue()) {
                        throw new IllegalStateException("Cannot write to this reference for " + inDefinedShape + " in read-only context");
                    }
                    return new ForThisReference(inDefinedShape.getType(), loadable);
                }
            }

            public ForThisReference(TypeDescription.Generic generic, AnnotationDescription.Loadable<This> loadable) {
                this(generic, ((Boolean) loadable.getValue(Factory.THIS_READ_ONLY).resolve(Boolean.class)).booleanValue(), (Assigner.Typing) loadable.getValue(Factory.THIS_TYPING).load(This.class.getClassLoader()).resolve(Assigner.Typing.class), ((Boolean) loadable.getValue(Factory.THIS_OPTIONAL).resolve(Boolean.class)).booleanValue());
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForThisReference forThisReference = (ForThisReference) obj;
                    return this.readOnly == forThisReference.readOnly && this.optional == forThisReference.optional && this.typing.equals(forThisReference.typing) && this.target.equals(forThisReference.target);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + (this.readOnly ? 1 : 0)) * 31) + this.typing.hashCode()) * 31) + (this.optional ? 1 : 0);
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                if (!methodDescription.isStatic() && !sort.isPremature(methodDescription)) {
                    StackManipulation assign = assigner.assign(typeDescription.asGenericType(), this.target, this.typing);
                    if (assign.isValid()) {
                        if (this.readOnly) {
                            return new Target.ForVariable.ReadOnly(typeDescription.asGenericType(), argumentHandler.argument(0), assign);
                        }
                        StackManipulation assign2 = assigner.assign(this.target, typeDescription.asGenericType(), this.typing);
                        if (assign2.isValid()) {
                            return new Target.ForVariable.ReadWrite(typeDescription.asGenericType(), argumentHandler.argument(0), assign, assign2);
                        }
                        throw new IllegalStateException("Cannot assign " + this.target + " to " + typeDescription);
                    }
                    throw new IllegalStateException("Cannot assign " + typeDescription + " to " + this.target);
                } else if (this.optional) {
                    if (this.readOnly) {
                        return new Target.ForDefaultValue.ReadOnly(typeDescription);
                    }
                    return new Target.ForDefaultValue.ReadWrite(typeDescription);
                } else {
                    throw new IllegalStateException("Cannot map this reference for static method or constructor start: " + methodDescription);
                }
            }

            public ForThisReference(TypeDescription.Generic generic, boolean z, Assigner.Typing typing, boolean z2) {
                this.target = generic;
                this.readOnly = z;
                this.typing = typing;
                this.optional = z2;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForUnusedValue implements OffsetMapping {
            private final TypeDefinition target;

            /* loaded from: classes2.dex */
            public enum Factory implements Factory<Unused> {
                INSTANCE;

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public Class<Unused> getAnnotationType() {
                    return Unused.class;
                }

                @Override // net.bytebuddy.asm.Advice.OffsetMapping.Factory
                public OffsetMapping make(ParameterDescription.InDefinedShape inDefinedShape, AnnotationDescription.Loadable<Unused> loadable, Factory.AdviceType adviceType) {
                    return new ForUnusedValue(inDefinedShape.getType());
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.target.equals(((ForUnusedValue) obj).target);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.target.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.OffsetMapping
            public Target resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, Sort sort) {
                return new Target.ForDefaultValue.ReadWrite(this.target);
            }

            public ForUnusedValue(TypeDefinition typeDefinition) {
                this.target = typeDefinition;
            }
        }
    }

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface OnMethodEnter {
        boolean inline() default true;

        boolean prependLineNumber() default true;

        Class<?> skipOn() default void.class;

        Class<? extends Throwable> suppress() default NoExceptionHandler.class;
    }

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface OnMethodExit {
        boolean backupArguments() default true;

        boolean inline() default true;

        Class<? extends Throwable> onThrowable() default NoExceptionHandler.class;

        Class<?> repeatOn() default void.class;

        Class<? extends Throwable> suppress() default NoExceptionHandler.class;
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Origin {
        public static final String DEFAULT = "";

        String value() default "";
    }

    /* loaded from: classes2.dex */
    public interface PostProcessor {

        /* loaded from: classes2.dex */
        public interface Factory {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Compound implements Factory {
                private final List<Factory> factories;

                public Compound(Factory... factoryArr) {
                    this(Arrays.asList(factoryArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.factories.equals(((Compound) obj).factories);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.factories.hashCode();
                }

                public Compound(List<? extends Factory> list) {
                    this.factories = new ArrayList();
                    for (Factory factory : list) {
                        if (factory instanceof Compound) {
                            this.factories.addAll(((Compound) factory).factories);
                        } else if (!(factory instanceof NoOp)) {
                            this.factories.add(factory);
                        }
                    }
                }

                @Override // net.bytebuddy.asm.Advice.PostProcessor.Factory
                public PostProcessor make(MethodDescription.InDefinedShape inDefinedShape, boolean z) {
                    ArrayList arrayList = new ArrayList(this.factories.size());
                    for (Factory factory : this.factories) {
                        arrayList.add(factory.make(inDefinedShape, z));
                    }
                    return new Compound(arrayList);
                }
            }

            PostProcessor make(MethodDescription.InDefinedShape inDefinedShape, boolean z);
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements PostProcessor, Factory {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.PostProcessor.Factory
            public PostProcessor make(MethodDescription.InDefinedShape inDefinedShape, boolean z) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.PostProcessor
            public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, StackMapFrameHandler.ForPostProcessor forPostProcessor, StackManipulation stackManipulation) {
                return StackManipulation.Trivial.INSTANCE;
            }
        }

        StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, StackMapFrameHandler.ForPostProcessor forPostProcessor, StackManipulation stackManipulation);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements PostProcessor {
            private final List<PostProcessor> postProcessors;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.postProcessors.equals(((Compound) obj).postProcessors);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.postProcessors.hashCode();
            }

            @Override // net.bytebuddy.asm.Advice.PostProcessor
            public StackManipulation resolve(TypeDescription typeDescription, MethodDescription methodDescription, Assigner assigner, ArgumentHandler argumentHandler, StackMapFrameHandler.ForPostProcessor forPostProcessor, StackManipulation stackManipulation) {
                ArrayList arrayList = new ArrayList(this.postProcessors.size());
                for (PostProcessor postProcessor : this.postProcessors) {
                    arrayList.add(postProcessor.resolve(typeDescription, methodDescription, assigner, argumentHandler, forPostProcessor, stackManipulation));
                }
                return new StackManipulation.Compound(arrayList);
            }

            public Compound(List<PostProcessor> list) {
                this.postProcessors = list;
            }
        }
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Return {
        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;
    }

    /* loaded from: classes2.dex */
    public interface StackMapFrameHandler {

        /* loaded from: classes2.dex */
        public static abstract class Default implements ForInstrumentedMethod {
            public static final Object[] EMPTY = new Object[0];
            public int currentFrameDivergence;
            public final boolean expandFrames;
            public final List<? extends TypeDescription> initialTypes;
            public final MethodDescription instrumentedMethod;
            public final TypeDescription instrumentedType;
            public final List<? extends TypeDescription> latentTypes;
            public final List<? extends TypeDescription> postMethodTypes;
            public final List<? extends TypeDescription> preMethodTypes;

            /* loaded from: classes2.dex */
            public class ForAdvice implements ForAdvice {
                public final MethodDescription.InDefinedShape adviceMethod;
                public final List<? extends TypeDescription> endTypes;
                private final Initialization initialization;
                private boolean intermedate = false;
                private final List<? extends TypeDescription> intermediateTypes;
                public final List<? extends TypeDescription> startTypes;
                public final TranslationMode translationMode;

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void translateFrame(MethodVisitor methodVisitor, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                    Default.this.translateFrame(methodVisitor, this.translationMode, this.adviceMethod, this.startTypes, i, i2, objArr, i3, objArr2);
                }

                public ForAdvice(MethodDescription.InDefinedShape inDefinedShape, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, TranslationMode translationMode, Initialization initialization) {
                    this.adviceMethod = inDefinedShape;
                    this.startTypes = list;
                    this.intermediateTypes = list2;
                    this.endTypes = list3;
                    this.translationMode = translationMode;
                    this.initialization = initialization;
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectCompletionFrame(MethodVisitor methodVisitor) {
                    Default r0 = Default.this;
                    if (r0.expandFrames) {
                        r0.injectFullFrame(methodVisitor, this.initialization, CompoundList.m14776of((List) this.startTypes, (List) this.endTypes), Collections.emptyList());
                        return;
                    }
                    int i = 0;
                    if (r0.currentFrameDivergence == 0 && (this.intermedate || this.endTypes.size() < 4)) {
                        if (!this.intermedate && !this.endTypes.isEmpty()) {
                            int size = this.endTypes.size();
                            Object[] objArr = new Object[size];
                            for (TypeDescription typeDescription : this.endTypes) {
                                objArr[i] = Initialization.INITIALIZED.toFrame(typeDescription);
                                i++;
                            }
                            Object[] objArr2 = Default.EMPTY;
                            methodVisitor.visitFrame(1, size, objArr, objArr2.length, objArr2);
                            return;
                        }
                        Object[] objArr3 = Default.EMPTY;
                        methodVisitor.visitFrame(3, objArr3.length, objArr3, objArr3.length, objArr3);
                    } else if (Default.this.currentFrameDivergence < 3 && this.endTypes.isEmpty()) {
                        int i2 = Default.this.currentFrameDivergence;
                        Object[] objArr4 = Default.EMPTY;
                        methodVisitor.visitFrame(2, i2, objArr4, objArr4.length, objArr4);
                        Default.this.currentFrameDivergence = 0;
                    } else {
                        Default.this.injectFullFrame(methodVisitor, this.initialization, CompoundList.m14776of((List) this.startTypes, (List) this.endTypes), Collections.emptyList());
                    }
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectExceptionFrame(MethodVisitor methodVisitor) {
                    Default r0 = Default.this;
                    if (!r0.expandFrames && r0.currentFrameDivergence == 0) {
                        Object[] objArr = Default.EMPTY;
                        methodVisitor.visitFrame(4, objArr.length, objArr, 1, new Object[]{Type.getInternalName(Throwable.class)});
                        return;
                    }
                    r0.injectFullFrame(methodVisitor, this.initialization, this.startTypes, Collections.singletonList(TypeDescription.THROWABLE));
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForPostProcessor
                public void injectIntermediateFrame(MethodVisitor methodVisitor, List<? extends TypeDescription> list) {
                    Default r2 = Default.this;
                    if (r2.expandFrames) {
                        r2.injectFullFrame(methodVisitor, this.initialization, CompoundList.m14776of((List) this.startTypes, (List) this.intermediateTypes), list);
                    } else {
                        int i = 0;
                        if (this.intermedate && list.size() < 2) {
                            if (list.isEmpty()) {
                                Object[] objArr = Default.EMPTY;
                                methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
                            } else {
                                Object[] objArr2 = Default.EMPTY;
                                methodVisitor.visitFrame(4, objArr2.length, objArr2, 1, new Object[]{Initialization.INITIALIZED.toFrame(list.get(0))});
                            }
                        } else if (Default.this.currentFrameDivergence == 0 && this.intermediateTypes.size() < 4 && (list.isEmpty() || (list.size() < 2 && this.intermediateTypes.isEmpty()))) {
                            if (this.intermediateTypes.isEmpty()) {
                                if (list.isEmpty()) {
                                    Object[] objArr3 = Default.EMPTY;
                                    methodVisitor.visitFrame(3, objArr3.length, objArr3, objArr3.length, objArr3);
                                } else {
                                    Object[] objArr4 = Default.EMPTY;
                                    methodVisitor.visitFrame(4, objArr4.length, objArr4, 1, new Object[]{Initialization.INITIALIZED.toFrame(list.get(0))});
                                }
                            } else {
                                int size = this.intermediateTypes.size();
                                Object[] objArr5 = new Object[size];
                                for (TypeDescription typeDescription : this.intermediateTypes) {
                                    objArr5[i] = Initialization.INITIALIZED.toFrame(typeDescription);
                                    i++;
                                }
                                Object[] objArr6 = Default.EMPTY;
                                methodVisitor.visitFrame(1, size, objArr5, objArr6.length, objArr6);
                            }
                        } else if (Default.this.currentFrameDivergence < 3 && this.intermediateTypes.isEmpty() && list.isEmpty()) {
                            int i2 = Default.this.currentFrameDivergence;
                            Object[] objArr7 = Default.EMPTY;
                            methodVisitor.visitFrame(2, i2, objArr7, objArr7.length, objArr7);
                        } else {
                            Default.this.injectFullFrame(methodVisitor, this.initialization, CompoundList.m14776of((List) this.startTypes, (List) this.intermediateTypes), list);
                        }
                    }
                    Default.this.currentFrameDivergence = this.intermediateTypes.size() - this.endTypes.size();
                    this.intermedate = true;
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectReturnFrame(MethodVisitor methodVisitor) {
                    List<? extends TypeDescription> singletonList;
                    Default r0 = Default.this;
                    if (!r0.expandFrames && r0.currentFrameDivergence == 0) {
                        if (this.adviceMethod.getReturnType().represents(Void.TYPE)) {
                            Object[] objArr = Default.EMPTY;
                            methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
                            return;
                        }
                        Object[] objArr2 = Default.EMPTY;
                        methodVisitor.visitFrame(4, objArr2.length, objArr2, 1, new Object[]{Initialization.INITIALIZED.toFrame(this.adviceMethod.getReturnType().asErasure())});
                        return;
                    }
                    Initialization initialization = this.initialization;
                    List<? extends TypeDescription> list = this.startTypes;
                    if (this.adviceMethod.getReturnType().represents(Void.TYPE)) {
                        singletonList = Collections.emptyList();
                    } else {
                        singletonList = Collections.singletonList(this.adviceMethod.getReturnType().asErasure());
                    }
                    r0.injectFullFrame(methodVisitor, initialization, list, singletonList);
                }
            }

            /* loaded from: classes2.dex */
            public enum Initialization {
                UNITIALIZED { // from class: net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.Initialization.1
                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.Initialization
                    public Object toFrame(TypeDescription typeDescription) {
                        if (!typeDescription.isPrimitive()) {
                            return Opcodes.UNINITIALIZED_THIS;
                        }
                        throw new IllegalArgumentException("Cannot assume primitive uninitialized value: " + typeDescription);
                    }
                },
                INITIALIZED { // from class: net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.Initialization.2
                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.Initialization
                    public Object toFrame(TypeDescription typeDescription) {
                        if (!typeDescription.represents(Boolean.TYPE) && !typeDescription.represents(Byte.TYPE) && !typeDescription.represents(Short.TYPE) && !typeDescription.represents(Character.TYPE) && !typeDescription.represents(Integer.TYPE)) {
                            if (typeDescription.represents(Long.TYPE)) {
                                return Opcodes.LONG;
                            }
                            if (typeDescription.represents(Float.TYPE)) {
                                return Opcodes.FLOAT;
                            }
                            if (typeDescription.represents(Double.TYPE)) {
                                return Opcodes.DOUBLE;
                            }
                            return typeDescription.getInternalName();
                        }
                        return Opcodes.INTEGER;
                    }
                };

                public abstract Object toFrame(TypeDescription typeDescription);
            }

            /* loaded from: classes2.dex */
            public enum TranslationMode {
                COPY { // from class: net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode.1
                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode
                    public boolean isPossibleThisFrameValue(TypeDescription typeDescription, MethodDescription methodDescription, Object obj) {
                        return (methodDescription.isConstructor() && Opcodes.UNINITIALIZED_THIS.equals(obj)) || Initialization.INITIALIZED.toFrame(typeDescription).equals(obj);
                    }

                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode
                    public int copy(TypeDescription typeDescription, MethodDescription methodDescription, MethodDescription methodDescription2, Object[] objArr, Object[] objArr2) {
                        int size = methodDescription.getParameters().size() + (!methodDescription.isStatic());
                        System.arraycopy(objArr, 0, objArr2, 0, size);
                        return size;
                    }
                },
                ENTER { // from class: net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode.2
                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode
                    public int copy(TypeDescription typeDescription, MethodDescription methodDescription, MethodDescription methodDescription2, Object[] objArr, Object[] objArr2) {
                        Object frame;
                        int i = 0;
                        if (!methodDescription.isStatic()) {
                            if (methodDescription.isConstructor()) {
                                frame = Opcodes.UNINITIALIZED_THIS;
                            } else {
                                frame = Initialization.INITIALIZED.toFrame(typeDescription);
                            }
                            objArr2[0] = frame;
                            i = 1;
                        }
                        for (TypeDescription typeDescription2 : methodDescription.getParameters().asTypeList().asErasures()) {
                            objArr2[i] = Initialization.INITIALIZED.toFrame(typeDescription2);
                            i++;
                        }
                        return i;
                    }

                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode
                    public boolean isPossibleThisFrameValue(TypeDescription typeDescription, MethodDescription methodDescription, Object obj) {
                        if (methodDescription.isConstructor()) {
                            return Opcodes.UNINITIALIZED_THIS.equals(obj);
                        }
                        return Initialization.INITIALIZED.toFrame(typeDescription).equals(obj);
                    }
                },
                EXIT { // from class: net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode.3
                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode
                    public boolean isPossibleThisFrameValue(TypeDescription typeDescription, MethodDescription methodDescription, Object obj) {
                        return Initialization.INITIALIZED.toFrame(typeDescription).equals(obj);
                    }

                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.TranslationMode
                    public int copy(TypeDescription typeDescription, MethodDescription methodDescription, MethodDescription methodDescription2, Object[] objArr, Object[] objArr2) {
                        int i = 0;
                        if (!methodDescription.isStatic()) {
                            objArr2[0] = Initialization.INITIALIZED.toFrame(typeDescription);
                            i = 1;
                        }
                        for (TypeDescription typeDescription2 : methodDescription.getParameters().asTypeList().asErasures()) {
                            objArr2[i] = Initialization.INITIALIZED.toFrame(typeDescription2);
                            i++;
                        }
                        return i;
                    }
                };

                public abstract int copy(TypeDescription typeDescription, MethodDescription methodDescription, MethodDescription methodDescription2, Object[] objArr, Object[] objArr2);

                public abstract boolean isPossibleThisFrameValue(TypeDescription typeDescription, MethodDescription methodDescription, Object obj);
            }

            /* loaded from: classes2.dex */
            public static abstract class WithPreservedArguments extends Default {
                public boolean allowCompactCompletionFrame;

                /* loaded from: classes2.dex */
                public static class WithArgumentCopy extends WithPreservedArguments {
                    public WithArgumentCopy(TypeDescription typeDescription, MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, List<? extends TypeDescription> list4, boolean z) {
                        super(typeDescription, methodDescription, list, list2, list3, list4, z, true);
                    }

                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                    @SuppressFBWarnings(justification = "ASM models frames by reference identity.", value = {"RC_REF_COMPARISON_BAD_PRACTICE"})
                    public void translateFrame(MethodVisitor methodVisitor, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                        int i4;
                        Object[] objArr3;
                        int i5 = 1;
                        if (i != -1 && i != 0) {
                            if (i == 1) {
                                this.currentFrameDivergence += i2;
                            } else if (i == 2) {
                                this.currentFrameDivergence -= i2;
                            } else if (i != 3 && i != 4) {
                                throw new IllegalArgumentException("Unexpected frame type: " + i);
                            }
                            objArr3 = objArr;
                            i4 = i2;
                        } else {
                            int size = (!this.instrumentedMethod.isStatic()) + i2 + this.instrumentedMethod.getParameters().size() + this.initialTypes.size() + this.preMethodTypes.size();
                            Object[] objArr4 = new Object[size];
                            if (this.instrumentedMethod.isConstructor()) {
                                Initialization initialization = Initialization.INITIALIZED;
                                int i6 = 0;
                                while (true) {
                                    if (i6 >= i2) {
                                        break;
                                    } else if (objArr[i6] == Opcodes.UNINITIALIZED_THIS) {
                                        initialization = Initialization.UNITIALIZED;
                                        break;
                                    } else {
                                        i6++;
                                    }
                                }
                                objArr4[0] = initialization.toFrame(this.instrumentedType);
                            } else if (!this.instrumentedMethod.isStatic()) {
                                objArr4[0] = Initialization.INITIALIZED.toFrame(this.instrumentedType);
                            } else {
                                i5 = 0;
                            }
                            for (TypeDescription typeDescription : this.instrumentedMethod.getParameters().asTypeList().asErasures()) {
                                objArr4[i5] = Initialization.INITIALIZED.toFrame(typeDescription);
                                i5++;
                            }
                            for (TypeDescription typeDescription2 : this.initialTypes) {
                                objArr4[i5] = Initialization.INITIALIZED.toFrame(typeDescription2);
                                i5++;
                            }
                            for (TypeDescription typeDescription3 : this.preMethodTypes) {
                                objArr4[i5] = Initialization.INITIALIZED.toFrame(typeDescription3);
                                i5++;
                            }
                            if (i2 > 0) {
                                System.arraycopy(objArr, 0, objArr4, i5, i2);
                            }
                            this.currentFrameDivergence = size;
                            i4 = size;
                            objArr3 = objArr4;
                        }
                        methodVisitor.visitFrame(i, i4, objArr3, i3, objArr2);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:20:0x007d A[LOOP:0: B:18:0x0077->B:20:0x007d, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:37:0x00fd A[LOOP:1: B:35:0x00f7->B:37:0x00fd, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:41:0x011b A[LOOP:2: B:39:0x0115->B:41:0x011b, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:45:0x0139 A[LOOP:3: B:43:0x0133->B:45:0x0139, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:48:0x0153  */
                    /* JADX WARN: Removed duplicated region for block: B:50:0x015b  */
                    /* JADX WARN: Removed duplicated region for block: B:56:0x0188 A[LOOP:4: B:54:0x0182->B:56:0x0188, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:59:0x019e  */
                    /* JADX WARN: Removed duplicated region for block: B:60:0x01a1  */
                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void injectStartFrame(net.bytebuddy.jar.asm.MethodVisitor r11) {
                        /*
                            Method dump skipped, instructions count: 446
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.asm.Advice.StackMapFrameHandler.Default.WithPreservedArguments.WithArgumentCopy.injectStartFrame(net.bytebuddy.jar.asm.MethodVisitor):void");
                    }
                }

                /* loaded from: classes2.dex */
                public static class WithoutArgumentCopy extends WithPreservedArguments {
                    public WithoutArgumentCopy(TypeDescription typeDescription, MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, List<? extends TypeDescription> list4, boolean z, boolean z2) {
                        super(typeDescription, methodDescription, list, list2, list3, list4, z, z2);
                    }

                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                    public void injectStartFrame(MethodVisitor methodVisitor) {
                    }

                    @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                    public void translateFrame(MethodVisitor methodVisitor, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                        translateFrame(methodVisitor, TranslationMode.COPY, this.instrumentedMethod, CompoundList.m14776of((List) this.initialTypes, (List) this.preMethodTypes), i, i2, objArr, i3, objArr2);
                    }
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape) {
                    return new ForAdvice(inDefinedShape, CompoundList.m14775of(this.initialTypes, this.preMethodTypes, this.postMethodTypes), Collections.emptyList(), Collections.emptyList(), TranslationMode.EXIT, Initialization.INITIALIZED);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectCompletionFrame(MethodVisitor methodVisitor) {
                    if (this.allowCompactCompletionFrame && !this.expandFrames && this.currentFrameDivergence == 0 && this.postMethodTypes.size() < 4) {
                        if (this.postMethodTypes.isEmpty()) {
                            Object[] objArr = Default.EMPTY;
                            methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
                            return;
                        }
                        int size = this.postMethodTypes.size();
                        Object[] objArr2 = new Object[size];
                        int i = 0;
                        for (TypeDescription typeDescription : this.postMethodTypes) {
                            objArr2[i] = Initialization.INITIALIZED.toFrame(typeDescription);
                            i++;
                        }
                        Object[] objArr3 = Default.EMPTY;
                        methodVisitor.visitFrame(1, size, objArr2, objArr3.length, objArr3);
                        return;
                    }
                    injectFullFrame(methodVisitor, Initialization.INITIALIZED, CompoundList.m14775of(this.initialTypes, this.preMethodTypes, this.postMethodTypes), Collections.emptyList());
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectExceptionFrame(MethodVisitor methodVisitor) {
                    if (!this.expandFrames && this.currentFrameDivergence == 0) {
                        Object[] objArr = Default.EMPTY;
                        methodVisitor.visitFrame(4, objArr.length, objArr, 1, new Object[]{Type.getInternalName(Throwable.class)});
                        return;
                    }
                    injectFullFrame(methodVisitor, Initialization.INITIALIZED, CompoundList.m14776of((List) this.initialTypes, (List) this.preMethodTypes), Collections.singletonList(TypeDescription.THROWABLE));
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public void injectInitializationFrame(MethodVisitor methodVisitor) {
                    int i;
                    if (!this.initialTypes.isEmpty()) {
                        int i2 = 0;
                        if (!this.expandFrames && this.initialTypes.size() < 4) {
                            int size = this.initialTypes.size();
                            Object[] objArr = new Object[size];
                            for (TypeDescription typeDescription : this.initialTypes) {
                                objArr[i2] = Initialization.INITIALIZED.toFrame(typeDescription);
                                i2++;
                            }
                            Object[] objArr2 = Default.EMPTY;
                            methodVisitor.visitFrame(1, size, objArr, objArr2.length, objArr2);
                            return;
                        }
                        int i3 = 1;
                        int size2 = (!this.instrumentedMethod.isStatic()) + this.instrumentedMethod.getParameters().size() + this.initialTypes.size();
                        Object[] objArr3 = new Object[size2];
                        if (this.instrumentedMethod.isConstructor()) {
                            objArr3[0] = Opcodes.UNINITIALIZED_THIS;
                        } else if (!this.instrumentedMethod.isStatic()) {
                            objArr3[0] = Initialization.INITIALIZED.toFrame(this.instrumentedType);
                        } else {
                            i3 = 0;
                        }
                        for (TypeDescription typeDescription2 : this.instrumentedMethod.getParameters().asTypeList().asErasures()) {
                            objArr3[i3] = Initialization.INITIALIZED.toFrame(typeDescription2);
                            i3++;
                        }
                        for (TypeDescription typeDescription3 : this.initialTypes) {
                            objArr3[i3] = Initialization.INITIALIZED.toFrame(typeDescription3);
                            i3++;
                        }
                        if (this.expandFrames) {
                            i = -1;
                        } else {
                            i = 0;
                        }
                        Object[] objArr4 = Default.EMPTY;
                        methodVisitor.visitFrame(i, size2, objArr3, objArr4.length, objArr4);
                    }
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public void injectPostCompletionFrame(MethodVisitor methodVisitor) {
                    if (!this.expandFrames && this.currentFrameDivergence == 0) {
                        Object[] objArr = Default.EMPTY;
                        methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
                        return;
                    }
                    injectFullFrame(methodVisitor, Initialization.INITIALIZED, CompoundList.m14775of(this.initialTypes, this.preMethodTypes, this.postMethodTypes), Collections.emptyList());
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectReturnFrame(MethodVisitor methodVisitor) {
                    List<? extends TypeDescription> singletonList;
                    if (!this.expandFrames && this.currentFrameDivergence == 0) {
                        if (this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                            Object[] objArr = Default.EMPTY;
                            methodVisitor.visitFrame(3, objArr.length, objArr, objArr.length, objArr);
                            return;
                        }
                        Object[] objArr2 = Default.EMPTY;
                        methodVisitor.visitFrame(4, objArr2.length, objArr2, 1, new Object[]{Initialization.INITIALIZED.toFrame(this.instrumentedMethod.getReturnType().asErasure())});
                        return;
                    }
                    Initialization initialization = Initialization.INITIALIZED;
                    List<? extends TypeDescription> m14776of = CompoundList.m14776of((List) this.initialTypes, (List) this.preMethodTypes);
                    if (this.instrumentedMethod.getReturnType().represents(Void.TYPE)) {
                        singletonList = Collections.emptyList();
                    } else {
                        singletonList = Collections.singletonList(this.instrumentedMethod.getReturnType().asErasure());
                    }
                    injectFullFrame(methodVisitor, initialization, m14776of, singletonList);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.Default
                @SuppressFBWarnings(justification = "ASM models frames by reference identity.", value = {"RC_REF_COMPARISON_BAD_PRACTICE"})
                public void translateFrame(MethodVisitor methodVisitor, TranslationMode translationMode, MethodDescription methodDescription, List<? extends TypeDescription> list, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                    if (i == 0 && i2 > 0 && objArr[0] != Opcodes.UNINITIALIZED_THIS) {
                        this.allowCompactCompletionFrame = true;
                    }
                    super.translateFrame(methodVisitor, translationMode, methodDescription, list, i, i2, objArr, i3, objArr2);
                }

                public WithPreservedArguments(TypeDescription typeDescription, MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, List<? extends TypeDescription> list4, boolean z, boolean z2) {
                    super(typeDescription, methodDescription, list, list2, list3, list4, z);
                    this.allowCompactCompletionFrame = z2;
                }
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public ForAdvice bindEnter(MethodDescription.InDefinedShape inDefinedShape) {
                return new ForAdvice(inDefinedShape, this.initialTypes, this.latentTypes, this.preMethodTypes, TranslationMode.ENTER, this.instrumentedMethod.isConstructor() ? Initialization.UNITIALIZED : Initialization.INITIALIZED);
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public int getReaderHint() {
                return this.expandFrames ? 8 : 0;
            }

            public void translateFrame(MethodVisitor methodVisitor, TranslationMode translationMode, MethodDescription methodDescription, List<? extends TypeDescription> list, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                int i4;
                int i5;
                Object[] objArr3;
                int i6;
                if (i != -1 && i != 0) {
                    if (i == 1) {
                        this.currentFrameDivergence += i2;
                    } else if (i == 2) {
                        int i7 = this.currentFrameDivergence - i2;
                        this.currentFrameDivergence = i7;
                        if (i7 < 0) {
                            throw new IllegalStateException(methodDescription + " dropped " + Math.abs(this.currentFrameDivergence) + " implicit frames");
                        }
                    } else if (i != 3 && i != 4) {
                        throw new IllegalArgumentException("Unexpected frame type: " + i);
                    }
                    i5 = i2;
                    objArr3 = objArr;
                } else if (methodDescription.getParameters().size() + (!methodDescription.isStatic()) <= i2) {
                    if (methodDescription.isStatic()) {
                        i4 = 0;
                    } else if (!translationMode.isPossibleThisFrameValue(this.instrumentedType, this.instrumentedMethod, objArr[0])) {
                        throw new IllegalStateException(methodDescription + " is inconsistent for 'this' reference: " + objArr[0]);
                    } else {
                        i4 = 1;
                    }
                    for (int i8 = 0; i8 < methodDescription.getParameters().size(); i8++) {
                        if (!Initialization.INITIALIZED.toFrame(((ParameterDescription) methodDescription.getParameters().get(i8)).getType().asErasure()).equals(objArr[i8 + i4])) {
                            throw new IllegalStateException(methodDescription + " is inconsistent at " + i8 + ": " + objArr[i6]);
                        }
                    }
                    int size = ((i2 - (!methodDescription.isStatic())) - methodDescription.getParameters().size()) + (!this.instrumentedMethod.isStatic()) + this.instrumentedMethod.getParameters().size() + list.size();
                    Object[] objArr4 = new Object[size];
                    int copy = translationMode.copy(this.instrumentedType, this.instrumentedMethod, methodDescription, objArr, objArr4);
                    for (TypeDescription typeDescription : list) {
                        objArr4[copy] = Initialization.INITIALIZED.toFrame(typeDescription);
                        copy++;
                    }
                    int i9 = size - copy;
                    System.arraycopy(objArr, methodDescription.getParameters().size() + (!methodDescription.isStatic()), objArr4, copy, i9);
                    this.currentFrameDivergence = i9;
                    i5 = size;
                    objArr3 = objArr4;
                } else {
                    throw new IllegalStateException("Inconsistent frame length for " + methodDescription + ": " + i2);
                }
                methodVisitor.visitFrame(i, i5, objArr3, i3, objArr2);
            }

            /* loaded from: classes2.dex */
            public static class Trivial extends Default {
                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape) {
                    throw new IllegalStateException("Did not expect exit advice " + inDefinedShape + " for " + this.instrumentedMethod);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectCompletionFrame(MethodVisitor methodVisitor) {
                    throw new IllegalStateException("Did not expect completion frame for " + this.instrumentedMethod);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectExceptionFrame(MethodVisitor methodVisitor) {
                    throw new IllegalStateException("Did not expect exception frame for " + this.instrumentedMethod);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public void injectInitializationFrame(MethodVisitor methodVisitor) {
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public void injectPostCompletionFrame(MethodVisitor methodVisitor) {
                    throw new IllegalStateException("Did not expect post completion frame for " + this.instrumentedMethod);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void injectReturnFrame(MethodVisitor methodVisitor) {
                    throw new IllegalStateException("Did not expect return frame for " + this.instrumentedMethod);
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
                public void injectStartFrame(MethodVisitor methodVisitor) {
                }

                @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
                public void translateFrame(MethodVisitor methodVisitor, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
                    methodVisitor.visitFrame(i, i2, objArr, i3, objArr2);
                }

                public Trivial(TypeDescription typeDescription, MethodDescription methodDescription, List<? extends TypeDescription> list, boolean z) {
                    super(typeDescription, methodDescription, Collections.emptyList(), list, Collections.emptyList(), Collections.emptyList(), z);
                }
            }

            /* renamed from: of */
            public static ForInstrumentedMethod m15277of(TypeDescription typeDescription, MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, List<? extends TypeDescription> list4, boolean z, boolean z2, ClassFileVersion classFileVersion, int i, int i2) {
                boolean z3;
                boolean z4;
                if ((i & 2) == 0 && !classFileVersion.isLessThan(ClassFileVersion.JAVA_V6)) {
                    boolean z5 = false;
                    if (!z && list.isEmpty()) {
                        if ((i2 & 8) != 0) {
                            z5 = true;
                        }
                        return new Trivial(typeDescription, methodDescription, list2, z5);
                    } else if (z2) {
                        if ((i2 & 8) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        return new WithPreservedArguments.WithArgumentCopy(typeDescription, methodDescription, list, list2, list3, list4, z4);
                    } else {
                        if ((i2 & 8) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        return new WithPreservedArguments.WithoutArgumentCopy(typeDescription, methodDescription, list, list2, list3, list4, z3, !methodDescription.isConstructor());
                    }
                }
                return NoOp.INSTANCE;
            }

            public void injectFullFrame(MethodVisitor methodVisitor, Initialization initialization, List<? extends TypeDescription> list, List<? extends TypeDescription> list2) {
                int i;
                int i2 = 1;
                int size = this.instrumentedMethod.getParameters().size() + (!this.instrumentedMethod.isStatic()) + list.size();
                Object[] objArr = new Object[size];
                if (!this.instrumentedMethod.isStatic()) {
                    objArr[0] = initialization.toFrame(this.instrumentedType);
                } else {
                    i2 = 0;
                }
                for (TypeDescription typeDescription : this.instrumentedMethod.getParameters().asTypeList().asErasures()) {
                    objArr[i2] = Initialization.INITIALIZED.toFrame(typeDescription);
                    i2++;
                }
                for (TypeDescription typeDescription2 : list) {
                    objArr[i2] = Initialization.INITIALIZED.toFrame(typeDescription2);
                    i2++;
                }
                int size2 = list2.size();
                Object[] objArr2 = new Object[size2];
                int i3 = 0;
                for (TypeDescription typeDescription3 : list2) {
                    objArr2[i3] = Initialization.INITIALIZED.toFrame(typeDescription3);
                    i3++;
                }
                if (this.expandFrames) {
                    i = -1;
                } else {
                    i = 0;
                }
                methodVisitor.visitFrame(i, size, objArr, size2, objArr2);
                this.currentFrameDivergence = 0;
            }

            public Default(TypeDescription typeDescription, MethodDescription methodDescription, List<? extends TypeDescription> list, List<? extends TypeDescription> list2, List<? extends TypeDescription> list3, List<? extends TypeDescription> list4, boolean z) {
                this.instrumentedType = typeDescription;
                this.instrumentedMethod = methodDescription;
                this.initialTypes = list;
                this.latentTypes = list2;
                this.preMethodTypes = list3;
                this.postMethodTypes = list4;
                this.expandFrames = z;
            }
        }

        /* loaded from: classes2.dex */
        public interface ForAdvice extends StackMapFrameHandler, ForPostProcessor {
        }

        /* loaded from: classes2.dex */
        public interface ForInstrumentedMethod extends StackMapFrameHandler {
            ForAdvice bindEnter(MethodDescription.InDefinedShape inDefinedShape);

            ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape);

            int getReaderHint();

            void injectInitializationFrame(MethodVisitor methodVisitor);

            void injectPostCompletionFrame(MethodVisitor methodVisitor);

            void injectStartFrame(MethodVisitor methodVisitor);
        }

        /* loaded from: classes2.dex */
        public interface ForPostProcessor {
            void injectIntermediateFrame(MethodVisitor methodVisitor, List<? extends TypeDescription> list);
        }

        /* loaded from: classes2.dex */
        public enum NoOp implements ForInstrumentedMethod, ForAdvice {
            INSTANCE;

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public ForAdvice bindEnter(MethodDescription.InDefinedShape inDefinedShape) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public ForAdvice bindExit(MethodDescription.InDefinedShape inDefinedShape) {
                return this;
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public int getReaderHint() {
                return 4;
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
            public void injectCompletionFrame(MethodVisitor methodVisitor) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
            public void injectExceptionFrame(MethodVisitor methodVisitor) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public void injectInitializationFrame(MethodVisitor methodVisitor) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForPostProcessor
            public void injectIntermediateFrame(MethodVisitor methodVisitor, List<? extends TypeDescription> list) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public void injectPostCompletionFrame(MethodVisitor methodVisitor) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
            public void injectReturnFrame(MethodVisitor methodVisitor) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler.ForInstrumentedMethod
            public void injectStartFrame(MethodVisitor methodVisitor) {
            }

            @Override // net.bytebuddy.asm.Advice.StackMapFrameHandler
            public void translateFrame(MethodVisitor methodVisitor, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2) {
            }
        }

        void injectCompletionFrame(MethodVisitor methodVisitor);

        void injectExceptionFrame(MethodVisitor methodVisitor);

        void injectReturnFrame(MethodVisitor methodVisitor);

        void translateFrame(MethodVisitor methodVisitor, int i, int i2, @MaybeNull Object[] objArr, int i3, @MaybeNull Object[] objArr2);
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface StubValue {
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface This {
        boolean optional() default false;

        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.STATIC;
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Thrown {
        boolean readOnly() default true;

        Assigner.Typing typing() default Assigner.Typing.DYNAMIC;
    }

    @Target({ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Unused {
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class WithCustomMapping {
        private final Delegator delegator;
        private final Map<Class<? extends Annotation>, OffsetMapping.Factory<?>> offsetMappings;
        private final PostProcessor.Factory postProcessorFactory;

        public WithCustomMapping() {
            this(PostProcessor.NoOp.INSTANCE, Collections.emptyMap(), Delegator.ForStaticInvocation.INSTANCE);
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, Object obj) {
            return bind(OffsetMapping.ForStackManipulation.Factory.m15288of(cls, obj));
        }

        public <T extends Annotation> WithCustomMapping bindDynamic(Class<T> cls, Method method, Object... objArr) {
            return bindDynamic(cls, method, Arrays.asList(objArr));
        }

        public <T extends Annotation> WithCustomMapping bindLambda(Class<T> cls, Constructor<?> constructor, Class<?> cls2) {
            return bindLambda(cls, new MethodDescription.ForLoadedConstructor(constructor), TypeDescription.ForLoadedType.m15196of(cls2));
        }

        public <T extends Annotation> WithCustomMapping bindProperty(Class<T> cls, String str) {
            return bind(OffsetMapping.ForStackManipulation.OfAnnotationProperty.m15287of(cls, str));
        }

        public <T extends Annotation> WithCustomMapping bindSerialized(Class<T> cls, Serializable serializable) {
            return bindSerialized(cls, serializable, serializable.getClass());
        }

        public WithCustomMapping bootstrap(Constructor<?> constructor) {
            return bootstrap(new MethodDescription.ForLoadedConstructor(constructor));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                WithCustomMapping withCustomMapping = (WithCustomMapping) obj;
                return this.postProcessorFactory.equals(withCustomMapping.postProcessorFactory) && this.delegator.equals(withCustomMapping.delegator) && this.offsetMappings.equals(withCustomMapping.offsetMappings);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.postProcessorFactory.hashCode()) * 31) + this.delegator.hashCode()) * 31) + this.offsetMappings.hashCode();
        }

        /* renamed from: to */
        public Advice m15276to(Class<?> cls) {
            return m15273to(cls, ClassFileLocator.ForClassLoader.m15176of(cls.getClassLoader()));
        }

        public WithCustomMapping with(PostProcessor.Factory factory) {
            return new WithCustomMapping(new PostProcessor.Factory.Compound(this.postProcessorFactory, factory), this.offsetMappings, this.delegator);
        }

        public WithCustomMapping(PostProcessor.Factory factory, Map<Class<? extends Annotation>, OffsetMapping.Factory<?>> map, Delegator delegator) {
            this.postProcessorFactory = factory;
            this.offsetMappings = map;
            this.delegator = delegator;
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, Field field) {
            return bind((Class) cls, (FieldDescription) new FieldDescription.ForLoadedField(field));
        }

        public <T extends Annotation> WithCustomMapping bindDynamic(Class<T> cls, Method method, List<?> list) {
            return bindDynamic(cls, new MethodDescription.ForLoadedMethod(method), list);
        }

        public <T extends Annotation, S extends Serializable> WithCustomMapping bindSerialized(Class<T> cls, S s, Class<? super S> cls2) {
            return bind(OffsetMapping.ForSerializedValue.Factory.m15289of(cls, s, cls2));
        }

        public WithCustomMapping bootstrap(Method method) {
            return bootstrap(new MethodDescription.ForLoadedMethod(method));
        }

        /* renamed from: to */
        public Advice m15273to(Class<?> cls, ClassFileLocator classFileLocator) {
            return m15270to(TypeDescription.ForLoadedType.m15196of(cls), classFileLocator);
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, FieldDescription fieldDescription) {
            return bind(new OffsetMapping.ForField.Resolved.Factory(cls, fieldDescription));
        }

        public <T extends Annotation> WithCustomMapping bindDynamic(Class<T> cls, Constructor<?> constructor, Object... objArr) {
            return bindDynamic(cls, constructor, Arrays.asList(objArr));
        }

        public WithCustomMapping bootstrap(MethodDescription.InDefinedShape inDefinedShape) {
            return new WithCustomMapping(this.postProcessorFactory, this.offsetMappings, Delegator.ForDynamicInvocation.m15324of(inDefinedShape));
        }

        /* renamed from: to */
        public Advice m15270to(TypeDescription typeDescription, ClassFileLocator classFileLocator) {
            return Advice.m15330to(typeDescription, this.postProcessorFactory, classFileLocator, new ArrayList(this.offsetMappings.values()), this.delegator);
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, Method method, int i) {
            if (i >= 0) {
                if (method.getParameterTypes().length > i) {
                    return bind((Class) cls, (ParameterDescription) new MethodDescription.ForLoadedMethod(method).getParameters().get(i));
                }
                throw new IllegalArgumentException(method + " does not declare a parameter with index " + i);
            }
            throw new IllegalArgumentException("A parameter cannot be negative: " + i);
        }

        public <T extends Annotation> WithCustomMapping bindDynamic(Class<T> cls, Constructor<?> constructor, List<?> list) {
            return bindDynamic(cls, new MethodDescription.ForLoadedConstructor(constructor), list);
        }

        public <T extends Annotation> WithCustomMapping bindLambda(Class<T> cls, Constructor<?> constructor, Class<?> cls2, MethodGraph.Compiler compiler) {
            return bindLambda(cls, new MethodDescription.ForLoadedConstructor(constructor), TypeDescription.ForLoadedType.m15196of(cls2), compiler);
        }

        /* renamed from: to */
        public Advice m15275to(Class<?> cls, Class<?> cls2) {
            ClassLoader classLoader = cls.getClassLoader();
            ClassLoader classLoader2 = cls2.getClassLoader();
            return m15274to(cls, cls2, classLoader == classLoader2 ? ClassFileLocator.ForClassLoader.m15176of(classLoader) : new ClassFileLocator.Compound(ClassFileLocator.ForClassLoader.m15176of(classLoader), ClassFileLocator.ForClassLoader.m15176of(classLoader2)));
        }

        public <T extends Annotation> WithCustomMapping bindDynamic(Class<T> cls, MethodDescription.InDefinedShape inDefinedShape, Object... objArr) {
            return bindDynamic(cls, inDefinedShape, Arrays.asList(objArr));
        }

        public <T extends Annotation> WithCustomMapping bindDynamic(Class<T> cls, MethodDescription.InDefinedShape inDefinedShape, List<?> list) {
            List<JavaConstant> wrap = JavaConstant.Simple.wrap(list);
            if (inDefinedShape.isInvokeBootstrap(TypeList.Explicit.m15179of((List<? extends JavaConstant>) wrap))) {
                return bind(new OffsetMapping.ForStackManipulation.OfDynamicInvocation(cls, inDefinedShape, wrap));
            }
            throw new IllegalArgumentException("Not a valid bootstrap method " + inDefinedShape + " for " + wrap);
        }

        public <T extends Annotation> WithCustomMapping bindLambda(Class<T> cls, Method method, Class<?> cls2) {
            return bindLambda(cls, new MethodDescription.ForLoadedMethod(method), TypeDescription.ForLoadedType.m15196of(cls2));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, Constructor<?> constructor, int i) {
            if (i >= 0) {
                if (constructor.getParameterTypes().length > i) {
                    return bind((Class) cls, (ParameterDescription) new MethodDescription.ForLoadedConstructor(constructor).getParameters().get(i));
                }
                throw new IllegalArgumentException(constructor + " does not declare a parameter with index " + i);
            }
            throw new IllegalArgumentException("A parameter cannot be negative: " + i);
        }

        /* renamed from: to */
        public Advice m15274to(Class<?> cls, Class<?> cls2, ClassFileLocator classFileLocator) {
            return m15271to(TypeDescription.ForLoadedType.m15196of(cls), TypeDescription.ForLoadedType.m15196of(cls2), classFileLocator);
        }

        /* renamed from: to */
        public Advice m15272to(TypeDescription typeDescription, TypeDescription typeDescription2) {
            return m15271to(typeDescription, typeDescription2, ClassFileLocator.NoOp.INSTANCE);
        }

        public <T extends Annotation> WithCustomMapping bindLambda(Class<T> cls, Method method, Class<?> cls2, MethodGraph.Compiler compiler) {
            return bindLambda(cls, new MethodDescription.ForLoadedMethod(method), TypeDescription.ForLoadedType.m15196of(cls2), compiler);
        }

        /* renamed from: to */
        public Advice m15271to(TypeDescription typeDescription, TypeDescription typeDescription2, ClassFileLocator classFileLocator) {
            return Advice.m15328to(typeDescription, typeDescription2, this.postProcessorFactory, classFileLocator, new ArrayList(this.offsetMappings.values()), this.delegator);
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, ParameterDescription parameterDescription) {
            return bind(new OffsetMapping.ForArgument.Resolved.Factory(cls, parameterDescription));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, Class<?> cls2) {
            return bind((Class) cls, TypeDescription.ForLoadedType.m15196of(cls2));
        }

        public <T extends Annotation> WithCustomMapping bindLambda(Class<T> cls, MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription) {
            return bindLambda(cls, inDefinedShape, typeDescription, MethodGraph.Compiler.DEFAULT);
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, TypeDescription typeDescription) {
            return bind(new OffsetMapping.ForStackManipulation.Factory(cls, typeDescription));
        }

        public <T extends Annotation> WithCustomMapping bindLambda(Class<T> cls, MethodDescription.InDefinedShape inDefinedShape, TypeDescription typeDescription, MethodGraph.Compiler compiler) {
            if (typeDescription.isInterface()) {
                MethodList filter = compiler.compile((TypeDefinition) typeDescription).listNodes().asMethodList().filter(ElementMatchers.isAbstract());
                if (filter.size() == 1) {
                    TypeDescription.Latent latent = new TypeDescription.Latent("java.lang.invoke.LambdaMetafactory", 1, TypeDescription.Generic.OBJECT, new TypeDescription.Generic[0]);
                    List emptyList = Collections.emptyList();
                    TypeDescription.Generic asGenericType = JavaType.CALL_SITE.getTypeStub().asGenericType();
                    JavaType javaType = JavaType.METHOD_TYPE;
                    return bindDynamic(cls, new MethodDescription.Latent(latent, "metafactory", 9, emptyList, asGenericType, Arrays.asList(new ParameterDescription.Token(JavaType.METHOD_HANDLES_LOOKUP.getTypeStub().asGenericType()), new ParameterDescription.Token(TypeDescription.STRING.asGenericType()), new ParameterDescription.Token(javaType.getTypeStub().asGenericType()), new ParameterDescription.Token(javaType.getTypeStub().asGenericType()), new ParameterDescription.Token(JavaType.METHOD_HANDLE.getTypeStub().asGenericType()), new ParameterDescription.Token(javaType.getTypeStub().asGenericType())), Collections.emptyList(), Collections.emptyList(), AnnotationValue.UNDEFINED, TypeDescription.Generic.UNDEFINED), JavaConstant.MethodType.m14765of((MethodDescription) filter.asDefined().getOnly()), JavaConstant.MethodHandle.m14771of(inDefinedShape), JavaConstant.MethodType.m14765of((MethodDescription) filter.asDefined().getOnly()));
                }
                throw new IllegalArgumentException(typeDescription + " does not define exactly one abstract method: " + filter);
            }
            throw new IllegalArgumentException(typeDescription + " is not an interface type");
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, Enum<?> r3) {
            return bind((Class) cls, (EnumerationDescription) new EnumerationDescription.ForLoadedEnumeration(r3));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, EnumerationDescription enumerationDescription) {
            return bind(new OffsetMapping.ForStackManipulation.Factory(cls, enumerationDescription));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, JavaConstant javaConstant) {
            return bind(new OffsetMapping.ForStackManipulation.Factory(cls, new JavaConstantValue(javaConstant), javaConstant.getTypeDescription().asGenericType()));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, StackManipulation stackManipulation, java.lang.reflect.Type type) {
            return bind(cls, stackManipulation, TypeDefinition.Sort.describe(type));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, StackManipulation stackManipulation, TypeDescription.Generic generic) {
            return bind(new OffsetMapping.ForStackManipulation.Factory(cls, stackManipulation, generic));
        }

        public <T extends Annotation> WithCustomMapping bind(Class<T> cls, OffsetMapping offsetMapping) {
            return bind(new OffsetMapping.Factory.Simple(cls, offsetMapping));
        }

        public WithCustomMapping bind(OffsetMapping.Factory<?> factory) {
            HashMap hashMap = new HashMap(this.offsetMappings);
            if (factory.getAnnotationType().isAnnotation()) {
                if (hashMap.put(factory.getAnnotationType(), factory) == null) {
                    return new WithCustomMapping(this.postProcessorFactory, hashMap, this.delegator);
                }
                throw new IllegalArgumentException("Annotation type already mapped: " + factory.getAnnotationType());
            }
            throw new IllegalArgumentException("Not an annotation type: " + factory.getAnnotationType());
        }
    }

    public Advice(Dispatcher.Resolved.ForMethodEnter forMethodEnter, Dispatcher.Resolved.ForMethodExit forMethodExit) {
        this(forMethodEnter, forMethodExit, Assigner.DEFAULT, ExceptionHandler.Default.SUPPRESSING, SuperMethodCall.INSTANCE);
    }

    /* renamed from: to */
    public static Advice m15335to(Class<?> cls) {
        return m15332to(cls, ClassFileLocator.ForClassLoader.m15176of(cls.getClassLoader()));
    }

    public static WithCustomMapping withCustomMapping() {
        return new WithCustomMapping();
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        return new Appender(this, target, this.delegate.appender(target));
    }

    public MethodVisitor doWrap(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, int i, int i2) {
        LineNumberPrependingMethodVisitor lineNumberPrependingMethodVisitor;
        if (this.methodEnter.isPrependLineNumber()) {
            lineNumberPrependingMethodVisitor = new LineNumberPrependingMethodVisitor(methodVisitor);
        } else {
            lineNumberPrependingMethodVisitor = methodVisitor;
        }
        if (!this.methodExit.isAlive()) {
            return new AdviceVisitor.WithoutExitAdvice(lineNumberPrependingMethodVisitor, context, this.assigner, this.exceptionHandler.resolve(methodDescription, typeDescription), typeDescription, methodDescription, this.methodEnter, i, i2);
        }
        if (this.methodExit.getThrowable().represents(NoExceptionHandler.class)) {
            return new AdviceVisitor.WithExitAdvice.WithoutExceptionHandling(lineNumberPrependingMethodVisitor, context, this.assigner, this.exceptionHandler.resolve(methodDescription, typeDescription), typeDescription, methodDescription, this.methodEnter, this.methodExit, i, i2);
        }
        if (!methodDescription.isConstructor()) {
            Assigner assigner = this.assigner;
            StackManipulation resolve = this.exceptionHandler.resolve(methodDescription, typeDescription);
            Dispatcher.Resolved.ForMethodEnter forMethodEnter = this.methodEnter;
            Dispatcher.Resolved.ForMethodExit forMethodExit = this.methodExit;
            return new AdviceVisitor.WithExitAdvice.WithExceptionHandling(lineNumberPrependingMethodVisitor, context, assigner, resolve, typeDescription, methodDescription, forMethodEnter, forMethodExit, i, i2, forMethodExit.getThrowable());
        }
        throw new IllegalStateException("Cannot catch exception during constructor call for " + methodDescription);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Advice advice = (Advice) obj;
            return this.methodEnter.equals(advice.methodEnter) && this.methodExit.equals(advice.methodExit) && this.assigner.equals(advice.assigner) && this.exceptionHandler.equals(advice.exceptionHandler) && this.delegate.equals(advice.delegate);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((getClass().hashCode() * 31) + this.methodEnter.hashCode()) * 31) + this.methodExit.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.exceptionHandler.hashCode()) * 31) + this.delegate.hashCode();
    }

    /* renamed from: on */
    public AsmVisitorWrapper.ForDeclaredMethods m15336on(ElementMatcher<? super MethodDescription> elementMatcher) {
        return new AsmVisitorWrapper.ForDeclaredMethods().invokable(elementMatcher, this);
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return this.delegate.prepare(instrumentedType);
    }

    public Advice withAssigner(Assigner assigner) {
        return new Advice(this.methodEnter, this.methodExit, assigner, this.exceptionHandler, this.delegate);
    }

    public Advice withExceptionHandler(StackManipulation stackManipulation) {
        return withExceptionHandler(new ExceptionHandler.Simple(stackManipulation));
    }

    public Advice withExceptionPrinting() {
        return withExceptionHandler(ExceptionHandler.Default.PRINTING);
    }

    @Override // net.bytebuddy.asm.AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper
    public MethodVisitor wrap(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, TypePool typePool, int i, int i2) {
        return (methodDescription.isAbstract() || methodDescription.isNative()) ? methodVisitor : doWrap(typeDescription, methodDescription, methodVisitor, context, i, i2);
    }

    /* loaded from: classes2.dex */
    public static class NoExceptionHandler extends Throwable {
        private static final TypeDescription DESCRIPTION = TypeDescription.ForLoadedType.m15196of(NoExceptionHandler.class);
        private static final long serialVersionUID = 1;

        private NoExceptionHandler() {
            throw new UnsupportedOperationException("This class only serves as a marker type and should not be instantiated");
        }
    }

    /* loaded from: classes2.dex */
    public static final class OnDefaultValue {
        private OnDefaultValue() {
            throw new UnsupportedOperationException("This class only serves as a marker type and should not be instantiated");
        }
    }

    /* loaded from: classes2.dex */
    public static final class OnNonDefaultValue {
        private OnNonDefaultValue() {
            throw new UnsupportedOperationException("This class only serves as a marker type and should not be instantiated");
        }
    }

    static {
        MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(OnMethodEnter.class).getDeclaredMethods();
        SKIP_ON = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("skipOn")).getOnly();
        PREPEND_LINE_NUMBER = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("prependLineNumber")).getOnly();
        INLINE_ENTER = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("inline")).getOnly();
        SUPPRESS_ENTER = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("suppress")).getOnly();
        MethodList<MethodDescription.InDefinedShape> declaredMethods2 = TypeDescription.ForLoadedType.m15196of(OnMethodExit.class).getDeclaredMethods();
        REPEAT_ON = (MethodDescription.InDefinedShape) declaredMethods2.filter(ElementMatchers.named("repeatOn")).getOnly();
        ON_THROWABLE = (MethodDescription.InDefinedShape) declaredMethods2.filter(ElementMatchers.named("onThrowable")).getOnly();
        BACKUP_ARGUMENTS = (MethodDescription.InDefinedShape) declaredMethods2.filter(ElementMatchers.named("backupArguments")).getOnly();
        INLINE_EXIT = (MethodDescription.InDefinedShape) declaredMethods2.filter(ElementMatchers.named("inline")).getOnly();
        SUPPRESS_EXIT = (MethodDescription.InDefinedShape) declaredMethods2.filter(ElementMatchers.named("suppress")).getOnly();
    }

    private Advice(Dispatcher.Resolved.ForMethodEnter forMethodEnter, Dispatcher.Resolved.ForMethodExit forMethodExit, Assigner assigner, ExceptionHandler exceptionHandler, Implementation implementation) {
        this.methodEnter = forMethodEnter;
        this.methodExit = forMethodExit;
        this.assigner = assigner;
        this.exceptionHandler = exceptionHandler;
        this.delegate = implementation;
    }

    /* renamed from: to */
    public static Advice m15332to(Class<?> cls, ClassFileLocator classFileLocator) {
        return m15326to(TypeDescription.ForLoadedType.m15196of(cls), classFileLocator);
    }

    public Advice withExceptionHandler(ExceptionHandler exceptionHandler) {
        return new Advice(this.methodEnter, this.methodExit, this.assigner, exceptionHandler, this.delegate);
    }

    private static Dispatcher.Unresolved locate(Class<? extends Annotation> cls, MethodDescription.InDefinedShape inDefinedShape, Dispatcher.Unresolved unresolved, MethodDescription.InDefinedShape inDefinedShape2, Delegator delegator) {
        AnnotationDescription.Loadable ofType = inDefinedShape2.getDeclaredAnnotations().ofType(cls);
        if (ofType == null) {
            return unresolved;
        }
        if (!unresolved.isAlive()) {
            if (inDefinedShape2.isStatic()) {
                if (((Boolean) ofType.getValue(inDefinedShape).resolve(Boolean.class)).booleanValue()) {
                    return new Dispatcher.Inlining(inDefinedShape2);
                }
                return new Dispatcher.Delegating(inDefinedShape2, delegator);
            }
            throw new IllegalStateException("Advice for " + inDefinedShape2 + " is not static");
        }
        throw new IllegalStateException("Duplicate advice for " + unresolved + " and " + inDefinedShape2);
    }

    /* renamed from: to */
    public static Advice m15331to(TypeDescription typeDescription) {
        return m15326to(typeDescription, ClassFileLocator.NoOp.INSTANCE);
    }

    public Implementation wrap(Implementation implementation) {
        return new Advice(this.methodEnter, this.methodExit, this.assigner, this.exceptionHandler, implementation);
    }

    /* renamed from: to */
    public static Advice m15326to(TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        return m15330to(typeDescription, PostProcessor.NoOp.INSTANCE, classFileLocator, Collections.emptyList(), Delegator.ForStaticInvocation.INSTANCE);
    }

    /* renamed from: to */
    public static Advice m15330to(TypeDescription typeDescription, PostProcessor.Factory factory, ClassFileLocator classFileLocator, List<? extends OffsetMapping.Factory<?>> list, Delegator delegator) {
        ClassReader m14758of;
        Dispatcher.Unresolved unresolved = Dispatcher.Inactive.INSTANCE;
        Dispatcher.Unresolved unresolved2 = unresolved;
        for (MethodDescription.InDefinedShape inDefinedShape : typeDescription.getDeclaredMethods()) {
            unresolved = locate(OnMethodEnter.class, INLINE_ENTER, unresolved, inDefinedShape, delegator);
            unresolved2 = locate(OnMethodExit.class, INLINE_EXIT, unresolved2, inDefinedShape, delegator);
        }
        if (!unresolved.isAlive() && !unresolved2.isAlive()) {
            throw new IllegalArgumentException("No advice defined by " + typeDescription);
        }
        try {
            if (!unresolved.isBinary() && !unresolved2.isBinary()) {
                m14758of = UNDEFINED;
                return new Advice(unresolved.asMethodEnter(list, m14758of, unresolved2, factory), unresolved2.asMethodExit(list, m14758of, unresolved, factory));
            }
            m14758of = OpenedClassReader.m14758of(classFileLocator.locate(typeDescription.getName()).resolve());
            return new Advice(unresolved.asMethodEnter(list, m14758of, unresolved2, factory), unresolved2.asMethodExit(list, m14758of, unresolved, factory));
        } catch (IOException e) {
            throw new IllegalStateException("Error reading class file of " + typeDescription, e);
        }
    }

    /* renamed from: to */
    public static Advice m15334to(Class<?> cls, Class<?> cls2) {
        ClassLoader classLoader = cls.getClassLoader();
        ClassLoader classLoader2 = cls2.getClassLoader();
        return m15333to(cls, cls2, classLoader == classLoader2 ? ClassFileLocator.ForClassLoader.m15176of(classLoader) : new ClassFileLocator.Compound(ClassFileLocator.ForClassLoader.m15176of(classLoader), ClassFileLocator.ForClassLoader.m15176of(classLoader2)));
    }

    /* renamed from: to */
    public static Advice m15333to(Class<?> cls, Class<?> cls2, ClassFileLocator classFileLocator) {
        return m15327to(TypeDescription.ForLoadedType.m15196of(cls), TypeDescription.ForLoadedType.m15196of(cls2), classFileLocator);
    }

    /* renamed from: to */
    public static Advice m15329to(TypeDescription typeDescription, TypeDescription typeDescription2) {
        return m15327to(typeDescription, typeDescription2, ClassFileLocator.NoOp.INSTANCE);
    }

    /* renamed from: to */
    public static Advice m15327to(TypeDescription typeDescription, TypeDescription typeDescription2, ClassFileLocator classFileLocator) {
        return m15328to(typeDescription, typeDescription2, PostProcessor.NoOp.INSTANCE, classFileLocator, Collections.emptyList(), Delegator.ForStaticInvocation.INSTANCE);
    }

    /* renamed from: to */
    public static Advice m15328to(TypeDescription typeDescription, TypeDescription typeDescription2, PostProcessor.Factory factory, ClassFileLocator classFileLocator, List<? extends OffsetMapping.Factory<?>> list, Delegator delegator) {
        Dispatcher.Unresolved unresolved = Dispatcher.Inactive.INSTANCE;
        Dispatcher.Unresolved unresolved2 = unresolved;
        for (MethodDescription.InDefinedShape inDefinedShape : typeDescription.getDeclaredMethods()) {
            unresolved2 = locate(OnMethodEnter.class, INLINE_ENTER, unresolved2, inDefinedShape, delegator);
        }
        if (unresolved2.isAlive()) {
            for (MethodDescription.InDefinedShape inDefinedShape2 : typeDescription2.getDeclaredMethods()) {
                unresolved = locate(OnMethodExit.class, INLINE_EXIT, unresolved, inDefinedShape2, delegator);
            }
            if (unresolved.isAlive()) {
                try {
                    return new Advice(unresolved2.asMethodEnter(list, unresolved2.isBinary() ? OpenedClassReader.m14758of(classFileLocator.locate(typeDescription.getName()).resolve()) : UNDEFINED, unresolved, factory), unresolved.asMethodExit(list, unresolved.isBinary() ? OpenedClassReader.m14758of(classFileLocator.locate(typeDescription2.getName()).resolve()) : UNDEFINED, unresolved2, factory));
                } catch (IOException e) {
                    throw new IllegalStateException("Error reading class file of " + typeDescription + " or " + typeDescription2, e);
                }
            }
            throw new IllegalArgumentException("No exit advice defined by " + typeDescription2);
        }
        throw new IllegalArgumentException("No enter advice defined by " + typeDescription);
    }
}
