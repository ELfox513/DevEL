.class public Lr4/fj;
.super Lr4/p9;
.source "SourceFile"


# instance fields
.field public final b:Lr4/vc;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lr4/vc;II)V
    .locals 0

    invoke-static {p3, p4}, Lr4/fj;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lr4/p9;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lr4/fj;->b:Lr4/vc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lr4/vc;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x7d0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lr4/fj;-><init>(Ljava/lang/String;Ljava/io/IOException;Lr4/vc;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lr4/vc;II)V
    .locals 0

    const/4 p5, 0x1

    invoke-static {p4, p5}, Lr4/fj;->b(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lr4/p9;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lr4/fj;->b:Lr4/vc;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lr4/vc;II)V
    .locals 0

    const/16 p3, 0x7d1

    const/4 p4, 0x1

    invoke-static {p3, p4}, Lr4/fj;->b(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lr4/p9;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lr4/fj;->b:Lr4/vc;

    return-void
.end method

.method public constructor <init>(Lr4/vc;II)V
    .locals 0

    const/16 p2, 0x7d8

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lr4/fj;->b(II)I

    move-result p2

    invoke-direct {p0, p2}, Lr4/p9;-><init>(I)V

    iput-object p1, p0, Lr4/fj;->b:Lr4/vc;

    return-void
.end method

.method public static a(Ljava/io/IOException;Lr4/vc;I)Lr4/fj;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d1

    const/16 v3, 0x7d7

    if-eqz v1, :cond_0

    const/16 v2, 0x7d2

    goto :goto_0

    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    const/16 v2, 0x3ec

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lr4/h03;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x7d7

    :cond_2
    :goto_0
    if-ne v2, v3, :cond_3

    new-instance p2, Lr4/ei;

    invoke-direct {p2, p0, p1}, Lr4/ei;-><init>(Ljava/io/IOException;Lr4/vc;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lr4/fj;

    invoke-direct {v0, p0, p1, v2, p2}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    move-object p2, v0

    :goto_1
    return-object p2
.end method

.method public static b(II)I
    .locals 1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/16 p0, 0x7d0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d1

    :cond_1
    :goto_0
    return p0
.end method
