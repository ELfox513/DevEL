.class Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder$NodeRecord;
.super Lcom/badlogic/gdx/utils/BinaryHeap$Node;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/pfa/indexed/IndexedAStarPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/BinaryHeap$Node;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public d:Lcom/badlogic/gdx/ai/pfa/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/pfa/Connection<",
            "TN;>;"
        }
    .end annotation
.end field

.field public e:F

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/BinaryHeap$Node;-><init>(F)V

    return-void
.end method


# virtual methods
.method public getEstimatedTotalCost()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/BinaryHeap$Node;->getValue()F

    move-result v0

    return v0
.end method
