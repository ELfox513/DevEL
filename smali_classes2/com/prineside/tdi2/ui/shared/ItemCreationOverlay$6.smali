.class Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$6;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;FLcom/prineside/tdi2/utils/ObjectRetriever;Z)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectRetriever;

.field public final synthetic b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$6;->c:Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$6;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$6;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$6;->a:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay$6;->b:Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    return-void
.end method
