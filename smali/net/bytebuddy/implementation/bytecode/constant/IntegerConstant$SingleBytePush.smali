.class public Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBytePush"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final value:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-byte p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    iget-byte p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->c()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-byte v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;

    iget-byte p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant$SingleBytePush;->value:B

    add-int/2addr v0, v1

    return v0
.end method
