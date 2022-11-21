.class public final Lr4/r04;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/xb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/xb;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lr4/xb;-><init>(I)V

    iput-object v0, p0, Lr4/r04;->a:Lr4/xb;

    return-void
.end method


# virtual methods
.method public final a(Lr4/b04;Lr4/j9;)Lr4/j8;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lr4/r04;->a:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->q()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lr4/vz3;

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v0, v5, v0}, Lr4/vz3;->i([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lr4/r04;->a:Lr4/xb;

    invoke-virtual {v3, v0}, Lr4/xb;->p(I)V

    iget-object v3, p0, Lr4/r04;->a:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->z()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lr4/r04;->a:Lr4/xb;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lr4/xb;->s(I)V

    iget-object v3, p0, Lr4/r04;->a:Lr4/xb;

    invoke-virtual {v3}, Lr4/xb;->a()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    if-nez v1, :cond_1

    new-array v1, v4, [B

    iget-object v6, p0, Lr4/r04;->a:Lr4/xb;

    invoke-virtual {v6}, Lr4/xb;->q()[B

    move-result-object v6

    invoke-static {v6, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, p1

    check-cast v6, Lr4/vz3;

    invoke-virtual {v6, v1, v5, v3, v0}, Lr4/vz3;->i([BIIZ)Z

    new-instance v3, Lr4/l8;

    invoke-direct {v3}, Lr4/l8;-><init>()V

    invoke-static {v1, v4, p2, v3}, Lr4/l9;->a([BILr4/j9;Lr4/l8;)Lr4/j8;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v5, p1

    check-cast v5, Lr4/vz3;

    invoke-virtual {v5, v3, v0}, Lr4/vz3;->o(IZ)Z

    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :catch_0
    :goto_2
    invoke-interface {p1}, Lr4/b04;->k()V

    check-cast p1, Lr4/vz3;

    invoke-virtual {p1, v2, v0}, Lr4/vz3;->o(IZ)Z

    return-object v1
.end method
