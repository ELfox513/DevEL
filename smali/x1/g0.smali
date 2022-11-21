.class public abstract Lx1/g0;
.super Lx1/a;
.source "SourceFile"

# interfaces
.implements Ly1/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 1

    invoke-interface {p0}, Ly1/d;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->f()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()I
    .locals 1

    invoke-interface {p0}, Ly1/d;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->p()I

    move-result v0

    return v0
.end method

.method public final v()Ly1/d;
    .locals 0

    return-object p0
.end method
