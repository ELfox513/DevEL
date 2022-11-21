.class public abstract Lx1/v;
.super Lx1/g0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lx1/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A()J
.end method

.method public n()Z
    .locals 3

    invoke-virtual {p0}, Lx1/v;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lx1/v;->z()I

    move-result v0

    int-to-short v2, v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public u()Z
    .locals 3

    invoke-virtual {p0}, Lx1/v;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lx1/v;->z()I

    move-result v0

    int-to-byte v2, v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public abstract x()Z
.end method

.method public abstract z()I
.end method
