.class public final Lt3/q;
.super Lw4/e;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:Lt3/g;


# direct methods
.method public constructor <init>(Lt3/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lt3/q;->b:Lt3/g;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lw4/e;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lt3/q;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lt3/q;->b:Lt3/g;

    iget-object v0, p0, Lt3/q;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lt3/g;->g(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lt3/q;->b:Lt3/g;

    invoke-virtual {v0, p1}, Lt3/g;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/q;->b:Lt3/g;

    iget-object v1, p0, Lt3/q;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lt3/g;->o(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
