.class public final Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;
.super Lcom/badlogic/gdx/ai/utils/random/LongDistribution;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

.field public static final ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

.field public static final ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;


# instance fields
.field public final a:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;-><init>(J)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->NEGATIVE_ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;-><init>(J)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->ZERO:Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    new-instance v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;-><init>(J)V

    sput-object v0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->ONE:Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/ai/utils/random/LongDistribution;-><init>()V

    iput-wide p1, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->a:J

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->a:J

    return-wide v0
.end method

.method public nextLong()J
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/ai/utils/random/ConstantLongDistribution;->a:J

    return-wide v0
.end method
