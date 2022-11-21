.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParticleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

.field public static final enum Point:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    const-string v1, "Billboard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Billboard:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    const-string v3, "Point"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Point:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->a:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->a:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    return-object v0
.end method
