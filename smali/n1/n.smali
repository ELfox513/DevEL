.class public final Ln1/n;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/n$a;
    }
.end annotation


# static fields
.field public static final a:Ln1/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln1/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln1/n;-><init>(I)V

    sput-object v0, Ln1/n;->a:Ln1/n;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method public static B(Ln1/n;Ln1/n;)Ln1/n;
    .locals 5

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Ln1/n;

    invoke-direct {v1, v0}, Ln1/n;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ln1/n;->z(I)Ln1/n$a;

    move-result-object v3

    invoke-virtual {p1, v3}, Ln1/n;->A(Ln1/n$a;)Ln1/n$a;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ln1/n$a;->a(Ln1/n$a;)Lx1/d0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/n$a;->g(Lx1/d0;)Ln1/n$a;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v2, v3}, Ln1/n;->E(ILn1/n$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1
.end method

.method public static x(Ln1/n;Ln1/n;)Ln1/n;
    .locals 6

    sget-object v0, Ln1/n;->a:Ln1/n;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v1

    new-instance v2, Ln1/n;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ln1/n;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p0, v4}, Ln1/n;->z(I)Ln1/n$a;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ln1/n;->E(ILn1/n$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    add-int p0, v0, v3

    invoke-virtual {p1, v3}, Ln1/n;->z(I)Ln1/n$a;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Ln1/n;->E(ILn1/n$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    return-object v2
.end method


# virtual methods
.method public A(Ln1/n$a;)Ln1/n$a;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln1/n$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ln1/n$a;->e(Ln1/n$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public C(II)Ln1/n$a;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln1/n$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Ln1/n$a;->f(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public D(IIILx1/d0;Lx1/d0;Lx1/d0;I)V
    .locals 8

    new-instance v7, Ln1/n$a;

    move-object v0, v7

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Ln1/n$a;-><init>(IILx1/d0;Lx1/d0;Lx1/d0;I)V

    invoke-virtual {p0, p1, v7}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public E(ILn1/n$a;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "item == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)Ln1/n$a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/n$a;

    return-object p1
.end method
