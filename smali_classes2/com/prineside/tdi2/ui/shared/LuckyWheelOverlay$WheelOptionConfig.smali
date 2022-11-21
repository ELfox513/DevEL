.class public Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WheelOptionConfig"
.end annotation


# static fields
.field public static helperVector3:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

.field public b:F

.field public c:F

.field public d:F

.field public e:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public h:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

.field public i:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

.field public respinPrepareFromAngle:F

.field public wasHit:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->helperVector3:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->b:F

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->b:F

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->c:F

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->c:F

    return p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->i:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    return-object p0
.end method

.method public static getPosRotForAngle(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 4

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    const/high16 v1, 0x43660000    # 230.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x43700000    # 240.0f

    add-float/2addr v0, v1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, v1

    sget-object v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->helperVector3:Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, 0x42200000    # 40.0f

    sub-float/2addr v0, v3

    iput v0, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p0, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object v1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->i:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    return-object p1
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->h:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->h:Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    return-object p1
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p1
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->d:F

    return p0
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->d:F

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    return-object p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    return-object p1
.end method


# virtual methods
.method public setItemContainerAngle(F)V
    .locals 3

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->getPosRotForAngle(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    return-void
.end method
