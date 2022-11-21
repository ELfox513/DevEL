.class public Ln1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lx1/d0;

.field public final d:Lx1/d0;

.field public final e:Lx1/d0;

.field public final f:I


# direct methods
.method public constructor <init>(IILx1/d0;Lx1/d0;Lx1/d0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_5

    if-ltz p2, :cond_4

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "(descriptor == null) && (signature == null)"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ltz p6, :cond_2

    iput p1, p0, Ln1/n$a;->a:I

    iput p2, p0, Ln1/n$a;->b:I

    iput-object p3, p0, Ln1/n$a;->c:Lx1/d0;

    iput-object p4, p0, Ln1/n$a;->d:Lx1/d0;

    iput-object p5, p0, Ln1/n$a;->e:Lx1/d0;

    iput p6, p0, Ln1/n$a;->f:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Ln1/n$a;)Lx1/d0;
    .locals 0

    invoke-virtual {p0}, Ln1/n$a;->c()Lx1/d0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lw1/k;
    .locals 2

    iget-object v0, p0, Ln1/n$a;->c:Lx1/d0;

    iget-object v1, p0, Ln1/n$a;->e:Lx1/d0;

    invoke-static {v0, v1}, Lw1/k;->j(Lx1/d0;Lx1/d0;)Lw1/k;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lx1/d0;
    .locals 1

    iget-object v0, p0, Ln1/n$a;->e:Lx1/d0;

    return-object v0
.end method

.method public d()Ly1/c;
    .locals 1

    iget-object v0, p0, Ln1/n$a;->d:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly1/c;->D(Ljava/lang/String;)Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public e(Ln1/n$a;)Z
    .locals 2

    iget v0, p0, Ln1/n$a;->a:I

    iget v1, p1, Ln1/n$a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln1/n$a;->b:I

    iget v1, p1, Ln1/n$a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln1/n$a;->f:I

    iget v1, p1, Ln1/n$a;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln1/n$a;->c:Lx1/d0;

    iget-object p1, p1, Ln1/n$a;->c:Lx1/d0;

    invoke-virtual {v0, p1}, Lx1/d0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(II)Z
    .locals 1

    iget v0, p0, Ln1/n$a;->f:I

    if-ne p2, v0, :cond_0

    iget p2, p0, Ln1/n$a;->a:I

    if-lt p1, p2, :cond_0

    iget v0, p0, Ln1/n$a;->b:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Lx1/d0;)Ln1/n$a;
    .locals 8

    new-instance v7, Ln1/n$a;

    iget v1, p0, Ln1/n$a;->a:I

    iget v2, p0, Ln1/n$a;->b:I

    iget-object v3, p0, Ln1/n$a;->c:Lx1/d0;

    iget-object v4, p0, Ln1/n$a;->d:Lx1/d0;

    iget v6, p0, Ln1/n$a;->f:I

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Ln1/n$a;-><init>(IILx1/d0;Lx1/d0;Lx1/d0;I)V

    return-object v7
.end method
