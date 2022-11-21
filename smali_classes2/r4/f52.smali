.class public final Lr4/f52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lr4/no2;

.field public final synthetic d:Lr4/so2;

.field public final synthetic e:Lr4/g52;


# direct methods
.method public constructor <init>(Lr4/g52;JLjava/lang/String;Lr4/no2;Lr4/so2;)V
    .locals 0

    iput-object p1, p0, Lr4/f52;->e:Lr4/g52;

    iput-wide p2, p0, Lr4/f52;->a:J

    iput-object p4, p0, Lr4/f52;->b:Ljava/lang/String;

    iput-object p5, p0, Lr4/f52;->c:Lr4/no2;

    iput-object p6, p0, Lr4/f52;->d:Lr4/so2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 12

    iget-object v0, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {v0}, Lr4/g52;->a(Lr4/g52;)Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/f52;->a:J

    sub-long/2addr v0, v2

    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lr4/v42;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lr4/mp2;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lr4/sv1;

    if-eqz v2, :cond_4

    invoke-static {p1}, Lr4/dq2;->a(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object v2

    iget v2, v2, Lr4/lt;->a:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    :goto_0
    iget-object v4, p0, Lr4/f52;->e:Lr4/g52;

    iget-object v5, p0, Lr4/f52;->b:Ljava/lang/String;

    iget-object v3, p0, Lr4/f52;->c:Lr4/no2;

    iget-object v9, v3, Lr4/no2;->c0:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lr4/g52;->f(Lr4/g52;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v3, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {v3}, Lr4/g52;->c(Lr4/g52;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {v3}, Lr4/g52;->b(Lr4/g52;)Lr4/h52;

    move-result-object v4

    iget-object v5, p0, Lr4/f52;->d:Lr4/so2;

    iget-object v6, p0, Lr4/f52;->c:Lr4/no2;

    instance-of v3, p1, Lr4/u12;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lr4/u12;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    move v7, v2

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lr4/h52;->a(Lr4/so2;Lr4/no2;ILr4/u12;J)V

    :cond_6
    sget-object v2, Lr4/rz;->X5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1}, Lr4/dq2;->a(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object p1

    iget v2, p1, Lr4/lt;->a:I

    if-eq v2, v11, :cond_7

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lr4/lt;->k:Lr4/lt;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lr4/lt;->d:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lr4/u12;

    const/16 v3, 0xd

    iget-object p1, p1, Lr4/lt;->k:Lr4/lt;

    invoke-direct {v2, v3, p1}, Lr4/u12;-><init>(ILr4/lt;)V

    invoke-static {v2}, Lr4/dq2;->a(Ljava/lang/Throwable;)Lr4/lt;

    move-result-object p1

    :cond_8
    iget-object v2, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {v2}, Lr4/g52;->d(Lr4/g52;)Lr4/v12;

    move-result-object v2

    iget-object v3, p0, Lr4/f52;->c:Lr4/no2;

    invoke-virtual {v2, v3, v0, v1, p1}, Lr4/v12;->c(Lr4/no2;JLr4/lt;)V

    :cond_9
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 11

    iget-object p1, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {p1}, Lr4/g52;->a(Lr4/g52;)Lc4/f;

    move-result-object p1

    invoke-interface {p1}, Lc4/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lr4/f52;->a:J

    sub-long/2addr v0, v2

    iget-object v4, p0, Lr4/f52;->e:Lr4/g52;

    iget-object v5, p0, Lr4/f52;->b:Ljava/lang/String;

    iget-object p1, p0, Lr4/f52;->c:Lr4/no2;

    iget-object v9, p1, Lr4/no2;->c0:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lr4/g52;->f(Lr4/g52;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object p1, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {p1}, Lr4/g52;->c(Lr4/g52;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {p1}, Lr4/g52;->b(Lr4/g52;)Lr4/h52;

    move-result-object v4

    iget-object v5, p0, Lr4/f52;->d:Lr4/so2;

    iget-object v6, p0, Lr4/f52;->c:Lr4/no2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lr4/h52;->a(Lr4/so2;Lr4/no2;ILr4/u12;J)V

    :cond_0
    sget-object p1, Lr4/rz;->X5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lr4/f52;->e:Lr4/g52;

    invoke-static {p1}, Lr4/g52;->d(Lr4/g52;)Lr4/v12;

    move-result-object p1

    iget-object v2, p0, Lr4/f52;->c:Lr4/no2;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lr4/v12;->c(Lr4/no2;JLr4/lt;)V

    :cond_1
    return-void
.end method
