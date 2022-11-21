.class public final Lr4/e04;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0
.end method

.method public static b(Lr4/b04;[BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-interface {p0, p1, v1, v2}, Lr4/b04;->m([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static c(Lr4/b04;[BII)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    check-cast p0, Lr4/vz3;

    invoke-virtual {p0, p1, p2, p3, v0}, Lr4/vz3;->f([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static d(Lr4/b04;I)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    check-cast p0, Lr4/vz3;

    invoke-virtual {p0, p1, v0}, Lr4/vz3;->n(IZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static e(Lr4/b04;[BIIZ)Z
    .locals 0

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lr4/b04;->i([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    if-eqz p4, :cond_0

    return p2

    :cond_0
    throw p0
.end method
