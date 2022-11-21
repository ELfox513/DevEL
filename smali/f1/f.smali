.class public final Lf1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/e;


# instance fields
.field public final a:Ln0/e;

.field public final b:Ln0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln0/b<",
            "Lf1/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/f;->a:Ln0/e;

    new-instance v0, Lf1/f$a;

    invoke-direct {v0, p0, p1}, Lf1/f$a;-><init>(Lf1/f;Ln0/e;)V

    iput-object v0, p0, Lf1/f;->b:Ln0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ln0/i;->e(Ljava/lang/String;I)Ln0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Ln0/i;->A0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Ln0/i;->E(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lf1/f;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->b()V

    iget-object p1, p0, Lf1/f;->a:Ln0/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lp0/c;->b(Ln0/e;Lq0/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ln0/i;->h()V

    throw v1
.end method

.method public b(Lf1/d;)V
    .locals 1

    iget-object v0, p0, Lf1/f;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->b()V

    iget-object v0, p0, Lf1/f;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->c()V

    :try_start_0
    iget-object v0, p0, Lf1/f;->b:Ln0/b;

    invoke-virtual {v0, p1}, Ln0/b;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Lf1/f;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lf1/f;->a:Ln0/e;

    invoke-virtual {p1}, Ln0/e;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lf1/f;->a:Ln0/e;

    invoke-virtual {v0}, Ln0/e;->g()V

    throw p1
.end method
