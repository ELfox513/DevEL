.class public abstract Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;
.super Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithPreservedArguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$WithArgumentCopy;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments$WithoutArgumentCopy;
    }
.end annotation


# instance fields
.field public allowCompactCompletionFrame:Z


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    iput-boolean p8, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->allowCompactCompletionFrame:Z

    return-void
.end method


# virtual methods
.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForAdvice;
    .locals 9

    new-instance v8, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;->EXIT:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;

    sget-object v7, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;)V

    return-object v8
.end method

.method public injectCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->allowCompactCompletionFrame:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v6

    array-length v5, v6

    move-object v1, p1

    move-object v4, v6

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {v6, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v0

    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v5, v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public injectExceptionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_0

    const/4 v2, 0x4

    sget-object v4, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v4

    const/4 v5, 0x1

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public injectInitializationFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 10

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v3, v1, 0x1

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {v6, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    sget-object v7, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v6, v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int v6, v0, v3

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    aput-object v0, v7, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {v5, v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v2

    move v2, v4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {v5, v3}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v7, v2

    move v2, v4

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    const/4 v5, -0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    sget-object v9, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v8, v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public injectPostCompletionFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 7

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_0

    const/4 v2, 0x3

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v6

    array-length v5, v6

    move-object v1, p1

    move-object v4, v6

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public injectReturnFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 13

    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->expandFrames:Z

    if-nez v0, :cond_1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->currentFrameDivergence:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    sget-object v6, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v3, v6

    array-length v5, v6

    move-object v1, p1

    move-object v4, v6

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v8, 0x4

    sget-object v10, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->EMPTY:[Ljava/lang/Object;

    array-length v9, v10

    const/4 v11, 0x1

    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v1, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v12, v0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->initialTypes:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->preMethodTypes:Ljava/util/List;

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->injectFullFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;Ljava/util/List;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 2
    .param p7    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p9    # [Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;II[",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "ASM models frames by reference identity."
        value = {
            "RC_REF_COMPARISON_BAD_PRACTICE"
        }
    .end annotation

    if-nez p5, :cond_0

    if-lez p6, :cond_0

    const/4 v0, 0x0

    aget-object v0, p7, v0

    sget-object v1, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$WithPreservedArguments;->allowCompactCompletionFrame:Z

    :cond_0
    invoke-super/range {p0 .. p9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void
.end method
