.class public final Lt4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt4/l;


# direct methods
.method public synthetic constructor <init>(Lt4/l;Lt4/i;)V
    .locals 0

    iput-object p1, p0, Lt4/j;->a:Lt4/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lt4/j;->a:Lt4/l;

    invoke-virtual {v0}, Lt4/l;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lc4/i;->d()Lc4/f;

    move-result-object v2

    invoke-interface {v2}, Lc4/f;->a()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    iget-object v0, p0, Lt4/j;->a:Lt4/l;

    invoke-static {v0}, Lt4/l;->c(Lt4/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lt4/l;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
