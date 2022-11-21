.class public Lcom/google/android/gms/ads/AdService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AdService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v0

    new-instance v1, Lr4/cb0;

    invoke-direct {v1}, Lr4/cb0;-><init>()V

    invoke-virtual {v0, p0, v1}, Lr4/wu;->m(Landroid/content/Context;Lr4/fb0;)Lr4/ke0;

    move-result-object v0

    invoke-interface {v0, p1}, Lr4/ke0;->R0(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteException calling handleNotificationIntent: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void
.end method
