.class public Lx1/d;
.super Lx1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/d$a;
    }
.end annotation


# instance fields
.field public final a:Lx1/d$a;


# direct methods
.method public constructor <init>(Lx1/d$a;)V
    .locals 1

    invoke-direct {p0}, Lx1/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb2/o;->throwIfMutable()V

    iput-object p1, p0, Lx1/d;->a:Lx1/d$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 1

    iget-object v0, p0, Lx1/d;->a:Lx1/d$a;

    check-cast p1, Lx1/d;

    iget-object p1, p1, Lx1/d;->a:Lx1/d$a;

    invoke-virtual {v0, p1}, Lx1/d$a;->x(Lx1/d$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lx1/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lx1/d;->a:Lx1/d$a;

    check-cast p1, Lx1/d;

    iget-object p1, p1, Lx1/d;->a:Lx1/d$a;

    invoke-virtual {v0, p1}, Lb2/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lx1/d;->a:Lx1/d$a;

    invoke-virtual {v0}, Lb2/f;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "array"

    return-object v0
.end method

.method public n()Lx1/d$a;
    .locals 1

    iget-object v0, p0, Lx1/d;->a:Lx1/d$a;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/d;->a:Lx1/d$a;

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb2/f;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lx1/d;->a:Lx1/d$a;

    const-string v1, "array{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb2/f;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
