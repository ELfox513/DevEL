.class public abstract Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field public final defaultMethodInvocation:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

.field public final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field public final methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    iput-object p3, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->defaultMethodInvocation:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    return-void
.end method


# virtual methods
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->defaultMethodInvocation:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;

    iget-object v3, p1, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->defaultMethodInvocation:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p1, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->defaultMethodInvocation:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 4

    sget-object v0, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {p0, p1, v2}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->asTypeToken()Lnet/bytebuddy/description/method/MethodDescription$TypeToken;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->withCheckedCompatibilityTo(Lnet/bytebuddy/description/method/MethodDescription$TypeToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    return-object p1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->defaultMethodInvocation:Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    invoke-interface {v1, p2}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->getInterfaceGraph(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    move-result-object v1

    invoke-interface {v1, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;->apply(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    return-object p1
.end method

.method public invokeDominant(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 2

    invoke-interface {p0, p1}, Lnet/bytebuddy/implementation/Implementation$Target;->invokeSuper(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->invokeDefault(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object v0

    :goto_0
    return-object v0
.end method
