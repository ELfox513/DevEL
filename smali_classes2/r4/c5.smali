.class public final Lr4/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Lr4/j8;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public m:Lr4/fz3;

.field public n:J

.field public o:I

.field public p:I

.field public q:F

.field public r:I

.field public s:F

.field public t:[B

.field public u:I

.field public v:Lr4/av3;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lr4/c5;->e:I

    iput v0, p0, Lr4/c5;->f:I

    iput v0, p0, Lr4/c5;->k:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lr4/c5;->n:J

    iput v0, p0, Lr4/c5;->o:I

    iput v0, p0, Lr4/c5;->p:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lr4/c5;->q:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lr4/c5;->s:F

    iput v0, p0, Lr4/c5;->u:I

    iput v0, p0, Lr4/c5;->w:I

    iput v0, p0, Lr4/c5;->x:I

    iput v0, p0, Lr4/c5;->y:I

    iput v0, p0, Lr4/c5;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lr4/c5;->C:I

    return-void
.end method

.method public synthetic constructor <init>(Lr4/e5;Lr4/d5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lr4/e5;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/c5;->a:Ljava/lang/String;

    iget-object p2, p1, Lr4/e5;->b:Ljava/lang/String;

    iput-object p2, p0, Lr4/c5;->b:Ljava/lang/String;

    iget-object p2, p1, Lr4/e5;->c:Ljava/lang/String;

    iput-object p2, p0, Lr4/c5;->c:Ljava/lang/String;

    iget p2, p1, Lr4/e5;->d:I

    iput p2, p0, Lr4/c5;->d:I

    iget p2, p1, Lr4/e5;->f:I

    iput p2, p0, Lr4/c5;->e:I

    iget p2, p1, Lr4/e5;->g:I

    iput p2, p0, Lr4/c5;->f:I

    iget-object p2, p1, Lr4/e5;->i:Ljava/lang/String;

    iput-object p2, p0, Lr4/c5;->g:Ljava/lang/String;

    iget-object p2, p1, Lr4/e5;->j:Lr4/j8;

    iput-object p2, p0, Lr4/c5;->h:Lr4/j8;

    iget-object p2, p1, Lr4/e5;->k:Ljava/lang/String;

    iput-object p2, p0, Lr4/c5;->i:Ljava/lang/String;

    iget-object p2, p1, Lr4/e5;->l:Ljava/lang/String;

    iput-object p2, p0, Lr4/c5;->j:Ljava/lang/String;

    iget p2, p1, Lr4/e5;->m:I

    iput p2, p0, Lr4/c5;->k:I

    iget-object p2, p1, Lr4/e5;->n:Ljava/util/List;

    iput-object p2, p0, Lr4/c5;->l:Ljava/util/List;

    iget-object p2, p1, Lr4/e5;->o:Lr4/fz3;

    iput-object p2, p0, Lr4/c5;->m:Lr4/fz3;

    iget-wide v0, p1, Lr4/e5;->p:J

    iput-wide v0, p0, Lr4/c5;->n:J

    iget p2, p1, Lr4/e5;->q:I

    iput p2, p0, Lr4/c5;->o:I

    iget p2, p1, Lr4/e5;->r:I

    iput p2, p0, Lr4/c5;->p:I

    iget p2, p1, Lr4/e5;->s:F

    iput p2, p0, Lr4/c5;->q:F

    iget p2, p1, Lr4/e5;->t:I

    iput p2, p0, Lr4/c5;->r:I

    iget p2, p1, Lr4/e5;->u:F

    iput p2, p0, Lr4/c5;->s:F

    iget-object p2, p1, Lr4/e5;->v:[B

    iput-object p2, p0, Lr4/c5;->t:[B

    iget p2, p1, Lr4/e5;->w:I

    iput p2, p0, Lr4/c5;->u:I

    iget-object p2, p1, Lr4/e5;->x:Lr4/av3;

    iput-object p2, p0, Lr4/c5;->v:Lr4/av3;

    iget p2, p1, Lr4/e5;->y:I

    iput p2, p0, Lr4/c5;->w:I

    iget p2, p1, Lr4/e5;->z:I

    iput p2, p0, Lr4/c5;->x:I

    iget p2, p1, Lr4/e5;->A:I

    iput p2, p0, Lr4/c5;->y:I

    iget p2, p1, Lr4/e5;->B:I

    iput p2, p0, Lr4/c5;->z:I

    iget p2, p1, Lr4/e5;->C:I

    iput p2, p0, Lr4/c5;->A:I

    iget p2, p1, Lr4/e5;->D:I

    iput p2, p0, Lr4/c5;->B:I

    iget p1, p1, Lr4/e5;->E:I

    iput p1, p0, Lr4/c5;->C:I

    return-void
.end method

.method public static synthetic A(Lr4/c5;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/c5;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic J(Lr4/c5;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/c5;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic K(Lr4/c5;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/c5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic L(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->d:I

    return p0
.end method

.method public static synthetic M(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->e:I

    return p0
.end method

.method public static synthetic N(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->f:I

    return p0
.end method

.method public static synthetic O(Lr4/c5;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/c5;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic P(Lr4/c5;)Lr4/j8;
    .locals 0

    iget-object p0, p0, Lr4/c5;->h:Lr4/j8;

    return-object p0
.end method

.method public static synthetic Q(Lr4/c5;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/c5;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic R(Lr4/c5;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lr4/c5;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic S(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->k:I

    return p0
.end method

.method public static synthetic T(Lr4/c5;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lr4/c5;->l:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic U(Lr4/c5;)Lr4/fz3;
    .locals 0

    iget-object p0, p0, Lr4/c5;->m:Lr4/fz3;

    return-object p0
.end method

.method public static synthetic V(Lr4/c5;)J
    .locals 2

    iget-wide v0, p0, Lr4/c5;->n:J

    return-wide v0
.end method

.method public static synthetic W(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->o:I

    return p0
.end method

.method public static synthetic X(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->p:I

    return p0
.end method

.method public static synthetic Y(Lr4/c5;)F
    .locals 0

    iget p0, p0, Lr4/c5;->q:F

    return p0
.end method

.method public static synthetic Z(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->r:I

    return p0
.end method

.method public static synthetic a(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->A:I

    return p0
.end method

.method public static synthetic a0(Lr4/c5;)F
    .locals 0

    iget p0, p0, Lr4/c5;->s:F

    return p0
.end method

.method public static synthetic b(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->B:I

    return p0
.end method

.method public static synthetic b0(Lr4/c5;)[B
    .locals 0

    iget-object p0, p0, Lr4/c5;->t:[B

    return-object p0
.end method

.method public static synthetic c(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->C:I

    return p0
.end method

.method public static synthetic c0(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->u:I

    return p0
.end method

.method public static synthetic d0(Lr4/c5;)Lr4/av3;
    .locals 0

    iget-object p0, p0, Lr4/c5;->v:Lr4/av3;

    return-object p0
.end method

.method public static synthetic e0(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->w:I

    return p0
.end method

.method public static synthetic f0(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->x:I

    return p0
.end method

.method public static synthetic g0(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->y:I

    return p0
.end method

.method public static synthetic h0(Lr4/c5;)I
    .locals 0

    iget p0, p0, Lr4/c5;->z:I

    return p0
.end method


# virtual methods
.method public final B(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->w:I

    return-object p0
.end method

.method public final C(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->x:I

    return-object p0
.end method

.method public final D(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->y:I

    return-object p0
.end method

.method public final E(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->z:I

    return-object p0
.end method

.method public final F(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->A:I

    return-object p0
.end method

.method public final G(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->B:I

    return-object p0
.end method

.method public final H(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->C:I

    return-object p0
.end method

.method public final I()Lr4/e5;
    .locals 2

    new-instance v0, Lr4/e5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/e5;-><init>(Lr4/c5;Lr4/d5;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e(I)Lr4/c5;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/c5;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final h(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->d:I

    return-object p0
.end method

.method public final i(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->e:I

    return-object p0
.end method

.method public final j(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->f:I

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final l(Lr4/j8;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->h:Lr4/j8;

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lr4/c5;
    .locals 0

    const-string p1, "image/jpeg"

    iput-object p1, p0, Lr4/c5;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final n(Ljava/lang/String;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final o(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->k:I

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lr4/c5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lr4/c5;"
        }
    .end annotation

    iput-object p1, p0, Lr4/c5;->l:Ljava/util/List;

    return-object p0
.end method

.method public final q(Lr4/fz3;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->m:Lr4/fz3;

    return-object p0
.end method

.method public final r(J)Lr4/c5;
    .locals 0

    iput-wide p1, p0, Lr4/c5;->n:J

    return-object p0
.end method

.method public final s(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->o:I

    return-object p0
.end method

.method public final t(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->p:I

    return-object p0
.end method

.method public final u(F)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->q:F

    return-object p0
.end method

.method public final v(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->r:I

    return-object p0
.end method

.method public final w(F)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->s:F

    return-object p0
.end method

.method public final x([B)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->t:[B

    return-object p0
.end method

.method public final y(I)Lr4/c5;
    .locals 0

    iput p1, p0, Lr4/c5;->u:I

    return-object p0
.end method

.method public final z(Lr4/av3;)Lr4/c5;
    .locals 0

    iput-object p1, p0, Lr4/c5;->v:Lr4/av3;

    return-object p0
.end method
