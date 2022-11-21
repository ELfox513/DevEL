.class public Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;
.super Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$Factory;,
        Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field public final originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase$DefaultMethodInvocation;)V

    iput-object p4, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    return-void
.end method

.method private invokeConstructor(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lnet/bytebuddy/description/method/MethodList$Empty;

    invoke-direct {p1}, Lnet/bytebuddy/description/method/MethodList$Empty;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->hasSignature(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->isVisibleTo(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-interface {v1, p1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodList;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Simple;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    :goto_1
    return-object p1
.end method

.method private invokeMethod(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Assuming super class for given instance."
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->methodGraph:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Linked;->getSuperClassGraph()Lnet/bytebuddy/dynamic/scaffold/MethodGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph;->locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getSort()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Sort;->isUnique()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;->getRepresentative()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Simple;->of(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;->INSTANCE:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation$Illegal;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getOriginType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;->identify(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/implementation/Implementation$Target$AbstractBase;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->originTypeResolver:Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget$OriginTypeResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invokeSuper(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .locals 2

    invoke-virtual {p1}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->invokeConstructor(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/subclass/SubclassImplementationTarget;->invokeMethod(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    move-result-object p1

    :goto_0
    return-object p1
.end method
