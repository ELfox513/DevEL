.class public final Lr4/ft0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lr4/gt0;",
        ":",
        "Lr4/nt0;",
        ":",
        "Lr4/pt0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/et0;

.field public final b:Lr4/gt0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/gt0;Lr4/et0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lr4/et0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/ft0;->a:Lr4/et0;

    iput-object p1, p0, Lr4/ft0;->b:Lr4/gt0;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lr4/ft0;->a:Lr4/et0;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/et0;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p1, "Click string is empty, not proceeding."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lr4/ft0;->b:Lr4/gt0;

    invoke-interface {v0}, Lr4/nt0;->H()Lr4/u;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Signal utils is empty, ignoring."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lr4/u;->b()Lr4/q;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Signals object is empty, ignoring."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_2
    iget-object v2, p0, Lr4/ft0;->b:Lr4/gt0;

    invoke-interface {v2}, Lr4/gt0;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p1, "Context is null, ignoring."

    invoke-static {p1}, Lb3/w1;->k(Ljava/lang/String;)V

    return-object v1

    :cond_3
    iget-object v1, p0, Lr4/ft0;->b:Lr4/gt0;

    invoke-interface {v1}, Lr4/gt0;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lr4/ft0;->b:Lr4/gt0;

    invoke-interface {v2}, Lr4/gt0;->h()Landroid/app/Activity;

    move-result-object v3

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v1, p1, v2, v3}, Lr4/q;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "URL is empty, ignoring message"

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lb3/k2;->i:Lr4/c03;

    new-instance v1, Lr4/dt0;

    invoke-direct {v1, p0, p1}, Lr4/dt0;-><init>(Lr4/ft0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
