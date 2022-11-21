.class public final Lf1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/t;


# instance fields
.field public final a:Ln0/e;

.field public final b:Ln0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln0/b<",
            "Lf1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/u;->a:Ln0/e;

    new-instance v0, Lf1/u$a;

    invoke-direct {v0, p0, p1}, Lf1/u$a;-><init>(Lf1/u;Ln0/e;)V

    iput-object v0, p0, Lf1/u;->b:Ln0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln0/i;->e(Ljava/lang/String;I)Ln0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ln0/i;->A0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Ln0/i;->E(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lf1/u;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->b()V

    iget-object p1, p0, Lf1/u;->a:Ln0/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lp0/c;->b(Ln0/e;Lq0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public b(Lf1/s;)V
    .locals 1

    iget-object v0, p0, Lf1/u;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->b()V

    iget-object v0, p0, Lf1/u;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->c()V

    :try_start_0
    iget-object v0, p0, Lf1/u;->b:Ln0/b;

    invoke-virtual {v0, p1}, Ln0/b;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Lf1/u;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lf1/u;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lf1/u;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->g()V

    throw p1
.end method
