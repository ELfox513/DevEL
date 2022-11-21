.class public final Lr4/y5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final t:Lr4/y5;

.field public static final u:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/y5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/CharSequence;

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:[B

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final k:Ljava/lang/Integer;

.field public final l:Ljava/lang/Integer;

.field public final m:Ljava/lang/Integer;

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Integer;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/CharSequence;

.field public final r:Ljava/lang/CharSequence;

.field public final s:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/w5;

    invoke-direct {v0}, Lr4/w5;-><init>()V

    new-instance v1, Lr4/y5;

    invoke-direct {v1, v0}, Lr4/y5;-><init>(Lr4/w5;)V

    sput-object v1, Lr4/y5;->t:Lr4/y5;

    sget-object v0, Lr4/v5;->a:Lr4/d3;

    sput-object v0, Lr4/y5;->u:Lr4/d3;

    return-void
.end method

.method public constructor <init>(Lr4/w5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/w5;->j(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->a:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->k(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->b:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->l(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->c:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->m(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->d:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->n(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->o(Lr4/w5;)[B

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->f:[B

    invoke-static {p1}, Lr4/w5;->p(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->g:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->q(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->h:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->r(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->i:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->s(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->j:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->s(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->k:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->t(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->l:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->u(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->m:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->v(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->n:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->w(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->o:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->x(Lr4/w5;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->p:Ljava/lang/Integer;

    invoke-static {p1}, Lr4/w5;->y(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->q:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->z(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lr4/y5;->r:Ljava/lang/CharSequence;

    invoke-static {p1}, Lr4/w5;->A(Lr4/w5;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lr4/y5;->s:Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(Lr4/w5;Lr4/x5;)V
    .locals 0

    invoke-direct {p0, p1}, Lr4/y5;-><init>(Lr4/w5;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/y5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lr4/y5;

    iget-object v2, p0, Lr4/y5;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lr4/y5;->a:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/y5;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lr4/y5;->b:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/y5;->c:Ljava/lang/CharSequence;

    iget-object v3, p1, Lr4/y5;->c:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/y5;->d:Ljava/lang/CharSequence;

    iget-object v3, p1, Lr4/y5;->d:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->e:Ljava/lang/CharSequence;

    iget-object v4, p1, Lr4/y5;->e:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->f:[B

    iget-object v4, p1, Lr4/y5;->f:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->g:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->g:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->h:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->h:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->i:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->i:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->k:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->k:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->l:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->l:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->m:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->m:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->n:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->n:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->o:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->o:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->p:Ljava/lang/Integer;

    iget-object v4, p1, Lr4/y5;->p:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->q:Ljava/lang/CharSequence;

    iget-object v4, p1, Lr4/y5;->q:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->r:Ljava/lang/CharSequence;

    iget-object v4, p1, Lr4/y5;->r:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lr4/y5;->s:Ljava/lang/CharSequence;

    iget-object p1, p1, Lr4/y5;->s:Ljava/lang/CharSequence;

    invoke-static {v3, p1}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lr4/y5;->a:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/y5;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/y5;->c:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lr4/y5;->d:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iget-object v1, p0, Lr4/y5;->e:Ljava/lang/CharSequence;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    iget-object v1, p0, Lr4/y5;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->g:Ljava/lang/Integer;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const/16 v1, 0xc

    aput-object v2, v0, v1

    iget-object v1, p0, Lr4/y5;->h:Ljava/lang/Integer;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->i:Ljava/lang/Integer;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    iget-object v1, p0, Lr4/y5;->k:Ljava/lang/Integer;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->l:Ljava/lang/Integer;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->m:Ljava/lang/Integer;

    const/16 v3, 0x13

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->n:Ljava/lang/Integer;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->o:Ljava/lang/Integer;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->p:Ljava/lang/Integer;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->q:Ljava/lang/CharSequence;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->r:Ljava/lang/CharSequence;

    const/16 v3, 0x18

    aput-object v1, v0, v3

    iget-object v1, p0, Lr4/y5;->s:Ljava/lang/CharSequence;

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const/16 v1, 0x1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
