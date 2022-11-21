.class Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$2;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic F:Lcom/prineside/tdi2/shapes/Circle;

.field public final synthetic G:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Lcom/prineside/tdi2/shapes/Circle;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$2;->G:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$2;->F:Lcom/prineside/tdi2/shapes/Circle;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$2;->F:Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method
