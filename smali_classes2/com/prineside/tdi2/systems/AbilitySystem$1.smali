.class Lcom/prineside/tdi2/systems/AbilitySystem$1;
.super Lcom/badlogic/gdx/InputAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/AbilitySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/AbilitySystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/AbilitySystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem$1;->a:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public touchUp(IIII)Z
    .locals 1

    iget-object p3, p0, Lcom/prineside/tdi2/systems/AbilitySystem$1;->a:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object p3, p3, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/systems/AbilitySystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem$1;->a:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/InputSystem;->getCameraController()Lcom/prineside/tdi2/CameraController;

    move-result-object p1

    invoke-static {}, Lcom/prineside/tdi2/systems/AbilitySystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/CameraController;->screenToMap(Lcom/badlogic/gdx/math/Vector2;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem$1;->a:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/AbilitySystem;->b(Lcom/prineside/tdi2/systems/AbilitySystem;)Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem$1;->a:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-static {p1}, Lcom/prineside/tdi2/systems/AbilitySystem;->b(Lcom/prineside/tdi2/systems/AbilitySystem;)Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object p2

    invoke-static {}, Lcom/prineside/tdi2/systems/AbilitySystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int p3, p3

    invoke-static {}, Lcom/prineside/tdi2/systems/AbilitySystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v0, v0

    invoke-static {p1, p2, p3, v0}, Lcom/prineside/tdi2/systems/AbilitySystem;->c(Lcom/prineside/tdi2/systems/AbilitySystem;Lcom/prineside/tdi2/enums/AbilityType;II)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem$1;->a:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/AbilitySystem;->cancelUsingAbility()V

    return p4
.end method
