.class public abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForMethodEnter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithDiscardedEnterType;,
        Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithRetainedEnterType;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final namedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final prependLineNumber:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            ")V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming annotation for exit advice."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForArgument$Unresolved$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForAllArguments$Factory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForField$Unresolved$Factory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStubValue;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForStubValue;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p5}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForExitValue$Factory;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;

    move-result-object p5

    const/16 v1, 0x8

    aput-object p5, v0, v1

    new-instance p5, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue$Factory;

    invoke-direct {p5, p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForLocalValue$Factory;-><init>(Ljava/util/Map;)V

    const/16 v1, 0x9

    aput-object p5, v0, v1

    new-instance p5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v1, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-direct {p5, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0xa

    aput-object p5, v0, v1

    new-instance p5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v1, Lnet/bytebuddy/asm/Advice$Enter;

    invoke-direct {p5, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0xb

    aput-object p5, v0, v1

    new-instance p5, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v1, Lnet/bytebuddy/asm/Advice$Return;

    invoke-direct {p5, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    const/16 v1, 0xc

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-static {p5, p4}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p4

    const-class p5, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p4, p5}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p4

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->b()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p5

    invoke-interface {p4, p5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p4

    const-class p5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p4, p5}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p4

    const-class p5, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p4, p5}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p4

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->c()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p5

    invoke-interface {p4, p5}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p4

    const-class p5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p4, p5}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassReader;)V

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationSource;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p1

    const-class p2, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p1

    invoke-static {}, Lnet/bytebuddy/asm/Advice;->d()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p1

    const-class p2, Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;Z)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Z)",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
        }
    .end annotation

    if-eqz p6, :cond_0

    new-instance p6, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithRetainedEnterType;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithRetainedEnterType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;)V

    goto :goto_0

    :cond_0
    new-instance p6, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithDiscardedEnterType;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter$WithDiscardedEnterType;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$PostProcessor;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/jar/asm/ClassReader;)V

    :goto_0
    return-object p6
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 13

    move-object v12, p0

    iget-object v0, v12, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->bindEnter(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    move-result-object v4

    iget-object v0, v12, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    move-result-object v5

    iget-object v0, v12, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->doApply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 16

    move-object/from16 v14, p0

    new-instance v15, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;

    iget-object v0, v14, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;

    move-object/from16 v12, p9

    invoke-interface {v0, v12}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler;->bind(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    move-result-object v10

    iget-object v0, v14, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;

    move-object/from16 v3, p2

    move-object/from16 v1, p10

    invoke-interface {v0, v3, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler;->bind(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    move-result-object v11

    iget-object v13, v14, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;->classReader:Lnet/bytebuddy/jar/asm/ClassReader;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$AdviceMethodInliner;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/jar/asm/ClassReader;)V

    return-object v15
.end method

.method public doApply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 18

    move-object/from16 v0, p0

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->offsetMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lnet/bytebuddy/asm/Advice$OffsetMapping;

    sget-object v9, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->ENTER:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface/range {v4 .. v9}, Lnet/bytebuddy/asm/Advice$OffsetMapping;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    move-result-object v2

    invoke-interface {v11, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v17, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object v15, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->postProcessor:Lnet/bytebuddy/asm/Advice$PostProcessor;

    const/16 v16, 0x0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p3

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v1 .. v16}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$PostProcessor;Z)V

    return-object v17
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    check-cast p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getActualAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getNamedTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$AbstractBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isPrependLineNumber()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->prependLineNumber:Z

    return v0
.end method

.method public resolveInitializationTypes(Lnet/bytebuddy/asm/Advice$ArgumentHandler;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodEnter;->namedTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->named(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
