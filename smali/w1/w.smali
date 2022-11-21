.class public final Lw1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lw1/w;


# instance fields
.field public final a:Lx1/d0;

.field public final b:I

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw1/w;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Lw1/w;-><init>(Lx1/d0;II)V

    sput-object v0, Lw1/w;->d:Lw1/w;

    return-void
.end method

.method public constructor <init>(Lx1/d0;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Lw1/w;->a:Lx1/d0;

    iput p2, p0, Lw1/w;->b:I

    iput p3, p0, Lw1/w;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "line < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lw1/w;->c:I

    return v0
.end method

.method public b(Lw1/w;)Z
    .locals 1

    iget v0, p0, Lw1/w;->c:I

    iget p1, p1, Lw1/w;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lw1/w;)Z
    .locals 2

    iget v0, p0, Lw1/w;->c:I

    iget v1, p1, Lw1/w;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lw1/w;->a:Lx1/d0;

    iget-object p1, p1, Lw1/w;->a:Lx1/d0;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lx1/d0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lw1/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lw1/w;

    iget v2, p0, Lw1/w;->b:I

    iget v3, p1, Lw1/w;->b:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1}, Lw1/w;->c(Lw1/w;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lw1/w;->a:Lx1/d0;

    invoke-virtual {v0}, Lx1/d0;->hashCode()I

    move-result v0

    iget v1, p0, Lw1/w;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lw1/w;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lw1/w;->a:Lx1/d0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lx1/d0;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lw1/w;->c:I

    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lw1/w;->b:I

    if-gez v1, :cond_2

    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
