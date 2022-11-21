.class public abstract Lo7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo7/s0;",
        ">",
        "Ljava/lang/Object;",
        "Lo7/a1<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field public static final a:Lo7/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo7/p;->b()Lo7/p;

    move-result-object v0

    sput-object v0, Lo7/b;->a:Lo7/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo7/h;Lo7/p;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo7/b;->e(Lo7/h;Lo7/p;)Lo7/s0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lo7/s0;)Lo7/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo7/t0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lo7/b;->d(Lo7/s0;)Lo7/n1;

    move-result-object v0

    invoke-virtual {v0}, Lo7/n1;->a()Lo7/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo7/c0;->i(Lo7/s0;)Lo7/c0;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final d(Lo7/s0;)Lo7/n1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lo7/n1;"
        }
    .end annotation

    instance-of v0, p1, Lo7/a;

    if-eqz v0, :cond_0

    check-cast p1, Lo7/a;

    invoke-virtual {p1}, Lo7/a;->m()Lo7/n1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lo7/n1;

    invoke-direct {v0, p1}, Lo7/n1;-><init>(Lo7/s0;)V

    return-object v0
.end method

.method public e(Lo7/h;Lo7/p;)Lo7/s0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/h;",
            "Lo7/p;",
            ")TMessageType;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lo7/b;->f(Lo7/h;Lo7/p;)Lo7/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo7/b;->c(Lo7/s0;)Lo7/s0;

    move-result-object p1

    return-object p1
.end method

.method public f(Lo7/h;Lo7/p;)Lo7/s0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo7/h;",
            "Lo7/p;",
            ")TMessageType;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lo7/h;->t()Lo7/i;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lo7/a1;->b(Lo7/i;Lo7/p;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo7/s0;
    :try_end_0
    .catch Lo7/c0; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lo7/i;->a(I)V
    :try_end_1
    .catch Lo7/c0; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p2}, Lo7/c0;->i(Lo7/s0;)Lo7/c0;

    move-result-object p1

    throw p1
    :try_end_2
    .catch Lo7/c0; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    throw p1
.end method
