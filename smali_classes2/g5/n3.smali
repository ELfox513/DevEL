.class public final Lg5/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lg5/q3;


# direct methods
.method public constructor <init>(Lg5/q3;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lg5/n3;->q:Lg5/q3;

    iput p2, p0, Lg5/n3;->a:I

    iput-object p3, p0, Lg5/n3;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/n3;->d:Ljava/lang/Object;

    iput-object p5, p0, Lg5/n3;->k:Ljava/lang/Object;

    iput-object p6, p0, Lg5/n3;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lg5/n3;->q:Lg5/q3;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Lg5/w5;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    invoke-static {v1}, Lg5/q3;->j(Lg5/q3;)C

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    invoke-virtual {v1}, Lg5/g;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->G()Lg5/b;

    const/16 v2, 0x43

    invoke-static {v1, v2}, Lg5/q3;->z(Lg5/q3;C)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->G()Lg5/b;

    const/16 v2, 0x63

    invoke-static {v1, v2}, Lg5/q3;->z(Lg5/q3;C)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    invoke-static {v1}, Lg5/q3;->k(Lg5/q3;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    iget-object v2, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    move-result-object v2

    invoke-virtual {v2}, Lg5/g;->l()J

    const-wide/32 v2, 0xa822

    invoke-static {v1, v2, v3}, Lg5/q3;->y(Lg5/q3;J)V

    :cond_2
    iget v1, p0, Lg5/n3;->a:I

    const-string v2, "01VDIWEA?"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lg5/n3;->q:Lg5/q3;

    invoke-static {v2}, Lg5/q3;->j(Lg5/q3;)C

    move-result v2

    iget-object v3, p0, Lg5/n3;->q:Lg5/q3;

    invoke-static {v3}, Lg5/q3;->k(Lg5/q3;)J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lg5/n3;->b:Ljava/lang/String;

    iget-object v7, p0, Lg5/n3;->d:Ljava/lang/Object;

    iget-object v8, p0, Lg5/n3;->k:Ljava/lang/Object;

    iget-object v9, p0, Lg5/n3;->p:Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8, v9}, Lg5/q3;->v(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    iget-object v1, p0, Lg5/n3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v0, v0, Lg5/g4;->d:Lg5/d4;

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lg5/d4;->b(Ljava/lang/String;J)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x6

    iget-object v1, p0, Lg5/n3;->q:Lg5/q3;

    invoke-virtual {v1}, Lg5/q3;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
