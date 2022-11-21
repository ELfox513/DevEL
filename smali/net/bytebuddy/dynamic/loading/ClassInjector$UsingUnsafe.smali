.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;
.super Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsingUnsafe"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Factory;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final BOOTSTRAP_LOADER_LOCK:Ljava/lang/Object;

.field private static final CHECK_PERMISSION:Ljava/lang/reflect/Method;

.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

.field public static final SAFE_PROPERTY:Ljava/lang/String; = "net.bytebuddy.safe"

.field private static final SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

.field private final protectionDomain:Ljava/security/ProtectionDomain;
    .annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling;
        value = .enum Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;->REVERSE_NULLABILITY:Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$ValueHandling$Sort;
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.security.AccessController"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v2, "net.bytebuddy.securitymanager"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->ACCESS_CONTROLLER:Z

    goto :goto_0

    :catch_1
    sput-boolean v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->ACCESS_CONTROLLER:Z

    :goto_0
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$CreationAction;

    invoke-static {v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    sput-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    const-class v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;

    invoke-static {v2}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;

    sput-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;

    new-instance v2, Lnet/bytebuddy/utility/privilege/GetMethodAction;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljava/security/Permission;

    aput-object v3, v0, v1

    const-string v1, "java.lang.SecurityManager"

    const-string v3, "checkPermission"

    invoke-direct {v2, v1, v3, v0}, Lnet/bytebuddy/utility/privilege/GetMethodAction;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-static {v2}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->CHECK_PERMISSION:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->BOOTSTRAP_LOADER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;)V
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->protectionDomain:Ljava/security/ProtectionDomain;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    return-void
.end method

.method public static synthetic a()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->SYSTEM:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$System;

    return-object v0
.end method

.method public static synthetic b()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->CHECK_PERMISSION:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static synthetic c()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

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

    sget-boolean v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static ofBootLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->BOOTSTRAP_LOADER:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static ofPlatformLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static ofSystemLoader()Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_3
    if-eqz v2, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->protectionDomain:Ljava/security/ProtectionDomain;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_6
    if-eqz v2, :cond_8

    :cond_7
    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->protectionDomain:Ljava/security/ProtectionDomain;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public injectRaw(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;->initialize()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->BOOTSTRAP_LOADER_LOCK:Ljava/lang/Object;

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->classLoader:Ljava/lang/ClassLoader;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v7, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface {v0, v5, v6, v3, v7}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher;->defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe;->dispatcher:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingUnsafe$Dispatcher$Initializable;->isAvailable()Z

    move-result v0

    return v0
.end method
