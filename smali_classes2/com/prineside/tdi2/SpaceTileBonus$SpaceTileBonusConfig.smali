.class public Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/SpaceTileBonus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceTileBonusConfig"
.end annotation


# instance fields
.field public final a:[F

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/badlogic/gdx/graphics/Color;

.field public final e:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/SpaceTileBonusType;Ljava/lang/String;[FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "space_tile_bonus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->a:[F

    iput-object p4, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->d:Lcom/badlogic/gdx/graphics/Color;

    iput-object p5, p0, Lcom/prineside/tdi2/SpaceTileBonus$SpaceTileBonusConfig;->e:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
