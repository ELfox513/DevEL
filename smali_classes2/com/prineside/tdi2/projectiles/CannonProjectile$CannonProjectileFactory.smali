.class public Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;
.super Lcom/prineside/tdi2/Projectile$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/projectiles/CannonProjectile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CannonProjectileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Projectile$Factory<",
        "Lcom/prineside/tdi2/projectiles/CannonProjectile;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Projectile$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/prineside/tdi2/Projectile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;->b()Lcom/prineside/tdi2/projectiles/CannonProjectile;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/prineside/tdi2/projectiles/CannonProjectile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/projectiles/CannonProjectile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/projectiles/CannonProjectile;-><init>(Lcom/prineside/tdi2/projectiles/CannonProjectile$1;)V

    return-object v0
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "projectile-cannon"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "bullet-trace-thin"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
