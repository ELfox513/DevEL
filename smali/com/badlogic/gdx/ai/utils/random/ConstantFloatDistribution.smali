.class public final Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

.field public static final ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

.field public static final ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

.field public static final ZERO_POINT_FIVE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;


# instance fields
.field public final a:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;-><init>(F)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->ZERO_POINT_FIVE:Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/FloatDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->a:F

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->a:F

    return v0
.end method

.method public nextFloat()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantFloatDistribution;->a:F

    return v0
.end method
