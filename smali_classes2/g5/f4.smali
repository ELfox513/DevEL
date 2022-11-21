.class public abstract Lg5/f4;
.super Lg5/e3;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lg5/b5;)V
    .locals 0

    invoke-direct {p0, p1}, Lg5/e3;-><init>(Lg5/b5;)V

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->d()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lg5/f4;->h()Z

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

    iget-boolean v0, p0, Lg5/f4;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg5/f4;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg5/f4;->b:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    iget-boolean v0, p0, Lg5/f4;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg5/f4;->g()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg5/f4;->b:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lg5/f4;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract i()Z
.end method
