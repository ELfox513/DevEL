.class public Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/ClassFileLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForInstrumentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final ACCESS_CONTROLLER:Z

.field private static final DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;


# instance fields
.field private final classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;


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

    sput-boolean v1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->ACCESS_CONTROLLER:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :catch_1
    sput-boolean v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->ACCESS_CONTROLLER:Z

    :goto_0
    const-class v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-static {p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Default;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;->isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not support retransformation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic c(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    sget-boolean v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->ACCESS_CONTROLLER:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static fromInstalledAgent(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2
    .param p0    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;

    invoke-static {}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->resolveByteBuddyAgentInstrumentation()Ljava/lang/instrument/Instrumentation;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;-><init>(Ljava/lang/instrument/Instrumentation;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static of(Ljava/lang/instrument/Instrumentation;Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;

    invoke-static {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate$Explicit;->of(Ljava/lang/Class;)Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;)V

    return-object v0
.end method

.method private static resolveByteBuddyAgentInstrumentation()Ljava/lang/instrument/Instrumentation;
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "net.bytebuddy.agent.Installer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/bytebuddy/agent/builder/AgentBuilder;

    invoke-static {v1}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v1

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/utility/JavaModule;->canRead(Lnet/bytebuddy/utility/JavaModule;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "java.lang.Module"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "addReads"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v4, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "getInstrumentation"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/instrument/Instrumentation;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Byte Buddy agent is not installed or not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    check-cast p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;
    .locals 6

    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-interface {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    sget-object v1, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->DISPATCHER:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;->addTransformer(Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->classLoadingDelegate:Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;

    invoke-interface {v5, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ClassLoadingDelegate;->locate(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$Dispatcher;->retransformClasses(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)V

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation$ExtractionClassFileTransformer;->getBinaryRepresentation()[B

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v1, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;

    invoke-direct {v2, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Explicit;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    :goto_0
    :try_start_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v2, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForInstrumentation;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v2, v0}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution$Illegal;-><init>(Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p1

    throw p1
.end method
