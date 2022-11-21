.class public Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final constant:Lnet/bytebuddy/utility/JavaConstant;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/utility/JavaConstant;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->constant:Lnet/bytebuddy/utility/JavaConstant;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->constant:Lnet/bytebuddy/utility/JavaConstant;

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-interface {p2, v0}, Lnet/bytebuddy/utility/JavaConstant;->accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->constant:Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {p1}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->constant:Lnet/bytebuddy/utility/JavaConstant;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->constant:Lnet/bytebuddy/utility/JavaConstant;

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;->constant:Lnet/bytebuddy/utility/JavaConstant;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
