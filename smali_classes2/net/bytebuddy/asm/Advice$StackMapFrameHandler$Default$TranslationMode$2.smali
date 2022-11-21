.class final enum Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode$2;
.super Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$TranslationMode;-><init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V

    return-void
.end method


# virtual methods
.method public copy(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    invoke-interface {p2}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p3, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {p3, p1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    aput-object p1, p5, p4

    const/4 p4, 0x1

    :cond_1
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/type/TypeDescription;

    add-int/lit8 p3, p4, 0x1

    sget-object v0, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p5, p4

    move p4, p3

    goto :goto_1

    :cond_2
    return p4
.end method

.method public isPossibleThisFrameValue(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lnet/bytebuddy/jar/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    invoke-virtual {p1, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p2, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->INITIALIZED:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;

    invoke-virtual {p2, p1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default$Initialization;->toFrame(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
