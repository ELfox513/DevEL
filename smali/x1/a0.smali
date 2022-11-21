.class public final Lx1/a0;
.super Lx1/a;
.source "SourceFile"


# static fields
.field public static final d:Lx1/a0;


# instance fields
.field public final a:Lx1/d0;

.field public final b:Lx1/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lx1/a0;

    new-instance v1, Lx1/d0;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Lx1/d0;-><init>(Ljava/lang/String;)V

    new-instance v2, Lx1/d0;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Lx1/d0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lx1/a0;-><init>(Lx1/d0;Lx1/d0;)V

    sput-object v0, Lx1/a0;->d:Lx1/a0;

    return-void
.end method

.method public constructor <init>(Lx1/d0;Lx1/d0;)V
    .locals 0

    invoke-direct {p0}, Lx1/a;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lx1/a0;->a:Lx1/d0;

    iput-object p2, p0, Lx1/a0;->b:Lx1/d0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget-object v0, p0, Lx1/a0;->a:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(Lx1/a;)I
    .locals 2

    check-cast p1, Lx1/a0;

    iget-object v0, p0, Lx1/a0;->a:Lx1/d0;

    iget-object v1, p1, Lx1/a0;->a:Lx1/d0;

    invoke-virtual {v0, v1}, Lx1/a;->c(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lx1/a0;->b:Lx1/d0;

    iget-object p1, p1, Lx1/a0;->b:Lx1/d0;

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lx1/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lx1/a0;

    iget-object v0, p0, Lx1/a0;->a:Lx1/d0;

    iget-object v2, p1, Lx1/a0;->a:Lx1/d0;

    invoke-virtual {v0, v2}, Lx1/d0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1/a0;->b:Lx1/d0;

    iget-object p1, p1, Lx1/a0;->b:Lx1/d0;

    invoke-virtual {v0, p1}, Lx1/d0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lx1/a0;->a:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lx1/a0;->b:Lx1/d0;

    invoke-virtual {v1}, Lx1/d0;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "nat"

    return-object v0
.end method

.method public n()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lx1/a0;->b:Lx1/d0;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx1/a0;->a:Lx1/d0;

    invoke-virtual {v1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx1/a0;->b:Lx1/d0;

    invoke-virtual {v1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx1/a0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ly1/c;
    .locals 1

    iget-object v0, p0, Lx1/a0;->b:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public x()Lx1/d0;
    .locals 1

    iget-object v0, p0, Lx1/a0;->a:Lx1/d0;

    return-object v0
.end method

.method public final z()Z
    .locals 2

    iget-object v0, p0, Lx1/a0;->a:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
