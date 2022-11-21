.class public final Lr4/ug2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/vg2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:I

.field public final e:Lr4/el0;


# direct methods
.method public constructor <init>(Lr4/el0;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ug2;->e:Lr4/el0;

    iput-object p2, p0, Lr4/ug2;->a:Landroid/content/Context;

    iput-object p3, p0, Lr4/ug2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lr4/ug2;->c:Ljava/util/concurrent/Executor;

    iput p5, p0, Lr4/ug2;->d:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Throwable;)Lr4/vg2;
    .locals 2

    invoke-static {}, Lr4/yu;->a()Lr4/vl0;

    iget-object p1, p0, Lr4/ug2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string v1, "android_id"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Lr4/vg2;

    invoke-direct {v1, v0, p1}, Lr4/vg2;-><init>(Lw2/a$a;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zza()Lr4/h83;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/vg2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->F0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ug2;->e:Lr4/el0;

    iget-object v1, p0, Lr4/ug2;->a:Landroid/content/Context;

    iget v2, p0, Lr4/ug2;->d:I

    invoke-virtual {v0, v1, v2}, Lr4/el0;->a(Landroid/content/Context;I)Lr4/h83;

    move-result-object v0

    invoke-static {v0}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v0

    sget-object v1, Lr4/sg2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/ug2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    sget-object v1, Lr4/rz;->G0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lr4/ug2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v0

    check-cast v0, Lr4/o73;

    new-instance v1, Lr4/tg2;

    invoke-direct {v1, p0}, Lr4/tg2;-><init>(Lr4/ug2;)V

    const-class v2, Ljava/lang/Throwable;

    iget-object v3, p0, Lr4/ug2;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v2, v1, v3}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
