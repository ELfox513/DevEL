.class public final Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

.field public static final ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

.field public static final ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;-><init>(I)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/IntegerDistribution;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->a:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->a:I

    return v0
.end method

.method public nextInt()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantIntegerDistribution;->a:I

    return v0
.end method
