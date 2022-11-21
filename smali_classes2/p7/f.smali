.class public Lp7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:I


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lp7/f;->c:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lp7/f;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lp7/f;->a:Z

    return v0
.end method
