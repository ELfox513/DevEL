.class public final Lcom/android/billingclient/api/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/c;

.field public final synthetic b:Lcom/android/billingclient/api/b$a;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b$a;Lcom/android/billingclient/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/b$a;

    iput-object p2, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/b$a;

    invoke-static {v0}, Lcom/android/billingclient/api/b$a;->a(Lcom/android/billingclient/api/b$a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/b$a;

    invoke-static {v1}, Lcom/android/billingclient/api/b$a;->e(Lcom/android/billingclient/api/b$a;)Lj1/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/h;->b:Lcom/android/billingclient/api/b$a;

    invoke-static {v1}, Lcom/android/billingclient/api/b$a;->e(Lcom/android/billingclient/api/b$a;)Lj1/c;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/h;->a:Lcom/android/billingclient/api/c;

    invoke-interface {v1, v2}, Lj1/c;->onBillingSetupFinished(Lcom/android/billingclient/api/c;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
