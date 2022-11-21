.class public final enum Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlignMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field public static final enum ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

.field public static final synthetic a:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const-string v1, "Screen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->Screen:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const-string v3, "ViewPoint"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->ViewPoint:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->a:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->a:[Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$AlignMode;

    return-object v0
.end method
