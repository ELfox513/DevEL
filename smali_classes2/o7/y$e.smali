.class public Lo7/y$e;
.super Lo7/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lo7/s0;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lo7/n<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field public final a:Lo7/s0;

.field public final b:Lo7/y$d;


# virtual methods
.method public a()Lo7/u1$b;
    .locals 1

    iget-object v0, p0, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {v0}, Lo7/y$d;->k()Lo7/u1$b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lo7/s0;
    .locals 1

    iget-object v0, p0, Lo7/y$e;->a:Lo7/s0;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lo7/y$e;->b:Lo7/y$d;

    invoke-virtual {v0}, Lo7/y$d;->e()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lo7/y$e;->b:Lo7/y$d;

    iget-boolean v0, v0, Lo7/y$d;->k:Z

    return v0
.end method
