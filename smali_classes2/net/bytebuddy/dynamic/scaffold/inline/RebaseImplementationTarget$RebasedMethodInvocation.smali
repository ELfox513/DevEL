.class public Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;
.super Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebasedMethodInvocation"
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

.field private final prependedParameters:Lnet/bytebuddy/description/type/TypeList;

.field private final stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeList;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->prependedParameters:Lnet/bytebuddy/description/type/TypeList;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeList;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 4

    invoke-interface {p0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;->special(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;

    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    invoke-direct {v2, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p0, p1, v2, p2}, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeList;)V

    return-object v0

    :cond_2
    sget-object p0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    return-object p0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->stackManipulation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    return-object v0
.end method

.method public getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public withCheckedCompatibilityTo(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription;->asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->getParameterTypes()Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lnet/bytebuddy/dynamic/scaffold/inline/RebaseImplementationTarget$RebasedMethodInvocation;->prependedParameters:Lnet/bytebuddy/description/type/TypeList;

    invoke-static {p1, v3}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    return-object p1
.end method
