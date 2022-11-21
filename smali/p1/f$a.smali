.class public Lp1/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly1/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lb2/d;

.field public final b:I

.field public final d:Lx1/f0;


# direct methods
.method public constructor <init>(Lb2/d;IILx1/f0;Lq1/j;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_2

    mul-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Lb2/d;->r(II)Lb2/d;

    move-result-object p1

    iput-object p1, p0, Lp1/f$a;->a:Lb2/d;

    iput p3, p0, Lp1/f$a;->b:I

    iput-object p4, p0, Lp1/f$a;->d:Lx1/f0;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Lb2/d;->n(I)I

    move-result v1

    :try_start_0
    invoke-virtual {p4, v1}, Lx1/f0;->get(I)Lx1/a;

    move-result-object v1

    check-cast v1, Lx1/e0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p5, p1, v0, v2, v1}, Lq1/j;->a(Lb2/d;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "bogus class cpi"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public d(Ly1/c;)Ly1/e;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(I)Ly1/c;
    .locals 1

    iget-object v0, p0, Lp1/f$a;->a:Lb2/d;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lb2/d;->n(I)I

    move-result p1

    iget-object v0, p0, Lp1/f$a;->d:Lx1/f0;

    invoke-virtual {v0, p1}, Lx1/f0;->get(I)Lx1/a;

    move-result-object p1

    check-cast p1, Lx1/e0;

    invoke-virtual {p1}, Lx1/e0;->x()Ly1/c;

    move-result-object p1

    return-object p1
.end method

.method public isMutable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lp1/f$a;->b:I

    return v0
.end method
