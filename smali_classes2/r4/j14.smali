.class public final Lr4/j14;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static b(Lr4/xb;ZZ)Lr4/f14;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1, p0, v0}, Lr4/j14;->c(ILr4/xb;Z)Z

    :cond_0
    invoke-virtual {p0}, Lr4/xb;->C()J

    move-result-wide v1

    long-to-int p1, v1

    sget-object v1, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v1}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lr4/xb;->C()J

    move-result-wide v1

    long-to-int v3, v1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    :goto_0
    int-to-long v5, v0

    cmp-long v7, v5, v1

    if-gez v7, :cond_1

    invoke-virtual {p0}, Lr4/xb;->C()J

    move-result-wide v5

    long-to-int v6, v5

    sget-object v5, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6, v5}, Lr4/xb;->e(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lr4/xb;->v()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    const-string p1, "framing bit expected to be set"

    invoke-static {p1, p0}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    new-instance p0, Lr4/f14;

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lr4/f14;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static c(ILr4/xb;Z)Z
    .locals 4

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    if-eqz p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x1d

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "too short header: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    if-eq v0, p0, :cond_4

    if-eqz p2, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "expected header type "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0

    :cond_4
    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_6

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    if-eqz p2, :cond_7

    return v1

    :cond_7
    const-string p0, "expected characters \'vorbis\'"

    invoke-static {p0, v2}, Lr4/l6;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p0

    throw p0
.end method
