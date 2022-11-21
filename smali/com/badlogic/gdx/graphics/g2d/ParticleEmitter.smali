.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$NumericValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;,
        Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:F

.field public D:F

.field public E:Ljava/lang/String;

.field public F:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:I

.field public H:[Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Z

.field public N:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:F

.field public W:F

.field public X:F

.field public Y:F

.field public Z:F

.field public a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public a0:F

.field public b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

.field public b0:Z

.field public c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public c0:Z

.field public d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

.field public d0:Z

.field public duration:F

.field public durationTimer:F

.field public e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public e0:Z

.field public f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public f0:Z

.field public g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public g0:Z

.field public h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public h0:Z

.field public i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

.field public o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

.field public t:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public u:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public v:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

.field public w:F

.field public x:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

.field public z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->single:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->single:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->F:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMaxParticleCount(I)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;)V

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e0:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setPosition(FF)V

    return-void
.end method

.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->single:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->load(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public static i(Ljava/io/BufferedReader;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/io/BufferedReader;Ljava/lang/String;)F
    .locals 0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static l(Ljava/io/BufferedReader;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->a:[I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    :goto_0
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v6, v5, p1

    if-nez v6, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h(Lcom/badlogic/gdx/graphics/g2d/Sprite;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    move-result-object v6

    aput-object v6, v5, p1

    iget-boolean v5, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->J:Z

    iget-boolean v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->K:Z

    invoke-virtual {v6, v5, v7}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    :goto_1
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v5, v7

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-boolean v8, v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->j:Z

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c()V

    :cond_3
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-boolean v8, v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->j:Z

    if-eqz v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b()V

    :cond_4
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->T:I

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->U:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v10, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v10

    mul-float v9, v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->u:I

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->v:I

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v9, v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->C:F

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->D:F

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v8

    if-nez v8, :cond_5

    iget v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->D:F

    iget v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->C:F

    sub-float/2addr v8, v9

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->D:F

    :cond_5
    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v8

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->F:F

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->F:F

    iget v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    sub-float/2addr v8, v9

    iput v8, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->F:F

    :cond_6
    and-int/2addr v7, v3

    const/4 v8, 0x0

    if-nez v7, :cond_7

    iget v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    iget v10, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->F:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v11

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    iput v10, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->G:F

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    iput v10, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->H:F

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v10

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v1

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v11

    div-float/2addr v11, v10

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->w:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v11

    div-float/2addr v11, v10

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v11

    if-nez v11, :cond_8

    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->w:F

    sub-float/2addr v11, v12

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    :cond_8
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v12, v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v12, :cond_a

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v11

    div-float/2addr v11, v1

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->y:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v11

    div-float/2addr v11, v1

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->z:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v11

    if-nez v11, :cond_9

    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->z:F

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->y:F

    sub-float/2addr v11, v12

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->z:F

    :cond_9
    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->w:F

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v13

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->y:F

    iget v13, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->z:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float v13, v13, v14

    add-float/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    goto :goto_3

    :cond_a
    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->w:F

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v13

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(F)V

    :goto_3
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v12, v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v12, :cond_d

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v11

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->A:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v11

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v11

    if-nez v11, :cond_b

    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->A:F

    sub-float/2addr v11, v12

    iput v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    :cond_b
    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->A:F

    iget v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v13

    mul-float v12, v12, v13

    add-float/2addr v11, v12

    iget-boolean v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    if-eqz v12, :cond_c

    add-float/2addr v11, v9

    :cond_c
    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    :cond_d
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v11, v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v11, :cond_e

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v9

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->K:F

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v9

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->L:F

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v9

    if-nez v9, :cond_e

    iget v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->L:F

    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->K:F

    sub-float/2addr v9, v11

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->L:F

    :cond_e
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v11, v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v11, :cond_f

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v9

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->M:F

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v9

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->N:F

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v9

    if-nez v9, :cond_f

    iget v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->N:F

    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->M:F

    sub-float/2addr v9, v11

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->N:F

    :cond_f
    iget-object v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->O:[F

    if-nez v9, :cond_10

    new-array v9, v2, [F

    iput-object v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->O:[F

    :cond_10
    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColor(F)[F

    move-result-object v11

    const/4 v12, 0x0

    aget v13, v11, v12

    aput v13, v9, v12

    aget v12, v11, v4

    aput v12, v9, v4

    aget v11, v11, v3

    aput v11, v9, v3

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v9

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->I:F

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v9

    iget v11, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->I:F

    sub-float/2addr v9, v11

    iput v9, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->J:F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->C:F

    iget-object v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-boolean v12, v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v12, :cond_11

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v11

    add-float/2addr v9, v11

    :cond_11
    iget v11, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->D:F

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-boolean v13, v12, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v13, :cond_12

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v12

    add-float/2addr v11, v12

    :cond_12
    sget-object v12, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->c:[I

    iget-object v13, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    iget-object v13, v13, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v12, v4, :cond_1b

    if-eq v12, v3, :cond_15

    if-eq v12, v2, :cond_13

    goto/16 :goto_5

    :cond_13
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->V:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->W:F

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v3, v3, v7

    add-float/2addr v2, v3

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->X:F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Y:F

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v12

    mul-float v7, v7, v12

    add-float/2addr v3, v7

    cmpl-float v7, v2, v8

    if-eqz v7, :cond_14

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v7

    mul-float v7, v7, v2

    add-float/2addr v9, v7

    div-float/2addr v3, v2

    mul-float v7, v7, v3

    add-float/2addr v11, v7

    goto/16 :goto_5

    :cond_14
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float v3, v3, v2

    add-float/2addr v11, v3

    goto/16 :goto_5

    :cond_15
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->V:F

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->W:F

    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v14, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v14

    mul-float v12, v12, v14

    add-float/2addr v2, v12

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->X:F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Y:F

    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v15, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v15

    mul-float v14, v14, v15

    add-float/2addr v12, v14

    div-float v14, v2, v13

    div-float/2addr v12, v13

    cmpl-float v15, v14, v8

    if-eqz v15, :cond_1c

    cmpl-float v8, v12, v8

    if-nez v8, :cond_16

    goto/16 :goto_5

    :cond_16
    div-float v8, v14, v12

    iget-object v12, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    iget-boolean v15, v12, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->d:Z

    if-eqz v15, :cond_19

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->b:[I

    iget-object v12, v12, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnEllipseSide;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v2, v2, v12

    const/high16 v12, 0x43330000    # 179.0f

    if-eq v2, v4, :cond_18

    if-eq v2, v3, :cond_17

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v2

    goto :goto_4

    :cond_17
    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v2

    goto :goto_4

    :cond_18
    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v2

    neg-float v2, v2

    :goto_4
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v3

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    mul-float v15, v3, v14

    add-float/2addr v9, v15

    mul-float v14, v14, v12

    div-float/2addr v14, v8

    add-float/2addr v11, v14

    if-nez v7, :cond_1c

    iput v2, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    iput v3, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->G:F

    iput v12, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->H:F

    goto :goto_5

    :cond_19
    mul-float v3, v14, v14

    :cond_1a
    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    sub-float/2addr v7, v14

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v12

    sub-float/2addr v12, v14

    mul-float v15, v7, v7

    mul-float v16, v12, v12

    add-float v15, v15, v16

    cmpg-float v15, v15, v3

    if-gtz v15, :cond_1a

    add-float/2addr v9, v7

    div-float/2addr v12, v8

    add-float/2addr v11, v12

    goto :goto_5

    :cond_1b
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->V:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->W:F

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v3, v3, v7

    add-float/2addr v2, v3

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->X:F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Y:F

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v3, v7

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v7

    div-float/2addr v2, v13

    sub-float/2addr v7, v2

    add-float/2addr v9, v7

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->random(F)F

    move-result v2

    div-float/2addr v3, v13

    sub-float/2addr v2, v3

    add-float/2addr v11, v2

    :cond_1c
    :goto_5
    div-float v2, v10, v13

    sub-float/2addr v9, v2

    div-float v2, v1, v13

    sub-float/2addr v11, v2

    invoke-virtual {v6, v9, v11, v10, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setBounds(FFFF)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->R:I

    int-to-float v1, v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->S:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-lez v1, :cond_1e

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->v:I

    if-lt v1, v2, :cond_1d

    add-int/lit8 v1, v2, -0x1

    :cond_1d
    int-to-float v2, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v6, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z

    :cond_1e
    return-void
.end method

.method public addParticle()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-boolean v4, v1, v2

    if-nez v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a(I)V

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addParticles(I)V
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-boolean v4, v0, v3

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a(I)V

    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    return-void
.end method

.method public allowCompletion()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->M:Z

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->R:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->S:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->S:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->R:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->S:I

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->T:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->U:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->U:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->T:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->U:I

    :cond_0
    return-void
.end method

.method public cleansUpBlendFunction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    return v0
.end method

.method public d()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->v:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->v:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->v:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    const/16 v1, 0x302

    const/16 v2, 0x303

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    if-eqz v0, :cond_1

    invoke-interface {p1, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    const/4 v4, 0x0

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-boolean v6, v3, v4

    if-eqz v6, :cond_2

    aget-object v6, v0, v4

    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-interface {p1, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    :cond_5
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 13

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->w:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v2, p2, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->w:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void

    :cond_0
    float-to-int v2, v0

    int-to-float v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->w:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    const/16 v4, 0x302

    const/16 v5, 0x303

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    if-eqz v0, :cond_2

    invoke-interface {p1, v4, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    array-length v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_5

    aget-boolean v11, v6, v10

    if-eqz v11, :cond_4

    aget-object v11, v0, v10

    invoke-virtual {p0, v11, p2, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_2

    :cond_3
    aput-boolean v9, v6, v10

    add-int/lit8 v7, v7, -0x1

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    if-eqz p2, :cond_7

    :cond_6
    invoke-interface {p1, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    :cond_7
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Z:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_8

    add-float/2addr p1, v3

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    return-void

    :cond_8
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->I:Z

    if-eqz p1, :cond_9

    iput-boolean v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->I:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticle()V

    :cond_9
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_a

    add-float/2addr p1, v3

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    goto :goto_3

    :cond_a
    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->M:Z

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o()V

    :goto_3
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->O:I

    int-to-float p1, p1

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->P:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_c

    div-float/2addr v1, p1

    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    int-to-float p2, p1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_c

    int-to-float p1, p1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    sub-int/2addr p2, v7

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    int-to-float p2, p2

    int-to-float v0, p1

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p2, p2

    rem-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    :cond_c
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    if-ge v7, p1, :cond_d

    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public e()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->t:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->t:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->t:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public f()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->u:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->u:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    aput-object v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->u:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public flipY()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getHighMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMin()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->getLowMax()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(FF)V

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->F:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setAlwaysActive(Z)V

    return-void
.end method

.method public getActiveCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    return v0
.end method

.method public getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getBoundingBox()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->N:Lcom/badlogic/gdx/math/collision/BoundingBox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->N:Lcom/badlogic/gdx/math/collision/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->N:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/collision/BoundingBox;->inf()Lcom/badlogic/gdx/math/collision/BoundingBox;

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-boolean v5, v1, v3

    if-eqz v5, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v5

    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    iget v7, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v5

    invoke-virtual {v2, v6, v7, v8}, Lcom/badlogic/gdx/math/collision/BoundingBox;->ext(FFF)Lcom/badlogic/gdx/math/collision/BoundingBox;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getDelay()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getDuration()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getGravity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getImagePaths()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->F:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    return-object v0
.end method

.method public getLifeOffset()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    return-object v0
.end method

.method public getMaxParticleCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    return v0
.end method

.method public getMinParticleCount()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentComplete()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Z:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRotation()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getSpawnShape()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    return-object v0
.end method

.method public getSpawnWidth()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getSpriteMode()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    return-object v0
.end method

.method public getSprites()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    return-object v0
.end method

.method public getTransparency()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getWind()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->C:F

    return v0
.end method

.method public getXOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getXScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->D:F

    return v0
.end method

.method public getYOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    return-object v0
.end method

.method public getYScale()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    return-object v0
.end method

.method public h(Lcom/badlogic/gdx/graphics/g2d/Sprite;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    return-object v0
.end method

.method public isAdditive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    return v0
.end method

.method public isAligned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    return v0
.end method

.method public isAttached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    return v0
.end method

.method public isBehind()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e0:Z

    return v0
.end method

.method public isComplete()Z
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->M:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Z:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isContinuous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    return v0
.end method

.method public isPremultipliedAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    return v0
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 3

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const-string v0, "minParticleCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMinParticleCount(I)V

    const-string v0, "maxParticleCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMaxParticleCount(I)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "- Scale -"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->setActive(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->load(Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    const-string v0, "attached"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    const-string v0, "continuous"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    const-string v0, "aligned"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    const-string v0, "additive"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    const-string v0, "behind"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e0:Z

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "premultipliedAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "spriteMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setImagePaths(Lcom/badlogic/gdx/utils/Array;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    if-nez v0, :cond_4

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing emitter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public matchMotion(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public matchSize(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->matchXSize(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->matchYSize(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V

    return-void
.end method

.method public matchXSize(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public matchYSize(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->set(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Z:F

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->O:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->P:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->P:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->O:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->P:I

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c()V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->j:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b()V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->V:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->W:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->W:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->V:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->W:F

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->X:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Y:F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Y:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->X:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Y:F

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v2, v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v1, v1

    if-le v1, v3, :cond_6

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v0, v0

    if-le v0, v3, :cond_8

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v0, v0

    if-le v0, v3, :cond_9

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->f:[F

    array-length v0, v0

    if-le v0, v3, :cond_a

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->d:[F

    array-length v0, v0

    if-le v0, v3, :cond_d

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_d
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->animated:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    :cond_e
    return-void
.end method

.method public final p(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z
    .locals 9

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->v:I

    sub-int/2addr v0, p3

    const/4 p3, 0x0

    if-gtz v0, :cond_0

    return p3

    :cond_0
    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->v:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->u:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->L:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->a:Z

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->w:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->z:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(FF)V

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->w:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->x:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setScale(F)V

    :cond_2
    :goto_0
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_a

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->C:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->D:F

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    mul-float v3, v3, p2

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_4

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->F:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v5

    mul-float v5, v5, v3

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v6

    mul-float v3, v3, v6

    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_7

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->A:F

    iget v7, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    iget-boolean v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    if-eqz v7, :cond_3

    add-float/2addr v6, v4

    :cond_3
    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    goto :goto_1

    :cond_4
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->G:F

    mul-float v5, v3, v4

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->H:F

    mul-float v3, v3, v4

    iget-boolean v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    if-nez v4, :cond_5

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_7

    :cond_5
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->A:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    iget-boolean v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    if-eqz v6, :cond_6

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->E:F

    add-float/2addr v4, v6

    :cond_6
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    :cond_7
    :goto_1
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_8

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->K:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->L:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    mul-float v4, v4, p2

    add-float/2addr v5, v4

    :cond_8
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_9

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->M:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->N:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    :cond_9
    invoke-virtual {p1, v5, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    goto :goto_2

    :cond_a
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_b

    iget p2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->A:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->B:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRotation(F)V

    :cond_b
    :goto_2
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColor(F)[F

    move-result-object p2

    goto :goto_3

    :cond_c
    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->O:[F

    :goto_3
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    if-eqz v3, :cond_d

    const/4 v1, 0x0

    :cond_d
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->I:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->J:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v7

    mul-float v6, v6, v7

    add-float/2addr v3, v6

    aget p3, p2, p3

    mul-float p3, p3, v3

    aget v6, p2, v5

    mul-float v6, v6, v3

    aget p2, p2, v4

    mul-float p2, p2, v3

    mul-float v3, v3, v1

    invoke-virtual {p1, p3, v6, p2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    goto :goto_4

    :cond_e
    aget p3, p2, p3

    aget v1, p2, v5

    aget p2, p2, v4

    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->I:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->J:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v6

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    invoke-virtual {p1, p3, v1, p2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    :goto_4
    and-int/lit16 p2, v2, 0x80

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float p3, p2

    mul-float v0, v0, p3

    float-to-int p3, v0

    sub-int/2addr p2, v5

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p3, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->P:I

    if-eq p3, p2, :cond_f

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v1

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v2

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v2

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result p3

    sub-float/2addr v1, p3

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    iput p2, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->P:I

    :cond_f
    return v5
.end method

.method public preAllocateParticles()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h(Lcom/badlogic/gdx/graphics/g2d/Sprite;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    move-result-object v2

    aput-object v2, v1, v0

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->J:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->K:Z

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParticleEmitter.setSprites() must have been called before preAllocateParticles()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aput-boolean v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->start()V

    return-void
.end method

.method public save(Ljava/io/Writer;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "- Delay -\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Duration - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Count - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "- Emission - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Life - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Life Offset - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$IndependentScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- X Offset - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Y Offset - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Spawn Shape - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShapeValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Spawn Width - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Spawn Height - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- X Scale - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Y Scale - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Velocity - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->i:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Angle - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->j:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Rotation - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Wind - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->k:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Gravity - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->l:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Tint - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->n:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Transparency - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->m:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->save(Ljava/io/Writer;)V

    const-string v0, "- Options - \n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attached: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continuous: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aligned: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "behind: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "premultipliedAlpha: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spriteMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "- Image Paths -\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->F:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public scaleMotion(F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->scale(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scaleSize(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->scaleSize(FF)V

    return-void
.end method

.method public scaleSize(FF)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->scale(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object p1

    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, p1, v2

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->scale(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setAdditive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->f0:Z

    return-void
.end method

.method public setAligned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->d0:Z

    return-void
.end method

.method public setAttached(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    return-void
.end method

.method public setBehind(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e0:Z

    return-void
.end method

.method public setCleansUpBlendFunction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->h0:Z

    return-void
.end method

.method public setContinuous(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    return-void
.end method

.method public setFlip(ZZ)V
    .locals 3

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->J:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->K:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setImagePaths(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->F:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public setMaxParticleCount(I)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    new-array p1, p1, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    return-void
.end method

.method public setMinParticleCount(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->E:Ljava/lang/String;

    return-void
.end method

.method public setPosition(FF)V
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->b0:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->C:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->D:F

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-boolean v5, v2, v3

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v5, v5, v3

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->C:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->D:F

    return-void
.end method

.method public setPremultipliedAlpha(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->g0:Z

    return-void
.end method

.method public setSpriteMode(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    return-void
.end method

.method public setSprites(Lcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/Sprite;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->x:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$1;->a:[I

    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->random()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->v:I

    int-to-float v4, v4

    iget v6, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->u:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v6, v4

    mul-float v3, v3, v6

    float-to-int v3, v3

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;->P:I

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginX()F

    move-result v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getOriginY()F

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->I:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->M:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o()V

    return-void
.end method

.method public update(F)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->w:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v2, p1, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->w:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    float-to-int v2, v0

    int-to-float v3, v2

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->w:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Z:F

    const/4 v5, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->a0:F

    goto/16 :goto_3

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->I:Z

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->I:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticle()V

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->c0:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->M:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->o()V

    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->O:I

    int-to-float v0, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->P:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->e:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->durationTimer:F

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->duration:F

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->getScale(F)F

    move-result v4

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    div-float/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    int-to-float v3, v0

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_6

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->B:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float v4, v4, v1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    rem-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->Q:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->A:I

    if-ge v0, v1, :cond_7

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->addParticles(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->H:[Z

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->z:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;

    array-length v4, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_9

    aget-boolean v7, v0, v6

    if-eqz v7, :cond_8

    aget-object v7, v3, v6

    invoke-virtual {p0, v7, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->p(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$Particle;FI)Z

    move-result v7

    if-nez v7, :cond_8

    aput-boolean v5, v0, v6

    add-int/lit8 v1, v1, -0x1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->G:I

    return-void
.end method
