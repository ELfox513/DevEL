.class public Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WideningStackManipulation"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final conversionOpcode:I

.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method public constructor <init>(ILnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->conversionOpcode:I

    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 0

    iget p2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->conversionOpcode:I

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget v2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->conversionOpcode:I

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;

    iget v3, p1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->conversionOpcode:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->equals(Ljava/lang/Object;)Z

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

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->conversionOpcode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/assign/primitive/PrimitiveWideningDelegate$WideningStackManipulation;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
