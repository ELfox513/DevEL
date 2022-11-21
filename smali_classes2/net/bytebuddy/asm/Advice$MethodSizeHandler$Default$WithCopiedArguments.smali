.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;
.super Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithCopiedArguments"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->initialTypes:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->preMethodTypes:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;I)V

    return-object v0
.end method

.method public compoundLocalVariableLength(I)I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->postMethodTypes:Ljava/util/List;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->initialTypes:Ljava/util/List;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->preMethodTypes:Ljava/util/List;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
