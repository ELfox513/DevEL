.class public Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$AssignReturned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValueSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final dispatcher:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

.field private final offset:I

.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;ILnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;

    iput p3, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->offset:I

    iput-object p4, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->dispatcher:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    return-void
.end method

.method public static of(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;ILnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDefinition;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->LONG:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->FLOAT:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->DOUBLE:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot apply skip for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    sget-object p3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->INTEGER:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    goto :goto_1

    :cond_5
    sget-object p3, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->REFERENCE:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    :goto_1
    new-instance v0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;ILnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->dispatcher:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    iget v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->offset:I

    invoke-virtual {v1, p1, v2, v0}, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;ILnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {v1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p2

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;->injectIntermediateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-object p2
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
    iget v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->offset:I

    check-cast p1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;

    iget v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->offset:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->dispatcher:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->dispatcher:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForPostProcessor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->offset:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->dispatcher:Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip$Dispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AssignReturned$DefaultValueSkip;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
