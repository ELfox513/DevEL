.class public abstract Ln0/b;
.super Ln0/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln0/l;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln0/e;)V
    .locals 0

    invoke-direct {p0, p1}, Ln0/l;-><init>(Ln0/e;)V

    return-void
.end method


# virtual methods
.method public abstract g(Lq0/f;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/f;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ln0/l;->a()Lq0/f;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Ln0/b;->g(Lq0/f;Ljava/lang/Object;)V

    invoke-interface {v0}, Lq0/f;->T0()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ln0/l;->f(Lq0/f;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ln0/l;->f(Lq0/f;)V

    throw p1
.end method
