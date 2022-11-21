.class public final Lr4/u2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/v2;

.field public final b:Landroid/os/Handler;

.field public final synthetic d:Lr4/w2;


# direct methods
.method public constructor <init>(Lr4/w2;Landroid/os/Handler;Lr4/v2;)V
    .locals 0

    iput-object p1, p0, Lr4/u2;->d:Lr4/w2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lr4/u2;->b:Landroid/os/Handler;

    iput-object p3, p0, Lr4/u2;->a:Lr4/v2;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/u2;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 0

    return-void
.end method
