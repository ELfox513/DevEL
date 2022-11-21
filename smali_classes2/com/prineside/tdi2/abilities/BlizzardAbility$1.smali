.class Lcom/prineside/tdi2/abilities/BlizzardAbility$1;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/abilities/BlizzardAbility;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic M:Lcom/prineside/tdi2/abilities/BlizzardAbility;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/abilities/BlizzardAbility;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility$1;->M:Lcom/prineside/tdi2/abilities/BlizzardAbility;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    const/16 p2, 0x303

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    return-void
.end method
