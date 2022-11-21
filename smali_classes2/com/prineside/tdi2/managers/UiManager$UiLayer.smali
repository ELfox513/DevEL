.class public Lcom/prineside/tdi2/managers/UiManager$UiLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiLayer"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public ignoreSafeMargin:Z

.field public final mainUiLayer:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

.field public final name:Ljava/lang/String;

.field public zIndex:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->ignoreSafeMargin:Z

    iput-object p1, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->mainUiLayer:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iput p3, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    iput-object p4, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->name:Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;ILjava/lang/String;Lcom/prineside/tdi2/managers/UiManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;-><init>(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p0
.end method


# virtual methods
.method public getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object v0
.end method
