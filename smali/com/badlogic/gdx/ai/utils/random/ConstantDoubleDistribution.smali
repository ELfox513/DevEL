.class public final Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

.field public static final ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

.field public static final ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;


# instance fields
.field public final a:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;-><init>(D)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;->NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;-><init>(D)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;->ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;-><init>(D)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;->ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/DoubleDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;->a:D

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;->a:D

    return-wide v0
.end method

.method public nextDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantDoubleDistribution;->a:D

    return-wide v0
.end method
