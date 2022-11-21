.class public final Lr4/pw3;
.super Lr4/j5;
.source "SourceFile"


# instance fields
.field public e:Lr4/vc;

.field public f:[B

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr4/j5;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lr4/pw3;->h:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lr4/pw3;->f:[B

    invoke-static {v0}, Lr4/lc;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lr4/pw3;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/pw3;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lr4/pw3;->g:I

    iget p1, p0, Lr4/pw3;->h:I

    sub-int/2addr p1, p3

    iput p1, p0, Lr4/pw3;->h:I

    invoke-virtual {p0, p3}, Lr4/j5;->r(I)V

    return p3
.end method

.method public final g(Lr4/vc;)J
    .locals 7

    invoke-virtual {p0, p1}, Lr4/j5;->n(Lr4/vc;)V

    iput-object p1, p0, Lr4/pw3;->e:Lr4/vc;

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Unsupported scheme: "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2, v1}, Lr4/ja;->b(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lr4/lc;->Y(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    const/4 v0, 0x1

    aget-object v0, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lr4/pw3;->f:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error while parsing Base64 encoded string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0, p1}, Lr4/l6;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1

    :cond_2
    sget-object v1, Lr4/n03;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr4/lc;->X(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lr4/pw3;->f:[B

    :goto_2
    iget-wide v0, p1, Lr4/vc;->f:J

    iget-object v2, p0, Lr4/pw3;->f:[B

    array-length v2, v2

    int-to-long v5, v2

    cmp-long v3, v0, v5

    if-gtz v3, :cond_5

    long-to-int v1, v0

    iput v1, p0, Lr4/pw3;->g:I

    sub-int/2addr v2, v1

    iput v2, p0, Lr4/pw3;->h:I

    iget-wide v0, p1, Lr4/vc;->g:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    int-to-long v5, v2

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lr4/pw3;->h:I

    :cond_3
    invoke-virtual {p0, p1}, Lr4/j5;->o(Lr4/vc;)V

    iget-wide v0, p1, Lr4/vc;->g:J

    cmp-long p1, v0, v3

    if-eqz p1, :cond_4

    return-wide v0

    :cond_4
    iget p1, p0, Lr4/pw3;->h:I

    int-to-long v0, p1

    return-wide v0

    :cond_5
    iput-object v4, p0, Lr4/pw3;->f:[B

    new-instance p1, Lr4/p9;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lr4/p9;-><init>(I)V

    throw p1

    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected URI format: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lr4/l6;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lr4/l6;

    move-result-object p1

    throw p1
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lr4/pw3;->f:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lr4/pw3;->f:[B

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_0
    iput-object v1, p0, Lr4/pw3;->e:Lr4/vc;

    return-void
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/pw3;->e:Lr4/vc;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lr4/vc;->a:Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
