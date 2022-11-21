.class Lcom/prineside/tdi2/ui/shared/CameraTools$4;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$4;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$4;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$4;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$4;->a:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->n(Lcom/prineside/tdi2/ui/shared/CameraTools;F)F

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$4;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->m(Lcom/prineside/tdi2/ui/shared/CameraTools;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$4;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->n(Lcom/prineside/tdi2/ui/shared/CameraTools;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
