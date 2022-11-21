.class public final Lx1/c;
.super Lx1/a;
.source "SourceFile"


# instance fields
.field public final a:Lv1/a;


# direct methods
.method public constructor <init>(Lv1/a;)V
    .locals 1

    invoke-direct {p0}, Lx1/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb2/o;->throwIfMutable()V

    iput-object p1, p0, Lx1/c;->a:Lv1/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "annotation == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 1

    iget-object v0, p0, Lx1/c;->a:Lv1/a;

    check-cast p1, Lx1/c;

    iget-object p1, p1, Lx1/c;->a:Lv1/a;

    invoke-virtual {v0, p1}, Lv1/a;->z(Lv1/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lx1/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lx1/c;->a:Lv1/a;

    check-cast p1, Lx1/c;

    iget-object p1, p1, Lx1/c;->a:Lv1/a;

    invoke-virtual {v0, p1}, Lv1/a;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lx1/c;->a:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "annotation"

    return-object v0
.end method

.method public n()Lv1/a;
    .locals 1

    iget-object v0, p0, Lx1/c;->a:Lv1/a;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx1/c;->a:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lx1/c;->a:Lv1/a;

    invoke-virtual {v0}, Lv1/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
