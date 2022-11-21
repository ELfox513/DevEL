.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWriting"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final PREFIX:Ljava/lang/String; = "[Byte Buddy]"


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 2

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .locals 2

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

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

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAfterWarmUp(Ljava/util/Map;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[B>;",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p3, "transformed"

    goto :goto_0

    :cond_0
    const-string p3, "not transformed"

    :goto_0
    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const/4 p2, 0x2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "[Byte Buddy] AFTER_WARMUP %s %s on %s%n"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onBeforeInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "[Byte Buddy] BEFORE_INSTALL %s on %s%n"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onBeforeWarmUp(Ljava/util/Set;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "[Byte Buddy] BEFORE_WARMUP %s on %s%n"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onError(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s on %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInstall(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "[Byte Buddy] INSTALL %s on %s%n"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "[Byte Buddy] RESET %s on %s%n"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onWarmUpError(Ljava/lang/Class;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR_WARMUP %s on %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
