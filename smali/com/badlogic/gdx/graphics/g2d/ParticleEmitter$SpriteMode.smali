.class public final enum Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpriteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

.field public static final enum animated:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

.field public static final enum random:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

.field public static final enum single:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const-string v1, "single"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->single:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const-string v3, "random"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->random:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const-string v5, "animated"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->animated:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->a:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->a:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpriteMode;

    return-object v0
.end method
