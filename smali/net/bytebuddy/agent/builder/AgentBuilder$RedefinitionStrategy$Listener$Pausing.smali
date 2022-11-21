.class public Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pausing"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Adapter;-><init>()V

    iput-wide p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;->value:J

    return-void
.end method

.method public static of(JLjava/util/concurrent/TimeUnit;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;-><init>(J)V

    return-object v0

    :cond_0
    cmp-long p2, p0, v0

    if-nez p2, :cond_1

    sget-object p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$NoOp;

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot sleep for a non-positive amount of time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Adapter;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;->value:J

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;

    iget-wide v4, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;->value:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    invoke-super {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Adapter;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;->value:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public onBatch(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    if-lez p1, :cond_0

    :try_start_0
    iget-wide p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener$Pausing;->value:J

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
