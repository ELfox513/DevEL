.class public Lcom/prineside/tdi2/NotifyWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field public r:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/prineside/tdi2/NotifyWorker;->r:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/b;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/NotifyWorker;->r:Landroid/content/Context;

    const-string v2, "id"

    const/16 v3, 0x2329

    invoke-virtual {v0, v2, v3}, Landroidx/work/b;->h(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroidx/work/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v0, v4}, Landroidx/work/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/prineside/tdi2/AndroidLauncher;->showNotificationNow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotifyWorker"

    const-string v2, "failed to show notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->c()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method
