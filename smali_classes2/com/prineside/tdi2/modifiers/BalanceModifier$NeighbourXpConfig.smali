.class public Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/modifiers/BalanceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeighbourXpConfig"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/Tower;

.field public b:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    return v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    return v0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)Lcom/prineside/tdi2/Tower;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a:Lcom/prineside/tdi2/Tower;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;Lcom/prineside/tdi2/Tower;)Lcom/prineside/tdi2/Tower;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a:Lcom/prineside/tdi2/Tower;

    return-object p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->b:F

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->b:F

    return p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->b:F

    return v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->a:Lcom/prineside/tdi2/Tower;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->b:F

    iput v0, p0, Lcom/prineside/tdi2/modifiers/BalanceModifier$NeighbourXpConfig;->d:F

    return-void
.end method
