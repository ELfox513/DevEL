.class public final Lx1/d$a;
.super Lb2/f;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb2/f;",
        "Ljava/lang/Comparable<",
        "Lx1/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lx1/d$a;

    invoke-virtual {p0, p1}, Lx1/d$a;->x(Lx1/d$a;)I

    move-result p1

    return p1
.end method

.method public get(I)Lx1/a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx1/a;

    return-object p1
.end method

.method public x(Lx1/d$a;)I
    .locals 7

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx1/a;

    invoke-virtual {p1, v4}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx1/a;

    invoke-virtual {v5, v6}, Lx1/a;->c(Lx1/a;)I

    move-result v5

    if-eqz v5, :cond_1

    return v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-le v0, v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    return v3
.end method

.method public z(ILx1/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
