.class Lcom/prineside/tdi2/ui/shared/CameraTools$21;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$21;->o:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$21;->o:Lcom/prineside/tdi2/ui/shared/CameraTools;

    const/high16 p3, 0x41800000    # 16.0f

    div-float/2addr p2, p3

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->h(Lcom/prineside/tdi2/ui/shared/CameraTools;I)I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$21;->o:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->i(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    return-void
.end method
