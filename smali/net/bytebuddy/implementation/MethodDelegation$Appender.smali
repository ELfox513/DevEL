.class public Lnet/bytebuddy/implementation/MethodDelegation$Appender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

.field private final terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iput-object p5, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 10

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    invoke-interface {v2, p3}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;->prepare(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    invoke-interface {v2}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;->invoke()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

    move-result-object v8

    iget-object v9, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v6, p3

    invoke-interface/range {v4 .. v9}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;->bind(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Record;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
