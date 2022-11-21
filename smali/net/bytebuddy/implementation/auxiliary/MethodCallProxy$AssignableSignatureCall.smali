.class public Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssignableSignatureCall"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final serializable:Z

.field private final specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Z)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iput-boolean p2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->serializable:Z

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->serializable:Z

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy;-><init>(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Z)V

    invoke-interface {p2, v0}, Lnet/bytebuddy/implementation/Implementation$Context;->register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-interface {v3}, Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;->getMethodDescription()Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->allArgumentsOf(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$MethodLoading;->prependThisReference()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

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
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->serializable:Z

    check-cast p1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;

    iget-boolean v3, p1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->serializable:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    iget-object p1, p1, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->specialMethodInvocation:Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/implementation/auxiliary/MethodCallProxy$AssignableSignatureCall;->serializable:Z

    add-int/2addr v0, v1

    return v0
.end method
