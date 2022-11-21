.class public final Lr4/d8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:Ljava/lang/Object;

.field public static final p:Ljava/lang/Object;

.field public static final q:Lr4/u5;

.field public static final r:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/d8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lr4/u5;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Lr4/r5;

.field public j:Z

.field public k:J

.field public l:J

.field public m:I

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/d8;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/d8;->p:Ljava/lang/Object;

    new-instance v0, Lr4/l5;

    invoke-direct {v0}, Lr4/l5;-><init>()V

    const-string v1, "com.google.android.exoplayer2.Timeline"

    invoke-virtual {v0, v1}, Lr4/l5;->a(Ljava/lang/String;)Lr4/l5;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lr4/l5;->b(Landroid/net/Uri;)Lr4/l5;

    invoke-virtual {v0}, Lr4/l5;->c()Lr4/u5;

    move-result-object v0

    sput-object v0, Lr4/d8;->q:Lr4/u5;

    sget-object v0, Lr4/c8;->a:Lr4/d3;

    sput-object v0, Lr4/d8;->r:Lr4/d3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr4/d8;->o:Ljava/lang/Object;

    iput-object v0, p0, Lr4/d8;->a:Ljava/lang/Object;

    sget-object v0, Lr4/d8;->q:Lr4/u5;

    iput-object v0, p0, Lr4/d8;->b:Lr4/u5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lr4/u5;Ljava/lang/Object;JJJZZLr4/r5;JJIIJ)Lr4/d8;
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p12

    move-object v2, p1

    iput-object v2, v0, Lr4/d8;->a:Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    sget-object v2, Lr4/d8;->q:Lr4/u5;

    :goto_0
    iput-object v2, v0, Lr4/d8;->b:Lr4/u5;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lr4/d8;->c:J

    iput-wide v2, v0, Lr4/d8;->d:J

    iput-wide v2, v0, Lr4/d8;->e:J

    move v2, p10

    iput-boolean v2, v0, Lr4/d8;->f:Z

    move/from16 v2, p11

    iput-boolean v2, v0, Lr4/d8;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lr4/d8;->h:Z

    iput-object v1, v0, Lr4/d8;->i:Lr4/r5;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lr4/d8;->k:J

    move-wide/from16 v3, p15

    iput-wide v3, v0, Lr4/d8;->l:J

    iput v2, v0, Lr4/d8;->m:I

    iput v2, v0, Lr4/d8;->n:I

    iput-boolean v2, v0, Lr4/d8;->j:Z

    return-object v0
.end method

.method public final b()Z
    .locals 4

    iget-boolean v0, p0, Lr4/d8;->h:Z

    iget-object v1, p0, Lr4/d8;->i:Lr4/r5;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lr4/ja;->d(Z)V

    iget-object v0, p0, Lr4/d8;->i:Lr4/r5;

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/d8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/d8;

    iget-object v2, p0, Lr4/d8;->a:Ljava/lang/Object;

    iget-object v3, p1, Lr4/d8;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/d8;->b:Lr4/u5;

    iget-object v3, p1, Lr4/d8;->b:Lr4/u5;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/d8;->i:Lr4/r5;

    iget-object v3, p1, Lr4/d8;->i:Lr4/r5;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lr4/d8;->c:J

    iget-wide v4, p1, Lr4/d8;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lr4/d8;->d:J

    iget-wide v4, p1, Lr4/d8;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lr4/d8;->e:J

    iget-wide v4, p1, Lr4/d8;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lr4/d8;->f:Z

    iget-boolean v3, p1, Lr4/d8;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lr4/d8;->g:Z

    iget-boolean v3, p1, Lr4/d8;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lr4/d8;->j:Z

    iget-boolean v3, p1, Lr4/d8;->j:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lr4/d8;->l:J

    iget-wide v4, p1, Lr4/d8;->l:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lr4/d8;->m:I

    iget v3, p1, Lr4/d8;->m:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lr4/d8;->n:I

    iget p1, p1, Lr4/d8;->n:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 15

    iget-object v0, p0, Lr4/d8;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr4/d8;->b:Lr4/u5;

    invoke-virtual {v1}, Lr4/u5;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v1, p0, Lr4/d8;->i:Lr4/r5;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lr4/r5;->hashCode()I

    move-result v1

    :goto_0
    iget-wide v2, p0, Lr4/d8;->c:J

    iget-wide v4, p0, Lr4/d8;->d:J

    iget-wide v6, p0, Lr4/d8;->e:J

    iget-boolean v8, p0, Lr4/d8;->f:Z

    iget-boolean v9, p0, Lr4/d8;->g:Z

    iget-boolean v10, p0, Lr4/d8;->j:Z

    iget-wide v11, p0, Lr4/d8;->l:J

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v13, v2, v1

    xor-long/2addr v2, v13

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v4, v1

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v2, v6, v1

    xor-long/2addr v2, v6

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v10

    mul-int/lit16 v0, v0, 0x3c1

    ushr-long v1, v11, v1

    xor-long/2addr v1, v11

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/d8;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lr4/d8;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method
