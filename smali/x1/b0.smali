.class public final Lx1/b0;
.super Lx1/g0;
.source "SourceFile"


# instance fields
.field public final a:Ly1/a;


# direct methods
.method public constructor <init>(Ly1/a;)V
    .locals 0

    invoke-direct {p0}, Lx1/g0;-><init>()V

    iput-object p1, p0, Lx1/b0;->a:Ly1/a;

    return-void
.end method

.method public static u(Lx1/d0;)Lx1/b0;
    .locals 1

    invoke-virtual {p0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly1/a;->f(Ljava/lang/String;)Ly1/a;

    move-result-object p0

    new-instance v0, Lx1/b0;

    invoke-direct {v0, p0}, Lx1/b0;-><init>(Ly1/a;)V

    return-object v0
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 1

    check-cast p1, Lx1/b0;

    iget-object v0, p0, Lx1/b0;->a:Ly1/a;

    invoke-virtual {p1}, Lx1/b0;->n()Ly1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly1/a;->d(Ly1/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lx1/b0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lx1/b0;

    invoke-virtual {p0}, Lx1/b0;->n()Ly1/a;

    move-result-object v0

    invoke-virtual {p1}, Lx1/b0;->n()Ly1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly1/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Ly1/c;
    .locals 1

    sget-object v0, Ly1/c;->I:Ly1/c;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lx1/b0;->a:Ly1/a;

    invoke-virtual {v0}, Ly1/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "proto"

    return-object v0
.end method

.method public n()Ly1/a;
    .locals 1

    iget-object v0, p0, Lx1/b0;->a:Ly1/a;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx1/b0;->a:Ly1/a;

    invoke-virtual {v0}, Ly1/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lx1/b0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx1/b0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
