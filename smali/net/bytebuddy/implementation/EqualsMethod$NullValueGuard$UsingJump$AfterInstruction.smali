.class public Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AfterInstruction"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-static {v0}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->d(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {p1, v1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-static {v0}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->b(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v0

    array-length v4, v0

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->f()[Ljava/lang/Object;

    move-result-object v0

    array-length v6, v0

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->f()[Ljava/lang/Object;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xc6

    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-static {v2}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->d(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-static {v0}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->c(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v0

    array-length v4, v0

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v0

    array-length v6, v0

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-static {v0}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->d(Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;)Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object p2

    invoke-virtual {p2, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x3

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object p2

    array-length v2, p2

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object p2

    array-length v4, p2

    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->e()[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_2
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    check-cast p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump$AfterInstruction;->a:Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard$UsingJump;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
