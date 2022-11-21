.class Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DamageParticle"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/math/Vector2;

.field public b:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field public c:F

.field public d:F

.field public e:F

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$DamageParticle;->b:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    return-void
.end method
