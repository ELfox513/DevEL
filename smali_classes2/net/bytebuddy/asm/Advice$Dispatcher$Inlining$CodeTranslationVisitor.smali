.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeTranslationVisitor"
.end annotation


# instance fields
.field public final adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field public final argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field public final endOfMethod:Lnet/bytebuddy/jar/asm/Label;

.field private final exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final exit:Z

.field public final implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field public final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

.field public final methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

.field private final offsetMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;",
            ">;"
        }
    .end annotation
.end field

.field private final postProcessor:Lnet/bytebuddy/asm/Advice$PostProcessor;

.field private final relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

.field public final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

.field private final suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$PostProcessor;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;",
            "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p7

    sget v3, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-static {p1, p7}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->of(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-object v1, p2

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    move-object v1, p3

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    move-object v1, p4

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    move-object v1, p5

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    move-object v1, p6

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object v2, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    move-object v1, p8

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v1, p9

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-object v1, p10

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->offsetMappings:Ljava/util/Map;

    move-object/from16 v1, p11

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    move-object/from16 v1, p12

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    move-object/from16 v1, p13

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-object/from16 v1, p14

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->postProcessor:Lnet/bytebuddy/asm/Advice$PostProcessor;

    move/from16 v1, p15

    iput-boolean v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    new-instance v1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v1, v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    return-void
.end method


# virtual methods
.method public propagateHandler(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    sget-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->register(Lnet/bytebuddy/jar/asm/Label;Ljava/util/List;)V

    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 0

    return-void
.end method

.method public visitCode()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onStart(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public visitEnd()V
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->suppressionHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v5}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice$Dispatcher$SuppressionHandler$Bound;->onEnd(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;Lnet/bytebuddy/description/type/TypeDefinition;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x37

    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x38

    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x39

    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x3a

    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v2

    :goto_3
    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_6

    :cond_8
    :goto_4
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v1, 0x36

    iget-boolean v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v2

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v2

    :goto_5
    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_a
    :goto_6
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->postProcessor:Lnet/bytebuddy/asm/Advice$PostProcessor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    iget-object v6, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v7, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface/range {v1 .. v7}, Lnet/bytebuddy/asm/Advice$PostProcessor;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireStackSize(I)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->relocationHandler:Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-boolean v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->exit:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->exit()I

    move-result v3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler;->enter()I

    move-result v3

    :goto_7
    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Bound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;I)I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireStackSize(I)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodVisitor:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->offsetMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    invoke-interface {v0, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;->resolveIncrement(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {p2, v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p2

    invoke-interface {p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireStackSizePadding(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->mapped(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    :goto_0
    return-void
.end method

.method public visitInsn(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast p1, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x3a

    const/16 v2, 0x19

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireLocalVariableLength(I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x39

    const/16 v2, 0x18

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireLocalVariableLength(I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x38

    const/16 v2, 0x17

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireLocalVariableLength(I)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x37

    const/16 v2, 0x16

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireLocalVariableLength(I)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    check-cast v0, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;

    const/16 v1, 0x36

    const/16 v2, 0x15

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0, v1, v2, v3}, Lnet/bytebuddy/utility/visitor/StackAwareMethodVisitor;->drainStack(IILnet/bytebuddy/implementation/bytecode/StackSize;)I

    move-result v0

    invoke-interface {p1, v0}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler;->requireLocalVariableLength(I)V

    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    const/16 v0, 0xa7

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->endOfMethod:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p1, v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMaxs(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->recordMaxima(II)V

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 0
    .param p2    # Lnet/bytebuddy/jar/asm/TypePath;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    sget-object p1, Lnet/bytebuddy/asm/Advice$Dispatcher;->IGNORE_ANNOTATION:Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    return-object p1
.end method

.method public visitVarInsn(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->offsetMappings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;->resolveWrite()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    :pswitch_1
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;->resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    :pswitch_2
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Target;->resolveRead()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->implementationContext:Lnet/bytebuddy/implementation/Implementation$Context;

    invoke-interface {p1, v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-interface {v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;->requireStackSizePadding(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$CodeTranslationVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;

    invoke-interface {v1, p2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForAdvice;->mapped(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
