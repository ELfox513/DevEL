.class public Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;
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
    name = "ForConstructor"
.end annotation


# static fields
.field private static final GET_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final GET_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    :try_start_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v1, Ljava/lang/Class;

    const-string v2, "getConstructor"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;->GET_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v1, Ljava/lang/Class;

    const-string v2, "getDeclaredConstructor"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;->GET_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not locate Class::getDeclaredConstructor"

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

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;->GET_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$ForConstructor;->GET_DECLARED_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    :goto_0
    return-object v0
.end method

.method public cached()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/bytecode/constant/MethodConstant$CachedConstructor;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method public methodName()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object v0
.end method
