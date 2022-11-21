.class public Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;
.super Lnet/bytebuddy/build/Plugin$Engine$Listener$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Listener;
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

    invoke-direct {p0}, Lnet/bytebuddy/build/Plugin$Engine$Listener$Adapter;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    return-void
.end method

.method public static toSystemError()Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;
    .locals 2

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static toSystemOut()Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;
    .locals 2

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;-><init>(Ljava/io/PrintStream;)V

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

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

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onComplete(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "[Byte Buddy] COMPLETE %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onDiscovery(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "[Byte Buddy] DISCOVERY %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const-string v2, "[Byte Buddy] ERROR %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

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

.method public onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "[Byte Buddy] IGNORE %s for %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onLiveInitializer(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "[Byte Buddy] LIVE %s on %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onManifest(Ljava/util/jar/Manifest;)V
    .locals 4
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "[Byte Buddy] MANIFEST %b"

    invoke-virtual {v0, p1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onResource(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "[Byte Buddy] RESOURCE %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "[Byte Buddy] TRANSFORM %s for %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public onUnresolved(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$StreamWriting;->printStream:Ljava/io/PrintStream;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "[Byte Buddy] UNRESOLVED %s"

    invoke-virtual {v0, p1, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public withErrorsOnly()Lnet/bytebuddy/build/Plugin$Engine$Listener;
    .locals 1

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;

    invoke-direct {v0, p0}, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Listener;)V

    return-object v0
.end method

.method public withTransformationsOnly()Lnet/bytebuddy/build/Plugin$Engine$Listener;
    .locals 1

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithTransformationsOnly;

    invoke-direct {v0, p0}, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithTransformationsOnly;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Listener;)V

    return-object v0
.end method
