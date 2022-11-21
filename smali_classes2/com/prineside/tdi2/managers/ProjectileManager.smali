.class public Lcom/prineside/tdi2/managers/ProjectileManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/ProjectileManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ProjectileManager$Factories;,
        Lcom/prineside/tdi2/managers/ProjectileManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

.field public final a:[Lcom/prineside/tdi2/Projectile$Factory;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->values:[Lcom/prineside/tdi2/enums/ProjectileType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/Projectile$Factory;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ProjectileManager;->a:[Lcom/prineside/tdi2/Projectile$Factory;

    new-instance v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ProjectileManager;->F:Lcom/prineside/tdi2/managers/ProjectileManager$Factories;

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->AIR:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->AIR:Lcom/prineside/tdi2/projectiles/AirProjectile$AirProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->BASIC:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->BASIC:Lcom/prineside/tdi2/projectiles/BasicProjectile$BasicProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->CANNON:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->CANNON:Lcom/prineside/tdi2/projectiles/CannonProjectile$CannonProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->SPLINTER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->SPLINTER:Lcom/prineside/tdi2/projectiles/SplinterProjectile$SplinterProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$ChainLightningProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$ChainLightningProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/projectiles/ChainLightningProjectile$ChainLightningProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->MISSILE:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->MISSILE:Lcom/prineside/tdi2/projectiles/MissileProjectile$MissileProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->MULTISHOT:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->MULTISHOT:Lcom/prineside/tdi2/projectiles/MultishotProjectile$MultishotProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->SPLASH:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->SPLASH:Lcom/prineside/tdi2/projectiles/SplashProjectile$SplashProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->VENOM:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->VENOM:Lcom/prineside/tdi2/projectiles/VenomProjectile$VenomProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->LASER:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->LASER:Lcom/prineside/tdi2/projectiles/LaserProjectile$LaserProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->BULLET_WALL:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/BulletWallProjectile$MultishotProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/BulletWallProjectile$MultishotProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->BULLET_WALL:Lcom/prineside/tdi2/projectiles/BulletWallProjectile$MultishotProjectileFactory;

    aput-object v3, v0, v2

    sget-object v2, Lcom/prineside/tdi2/enums/ProjectileType;->BUFF:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    new-instance v3, Lcom/prineside/tdi2/projectiles/BuffProjectile$BuffProjectileFactory;

    invoke-direct {v3}, Lcom/prineside/tdi2/projectiles/BuffProjectile$BuffProjectileFactory;-><init>()V

    iput-object v3, v1, Lcom/prineside/tdi2/managers/ProjectileManager$Factories;->BUFF:Lcom/prineside/tdi2/projectiles/BuffProjectile$BuffProjectileFactory;

    aput-object v3, v0, v2

    sget-object v0, Lcom/prineside/tdi2/enums/ProjectileType;->values:[Lcom/prineside/tdi2/enums/ProjectileType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/ProjectileManager;->a:[Lcom/prineside/tdi2/Projectile$Factory;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all projectile factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearPools()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProjectileManager;->a:[Lcom/prineside/tdi2/Projectile$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Projectile$Factory;->clearPools()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/ProjectileType;",
            ")",
            "Lcom/prineside/tdi2/Projectile$Factory<",
            "+",
            "Lcom/prineside/tdi2/Projectile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProjectileManager;->a:[Lcom/prineside/tdi2/Projectile$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ProjectileManager;->a:[Lcom/prineside/tdi2/Projectile$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Projectile$Factory;->setup()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
