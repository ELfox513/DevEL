.class public Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DirectInvoker;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$InvokerCreationAction;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Container;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;,
        Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final GENERATE:Z

.field public static final GENERATE_PROPERTY:Ljava/lang/String; = "net.bytebuddy.generate"

.field private static final INVOKER:Lnet/bytebuddy/utility/Invoker;

.field private static final RESOLVER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final generate:Z

.field private final proxy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    invoke-static {v2, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x1

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->ACCESS_CONTROLLER:Z

    :goto_0
    new-instance v1, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;

    const-string v2, "net.bytebuddy.generate"

    invoke-direct {v1, v2}, Lnet/bytebuddy/utility/privilege/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->GENERATE:Z

    sget-object v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver$CreationAction;

    invoke-static {v1}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver;

    sput-object v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->RESOLVER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver;

    new-instance v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$InvokerCreationAction;

    invoke-direct {v1, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$InvokerCreationAction;-><init>(Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$1;)V

    invoke-static {v1}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/Invoker;

    sput-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->INVOKER:Lnet/bytebuddy/utility/Invoker;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)V
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    iput-boolean p3, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    return-void
.end method

.method public static synthetic a()Lnet/bytebuddy/utility/Invoker;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->INVOKER:Lnet/bytebuddy/utility/Invoker;

    return-object v0
.end method

.method public static synthetic b(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->RESOLVER:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader$Resolver;

    return-object v0
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

    sget-boolean v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/security/PrivilegedAction<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/security/PrivilegedAction;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/security/PrivilegedAction;
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/security/PrivilegedAction<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->GENERATE:Z

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Ljava/security/PrivilegedAction;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)Ljava/security/PrivilegedAction;
    .locals 2
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/security/PrivilegedAction<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.security."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Classes related to Java security cannot be proxied: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to be annotated with "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected an interface instead of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-boolean v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    check-cast p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;

    iget-boolean v3, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    iget-object v3, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_5
    if-eqz v2, :cond_7

    :cond_6
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

    iget-object v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public run()Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Instance check requires a boolean return type: "

    const-string v3, "Instance check requires a single regular-typed argument: "

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Ljava/lang/System;

    const-string v8, "getSecurityManager"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "java.lang.SecurityManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "checkPermission"

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Ljava/security/Permission;

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/RuntimePermission;

    const-string v11, "net.bytebuddy.createJavaDispatcher"

    invoke-direct {v10, v11}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v6

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to access security manager"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to assert access rights using security manager"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    nop

    :cond_1
    :goto_0
    iget-boolean v7, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object v8, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const-class v9, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    iget-object v9, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const-class v10, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v9}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v9

    :try_start_1
    iget-object v10, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v9, v6, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_15

    iget-boolean v10, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eqz v10, :cond_3

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v11

    iget-object v12, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    sget-object v13, Lnet/bytebuddy/utility/MethodComparator;->INSTANCE:Lnet/bytebuddy/utility/MethodComparator;

    invoke-virtual {v11, v12, v13}, Lnet/bytebuddy/utility/GraalImageCode;->sorted([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_3
    iget-object v11, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    :goto_2
    array-length v12, v11

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_2e

    aget-object v14, v11, v13

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    if-ne v15, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    const-class v15, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    array-length v15, v15

    if-ne v15, v5, :cond_6

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    aget-object v15, v15, v6

    invoke-virtual {v15, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v15, v6, :cond_5

    new-instance v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForInstanceCheck;

    invoke-direct {v6, v9}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForInstanceCheck;-><init>(Ljava/lang/Class;)V

    invoke-interface {v7, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-class v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Container;

    invoke-virtual {v14, v6}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v5, :cond_9

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v15, 0x0

    aget-object v6, v6, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v15, :cond_9

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForContainerCreation;

    invoke-direct {v6, v9}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForContainerCreation;-><init>(Ljava/lang/Class;)V

    invoke-interface {v7, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_29

    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container creation requires an assignable array as return value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container creation requires a single int-typed argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v15, "java.lang.invoke.MethodHandles"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v15, "lookup"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Cannot resolve Byte Buddy lookup via dispatcher"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    :goto_5
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const-class v15, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v15, :cond_10

    :try_start_3
    const-class v15, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto/16 :goto_9

    :cond_d
    array-length v15, v6

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    aget-object v5, v6, v15

    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_e

    array-length v5, v6

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    new-array v15, v5, [Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v11

    move/from16 v17, v12

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_4
    invoke-static {v6, v11, v15, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v15

    const/4 v5, 0x1

    goto/16 :goto_a

    :cond_e
    move-object/from16 v16, v11

    move/from16 v17, v12

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot assign self type: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " on "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    move-object/from16 v16, v11

    move/from16 v17, v12

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expected self type: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_6
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    goto/16 :goto_1f

    :catch_5
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_7
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    goto/16 :goto_21

    :catch_6
    move-exception v0

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_8
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    goto/16 :goto_25

    :cond_10
    :goto_9
    move-object/from16 v16, v11

    move/from16 v17, v12

    const/4 v5, 0x0

    :goto_a
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v11

    const/4 v12, 0x0

    :goto_b
    array-length v15, v6

    if-ge v12, v15, :cond_19

    add-int v15, v12, v5

    aget-object v15, v11, v15

    move/from16 v18, v5

    array-length v5, v15

    move-object/from16 v19, v11

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v5, :cond_18

    move/from16 v20, v5

    aget-object v5, v15, v11

    move-object/from16 v21, v15

    instance-of v15, v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    if-eqz v15, :cond_17

    const/4 v11, 0x0

    :goto_d
    aget-object v15, v6, v12

    invoke-virtual {v15}, Ljava/lang/Class;->isArray()Z

    move-result v15
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v15, :cond_11

    add-int/lit8 v11, v11, 0x1

    :try_start_6
    aget-object v15, v6, v12

    invoke-virtual {v15}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v6, v12
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_d

    :cond_11
    const-string v15, " at "

    move-object/from16 v22, v3

    const-string v3, " of "

    if-lez v11, :cond_15

    :try_start_7
    aget-object v20, v6, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-nez v20, :cond_14

    move/from16 v20, v11

    aget-object v11, v6, v12

    move-object/from16 v21, v5

    check-cast v21, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object/from16 v23, v2

    :try_start_8
    invoke-interface/range {v21 .. v21}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v24, v4

    :try_start_9
    iget-object v4, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move/from16 v25, v10

    const/4 v10, 0x0

    :try_start_a
    invoke-static {v2, v10, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v11, v20

    :goto_e
    add-int/lit8 v3, v11, -0x1

    if-lez v11, :cond_12

    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v3

    goto :goto_e

    :cond_12
    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v5}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v6, v12

    goto/16 :goto_f

    :cond_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot resolve to component type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v5}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_2
    move-exception v0

    goto/16 :goto_1a

    :catch_7
    move-exception v0

    goto/16 :goto_1c

    :catch_8
    move-exception v0

    goto/16 :goto_1e

    :catchall_3
    move-exception v0

    goto/16 :goto_19

    :catch_9
    move-exception v0

    goto/16 :goto_1b

    :catch_a
    move-exception v0

    goto/16 :goto_1d

    :cond_14
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move/from16 v25, v10

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Primitive values are not supposed to be proxied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_4
    move-exception v0

    move-object/from16 v23, v2

    goto/16 :goto_19

    :catch_b
    move-exception v0

    move-object/from16 v23, v2

    goto/16 :goto_1b

    :catch_c
    move-exception v0

    move-object/from16 v23, v2

    goto/16 :goto_1d

    :cond_15
    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move/from16 v25, v10

    check-cast v5, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-interface {v5}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->classLoader:Ljava/lang/ClassLoader;

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    aget-object v4, v6, v12

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_16

    aput-object v2, v6, v12

    goto :goto_f

    :cond_16
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot resolve to type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_17
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v10

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v20

    move-object/from16 v15, v21

    goto/16 :goto_c

    :cond_18
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v10

    :goto_f
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v18

    move-object/from16 v11, v19

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move/from16 v10, v25

    goto/16 :goto_b

    :cond_19
    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v10

    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsConstructor;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const-string v3, " to "

    const-string v4, "Cannot assign "

    if-eqz v2, :cond_1d

    :try_start_b
    invoke-virtual {v9, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1b

    invoke-virtual {v9}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    and-int/2addr v3, v4

    if-nez v3, :cond_1a

    goto :goto_10

    :cond_1a
    move/from16 v10, v25

    goto :goto_11

    :cond_1b
    :goto_10
    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_f
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v10, 0x0

    :goto_11
    :try_start_c
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForConstructor;

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_29

    :catchall_5
    move-exception v0

    goto/16 :goto_1f

    :catch_d
    move-exception v0

    goto/16 :goto_21

    :catch_e
    move-exception v0

    goto/16 :goto_25

    :cond_1c
    :try_start_d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1d
    const-class v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;

    if-nez v2, :cond_1e

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1e
    invoke-interface {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Proxied;->value()Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-virtual {v9, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_f
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/4 v5, 0x0

    :goto_13
    const-string v6, "Resolved method for "

    if-ge v5, v4, :cond_23

    :try_start_e
    aget-object v10, v3, v5

    const-class v11, Ljava/lang/RuntimeException;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_22

    const-class v11, Ljava/lang/Error;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1f

    goto :goto_15

    :cond_1f
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v12, :cond_21

    move-object/from16 v18, v3

    aget-object v3, v11, v15

    invoke-virtual {v3, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_16

    :cond_20
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v18

    goto :goto_14

    :cond_21
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " throws undeclared checked exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    :goto_15
    move-object/from16 v18, v3

    :goto_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v18

    goto :goto_13

    :cond_23
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_25

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    and-int/2addr v3, v4

    if-nez v3, :cond_24

    goto :goto_17

    :cond_24
    move/from16 v10, v25

    goto :goto_18

    :cond_25
    :goto_17
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/4 v10, 0x0

    :goto_18
    :try_start_f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_27

    const-class v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_26

    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForStaticMethod;

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForStaticMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    :cond_26
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was expected to be static: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    const-class v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$IsStatic;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_28

    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForNonStaticMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    :cond_28
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was expected to be virtual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_29
    :try_start_10
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    move/from16 v10, v25

    goto :goto_20

    :catch_f
    move-exception v0

    move-object v2, v0

    move/from16 v10, v25

    goto/16 :goto_22

    :catch_10
    move-exception v0

    move-object v2, v0

    move/from16 v10, v25

    goto/16 :goto_26

    :catchall_7
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    :goto_19
    move-object/from16 v24, v4

    :goto_1a
    move/from16 v25, v10

    goto :goto_1f

    :catch_11
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    :goto_1b
    move-object/from16 v24, v4

    :goto_1c
    move/from16 v25, v10

    goto :goto_21

    :catch_12
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    :goto_1d
    move-object/from16 v24, v4

    :goto_1e
    move/from16 v25, v10

    goto/16 :goto_25

    :catchall_8
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_1f
    move-object v2, v0

    :goto_20
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    :catch_13
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_21
    move-object v2, v0

    :goto_22
    if-nez v8, :cond_2b

    const-class v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_23

    :cond_2a
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method not available on current VM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    goto :goto_24

    :cond_2b
    :goto_23
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->of(Ljava/lang/Class;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    move-result-object v3

    :goto_24
    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :catch_14
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move/from16 v25, v10

    move-object/from16 v16, v11

    move/from16 v17, v12

    :goto_25
    move-object v2, v0

    :goto_26
    if-nez v8, :cond_2d

    const-class v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v14, v3}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_27

    :cond_2c
    new-instance v3, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not available on current VM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_2d
    :goto_27
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->of(Ljava/lang/Class;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    move-result-object v3

    :goto_28
    invoke-interface {v7, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_2e
    move/from16 v25, v10

    if-eqz v25, :cond_2f

    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-static {v2, v7}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->proxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_2f
    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object v2, v0

    iget-boolean v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eqz v3, :cond_30

    invoke-static {}, Lnet/bytebuddy/utility/GraalImageCode;->getCurrent()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v3

    iget-object v4, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/utility/MethodComparator;->INSTANCE:Lnet/bytebuddy/utility/MethodComparator;

    invoke-virtual {v3, v4, v5}, Lnet/bytebuddy/utility/GraalImageCode;->sorted([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Method;

    goto :goto_2a

    :cond_30
    iget-object v3, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    :goto_2a
    array-length v4, v3

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v4, :cond_37

    aget-object v5, v3, v15

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v10, v24

    if-ne v6, v10, :cond_31

    :goto_2c
    move-object/from16 v11, v22

    move-object/from16 v6, v23

    goto/16 :goto_2f

    :cond_31
    const-class v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Instance;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_33

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x0

    aget-object v6, v6, v11

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    aget-object v6, v6, v11

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v11, :cond_32

    sget-object v6, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->BOOLEAN:Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_32
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v22

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    move-object/from16 v11, v22

    move-object/from16 v6, v23

    if-nez v8, :cond_36

    const-class v12, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Defaults;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_35

    goto :goto_2d

    :cond_35
    new-instance v12, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Type not available on current VM: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForUnresolvedMethod;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    :cond_36
    :goto_2d
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher$ForDefaultValue;->of(Ljava/lang/Class;)Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$Dispatcher;

    move-result-object v12

    :goto_2e
    invoke-interface {v7, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v23, v6

    move-object/from16 v24, v10

    move-object/from16 v22, v11

    goto/16 :goto_2b

    :cond_37
    iget-boolean v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->generate:Z

    if-eqz v2, :cond_38

    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-static {v2, v7}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$DynamicClassLoader;->proxy(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :cond_38
    iget-object v2, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    iget-object v4, v1, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->proxy:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;

    invoke-direct {v4, v9, v7}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher$ProxiedInvocationHandler;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
