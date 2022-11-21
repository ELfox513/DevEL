.class public final Lr4/gh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/ug;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[J

.field public k:[Z

.field public l:Z

.field public m:[Z

.field public n:Lr4/fh;

.field public o:I

.field public p:Lr4/dl;

.field public q:Z

.field public r:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lr4/gh;->p:Lr4/dl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/dl;->e()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Lr4/dl;

    invoke-direct {v0, p1}, Lr4/dl;-><init>(I)V

    iput-object v0, p0, Lr4/gh;->p:Lr4/dl;

    :cond_1
    iput p1, p0, Lr4/gh;->o:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/gh;->l:Z

    iput-boolean p1, p0, Lr4/gh;->q:Z

    return-void
.end method
