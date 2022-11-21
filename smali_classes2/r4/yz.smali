.class public final Lr4/yz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static varargs a(Lr4/h00;Lr4/d00;[Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lr4/h00;->b(Lr4/d00;J[Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method
