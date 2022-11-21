.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Pool$Poolable;"
    }
.end annotation


# static fields
.field public static final V:Ljava/lang/Float;

.field public static final W:Ljava/lang/Float;

.field public static final X:Ljava/lang/Integer;

.field public static final Y:Ljava/lang/Integer;

.field public static final Z:Ljava/lang/Integer;

.field public static final a0:Ljava/lang/Integer;

.field public static final b0:Ljava/lang/Integer;

.field public static final c0:Ljava/lang/Integer;

.field public static final d0:Ljava/lang/Integer;

.field public static e0:Lcom/badlogic/gdx/Files;

.field public static f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;


# instance fields
.field public A:Ljava/lang/Float;

.field public B:Ljava/lang/Integer;

.field public C:Ljava/lang/Integer;

.field public D:Ljava/lang/Integer;

.field public E:Ljava/lang/Integer;

.field public F:Ljava/lang/Boolean;

.field public G:Ljava/lang/Boolean;

.field public H:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public I:F

.field public J:F

.field public K:F

.field public L:F

.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public N:Z

.field public O:I

.field public P:I

.field public Q:I

.field public R:F

.field public S:F

.field public T:F

.field public U:F

.field public a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field public z:Ljava/lang/Float;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->V:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->X:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Z:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a0:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b0:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->c0:Ljava/lang/Integer;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d0:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Q:I

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    :cond_0
    return-void
.end method

.method public static defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->e0:Lcom/badlogic/gdx/Files;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->e0:Lcom/badlogic/gdx/Files;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->V:Ljava/lang/Float;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Z:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->X:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->f0:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    return-void
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    return-object p0
.end method

.method public b(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_4
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_5
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_6
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_7
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_8
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_9

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_9
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_a

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_a
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_b

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_b
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_c
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_d

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_d
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    if-eqz v0, :cond_e

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    :cond_e
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    if-eqz v0, :cond_f

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    :cond_f
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    if-eqz v0, :cond_10

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    :cond_10
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    if-eqz v0, :cond_11

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    :cond_11
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    :cond_12
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    :cond_13
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    :cond_14
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    :cond_15
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    if-eqz p1, :cond_16

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    :cond_16
    return-void
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b0:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public c(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    return-void
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Z:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    return-object p0
.end method

.method public clearActor()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public colspan(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    return-object p0
.end method

.method public expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    return-object p0
.end method

.method public expand(II)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    return-object p0
.end method

.method public expand(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->X:Ljava/lang/Integer;

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->X:Ljava/lang/Integer;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    return-object p0
.end method

.method public expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    return-object p0
.end method

.method public expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->V:Ljava/lang/Float;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->V:Ljava/lang/Float;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->V:Ljava/lang/Float;

    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->V:Ljava/lang/Float;

    :goto_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getActorHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    return v0
.end method

.method public getActorWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    return v0
.end method

.method public getActorX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    return v0
.end method

.method public getActorY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    return v0
.end method

.method public getAlign()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColspan()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->E:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getColumn()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->O:I

    return v0
.end method

.method public getComputedPadBottom()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->T:F

    return v0
.end method

.method public getComputedPadLeft()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->S:F

    return v0
.end method

.method public getComputedPadRight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->U:F

    return v0
.end method

.method public getComputedPadTop()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->R:F

    return v0
.end method

.method public getExpandX()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpandY()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillX()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFillY()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getMinWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadBottom()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->P:I

    return v0
.end method

.method public getSpaceBottom()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceLeft()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceRight()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getSpaceTop()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getSpaceTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method

.method public getUniformX()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUniformY()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public grow()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->C:Ljava/lang/Integer;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->z:Ljava/lang/Float;

    return-object p0
.end method

.method public growY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Y:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->D:Ljava/lang/Integer;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->W:Ljava/lang/Float;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->A:Ljava/lang/Float;

    return-object p0
.end method

.method public hasActor()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "height cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEndRow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    return v0
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->c0:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p3

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pad cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->N:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->Q:I

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->defaults()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;)V

    return-void
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d0:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public row()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(TA;)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-object p0
.end method

.method public setActorBounds(FFFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    return-void
.end method

.method public setActorHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->L:F

    return-void
.end method

.method public setActorWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->K:F

    return-void
.end method

.method public setActorX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->I:F

    return-void
.end method

.method public setActorY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->J:F

    return-void
.end method

.method public setTable(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "space cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public space(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p3

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right cannot be < 0: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "bottom cannot be < 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "left cannot be < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "top cannot be < 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "space cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public space(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceBottom cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceLeft cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceRight cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spaceTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceTop cannot be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spaceTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spaceTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->H:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a0:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->B:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public uniform()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniform(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniform(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniformX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->F:Ljava/lang/Boolean;

    return-object p0
.end method

.method public uniformY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->G:Ljava/lang/Boolean;

    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Cell<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "width cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
