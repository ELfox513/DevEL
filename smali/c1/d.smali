.class public Lc1/d;
.super Lc1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc1/c<",
        "Lb1/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Li1/a;)V
    .locals 0

    invoke-static {p1, p2}, Ld1/k;->c(Landroid/content/Context;Li1/a;)Ld1/k;

    move-result-object p1

    invoke-virtual {p1}, Ld1/k;->d()Ld1/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lc1/c;-><init>(Ld1/d;)V

    return-void
.end method


# virtual methods
.method public b(Lf1/p;)Z
    .locals 1

    iget-object p1, p1, Lf1/p;->j:Lw0/b;

    invoke-virtual {p1}, Lw0/b;->b()Lw0/k;

    move-result-object p1

    sget-object v0, Lw0/k;->b:Lw0/k;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb1/b;

    invoke-virtual {p0, p1}, Lc1/d;->i(Lb1/b;)Z

    move-result p1

    return p1
.end method

.method public i(Lb1/b;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Lb1/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb1/b;->d()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Lb1/b;->a()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
