.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public b:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public c:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getInvalidDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public getValidDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public setDragActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setInvalidDragActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->c:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->d:Ljava/lang/Object;

    return-void
.end method

.method public setValidDragActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->b:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method
