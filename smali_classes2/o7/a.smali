.class public abstract Lo7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo7/a<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo7/a$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo7/s0;"
    }
.end annotation


# instance fields
.field public memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo7/a;->memoizedHashCode:I

    return-void
.end method

.method public static d(Ljava/lang/Iterable;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lo7/a$a;->x(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public g(Lo7/h1;)I
    .locals 2

    invoke-virtual {p0}, Lo7/a;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lo7/h1;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lo7/a;->q(I)V

    :cond_0
    return v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l()Lo7/h;
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lo7/s0;->p()I

    move-result v0

    invoke-static {v0}, Lo7/h;->s(I)Lo7/h$h;

    move-result-object v0

    invoke-virtual {v0}, Lo7/h$h;->b()Lo7/k;

    move-result-object v1

    invoke-interface {p0, v1}, Lo7/s0;->h(Lo7/k;)V

    invoke-virtual {v0}, Lo7/h$h;->a()Lo7/h;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-virtual {p0, v2}, Lo7/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public m()Lo7/n1;
    .locals 1

    new-instance v0, Lo7/n1;

    invoke-direct {v0, p0}, Lo7/n1;-><init>(Lo7/s0;)V

    return-object v0
.end method

.method public q(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w()[B
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lo7/s0;->p()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lo7/k;->d0([B)Lo7/k;

    move-result-object v1

    invoke-interface {p0, v1}, Lo7/s0;->h(Lo7/k;)V

    invoke-virtual {v1}, Lo7/k;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-virtual {p0, v2}, Lo7/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
