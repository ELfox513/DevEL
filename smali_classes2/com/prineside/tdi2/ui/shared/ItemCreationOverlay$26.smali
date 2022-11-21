.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/GameValueConfig;

.field public final synthetic b:Lcom/prineside/tdi2/tiles/TargetTile;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/GameValueConfig;Lcom/prineside/tdi2/tiles/TargetTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->a:Lcom/prineside/tdi2/GameValueConfig;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->a:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/TargetTile;->updateAppearance()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$26;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
