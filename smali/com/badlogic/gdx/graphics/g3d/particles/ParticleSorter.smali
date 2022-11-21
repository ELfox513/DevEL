.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$Distance;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter$None;
    }
.end annotation


# static fields
.field public static final b:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Camera;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->b:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureCapacity(I)V
    .locals 0

    return-void
.end method

.method public setCamera(Lcom/badlogic/gdx/graphics/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSorter;->a:Lcom/badlogic/gdx/graphics/Camera;

    return-void
.end method

.method public abstract sort(Lcom/badlogic/gdx/utils/Array;)[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/ParticleControllerRenderData;",
            ">(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)[I"
        }
    .end annotation
.end method
