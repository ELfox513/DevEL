.class public final Lr4/d44;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Lr4/e5;

.field public final g:I

.field public final h:[J

.field public final i:[J

.field public final j:I

.field public final k:[Lr4/e44;


# direct methods
.method public constructor <init>(IIJJJLr4/e5;I[Lr4/e44;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/d44;->a:I

    iput p2, p0, Lr4/d44;->b:I

    iput-wide p3, p0, Lr4/d44;->c:J

    iput-wide p5, p0, Lr4/d44;->d:J

    iput-wide p7, p0, Lr4/d44;->e:J

    iput-object p9, p0, Lr4/d44;->f:Lr4/e5;

    iput p10, p0, Lr4/d44;->g:I

    iput-object p11, p0, Lr4/d44;->k:[Lr4/e44;

    iput p12, p0, Lr4/d44;->j:I

    iput-object p13, p0, Lr4/d44;->h:[J

    iput-object p14, p0, Lr4/d44;->i:[J

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/e44;
    .locals 1

    iget-object v0, p0, Lr4/d44;->k:[Lr4/e44;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method
