.class public Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;
.super Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CanCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethod"
.end annotation


# static fields
.field private static final GET_DECLARED_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final GET_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-class v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v2, Ljava/lang/Class;

    const-string v3, "getMethod"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-class v7, [Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v2, Ljava/lang/Class;

    const-string v3, "getDeclaredMethod"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v6

    const-class v0, [Ljava/lang/Class;

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_DECLARED_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not locate method lookup"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    return-void
.end method


# virtual methods
.method public accessorMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/ModifierReviewable$OfByteCodeElement;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForMethod;->GET_DECLARED_METHOD:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    :goto_0
    return-object v0
.end method

.method public cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedMethod;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method public methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v1}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/constant/TextConstant;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
