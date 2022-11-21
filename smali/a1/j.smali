.class public La1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/ComponentName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Lw0/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, La1/j;->a:Landroid/content/ComponentName;

    return-void
.end method

.method public static b(Lw0/c$a;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 2

    invoke-virtual {p0}, Lw0/c$a;->b()Z

    move-result v0

    new-instance v1, Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p0}, Lw0/c$a;->a()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    return-object v1
.end method

.method public static c(Lw0/k;)I
    .locals 5

    sget-object v0, La1/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_2

    return v3

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    return v4

    :cond_2
    :goto_0
    invoke-static {}, Lw0/j;->c()Lw0/j;

    move-result-object v0

    sget-object v3, La1/j;->b:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string p0, "API version too low. Cannot convert network type value %s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, p0, v1}, Lw0/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v2

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public static d(Landroid/app/job/JobInfo$Builder;Lw0/k;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Lw0/k;->q:Lw0/k;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-static {p0, p1}, La1/i;->a(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    invoke-static {p1}, La1/j;->c(Lw0/k;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lf1/p;I)Landroid/app/job/JobInfo;
    .locals 10

    iget-object v0, p1, Lf1/p;->j:Lw0/b;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v2, p1, Lf1/p;->a:Ljava/lang/String;

    const-string v3, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf1/p;->d()Z

    move-result v2

    const-string v3, "EXTRA_IS_PERIODIC"

    invoke-static {v1, v3, v2}, La1/a;->a(Landroid/os/PersistableBundle;Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    iget-object v3, p0, La1/j;->a:Landroid/content/ComponentName;

    invoke-direct {v2, p2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0}, Lw0/b;->g()Z

    move-result p2

    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {v0}, Lw0/b;->h()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {v0}, Lw0/b;->b()Lw0/k;

    move-result-object v1

    invoke-static {p2, v1}, La1/j;->d(Landroid/app/job/JobInfo$Builder;Lw0/k;)V

    invoke-virtual {v0}, Lw0/b;->h()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p1, Lf1/p;->l:Lw0/a;

    sget-object v4, Lw0/a;->b:Lw0/a;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iget-wide v4, p1, Lf1/p;->m:J

    invoke-virtual {p2, v4, v5, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lf1/p;->a()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-gt v1, v8, :cond_2

    invoke-virtual {p2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_2
    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    invoke-virtual {p2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_3
    iget-boolean v8, p1, Lf1/p;->q:Z

    if-nez v8, :cond_4

    invoke-static {p2, v3}, La1/b;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    :cond_4
    :goto_1
    const/16 v8, 0x18

    if-lt v1, v8, :cond_6

    invoke-virtual {v0}, Lw0/b;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lw0/b;->a()Lw0/c;

    move-result-object v1

    invoke-virtual {v1}, Lw0/c;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw0/c$a;

    invoke-static {v8}, La1/j;->b(Lw0/c$a;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v8

    invoke-static {p2, v8}, La1/c;->a(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lw0/b;->c()J

    move-result-wide v8

    invoke-static {p2, v8, v9}, La1/d;->a(Landroid/app/job/JobInfo$Builder;J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Lw0/b;->d()J

    move-result-wide v8

    invoke-static {p2, v8, v9}, La1/e;->a(Landroid/app/job/JobInfo$Builder;J)Landroid/app/job/JobInfo$Builder;

    :cond_6
    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v1, v8, :cond_7

    invoke-virtual {v0}, Lw0/b;->f()Z

    move-result v1

    invoke-static {p2, v1}, La1/f;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Lw0/b;->i()Z

    move-result v0

    invoke-static {p2, v0}, La1/g;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    :cond_7
    iget v0, p1, Lf1/p;->k:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-static {}, Lz/a;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean p1, p1, Lf1/p;->q:Z

    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    if-nez v2, :cond_a

    invoke-static {p2, v3}, La1/h;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    :cond_a
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
