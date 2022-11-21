.class public final Lr4/u7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/x7;


# direct methods
.method public synthetic constructor <init>(Lr4/x7;Lr4/s7;)V
    .locals 0

    iput-object p1, p0, Lr4/u7;->a:Lr4/x7;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lr4/u7;->a:Lr4/x7;

    invoke-static {p1}, Lr4/x7;->a(Lr4/x7;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lr4/t7;

    iget-object v0, p0, Lr4/u7;->a:Lr4/x7;

    invoke-direct {p2, v0}, Lr4/t7;-><init>(Lr4/x7;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
