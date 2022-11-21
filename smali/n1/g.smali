.class public final Ln1/g;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/g$a;
    }
.end annotation


# static fields
.field public static final a:Ln1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln1/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln1/g;-><init>(I)V

    sput-object v0, Ln1/g;->a:Ln1/g;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method public static E(Ln1/g$a;[Ln1/g$a;I)Z
    .locals 4

    invoke-virtual {p0}, Ln1/g$a;->c()Lx1/e0;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ln1/g$a;->c()Lx1/e0;

    move-result-object v2

    if-eq v2, p0, :cond_1

    sget-object v3, Lx1/e0;->k:Lx1/e0;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public A(IIIILx1/e0;)V
    .locals 1

    new-instance v0, Ln1/g$a;

    invoke-direct {v0, p2, p3, p4, p5}, Ln1/g$a;-><init>(IIILx1/e0;)V

    invoke-virtual {p0, p1, v0}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public B(ILn1/g$a;)V
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

.method public C()Ly1/e;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ly1/b;->a:Ly1/b;

    return-object v0

    :cond_0
    new-instance v1, Ly1/b;

    invoke-direct {v1, v0}, Ly1/b;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ln1/g;->x(I)Ln1/g$a;

    move-result-object v3

    invoke-virtual {v3}, Ln1/g$a;->c()Lx1/e0;

    move-result-object v3

    invoke-virtual {v3}, Lx1/e0;->x()Ly1/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ly1/b;->I(ILy1/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1
.end method

.method public D(I)Lb2/j;
    .locals 5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-static {p1}, Lb2/j;->F(I)Lb2/j;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lb2/j;->k:Lb2/j;

    return-object p1

    :cond_2
    new-instance v3, Lb2/j;

    add-int v4, v2, v1

    invoke-direct {v3, v4}, Lb2/j;-><init>(I)V

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Ln1/g;->x(I)Ln1/g$a;

    move-result-object v4

    invoke-virtual {v4}, Ln1/g$a;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lb2/j;->x(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, p1}, Lb2/j;->x(I)V

    :cond_4
    invoke-virtual {v3}, Lb2/o;->setImmutable()V

    return-object v3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "noException < -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public x(I)Ln1/g$a;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/g$a;

    return-object p1
.end method

.method public z(I)Ln1/g;
    .locals 7

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    new-array v1, v0, [Ln1/g$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ln1/g;->x(I)Ln1/g$a;

    move-result-object v5

    invoke-virtual {v5, p1}, Ln1/g$a;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v1, v4}, Ln1/g;->E(Ln1/g$a;[Ln1/g$a;I)Z

    move-result v6

    if-eqz v6, :cond_0

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    sget-object p1, Ln1/g;->a:Ln1/g;

    return-object p1

    :cond_2
    new-instance p1, Ln1/g;

    invoke-direct {p1, v4}, Ln1/g;-><init>(I)V

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v1, v2

    invoke-virtual {p1, v2, v0}, Ln1/g;->B(ILn1/g$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lb2/o;->setImmutable()V

    return-object p1
.end method
