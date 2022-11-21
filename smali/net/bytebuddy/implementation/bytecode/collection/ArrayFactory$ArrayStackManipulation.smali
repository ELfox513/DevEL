.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayStackManipulation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

.field private final stackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->a(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/16 v4, 0x59

    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    invoke-interface {v3, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->a(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;->getStorageOpcode()I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->b(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->a:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->a(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
