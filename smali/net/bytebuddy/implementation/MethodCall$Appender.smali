.class public Lnet/bytebuddy/implementation/MethodCall$Appender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Appender"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/implementation/MethodCall;

.field private final argumentProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

.field private final methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

.field private final targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

.field private final terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/MethodCall;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;)V
    .locals 3

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->argumentLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-interface {v1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$Factory;->make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lnet/bytebuddy/implementation/MethodCall;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;

    invoke-interface {p1, p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Factory;->make(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/MethodCall$Appender;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    return-object p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-interface {v4}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->prepare()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, p3, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v4

    invoke-virtual {p0, p3, v4, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p2

    invoke-direct {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$Appender;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->targetHandler:Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/MethodCall;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    invoke-interface {p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lnet/bytebuddy/implementation/MethodCall$MethodLocator;->resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    return-object p1
.end method

.method public toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->argumentProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;

    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader$ArgumentProvider;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/ParameterDescription;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v6, v5, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, v5, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v3, v4, v6, v5}, Lnet/bytebuddy/implementation/MethodCall$ArgumentLoader;->toStackManipulation(Lnet/bytebuddy/description/method/ParameterDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x4

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v5, v4, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, v4, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {p3, p2, v5, v4}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p3

    aput-object p3, v1, v3

    const/4 p3, 0x1

    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v3, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    aput-object v3, v1, p3

    const/4 p3, 0x2

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->methodInvoker:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    invoke-interface {v2, p2, v3}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    aput-object v2, v1, p3

    const/4 p3, 0x3

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$Appender;->a:Lnet/bytebuddy/implementation/MethodCall;

    iget-object v4, v3, Lnet/bytebuddy/implementation/MethodCall;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, v3, Lnet/bytebuddy/implementation/MethodCall;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-interface {v2, p2, p1, v4, v3}, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->toStackManipulation(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object p1

    aput-object p1, v1, p3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not accept "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " arguments"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
