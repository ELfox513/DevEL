.class public Lc1/a;
.super Lc1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc1/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Li1/a;)V
    .locals 0

    invoke-static {p1, p2}, Ld1/k;->c(Landroid/content/Context;Li1/a;)Ld1/k;

    move-result-object p1

    invoke-virtual {p1}, Ld1/k;->a()Ld1/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lc1/c;-><init>(Ld1/d;)V

    return-void
.end method


# virtual methods
.method public b(Lf1/p;)Z
    .locals 0

    iget-object p1, p1, Lf1/p;->j:Lw0/b;

    invoke-virtual {p1}, Lw0/b;->g()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc1/a;->i(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
