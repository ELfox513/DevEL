.class public abstract Lg5/r9;
.super Lg5/q9;
.source "SourceFile"


# instance fields
.field public c:Z


# direct methods
.method public constructor <init>(Lg5/ba;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/q9;-><init>(Lg5/ba;)V

    iget-object p1, p0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {p1}, Lg5/ba;->l()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lg5/r9;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lg5/r9;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg5/r9;->g()Z

    iget-object v0, p0, Lg5/q9;->b:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg5/r9;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lg5/r9;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract g()Z
.end method
