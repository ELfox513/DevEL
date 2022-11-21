.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;


# instance fields
.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->d(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    iget-object v0, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    invoke-interface {v11, v0, v10}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onBeforeWarmUp(Ljava/util/Set;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v0, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Class;

    :try_start_0
    invoke-static {v9}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object/from16 v8, p2

    invoke-interface {v8, v2, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v16

    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v17, 0x1

    if-nez v0, :cond_3

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v9}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->b()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v9}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v15, v2

    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v9}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    move-object/from16 v2, p1

    move-object v5, v9

    move-object/from16 v7, v16

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    :goto_2
    or-int v2, v15, v17

    move v15, v2

    :cond_2
    move-object v2, v9

    goto :goto_6

    :cond_3
    sget-object v18, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->DISPATCHER:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v9}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->b()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v16

    :try_start_2
    invoke-interface/range {v2 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;->transform(Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v15, v3

    invoke-virtual/range {p3 .. p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v8

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    move-object/from16 v7, v19

    move-object/from16 v9, v16

    invoke-interface/range {v2 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled$Dispatcher;->transform(Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    :goto_4
    or-int v2, v15, v17

    move v15, v2

    goto :goto_5

    :cond_6
    move-object v0, v2

    :goto_5
    move-object/from16 v2, v19

    :goto_6
    :try_start_3
    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v2, v19

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v9

    :goto_7
    invoke-interface/range {p4 .. p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v2, v9

    :goto_8
    invoke-interface {v11, v2, v10, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onWarmUpError(Ljava/lang/Class;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)V

    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->c()[B

    move-result-object v0

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-interface {v11, v12, v10, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onAfterWarmUp(Ljava/util/Map;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Z)V

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public with(Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;->types:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;

    invoke-direct {p1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$WarmupStrategy$Enabled;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
