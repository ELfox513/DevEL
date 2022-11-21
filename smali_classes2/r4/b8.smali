.class public final Lr4/b8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/b8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field public g:Lr4/e61;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/a8;->a:Lr4/d3;

    sput-object v0, Lr4/b8;->h:Lr4/d3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr4/e61;->c:Lr4/e61;

    iput-object v0, p0, Lr4/b8;->g:Lr4/e61;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJLr4/e61;Z)Lr4/b8;
    .locals 0

    iput-object p1, p0, Lr4/b8;->a:Ljava/lang/Object;

    iput-object p2, p0, Lr4/b8;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lr4/b8;->c:I

    iput-wide p4, p0, Lr4/b8;->d:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/b8;->e:J

    iput-object p8, p0, Lr4/b8;->g:Lr4/e61;

    iput-boolean p9, p0, Lr4/b8;->f:Z

    return-object p0
.end method

.method public final b(I)J
    .locals 2

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    iget-wide v0, p1, Lr4/gf0;->a:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lr4/gf0;->a(I)I

    move-result p1

    return p1
.end method

.method public final d(II)I
    .locals 1

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr4/gf0;->a(I)I

    move-result p1

    return p1
.end method

.method public final e(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/b8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/b8;

    iget-object v2, p0, Lr4/b8;->a:Ljava/lang/Object;

    iget-object v3, p1, Lr4/b8;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/b8;->b:Ljava/lang/Object;

    iget-object v3, p1, Lr4/b8;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lr4/b8;->c:I

    iget v3, p1, Lr4/b8;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lr4/b8;->d:J

    iget-wide v4, p1, Lr4/b8;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lr4/b8;->f:Z

    iget-boolean v3, p1, Lr4/b8;->f:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lr4/b8;->g:Lr4/e61;

    iget-object p1, p1, Lr4/b8;->g:Lr4/e61;

    invoke-static {v2, p1}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final g(I)I
    .locals 1

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    iget p1, p1, Lr4/gf0;->b:I

    return p1
.end method

.method public final h(II)J
    .locals 2

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    iget v0, p1, Lr4/gf0;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lr4/gf0;->e:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lr4/b8;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lr4/b8;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    iget v2, p0, Lr4/b8;->c:I

    iget-wide v3, p0, Lr4/b8;->d:J

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v3, v1

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lr4/b8;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v1}, Lr4/e61;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    iget-wide v0, v0, Lr4/e61;->a:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final j(I)Z
    .locals 1

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    iget-boolean p1, p1, Lr4/gf0;->g:Z

    const/4 p1, 0x0

    return p1
.end method

.method public final k(I)J
    .locals 2

    iget-object v0, p0, Lr4/b8;->g:Lr4/e61;

    invoke-virtual {v0, p1}, Lr4/e61;->a(I)Lr4/gf0;

    move-result-object p1

    iget-wide v0, p1, Lr4/gf0;->f:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method
