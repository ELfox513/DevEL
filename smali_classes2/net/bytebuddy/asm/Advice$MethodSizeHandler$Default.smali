.class public abstract Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;,
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;,
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;
    }
.end annotation


# instance fields
.field public final initialTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field public localVariableLength:I

.field public final postMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final preMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field public stackSize:I


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->initialTypes:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->preMethodTypes:Ljava/util/List;

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->postMethodTypes:Ljava/util/List;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZI)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;
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
            ">;ZI)",
            "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;"
        }
    .end annotation

    and-int/lit8 p5, p5, 0x3

    if-eqz p5, :cond_0

    sget-object p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    new-instance p4, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;

    invoke-direct {p4, p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithCopiedArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p4

    :cond_1
    new-instance p4, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;

    invoke-direct {p4, p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$WithRetainedArguments;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p4
.end method


# virtual methods
.method public bindEnter(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 3

    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->initialTypes:Ljava/util/List;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;I)V

    return-object v0
.end method

.method public compoundLocalVariableLength(I)I
    .locals 2

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

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

.method public compoundStackSize(I)I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public requireLocalVariableLength(I)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    return-void
.end method

.method public requireStackSize(I)V
    .locals 1

    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    return-void
.end method
