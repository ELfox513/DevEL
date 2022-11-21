.class public Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffsetIncrementing"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final offset:I

.field private final value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->offset:I

    iput p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->value:I

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->offset:I

    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->value:I

    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    sget-object p1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->offset:I

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;

    iget v3, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->offset:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->value:I

    iget p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->value:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetIncrementing;->value:I

    add-int/2addr v0, v1

    return v0
.end method
