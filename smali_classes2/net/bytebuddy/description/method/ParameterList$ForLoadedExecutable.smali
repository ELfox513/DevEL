.class public abstract Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForLoadedExecutable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmConstructor;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field public static final EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;


# instance fields
.field public final executable:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.security.AccessController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v1, "net.bytebuddy.securitymanager"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->executable:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    return-void
.end method

.method private static doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/security/PrivilegedAction<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/AccessControllerPlugin$Enhance;
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource$ForLoadedConstructor;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {p0, v0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->of(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfConstructor;-><init>(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmConstructor;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmConstructor;-><init>(Ljava/lang/reflect/Constructor;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    :goto_0
    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource$ForLoadedMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->of(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;-><init>(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;-><init>(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public size()I
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->executable:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameterCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
