.class public final Lt4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/b;


# instance fields
.field public final a:Lm3/b;

.field public final b:Lm3/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lt3/h;->f()Lt3/h;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lt4/p;

    invoke-direct {v1, p1, v0}, Lt4/p;-><init>(Landroid/content/Context;Lt3/h;)V

    iput-object v1, p0, Lt4/r;->a:Lm3/b;

    invoke-static {p1}, Lt4/l;->d(Landroid/content/Context;)Lm3/b;

    move-result-object p1

    iput-object p1, p0, Lt4/r;->b:Lm3/b;

    return-void
.end method

.method public static synthetic b(Lt4/r;Lj5/i;)Lj5/i;
    .locals 2

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lj5/i;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object v0

    instance-of v1, v0, Lu3/b;

    if-eqz v1, :cond_5

    check-cast v0, Lu3/b;

    invoke-virtual {v0}, Lu3/b;->b()I

    move-result v0

    const v1, 0xa7f9

    if-eq v0, v1, :cond_4

    const v1, 0xa7fa

    if-eq v0, v1, :cond_4

    const v1, 0xa7fb

    if-eq v0, v1, :cond_4

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0xa7f8

    if-ne v0, p0, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Failed to get app set ID due to an internal error. Please try again later."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/16 p0, 0xf

    if-eq v0, p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The operation to get app set ID timed out. Please try again later."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    iget-object p0, p0, Lt4/r;->b:Lm3/b;

    invoke-interface {p0}, Lm3/b;->a()Lj5/i;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a()Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Lm3/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt4/r;->a:Lm3/b;

    invoke-interface {v0}, Lm3/b;->a()Lj5/i;

    move-result-object v0

    new-instance v1, Lt4/q;

    invoke-direct {v1, p0}, Lt4/q;-><init>(Lt4/r;)V

    invoke-virtual {v0, v1}, Lj5/i;->i(Lj5/a;)Lj5/i;

    move-result-object v0

    return-object v0
.end method
