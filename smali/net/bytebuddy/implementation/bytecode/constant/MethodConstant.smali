.class public abstract Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.super Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;,
        Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;
    }
.end annotation


# static fields
.field public static final DO_PRIVILEGED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# instance fields
.field public final methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->doPrivileged()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->DO_PRIVILEGED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method private static doPrivileged()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 7
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Exception should not be rethrown but trigger a fallback."
        value = {
            "REC_CATCH_EXCEPTION"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-string v2, "java.security.AccessController"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "doPrivileged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/security/PrivilegedExceptionAction;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    :catch_1
    :goto_0
    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;
    .locals 1

    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0

    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-object v0
.end method

.method public static ofPrivileged(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->DO_PRIVILEGED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isTypeInitializer()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCacheIllegal;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->withPrivilegedLookup()Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->withPrivilegedLookup()Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;

    move-result-object p0

    return-object p0
.end method

.method public static typeConstantsFor(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract accessorMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 4

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x4

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/ClassConstant;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;->CLASS:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->forType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->typeConstantsFor(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->withValues(Ljava/util/List;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->accessorMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
.end method

.method public withPrivilegedLookup()Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$PrivilegedLookup;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
