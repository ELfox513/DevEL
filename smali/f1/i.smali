.class public final Lf1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/h;


# instance fields
.field public final a:Ln0/e;

.field public final b:Ln0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln0/b<",
            "Lf1/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln0/l;


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/i;->a:Ln0/e;

    new-instance v0, Lf1/i$a;

    invoke-direct {v0, p0, p1}, Lf1/i$a;-><init>(Lf1/i;Ln0/e;)V

    iput-object v0, p0, Lf1/i;->b:Ln0/b;

    new-instance v0, Lf1/i$b;

    invoke-direct {v0, p0, p1}, Lf1/i$b;-><init>(Lf1/i;Ln0/e;)V

    iput-object v0, p0, Lf1/i;->c:Ln0/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln0/i;->e(Ljava/lang/String;I)Ln0/i;

    move-result-object v0

    iget-object v2, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {v2}, Ln0/e;->b()V

    iget-object v2, p0, Lf1/i;->a:Ln0/e;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lp0/c;->b(Ln0/e;Lq0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public b(Lf1/g;)V
    .locals 1

    iget-object v0, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->b()V

    iget-object v0, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->c()V

    :try_start_0
    iget-object v0, p0, Lf1/i;->b:Ln0/b;

    invoke-virtual {v0, p1}, Ln0/b;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->g()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Lf1/g;
    .locals 5

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln0/i;->e(Ljava/lang/String;I)Ln0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ln0/i;->A0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Ln0/i;->E(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->b()V

    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lp0/c;->b(Ln0/e;Lq0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "work_spec_id"

    invoke-static {p1, v1}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "system_id"

    invoke-static {p1, v3}, Lp0/b;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Lf1/g;

    invoke-direct {v3, v1, v2}, Lf1/g;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->b()V

    iget-object v0, p0, Lf1/i;->c:Ln0/l;

    invoke-virtual {v0}, Ln0/l;->a()Lq0/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Lq0/d;->A0(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, Lq0/d;->E(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->c()V

    :try_start_0
    invoke-interface {v0}, Lq0/f;->I()I

    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->g()V

    iget-object p1, p0, Lf1/i;->c:Ln0/l;

    invoke-virtual {p1, v0}, Ln0/l;->f(Lq0/f;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lf1/i;->a:Ln0/e;

    invoke-virtual {v1}, Ln0/e;->g()V

    iget-object v1, p0, Lf1/i;->c:Ln0/l;

    invoke-virtual {v1, v0}, Ln0/l;->f(Lq0/f;)V

    throw p1
.end method
