.class public Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metrics"
.end annotation


# instance fields
.field public openListAdditions:I

.field public openListPeak:I

.field public visitedNodes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->visitedNodes:I

    iput v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->openListAdditions:I

    iput v0, p0, Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$Metrics;->openListPeak:I

    return-void
.end method
