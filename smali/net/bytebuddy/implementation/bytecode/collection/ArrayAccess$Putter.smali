.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Putter"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->f(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->d(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    invoke-virtual {p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Putter;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
