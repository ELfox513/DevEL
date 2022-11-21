.class public final Lw1/z;
.super Lw1/h;
.source "SourceFile"


# instance fields
.field public final p:Ly1/e;


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lw1/h;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lw1/z;->p:Ly1/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "opcode with invalid branchingness: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw1/t;->b()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static t(Ly1/e;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ly1/e;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ly1/e;->getType(I)Ly1/c;

    move-result-object v3

    invoke-virtual {v3}, Ly1/c;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lw1/h$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lw1/h$b;->visitThrowingInsn(Lw1/z;)V

    return-void
.end method

.method public e()Ly1/e;
    .locals 1

    iget-object v0, p0, Lw1/z;->p:Ly1/e;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw1/z;->p:Ly1/e;

    invoke-static {v0}, Lw1/z;->t(Ly1/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ly1/c;)Lw1/h;
    .locals 5

    new-instance v0, Lw1/z;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v1

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v2

    invoke-virtual {p0}, Lw1/h;->m()Lw1/r;

    move-result-object v3

    iget-object v4, p0, Lw1/z;->p:Ly1/e;

    invoke-interface {v4, p1}, Ly1/e;->d(Ly1/c;)Ly1/e;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    return-object v0
.end method

.method public r(Lw1/q;Lw1/r;)Lw1/h;
    .locals 3

    new-instance p1, Lw1/z;

    invoke-virtual {p0}, Lw1/h;->i()Lw1/t;

    move-result-object v0

    invoke-virtual {p0}, Lw1/h;->j()Lw1/w;

    move-result-object v1

    iget-object v2, p0, Lw1/z;->p:Ly1/e;

    invoke-direct {p1, v0, v1, p2, v2}, Lw1/z;-><init>(Lw1/t;Lw1/w;Lw1/r;Ly1/e;)V

    return-object p1
.end method
