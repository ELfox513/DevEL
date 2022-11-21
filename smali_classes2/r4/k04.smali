.class public final Lr4/k04;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lr4/b04;Z)Lr4/j8;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Lr4/l9;->a:Lr4/j9;

    :goto_0
    new-instance v1, Lr4/r04;

    invoke-direct {v1}, Lr4/r04;-><init>()V

    invoke-virtual {v1, p0, p1}, Lr4/r04;->a(Lr4/b04;Lr4/j9;)Lr4/j8;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lr4/j8;->a()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static b(Lr4/xb;)Lr4/m04;
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/xb;->s(I)V

    invoke-virtual {p0}, Lr4/xb;->z()I

    move-result v0

    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    div-int/lit8 v0, v0, 0x12

    new-array v3, v0, [J

    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {p0}, Lr4/xb;->F()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    :cond_0
    aput-wide v6, v3, v5

    invoke-virtual {p0}, Lr4/xb;->F()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lr4/xb;->s(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lr4/xb;->o()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Lr4/xb;->s(I)V

    new-instance p0, Lr4/m04;

    invoke-direct {p0, v3, v4}, Lr4/m04;-><init>([J[J)V

    return-object p0
.end method
